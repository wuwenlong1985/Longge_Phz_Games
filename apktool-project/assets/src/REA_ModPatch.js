(function (g) {
    "use strict";

    if (g.__PHZ_OFFLINE_ADAPTER__) return;

    var O = g.__PHZ_OFFLINE_ADAPTER__ = {
        version: "1.0.0-longge",
        active: false,
        table: null,
        pending: [],
        state: null,
        hooked: {},
        queueBarrierSeq: 0,
        queueBarriers: {},
        traceSeq: 0,
        debug: true
    };

    var QUEUE_BARRIER_API = "REAOfflineQueueBarrier";

    function log() {
        if (!O.debug || !g.cc || !g.cc.log) return;
        try {
            var args = Array.prototype.slice.call(arguments);
            args.unshift("[REA_OFFLINE]");
            g.cc.log.apply(g.cc, args);
        } catch (e) {}
    }

    function stateSnapshot() {
        var state = O.state, handCounts = [], pending = [], i;
        if (!state) return { active: O.active, hasState: false };
        for (i = 0; i < (state.hands || []).length; i++) handCounts.push(state.hands[i] ? state.hands[i].length : 0);
        for (i = 0; i < (state.pending || []).length; i++) {
            pending.push(String(state.pending[i].seat) + ":" + String(state.pending[i].type));
        }
        return {
            active: O.active,
            hasState: true,
            ended: !!state.ended,
            currentSeat: state.curPlayer,
            lastPut: state.lastPut,
            wallLeft: (state.wall || []).length,
            handCounts: handCounts,
            pending: pending,
            tState: state.tData && state.tData.tState,
            cardNext: state.cardNext,
            queueLength: g.jsclient && g.jsclient.NetMsgQueue ? g.jsclient.NetMsgQueue.length : null
        };
    }

    function trace(stage, details) {
        var detailText = "{}", snapshotText = "{}";
        try { detailText = JSON.stringify(details || {}); } catch (e) { detailText = "[unserializable details]"; }
        try { snapshotText = JSON.stringify(stateSnapshot()); } catch (e) { snapshotText = "[unserializable state]"; }
        log("TRACE", ++O.traceSeq, stage, detailText, snapshotText);
    }

    function showError(message) {
        try {
            if (g.jsclient && g.jsclient.showMsg) g.jsclient.showMsg(message);
            else if (g.cc && g.cc.log) g.cc.log(message);
        } catch (e) { log("offline message error", e); }
    }

    function shallowCopy(source) {
        var out = {}, key;
        if (!source) return out;
        for (key in source) if (Object.prototype.hasOwnProperty.call(source, key)) out[key] = source[key];
        return out;
    }

    function emit(api, data) {
        try {
            // MJPut's stock callback removes a card from the local hand when
            // payload.uid equals SelfUid. Keep the local turn owner authoritative
            // so a stale/misattributed bot discard can never consume the human hand.
            if (api === "MJPut" && O.active && O.state && data) {
                var originalUid = data.uid, currentOwner = uidAt(O.state.curPlayer);
                if (String(originalUid) !== String(currentOwner)) {
                    data = shallowCopy(data);
                    data.uid = currentOwner;
                    trace("discard-uid-corrected-to-current-seat", {
                        reportedUid: originalUid,
                        expectedUid: currentOwner,
                        expectedSeat: O.state.curPlayer,
                        card: data.card
                    });
                }
            }
            var callback = g.jsclient && g.jsclient.netCallBack && g.jsclient.netCallBack[api];
            // Original callback entries are [delaySeconds, callbackFunction],
            // and JSScene.startQueueNetMsg owns their ordering and dispatch.
            // Keep offline events on that same lane so cards, turn state, and
            // local bot progression observe the original event order.
            trace("callback-dispatch", {
                api: api,
                descriptor: !!(callback && typeof callback.length === "number"),
                found: !!(callback && typeof callback[1] === "function"),
                delay: callback && callback[0]
            });
            if (typeof g.sendEvent === "function") {
                g.sendEvent("QueueNetMsg", [api, data]);
                trace("callback-return", { api: api, path: "queue" });
                return true;
            }
            trace("callback-missing", { api: api });
        } catch (e) {
            trace("callback-error", { api: api, error: e && e.stack ? e.stack : String(e) });
            showError("离线牌局回调失败：" + api);
            return false;
        }
        return false;
    }

    function installQueueBarrier(js) {
        var callbacks = js && js.netCallBack;
        if (!callbacks) return false;
        var current = callbacks[QUEUE_BARRIER_API];
        if (current && current.__reaOfflineQueueBarrier) return true;
        var descriptor = [0, function (data) {
            var id = data && data.reaOfflineQueueBarrier;
            var task = id === undefined || id === null ? null : O.queueBarriers[String(id)];
            if (!task) return -1;
            delete O.queueBarriers[String(id)];
            trace("queue-barrier-reached", { id: id, label: task.label });
            if (task.state !== O.state) return -1;
            try { task.callback(); }
            catch (e) {
                trace("queue-barrier-error", { id: id, label: task.label, error: e && e.stack ? e.stack : String(e) });
                showError("离线牌桌队列推进异常：" + (task.label || "unknown"));
            }
            // -1 tells the original queue runner to consume this internal
            // marker without broadcasting a UI event for it.
            return -1;
        }];
        descriptor.__reaOfflineQueueBarrier = true;
        callbacks[QUEUE_BARRIER_API] = descriptor;
        O.hooked.queueBarrierDescriptor = descriptor;
        trace("queue-barrier-installed", { api: QUEUE_BARRIER_API });
        return true;
    }

    function installOfflineQueueRunner(js) {
        var scene = js && js.Scene;
        if (!scene || typeof scene.startQueueNetMsg !== "function") {
            trace("offline-queue-runner-unavailable", { hasScene: !!scene });
            return false;
        }
        if (O.hooked.offlineQueueRunnerScene === scene) return true;

        var originalStart = scene.startQueueNetMsg;
        var running = false;
        var activeItem = null;
        function later(callback, delayMs) {
            if (typeof g.setTimeout === "function") {
                g.setTimeout(callback, Math.max(0, delayMs));
                return;
            }
            if (scene && typeof scene.scheduleOnce === "function") {
                scene.scheduleOnce(callback, Math.max(0.001, delayMs / 1000));
                return;
            }
            callback();
        }
        function pump() {
            var queue = js.NetMsgQueue, item, api, data, descriptor, callback, delay, result;
            if (running || !queue || !queue.length) return;
            item = queue[0];
            api = item && item[0];
            data = item && item[1];
            descriptor = js.netCallBack && js.netCallBack[api];
            callback = descriptor && descriptor[1];
            delay = descriptor && isFinite(Number(descriptor[0])) ? Number(descriptor[0]) : 0;
            result = undefined;
            running = true;
            activeItem = item;
            trace("offline-queue-dispatch", {
                api: api,
                hasCallback: typeof callback === "function",
                delay: delay,
                queueLength: queue.length
            });
            if (typeof callback === "function") {
                try { result = descriptor[1](data); }
                catch (e) {
                    result = -1;
                    trace("offline-queue-callback-error", {
                        api: api,
                        error: e && e.stack ? e.stack : String(e)
                    });
                }
            }
            later(function () {
                try {
                    if (result !== -1 && typeof g.sendEvent === "function") g.sendEvent(api, data);
                } catch (e) {
                    trace("offline-queue-event-error", {
                        api: api,
                        error: e && e.stack ? e.stack : String(e)
                    });
                }
                later(function () {
                    var currentQueue = js.NetMsgQueue;
                    if (currentQueue && currentQueue.length && currentQueue[0] === item) currentQueue.splice(0, 1);
                    else if (currentQueue && activeItem === item) {
                        var index = currentQueue.indexOf(item);
                        if (index >= 0) currentQueue.splice(index, 1);
                    }
                    activeItem = null;
                    running = false;
                    trace("offline-queue-advanced", {
                        api: api,
                        queueLength: currentQueue ? currentQueue.length : null
                    });
                    pump();
                }, delay * 1000);
            }, 1);
        }

        scene.startQueueNetMsg = function () {
            // Only local/offline rounds use the timer-driven pump. Preserve the
            // shipped action runner for every other mode.
            if (!O.active || !O.state) return originalStart.apply(this, arguments);
            pump();
        };
        O.hooked.offlineQueueRunnerScene = scene;
        O.hooked.offlineQueueRunner = scene.startQueueNetMsg;
        trace("offline-queue-runner-installed", { mode: "timer-serialized-original-callbacks" });
        return true;
    }

    function afterQueue(callback, label, state) {
        if (!installQueueBarrier(g.jsclient)) {
            trace("queue-barrier-unavailable", { label: label, queueLength: g.jsclient && g.jsclient.NetMsgQueue ? g.jsclient.NetMsgQueue.length : null });
            schedule(callback, 1500, label + "-fallback");
            return false;
        }
        var id = ++O.queueBarrierSeq;
        O.queueBarriers[String(id)] = { callback: callback, label: label, state: state || O.state };
        try {
            if (typeof g.sendEvent !== "function") throw new Error("sendEvent is unavailable");
            g.sendEvent("QueueNetMsg", [QUEUE_BARRIER_API, { reaOfflineQueueBarrier: id }]);
            trace("queue-barrier-enqueued", {
                id: id,
                label: label,
                queueLength: g.jsclient && g.jsclient.NetMsgQueue ? g.jsclient.NetMsgQueue.length : null
            });
        } catch (e) {
            delete O.queueBarriers[String(id)];
            trace("queue-barrier-enqueue-error", { id: id, label: label, error: e && e.stack ? e.stack : String(e) });
            schedule(callback, 1500, label + "-fallback");
            return false;
        }
        if (typeof g.setTimeout === "function") {
            g.setTimeout(function () {
                var task = O.queueBarriers[String(id)];
                if (!task) return;
                delete O.queueBarriers[String(id)];
                trace("queue-barrier-timeout", {
                    id: id,
                    label: label,
                    queueLength: g.jsclient && g.jsclient.NetMsgQueue ? g.jsclient.NetMsgQueue.length : null
                });
                if (task.state !== O.state) return;
                try { task.callback(); }
                catch (e) {
                    trace("queue-barrier-timeout-error", {
                        id: id,
                        label: label,
                        error: e && e.stack ? e.stack : String(e)
                    });
                    showError("离线牌桌等待超时，回合推进失败：" + (label || "unknown"));
                }
            }, 10000);
        }
        return true;
    }

    function tableState(name, fallback) {
        return g.TableState && g.TableState[name] !== undefined ? g.TableState[name] : fallback;
    }

    function uidAt(seat) {
        return O.state && O.state.uids ? O.state.uids[seat] : null;
    }

    function seatOf(uid) {
        if (!O.state || !O.state.uids) return -1;
        for (var i = 0; i < O.state.uids.length; i++) if (String(O.state.uids[i]) === String(uid)) return i;
        return -1;
    }

    function cardCountMap(state) {
        var counts = {}, seat, count;
        if (!state || !state.hands || !state.uids) return counts;
        for (seat = 0; seat < state.uids.length; seat++) {
            count = state.hands[seat] ? state.hands[seat].length : 0;
            if (state.cardCountExcludeSeat === seat) count = Math.max(0, count - 1);
            counts[String(state.uids[seat])] = count;
        }
        return counts;
    }

    function removeOne(hand, card) {
        var i = hand.indexOf(card);
        if (i < 0) return false;
        hand.splice(i, 1);
        return true;
    }

    function removeMany(hand, cards) {
        // Preflight against a copy so a rejected meld can never partially
        // mutate a player's hand.
        var remaining = hand.slice();
        for (var i = 0; i < cards.length; i++) {
            var copyIndex = remaining.indexOf(cards[i]);
            if (copyIndex < 0) return false;
            remaining.splice(copyIndex, 1);
        }
        for (var j = 0; j < cards.length; j++) removeOne(hand, cards[j]);
        return true;
    }

    function makePlayer(uid, name, seat, profile) {
        var info = {
            uid: uid,
            name: name,
            nickname: name,
            sex: seat === 0 ? (profile.sex || 1) : (seat % 2 ? 1 : 2),
            // Offline coin-room bankroll. The table starts at 1000 and is
            // updated locally after each completed round.
            money: 1000,
            headimgurl: "",
            head: "",
            level: 1,
            vip: 0,
            isRobot: seat !== 0
        };
        return {
            uid: uid,
            info: info,
            onLine: 1,
            winall: 0,
            mjhand: [],
            mjput: [],
            mjputHand: [],
            mjputSelf: [],
            mjchi: [],
            mjpeng: [],
            mjpeng1: [],
            mjpeng1Kan: [],
            mjgang0: [],
            mjgang1: [],
            mjlie: [],
            mjdesc: [],
            mjptop: [],
            mjwtop: [],
            mjpassChi: [],
            cannotPut: [],
            caiPaiCount: 0,
            eatFlag: 0,
            originEatFlag: 0,
            mjState: tableState("waitPut", 3),
            isNew: false,
            needOneCard: false,
            waitLiuType: 0,
            pengScore: 0
        };
    }

    function rulePlayer(seat) {
        var state = O.state;
        var uid = uidAt(seat);
        var source = state.players[String(uid)];
        var player = shallowCopy(source);
        player.mjhand = state.hands[seat].slice();
        player.mjput = (source.mjput || []).slice();
        player.mjchi = (source.mjchi || []).slice();
        player.mjpeng = (source.mjpeng || []).slice();
        player.mjpeng1 = (source.mjpeng1 || []).slice();
        player.mjgang0 = (source.mjgang0 || []).slice();
        player.mjgang1 = (source.mjgang1 || []).slice();
        player.mjlie = (source.mjlie || []).slice();
        player.mjpassChi = (source.mjpassChi || []).slice();
        player.cannotPut = (source.cannotPut || []).slice();
        player.info = shallowCopy(source.info);
        return player;
    }

    function ruleData() {
        var state = O.state, players = {}, i, uid;
        for (i = 0; i < 4; i++) {
            uid = uidAt(i);
            players[String(uid)] = rulePlayer(i);
        }
        return {
            gameid: state.gameid,
            tData: state.tData,
            players: players,
            pinfo: state.profile,
            info: state.profile
        };
    }

    function ruleModule() {
        var js = g.jsclient;
        return g.huzi || (js && js.phz) || null;
    }

    function countCard(seat, card) {
        var helper = ruleModule();
        try {
            if (helper && typeof helper.handNum === "function") return Number(helper.handNum(rulePlayer(seat), card)) || 0;
        } catch (e) { log("handNum failed", e); }
        var n = 0, hand = O.state.hands[seat];
        for (var i = 0; i < hand.length; i++) if (hand[i] === card) n++;
        return n;
    }

    function canHu(seat, card, selfDraw) {
        var helper = ruleModule();
        try {
            if (!helper || typeof helper.canHu !== "function") return false;
            var params = O.state.config || {};
            var limit = Number(params.minScore || params.topScore || 0);
            var result = helper.canHu(limit, rulePlayer(seat), card, selfDraw ? 1 : 0, ruleData());
            var hasHu = result && typeof result.length === "number" ? result.length > 0 : !!result;
            trace("canHu-evaluated", {
                seat: seat,
                card: card,
                selfDraw: !!selfDraw,
                candidateCount: result && typeof result.length === "number" ? result.length : null,
                valid: hasHu
            });
            return hasHu;
        } catch (e) {
            log("canHu rejected", seat, card, e && e.stack ? e.stack : e);
            return false;
        }
    }

    function chiOptions(seat, card) {
        var state = O.state, helper = ruleModule();
        try {
            if (!state || !state.tData || Number(card) !== Number(state.lastPut) ||
                state.tData.tState !== tableState("waitEat", 4) ||
                seat !== (state.curPlayer + 1) % 4) {
                trace("chi-options-rejected", {
                    seat: seat,
                    fromSeat: state ? state.curPlayer : null,
                    card: card,
                    lastPut: state ? state.lastPut : null,
                    tableState: state && state.tData ? state.tData.tState : null,
                    reason: "stale-card-or-wrong-seat"
                });
                return [];
            }
            if (!helper || typeof helper.canChi !== "function") return [];
            var result = helper.canChi(rulePlayer(seat), card, ruleData());
            if (!result || typeof result.length !== "number") return [];
            var options = [], rejected = [], code, meld, consume;
            for (var i = 0; i < result.length; i++) {
                code = decodeChiCode(result[i]);
                meld = code === null ? null : chiCards(code, card);
                consume = meld ? chiConsumedCards(meld, card) : null;
                if (code === null || !consume || !handContainsCards(O.state.hands[seat], consume)) {
                    rejected.push(result[i]);
                    continue;
                }
                if (options.indexOf(code) < 0) options.push(code);
            }
            if (rejected.length) {
                trace("chi-options-filtered", { seat: seat, card: card, raw: result, accepted: options, rejected: rejected });
            }
            trace("chi-options-evaluated", {
                seat: seat,
                fromSeat: state.curPlayer,
                card: card,
                raw: result,
                accepted: options,
                hand: state.hands[seat] ? state.hands[seat].slice() : null
            });
            return options;
        } catch (e) {
            log("canChi rejected", seat, card, e && e.stack ? e.stack : e);
            return [];
        }
    }

    function liuOptions(seat) {
        var helper = ruleModule();
        try {
            if (!helper || typeof helper.getLiuCard !== "function") return [];
            var state = O.state;
            var lastPut = state.tData && state.tData.lastPut;
            var result = helper.getLiuCard(rulePlayer(seat), lastPut);
            return result && typeof result.length === "number" ? result : [];
        } catch (e) {
            log("getLiuCard rejected", seat, e && e.stack ? e.stack : e);
            return [];
        }
    }

    function liuTypeFor(seat, card) {
        var player = O.state.players[String(uidAt(seat))];
        var concealed = player.mjpeng1 || [];
        if (concealed.indexOf(card) >= 0 && countCard(seat, card) > 0) return 1;
        try {
            var helper = ruleModule();
            var hand = rulePlayer(seat).mjhand;
            var four = helper && typeof helper.Get4Card === "function" ? helper.Get4Card(hand) : [];
            if (four && four.indexOf(card) >= 0) return 3;
        } catch (e) { log("Get4Card rejected", seat, e); }
        return 0;
    }

    function legalResponse(seat, card, fromSeat) {
        var actions = [];
        if (seat === fromSeat) return actions;
        if (canHu(seat, card, false)) actions.push({ seat: seat, type: "hu", rank: 0 });
        // Peng takes exactly two matching concealed cards plus the discard.
        // A player already holding three copies must not be offered a fourth-
        // card Peng; self-drawn triplets are handled as Wai in drawFor.
        if (countCard(seat, card) === 2) actions.push({ seat: seat, type: "peng", rank: 1 });
        // Wai is only evaluated for the player who drew the card. A discard
        // from another seat can be Peng, never Wai.
        if (seat === (fromSeat + 1) % 4) {
            var chi = chiOptions(seat, card);
            if (chi.length) actions.push({ seat: seat, type: "chi", rank: 3, options: chi });
        }
        return actions;
    }

    function orderedActions(fromSeat, card) {
        var actions = [];
        for (var step = 1; step < 4; step++) {
            var seat = (fromSeat + step) % 4;
            actions = actions.concat(legalResponse(seat, card, fromSeat));
        }
        actions.sort(function (a, b) {
            if (a.rank !== b.rank) return a.rank - b.rank;
            var da = (a.seat - fromSeat + 4) % 4;
            var db = (b.seat - fromSeat + 4) % 4;
            return da - db;
        });
        return actions;
    }

    function playerDataCopy() {
        var out = {}, key, source;
        for (key in O.state.players) {
            if (!Object.prototype.hasOwnProperty.call(O.state.players, key)) continue;
            source = shallowCopy(O.state.players[key]);
            source.info = shallowCopy(O.state.players[key].info);
            source.mjput = (O.state.players[key].mjput || []).slice();
            source.mjchi = (O.state.players[key].mjchi || []).slice();
            source.mjpeng = (O.state.players[key].mjpeng || []).slice();
            source.mjhand = O.state.hands[seatOf(key)].slice();
            out[key] = source;
        }
        return out;
    }

    function updateClientTData() {
        var data = g.jsclient && g.jsclient.data && g.jsclient.data.sData;
        if (!data || !data.tData || !O.state || !O.state.tData) return;
        O.state.tData.cardNext = O.state.cardNext;
        O.state.tData.cardNums = cardCountMap(O.state);
        O.state.tData.leftCards = O.state.wall.slice();
        O.state.tData.roundNum = O.state.roundNum;
        var key;
        // Keep the local table state authoritative after the original callback
        // has processed the offline event.
        for (key in O.state.tData) {
            if (Object.prototype.hasOwnProperty.call(O.state.tData, key)) data.tData[key] = O.state.tData[key];
        }
    }

    function freshTData() {
        var state = O.state;
        var t = shallowCopy(state.tData);
        t.gameid = state.gameid;
        t.uids = state.uids.slice();
        t.playerNum = 4;
        t.curPlayer = state.curPlayer;
        t.zhuang = state.zhuang;
        t.roundAll = state.roundAll || t.roundAll || 1;
        t.roundNum = state.roundNum || t.roundNum || 1;
        t.cardNext = state.cardNext;
        t.leftCards = state.wall.slice();
        t.roundNum = state.roundNum;
        t.cardNums = cardCountMap(state);
        t.lastPut = state.lastPut;
        t.tState = state.tData.tState;
        return t;
    }

    function refreshSeatFlags(actions) {
        var flags = {}, origins = {}, mask = 0, uid;
        for (var i = 0; i < actions.length; i++) {
            if (actions[i].seat !== 0) continue;
            if (actions[i].type === "hu") mask |= 8;
            if (actions[i].type === "peng") mask |= 2;
            // The original PlayLayer checks bit 1 (not bit 4) when deciding
            // whether to display its Chi control.
            if (actions[i].type === "chi") mask |= 1;
            if (actions[i].type === "wai") mask |= 16;
        }
        for (var seat = 0; seat < 4; seat++) {
            uid = String(uidAt(seat));
            flags[uid] = 0;
            origins[uid] = 0;
        }
        flags[String(uidAt(0))] = mask;
        origins[String(uidAt(0))] = mask;
        return { eatFlag: flags, originEatFlag: origins };
    }

    function humanResponseActions(pending) {
        var human = [], first = null;
        pending = pending || [];
        for (var i = 0; i < pending.length; i++) {
            if (pending[i].seat === 0) human.push(pending[i]);
            else if (!first) first = pending[i];
        }
        if (!human.length) return [];
        if (!first) return human;
        var humanAction = human[0];
        // Another seat's higher-ranked response must resolve first. For equal
        // rank, the seat closer to the discarder has priority.
        if (first.rank < humanAction.rank ||
            (first.rank === humanAction.rank && first.distance < humanAction.distance)) return [];
        return human;
    }

    function addActionOrderMetadata(actions, fromSeat) {
        for (var i = 0; i < actions.length; i++) {
            actions[i].distance = (actions[i].seat - fromSeat + 4) % 4;
        }
        return actions;
    }

    function publishDiscard(seat, card) {
        var state = O.state, uid = uidAt(seat), player = state.players[String(uid)];
        trace("publish-discard-enter", { seat: seat, uid: uid, card: card });
        state.cardCountExcludeSeat = -1;
        state.selfDrawCard = null;
        state.curPlayer = seat;
        state.lastPut = card;
        state.tData.curPlayer = seat;
        state.tData.lastPut = card;
        state.tData.putType = 0;
        state.tData.tState = tableState("waitEat", 4);
        player.mjput = (player.mjput || []).concat([card]);
        player.eatFlag = 0;
        player.originEatFlag = 0;
        // The original newCard callback marks this player as holding the
        // enlarged just-drawn tile. A normal discard must clear that marker;
        // the original server updates this as part of its turn state.
        player.isNew = false;
        player.needOneCard = false;
        player.mjState = tableState("waitEat", 4);
        player.waitLiuType = 0;
        var actions = addActionOrderMetadata(orderedActions(seat, card), seat);
        state.pending = actions;
        trace("responses-calculated", { seat: seat, card: card, actions: actions.map(function (a) { return { seat: a.seat, type: a.type }; }) });
        var flags = refreshSeatFlags(humanResponseActions(actions));
        trace("response-flags-published", {
            humanUid: uidAt(0),
            mask: flags.eatFlag[String(uidAt(0))],
            flags: flags.eatFlag
        });
        var payload = {
            tData: freshTData(),
            uid: uid,
            card: card,
            putType: 0,
            mjput: player.mjput.slice(),
            mjpassChi: player.mjpassChi || [],
            eatFlag: flags.eatFlag,
            originEatFlag: flags.originEatFlag,
            isAuto: false
        };
        if (seat === 0 && g.jsclient) {
            var hadDeferredResort = !!g.jsclient.selfResortCard;
            if (hadDeferredResort) g.jsclient.selfResortCard = false;
            trace("human-hand-order-before-discard", {
                deferredResortCleared: hadDeferredResort,
                handCount: state.hands[0] ? state.hands[0].length : null
            });
        }
        emit("MJPut", payload);
        updateClientTData();
        trace("publish-discard-callback-done", { seat: seat, card: card });
        // Queue a local continuation behind the original MJPut callback and
        // any ClientMsgDelay markers. A fixed 500 ms timer can run before that
        // serialized client queue has finished.
        afterQueue(function () {
            if (O.state === state) runPending();
        }, "after-discard-runPending", state);
    }

    function doPeng(action, fromSeat, card) {
        var state = O.state, seat = action.seat, uid = uidAt(seat), player = state.players[String(uid)];
        if (!removeMany(state.hands[seat], [card, card])) return false;
        state.curPlayer = seat;
        state.tData.curPlayer = seat;
        state.tData.lastPut = card;
        state.tData.tState = tableState("waitPut", 3);
        state.pending = [];
        player.eatFlag = 0;
        player.originEatFlag = 0;
        player.waitLiuType = 0;
        emit("MJPeng", { tData: freshTData(), from: fromSeat, needOneCard: true, putType: 0 });
        updateClientTData();
        if (seat === 0) return true;
        afterQueue(function () {
            schedule(function () { botDiscard(seat); }, 650, "after-peng-bot-discard");
        }, "after-peng-bot-turn", state);
        return true;
    }

    function doWai(action, fromSeat, card) {
        var state = O.state, seat = action.seat, uid = uidAt(seat), player = state.players[String(uid)];
        if (countCard(seat, card) < 2 || !removeMany(state.hands[seat], [card, card])) return false;
        state.curPlayer = seat;
        state.tData.curPlayer = seat;
        state.tData.lastPut = card;
        state.tData.tState = tableState("waitPut", 3);
        state.pending = [];
        player.eatFlag = 0;
        player.originEatFlag = 0;
        player.waitLiuType = 0;
        emit("MJWai", {
            tData: freshTData(),
            mjState: tableState("waitPut", 3),
            eatFlag: 0,
            originEatFlag: 0,
            waitLiuType: 0
        });
        updateClientTData();
        if (seat === 0) return true;
        afterQueue(function () {
            schedule(function () { botDiscard(seat); }, 650, "after-wai-bot-discard");
        }, "after-wai-bot-turn", state);
        return true;
    }

    function decodeChiCode(value) {
        var depth = 0;
        while (value && typeof value === "object" && typeof value.length === "number" && depth < 4) {
            if (value.length !== 1) return null;
            value = value[0];
            depth++;
        }
        if (value === null || value === undefined || value === "") return null;
        var code = Number(value);
        if (!isFinite(code) || Math.floor(code) !== code) return null;
        return code;
    }

    function chiCards(code, card) {
        var value = Number(card);
        if (!isFinite(value)) return null;
        var base = value > 100 ? 100 : 0;
        var rank = value - base;
        var meld;
        if (code === 0) meld = [value, value + 1, value + 2];
        else if (code === 1) meld = [value - 1, value, value + 1];
        else if (code === 2) meld = [value - 2, value - 1, value];
        else if (code === 3) {
            var opposite = value > 100 ? value - 100 : value + 100;
            meld = [value, value, opposite];
            if (!isValidHuziCard(opposite)) return null;
        } else if (code === 4) {
            var sameRankOpposite = value > 100 ? value - 100 : value + 100;
            meld = [value, sameRankOpposite, sameRankOpposite];
            if (!isValidHuziCard(sameRankOpposite)) return null;
        }
        else if (code === 5) {
            meld = [base + 2, base + 7, base + 10];
            if (meld.indexOf(value) < 0) return null;
        } else if (code === 6) {
            meld = [base + 1, base + 5, base + 10];
            if (meld.indexOf(value) < 0) return null;
        } else return null;

        for (var i = 0; i < meld.length; i++) {
            if (!isValidHuziCard(meld[i])) return null;
            if (code < 3 || code > 4) {
                var meldBase = meld[i] > 100 ? 100 : 0;
                if (meldBase !== base) return null;
            }
        }
        if (meld.indexOf(value) < 0 || rank < 1 || rank > 10) return null;
        return meld;
    }

    function isValidHuziCard(card) {
        var value = Number(card);
        if (!isFinite(value) || Math.floor(value) !== value) return false;
        var base = value > 100 ? 100 : 0;
        var rank = value - base;
        return rank >= 1 && rank <= 10;
    }

    function chiConsumedCards(meld, card) {
        var consume = [], skippedClaimedCard = false, claimed = Number(card);
        if (!meld || meld.length !== 3 || !isFinite(claimed)) return null;
        for (var i = 0; i < meld.length; i++) {
            if (!skippedClaimedCard && Number(meld[i]) === claimed) {
                skippedClaimedCard = true;
                continue;
            }
            consume.push(meld[i]);
        }
        return skippedClaimedCard && consume.length === 2 ? consume : null;
    }

    function handContainsCards(hand, cards) {
        if (!hand || !cards) return false;
        var remaining = hand.slice();
        for (var i = 0; i < cards.length; i++) {
            var index = remaining.indexOf(cards[i]);
            if (index < 0) return false;
            remaining.splice(index, 1);
        }
        return true;
    }

    function doChi(action, fromSeat, card, pos) {
        var state = O.state, seat = action.seat, uid = uidAt(seat), player = state.players[String(uid)];
        if (seat !== (fromSeat + 1) % 4) {
            trace("chi-action-rejected", { seat: seat, fromSeat: fromSeat, card: card, reason: "not-next-seat" });
            return false;
        }
        // Re-evaluate against the current hand. Pending UI flags can outlive a
        // state transition, so a click must never trust the old option list.
        var list = chiOptions(seat, card), allowed = [], code = decodeChiCode(pos);
        for (var i = 0; i < list.length; i++) {
            var optionCode = decodeChiCode(list[i]);
            if (optionCode !== null && allowed.indexOf(optionCode) < 0) allowed.push(optionCode);
        }
        // The original UI sends the rule code itself, often as [5]. If an
        // older caller sends an index instead, resolve it only when it is not
        // already a legal code.
        if (code !== null && allowed.indexOf(code) < 0 && Number(pos) >= 0 && Number(pos) < allowed.length) {
            code = allowed[Number(pos)];
        }
        if (code === null && allowed.length === 1) code = allowed[0];
        var meld = code !== null && allowed.indexOf(code) >= 0 ? chiCards(code, card) : null;
        trace("chi-option-decoded", { seat: seat, card: card, pos: pos, allowedCodes: allowed, selectedCode: code, meld: meld });
        if (!meld) {
            trace("chi-action-rejected", { seat: seat, card: card, pos: pos, allowedCodes: allowed, handCount: state.hands[seat] ? state.hands[seat].length : null });
            return false;
        }
        var consume = chiConsumedCards(meld, card);
        if (!consume) {
            trace("chi-action-rejected", { seat: seat, card: card, pos: pos, selectedCode: code, meld: meld, reason: "claimed-card-not-in-meld" });
            return false;
        }
        if (!removeMany(state.hands[seat], consume)) {
            trace("chi-action-rejected", { seat: seat, card: card, selectedCode: code, meld: meld, reason: "required-card-missing", handCount: state.hands[seat] ? state.hands[seat].length : null });
            return false;
        }
        state.curPlayer = seat;
        state.tData.curPlayer = seat;
        state.tData.lastPut = card;
        state.tData.tState = tableState("waitPut", 3);
        state.pending = [];
        player.eatFlag = 0;
        player.originEatFlag = 0;
        player.isNew = false;
        player.needOneCard = true;
        player.mjState = tableState("waitPut", 3);
        player.waitLiuType = 0;
        emit("MJChi", { tData: freshTData(), from: fromSeat, needOneCard: true, pos: 0, mjchi: meld });
        updateClientTData();
        trace("chi-action-applied", { seat: seat, card: card, selectedCode: code, meld: meld });
        if (seat === 0) return true;
        afterQueue(function () {
            schedule(function () { botDiscard(seat); }, 650, "after-chi-bot-discard");
        }, "after-chi-bot-turn", state);
        return true;
    }

    function runPending() {
        var state = O.state;
        if (!state || state.ended) {
            trace("run-pending-stop", { reason: !state ? "no-state" : "round-ended" });
            return;
        }
        trace("run-pending-enter", {});
        while (state.pending && state.pending.length) {
            var action = state.pending[0];
            if (action.seat === 0) {
                var selectable = humanResponseActions(state.pending);
                var flags = refreshSeatFlags(selectable);
                var player = state.players[String(uidAt(0))];
                player.eatFlag = flags.eatFlag[String(uidAt(0))];
                player.originEatFlag = flags.originEatFlag[String(uidAt(0))];
                trace("run-pending-waits-human", { flags: player.eatFlag, selectable: selectable.map(function (a) { return a.type; }) });
                return;
            }
            state.pending.shift();
            trace("run-pending-action", { seat: action.seat, type: action.type });
            if (action.type === "hu") {
                settle(action.seat, state.lastPut, false, state.curPlayer);
                return;
            }
            if (action.type === "peng") {
                if (doPeng(action, state.curPlayer, state.lastPut)) return;
                continue;
            }
            if (action.type === "wai") {
                if (doWai(action, state.curPlayer, state.lastPut)) return;
                continue;
            }
            if (action.type === "chi") {
                var botChiPos = action.options && action.options.length ? action.options[0] : null;
                if (doChi(action, state.curPlayer, state.lastPut, botChiPos)) return;
                continue;
            }
        }
        trace("run-pending-draw-next", { nextSeat: (state.curPlayer + 1) % 4 });
        drawFor((state.curPlayer + 1) % 4);
    }

    function passHumanResponse(recordPassedChi, label) {
        var state = O.state;
        if (!state || state.ended) return;
        var player = state.players[String(uidAt(0))];
        var hadChi = false;
        for (var i = 0; i < state.pending.length; i++) {
            if (state.pending[i].seat === 0 && state.pending[i].type === "chi") { hadChi = true; break; }
        }
        state.pending = state.pending.filter(function (action) { return action.seat !== 0; });
        player.eatFlag = 0;
        player.originEatFlag = 0;
        player.waitLiuType = 0;
        player.mjState = tableState("waitEat", 4);
        state.tData.tState = tableState("waitEat", 4);
        if (recordPassedChi && hadChi) player.mjpassChi = (player.mjpassChi || []).concat([state.lastPut]);
        emit("MJPass", {
            tData: freshTData(),
            uid: uidAt(0),
            card: state.lastPut,
            mjState: tableState("waitEat", 4),
            mjpassChi: player.mjpassChi || [],
            waitLiuType: 0
        });
        updateClientTData();
        afterQueue(function () {
            if (O.state === state) runPending();
        }, label || "after-human-pass", state);
    }

    function refreshHumanResponseFlags(state) {
        var player = state.players[String(uidAt(0))];
        var flags = refreshSeatFlags(humanResponseActions(state.pending));
        player.eatFlag = flags.eatFlag[String(uidAt(0))];
        player.originEatFlag = flags.originEatFlag[String(uidAt(0))];
        return player.eatFlag;
    }

    function schedule(callback, delay, label) {
        trace("timer-scheduled", { label: label || "unlabeled", delay: delay || 500 });
        var run = function () {
            trace("timer-fired", { label: label || "unlabeled" });
            try { callback(); }
            catch (e) {
                trace("timer-error", { label: label || "unlabeled", error: e && e.stack ? e.stack : String(e) });
                showError("离线回合执行异常：" + (label || "unknown"));
            }
        };
        if (typeof g.setTimeout === "function") g.setTimeout(run, delay || 500);
        else run();
    }

    function chooseDiscard(seat) {
        var hand = O.state.hands[seat], best = hand[0], bestScore = Infinity, helper = ruleModule();
        if (!hand.length) return null;
        for (var i = 0; i < hand.length; i++) {
            var score = Infinity;
            try {
                if (helper && typeof helper.getRelateCount === "function") {
                    score = Number(helper.getRelateCount(hand, hand[i]));
                    if (!isFinite(score)) score = Infinity;
                }
            } catch (e) { score = Infinity; }
            if (score < bestScore || (score === bestScore && Number(hand[i]) < Number(best))) {
                bestScore = score;
                best = hand[i];
            }
        }
        return best;
    }

    function botDiscard(seat) {
        if (!O.state || O.state.ended) {
            trace("bot-discard-stop", { seat: seat, reason: !O.state ? "no-state" : "round-ended" });
            return;
        }
        var card = chooseDiscard(seat);
        trace("bot-discard-choice", { seat: seat, card: card, handCount: O.state.hands[seat] && O.state.hands[seat].length });
        if (card === null || card === undefined) return settle(-1, null, false, seat);
        var removed = removeOne(O.state.hands[seat], card);
        trace("bot-discard-removed", { seat: seat, card: card, removed: removed });
        if (!removed) return;
        schedule(function () { publishDiscard(seat, card); }, 250, "after-bot-choice-publish-discard");
    }

    function addCardToClient(seat, card, alreadyInHand, allowDiscard, allowAddToHand) {
        var state = O.state, uid = uidAt(seat), player = state.players[String(uid)];
        if (!alreadyInHand) state.hands[seat].push(card);
        // The enlarged-card marker belongs only to the player who most
        // recently drew. Older turns can leave it set because MJPut does not
        // clear isNew in the original callback.
        clearOtherNewCardMarkers(seat);
        state.cardCountExcludeSeat = -1;
        player.isNew = true;
        state.curPlayer = seat;
        state.tData.curPlayer = seat;
        state.tData.cardNext = state.cardNext;
        state.tData.tState = allowDiscard === false ? tableState("waitEat", 4) : tableState("waitPut", 3);
        // The original newCard handler compares mjhand.length with cardNums
        // and requests a scene refresh on mismatch. Add the drawn card first.
        if (seat === 0 && allowAddToHand !== false) {
            emit("addCard", { tData: freshTData(), uid: uid, card: card, isSelfHu: true });
            updateClientTData();
        }
        emit("newCard", {
            tData: freshTData(),
            uid: uid,
            curPlayer: seat,
            card: card,
            cardNext: state.cardNext,
            lastPut: state.lastPut,
            putType: state.tData.putType || 0,
            mjput: (player.mjput || []).slice()
        });
        updateClientTData();
        if (seat === 0 && allowDiscard !== false) {
            emit("waitPut", freshTData());
            updateClientTData();
        }
    }

    function clearOtherNewCardMarkers(activeSeat) {
        var state = O.state, cleared = [];
        if (!state || !state.players) return;
        for (var seat = 0; seat < state.uids.length; seat++) {
            if (seat === activeSeat) continue;
            var player = state.players[String(uidAt(seat))];
            if (player && player.isNew) {
                player.isNew = false;
                cleared.push(seat);
            }
        }
        if (cleared.length) trace("stale-new-card-markers-cleared", { activeSeat: activeSeat, clearedSeats: cleared });
    }

    function renderOfflineHandIncremental(layer, eventData) {
        var js = g.jsclient, helper = js && js.phz;
        var control = g.handCardControl;
        var player = typeof g.getUIPlayer === "function" ? g.getUIPlayer(0) : null;
        if (!layer || !control || !player || !player.mjhand || !helper || typeof helper.sortCard !== "function" || typeof g.AddNewCard !== "function") {
            throw new Error("original hand renderer dependencies are unavailable");
        }

        control.initStandLayoutStatus();
        var sorted = helper.sortCard(player.mjhand, control._cardCol, js.data.sData.tData);
        if (!sorted || typeof sorted.length !== "number") throw new Error("sortCard returned an invalid hand");

        var pools = {}, children = layer.getChildren ? layer.getChildren() : [], row, col, child, key, list;
        for (var i = 0; i < children.length; i++) {
            child = children[i];
            if (!child || !child.getName || child.getName() !== "mjhand") continue;
            key = String(child.tag);
            list = pools[key] || (pools[key] = []);
            list.push(child);
        }

        var styles = [0.9, 1, 1.1];
        var style = styles[Number(g.DefaultCardSizeStyle)];
        if (typeof style !== "number" || !isFinite(style)) style = 1;
        var offset = Math.floor((control._cardCol - sorted.length) / 2);
        var kept = [], created = 0;
        for (row = 0; row < sorted.length; row++) {
            for (col = 0; col < sorted[row].length; col++) {
                var card = sorted[row][col];
                key = String(card);
                list = pools[key];
                child = list && list.length ? list.shift() : null;
                if (!child) {
                    child = g.AddNewCard(layer, "stand", "mjhand", card, 1);
                    created++;
                }
                if (typeof child.__reaOfflineBaseScale !== "number" || !isFinite(child.__reaOfflineBaseScale)) {
                    child.__reaOfflineBaseScale = Number(child.scale) || 1;
                }
                child.scale = child.__reaOfflineBaseScale * style;
                control.setCardGray(child, control.isCardGray(child.tag));
                control.setStandCard(child, control._handCardMatrix[row + offset][col], eventData);
                kept.push(child);
            }
        }

        var removed = 0;
        for (key in pools) {
            if (!Object.prototype.hasOwnProperty.call(pools, key)) continue;
            list = pools[key];
            for (i = 0; i < list.length; i++) {
                if (list[i] && list[i].removeFromParent) {
                    list[i].removeFromParent(true);
                    removed++;
                }
            }
        }
        if (typeof control.setDeadCard === "function") control.setDeadCard();
        if (typeof g.refreshCanTing === "function") g.refreshCanTing(layer);
        trace("hand-render-incremental", { cards: kept.length, created: created, removed: removed });
    }

    function patchOfflineHandEvents(events, target) {
        if (!events) return false;
        if (events.__reaOfflineHandUiPatched) return true;
        var originalMjhand = events.mjhand, originalAddCard = events.addCard;
        if (typeof originalMjhand !== "function" || typeof originalAddCard !== "function") {
            trace("hand-ui-hook-rejected", { target: target, hasMjhand: typeof originalMjhand === "function", hasAddCard: typeof originalAddCard === "function" });
            return false;
        }
        try {
            events.mjhand = function () {
                if (O.state && O.state.suppressInitialMjhand) {
                    trace("initial-hand-mjhand-suppressed", { target: target });
                    return undefined;
                }
                return originalMjhand.apply(this, arguments);
            };
            events.addCard = function (data) {
                var state = O.state;
                var initialDealerAdd = state && state.initialDealerCard !== undefined && data &&
                    Number(data.uid) === Number(uidAt(state.zhuang)) &&
                    Number(data.card) === Number(state.initialDealerCard) &&
                    Number(data.tData && data.tData.cardNext) === Number(state.initialDealerCardNext);
                if (initialDealerAdd && state.initialHandRendered) {
                    trace("duplicate-initial-addCard-suppressed", { card: data.card, cardNext: state.initialDealerCardNext });
                    return undefined;
                }
                if (!initialDealerAdd && !(data && data.isSelfHu === true)) {
                    // Normal draws use the original separate drawn-card view.
                    // Rebuilding and sorting the whole hand here overwrites a
                    // player's manual ordering during unrelated turns.
                    trace("hand-refresh-skipped-noninitial-draw", { card: data && data.card, uid: data && data.uid });
                    return undefined;
                }
                try {
                    var result = renderOfflineHandIncremental(this, data);
                    if (initialDealerAdd) {
                        state.initialHandRendered = true;
                        trace("initial-hand-render-once", { cardCount: (getUIPlayer(0).mjhand || []).length, cardNext: state.initialDealerCardNext });
                    }
                    return result;
                } catch (e) {
                    trace("hand-render-incremental-fallback", { target: target, error: e && e.stack ? e.stack : String(e) });
                    var fallback = originalAddCard.apply(this, arguments);
                    if (initialDealerAdd) {
                        state.initialHandRendered = true;
                        trace("initial-hand-render-fallback-once", { cardNext: state.initialDealerCardNext });
                    }
                    return fallback;
                }
            };
            events.__reaOfflineHandUiPatched = true;
            trace("hand-ui-events-patched", { target: target });
            return true;
        } catch (e) {
            trace("hand-ui-hook-error", { target: target, error: e && e.stack ? e.stack : String(e) });
            return false;
        }
    }

    function installOfflineHandUI() {
        var js = g.jsclient, patched = false, targetCount = 0;
        var ctor = g.PlayLayer, proto = ctor && ctor.prototype;
        var prototypeEvents = proto && proto.jsBind && proto.jsBind.down && proto.jsBind.down._event;
        if (prototypeEvents) {
            if (patchOfflineHandEvents(prototypeEvents, "PlayLayer.prototype")) { patched = true; targetCount++; }
        }

        // ConnectUI2Logic binds event functions inside PlayLayer's constructor.
        // Hook its event map before the original ctor reaches that binding call.
        if (proto && typeof proto.ctor === "function" && !proto.__reaOfflineHandCtorHooked) {
            var originalCtor = proto.ctor;
            try {
                proto.ctor = function () {
                    var events = this.jsBind && this.jsBind.down && this.jsBind.down._event;
                    if (events && patchOfflineHandEvents(events, "PlayLayer.ctor-before-bind")) targetCount++;
                    return originalCtor.apply(this, arguments);
                };
                proto.__reaOfflineHandCtorHooked = true;
                O.hooked.offlineHandCtor = proto;
                patched = true;
            } catch (e) { trace("hand-ui-ctor-hook-error", { error: e && e.stack ? e.stack : String(e) }); }
        }

        var instanceEvents = js && js.playui && js.playui.jsBind && js.playui.jsBind.down && js.playui.jsBind.down._event;
        if (instanceEvents && patchOfflineHandEvents(instanceEvents, "PlayLayer.instance")) { patched = true; targetCount++; }
        trace("hand-ui-hook-installed", {
            beforeSceneCreate: !instanceEvents,
            hasPlayLayerCtor: !!ctor,
            hasPrototypeEvents: !!prototypeEvents,
            ctorHooked: !!(proto && proto.__reaOfflineHandCtorHooked),
            eventMaps: targetCount
        });
        return patched;
    }

    function drawFor(seat) {
        var state = O.state;
        if (!state || state.ended) {
            trace("draw-stop", { seat: seat, reason: !state ? "no-state" : "round-ended" });
            return;
        }
        if (!state.wall.length) {
            trace("draw-stop", { seat: seat, reason: "empty-wall" });
            return settle(-1, null, false, seat);
        }
        var card = state.wall.shift();
        state.cardNext += 1;
        state.curPlayer = seat;
        state.tData.curPlayer = seat;
        state.tData.cardNext = state.cardNext;
        var player = state.players[String(uidAt(seat))];
        // The rule module evaluates the incoming card separately. Keep it out
        // of the standing hand unless it completes a self-draw Hu.
        var canSelfHu = canHu(seat, card, true);
        var liuCards = liuOptions(seat);
        var selfWai = countCard(seat, card) >= 2;
        trace("draw-card", { seat: seat, card: card, canSelfHu: canSelfHu, selfWai: selfWai, liuCards: liuCards });
        if (!canSelfHu && selfWai) {
            state.curPlayer = seat;
            state.tData.curPlayer = seat;
            state.tData.lastPut = card;
            player.mjput = (player.mjput || []).concat([card]);
            var selfWaiAction = { seat: seat, type: "wai" };
            if (doWai(selfWaiAction, seat, card)) return;
            player.mjput.pop();
        }
        if (!canSelfHu) {
            state.curPlayer = seat;
            state.tData.curPlayer = seat;
            // Advance the stock card counter without inserting the drawn tile
            // into the standing hand. The rule flow immediately publishes it.
            addCardToClient(seat, card, true, false, false);
            publishDiscard(seat, card);
            return;
        }
        state.hands[seat].push(card);
        if (seat === 0) {
            player.eatFlag = (canSelfHu ? 8 : 0) | (liuCards.length ? 64 : 0);
            player.originEatFlag = player.eatFlag;
            player.waitLiuType = liuCards.length ? 3 : 0;
        }
        if (seat === 0) {
            state.selfDrawCard = card;
            player.eatFlag = (canSelfHu ? 8 : 0) | (liuCards.length ? 64 : 0);
            player.originEatFlag = player.eatFlag;
            player.waitLiuType = liuCards.length ? 3 : 0;
            addCardToClient(seat, card, true, false);
            trace("human-self-hu-offer", { seat: seat, card: card });
            return;
        }
        addCardToClient(seat, card, true);
        afterQueue(function () {
            if (O.state !== state || state.ended) return;
            if (canSelfHu) {
                trace("bot-self-hu", { seat: seat, card: card });
                return settle(seat, card, true, seat);
            }
        }, "after-bot-draw", state);
    }

    function doLiu(seat, card) {
        var state = O.state, uid = uidAt(seat), player = state.players[String(uid)];
        var options = liuOptions(seat), found = false;
        for (var i = 0; i < options.length; i++) if (Number(options[i]) === Number(card)) { found = true; break; }
        if (!found) return false;
        card = Number(card);
        var liu = liuTypeFor(seat, card);
        if (!liu) return false;
        if (liu === 1) {
            if (!removeOne(state.hands[seat], card)) return false;
        } else {
            var fours = [];
            for (var j = 0; j < 4; j++) fours.push(card);
            if (!removeMany(state.hands[seat], fours)) return false;
        }
        state.selfDrawCard = null;
        state.curPlayer = seat;
        state.tData.curPlayer = seat;
        state.tData.tState = tableState("waitCard", 5);
        player.eatFlag = 0;
        player.originEatFlag = 0;
        player.waitLiuType = 0;
        emit("MJLiu", {
            tData: freshTData(),
            liuCard: card,
            liu: liu,
            mjlie: (player.mjlie || []).slice()
        });
        updateClientTData();
        afterQueue(function () {
            schedule(function () { drawFor(seat); }, 650, "after-liu-draw-again");
        }, "after-liu-draw-again", state);
        return true;
    }

    function installOfflineScoreAdapter(helper) {
        if (!helper || typeof helper.getScore !== "function" || O.hooked.scoreAdapter === helper) return;
        var original = helper.getScore;
        try {
            helper.getScore = function () {
                var result = original.apply(this, arguments);
                if (result && typeof result === "object") {
                    var value = Number(result.winNum);
                    if (!isFinite(value)) value = 0;
                    // The shipped getScore implementation returns a number;
                    // labels that concatenate an object render [object Object]
                    // in the Cocos JSB runtime. Normalize at the API boundary.
                    return value;
                }
                return result;
            };
            O.hooked.scoreAdapter = helper;
            trace("score-adapter-installed", {});
        } catch (e) { trace("score-adapter-error", { error: e && e.stack ? e.stack : String(e) }); }
    }

    function scorePlayers(winnerSeat, card, selfDraw) {
        var data = ruleData(), result = { winNum: {}, origWinNum: {}, multiple: {}, rudder: {} }, helper = ruleModule();
        for (var seat = 0; seat < 4; seat++) {
            var uid = String(uidAt(seat)), p = rulePlayer(seat), score = null, value = 0;
            try {
                if (helper && typeof helper.getScore === "function") score = helper.getScore(p, seat === winnerSeat, card, data);
            } catch (e) { log("getScore failed", seat, e); }
            value = Number(score && typeof score === "object" ? score.winNum : score);
            if (!isFinite(value)) value = 0;
            result.winNum[uid] = value;
            result.origWinNum[uid] = value;
            result.multiple[uid] = Number(score && typeof score === "object" ? score.multiple : 1);
            result.rudder[uid] = Number(score && typeof score === "object" ? score.rudder : 0);
            if (!isFinite(result.multiple[uid])) result.multiple[uid] = 1;
            if (!isFinite(result.rudder[uid])) result.rudder[uid] = 0;
        }
        return result;
    }

    function settle(winnerSeat, card, selfDraw, sourceSeat) {
        var state = O.state;
        if (!state || state.ended) return;
        state.ended = true;
        state.pending = [];
        state.roundNum = Math.max(0, Number(state.roundNum) - 1);
        O.roundsRemaining = state.roundNum;
        state.tData.roundNum = state.roundNum;
        state.tData.leftCards = state.wall.slice();
        var winner = Number(winnerSeat), score = scorePlayers(winner, card, selfDraw);
        // In the shipped client, the round-end handler only copies the
        // server-provided winNum into tData; coin balances are normally
        // adjusted by the server. Offline play has no server, so apply a
        // zero-sum local transfer using the original rule module's per-seat
        // getScore values. Do not let any player bankroll drop below zero.
        var moneyDelta = {}, transfer = 0;
        for (var seat = 0; seat < 4; seat++) {
            var uid = String(uidAt(seat));
            moneyDelta[uid] = 0;
        }
        if (winner >= 0 && winner < 4) {
            for (var loserSeat = 0; loserSeat < 4; loserSeat++) {
                if (loserSeat === winner) continue;
                var loserUid = String(uidAt(loserSeat));
                var loser = state.players[loserUid];
                var loserScore = Math.abs(Number(score.winNum[loserUid]) || 0);
                var balance = Math.max(0, Number(loser && loser.info && loser.info.money) || 0);
                var loss = Math.min(balance, loserScore);
                moneyDelta[loserUid] = -loss;
                transfer += loss;
            }
            moneyDelta[String(uidAt(winner))] = transfer;
        }
        for (var applySeat = 0; applySeat < 4; applySeat++) {
            var applyUid = String(uidAt(applySeat));
            var applyPlayer = state.players[applyUid];
            if (!applyPlayer) continue;
            if (!applyPlayer.info) applyPlayer.info = {};
            var oldMoney = Math.max(0, Number(applyPlayer.info.money) || 0);
            applyPlayer.info.money = Math.max(0, oldMoney + moneyDelta[applyUid]);
            applyPlayer.winall = (Number(applyPlayer.winall) || 0) + moneyDelta[applyUid];
        }
        state.tData.winner = winner >= 0 ? winner : -1;
        state.tData.lastDrawPlayer = selfDraw ? winner : sourceSeat;
        state.tData.putType = selfDraw ? 1 : 0;
        state.tData.delEnd = winner >= 0 ? 0 : 1;
        state.tData.tState = tableState("roundFinish", 6);
        state.tData.cardNums = cardCountMap(state);
        var payload = {
            tData: freshTData(),
            players: playerDataCopy(),
            cards: state.wall.slice(),
            winNum: score.winNum,
            origWinNum: score.origWinNum,
            multiple: score.multiple,
            rudder: score.rudder,
            xingCard: card || 0,
            xingNum: 0,
            playInfo: { caiPaiCount: {} },
            info: {}
        };
        trace("settlement-score-payload", { winner: winner, winNum: payload.winNum, moneyDelta: moneyDelta, balances: [state.players[String(uidAt(0))].info.money, state.players[String(uidAt(1))].info.money, state.players[String(uidAt(2))].info.money, state.players[String(uidAt(3))].info.money], multiple: payload.multiple, rudder: payload.rudder });
        emit("roundEnd", payload);
        updateClientTData();
    }

    function startRound(config) {
        var js = g.jsclient, helper = ruleModule();
        trace("start-round-enter", {
            hasClient: !!js,
            hasPhz: !!(js && js.phz),
            ruleFunctions: helper ? {
                randomCards: typeof helper.randomCards,
                canHu: typeof helper.canHu,
                canChi: typeof helper.canChi,
                getLiuCard: typeof helper.getLiuCard,
                getRelateCount: typeof helper.getRelateCount
            } : null
        });
        if (!js || !js.phz || !helper || typeof helper.randomCards !== "function") {
            trace("start-round-rejected", { reason: "rules-not-ready" });
            showError("原跑胡子规则模块尚未就绪");
            return false;
        }
        installOfflineScoreAdapter(helper);
        var params = shallowCopy(config || {});
        params.playerNum = 4;
        var roundCount = Number(params.roundAll || params.roundCount || params.roundNum);
        if (params.roundOne) roundCount = 1;
        if (!isFinite(roundCount) || roundCount < 1) {
            var roundMatch = /^round(\d+)$/i.exec(String(params.round || ""));
            roundCount = roundMatch ? Number(roundMatch[1]) : 1;
        }
        if (!isFinite(roundCount) || roundCount < 1) roundCount = 1;
        if (O.state && O.state.ended && O.roundsRemaining !== undefined && O.roundsRemaining !== null) {
            roundCount = Math.max(1, Number(O.roundsRemaining) || 1);
        }
        var roundsTotal = O.state && O.state.ended && Number(O.roundsTotal) > 0 ? Number(O.roundsTotal) : roundCount;
        var gameid = params.gameId || params.gameid || js.phz.gameid;
        var huziType = params.huziType;
        if (huziType === undefined || huziType === null || huziType === "") {
            trace("start-round-rejected", { reason: "missing-huziType", params: params });
            showError("原房间参数没有返回玩法类型，暂不能创建离线牌局");
            log("offline params", JSON.stringify(params));
            return false;
        }
        var deck;
        try { deck = helper.randomCards(huziType, params.moshi || params.yzldsHuzi || 0); }
        catch (e) { log("randomCards failed", e && e.stack ? e.stack : e); }
        if (!deck || typeof deck.length !== "number" || deck.length < 57) {
            trace("start-round-rejected", { reason: "invalid-deck", deckLength: deck && deck.length });
            showError("原规则牌堆初始化失败");
            return false;
        }

        var profile = js.data && js.data.pinfo ? js.data.pinfo : {
            uid: 93000001, name: "单机玩家", nickname: "单机玩家", sex: 1, money: 99999
        };
        var uids = [Number(profile.uid) || 93000001, 93000002, 93000003, 93000004];
        var players = {}, hands = [[], [], [], []], zhuang = 0, initHandNum = 14;
        for (var seat = 0; seat < 4; seat++) {
            players[String(uids[seat])] = makePlayer(uids[seat], seat === 0 ? "单机玩家" : "电脑" + seat, seat, profile);
        }
        var dealCount = Math.min(deck.length, initHandNum * 4 + 1), deal = deck.slice(0, dealCount), wall = deck.slice(dealCount);
        var initialCards = deal.slice(0, initHandNum * 4);
        var initialDealerCard = deal[initHandNum * 4];
        // The original mjhand callback consumes cards in 14-card blocks per seat,
        // starting at zhuang. Keep the offline rule state in that same order.
        for (var seatOffset = 0; seatOffset < 4; seatOffset++) {
            var handSeat = (zhuang + seatOffset) % 4;
            for (var cardOffset = 0; cardOffset < initHandNum; cardOffset++) {
                hands[handSeat].push(initialCards[seatOffset * initHandNum + cardOffset]);
            }
        }

        var tData = shallowCopy(params);
        tData.gameid = gameid;
        tData.gameId = gameid;
        tData.uids = uids.slice();
        tData.playerNum = 4;
        tData.zhuang = zhuang;
        tData.curPlayer = zhuang;
        tData.initHandNum = initHandNum;
        tData.roundAll = roundsTotal;
        tData.roundNum = roundCount;
        tData.initCoin = 1000;
        tData.cardNext = dealCount;
        tData.cardNums = {};
        for (var c = 0; c < 4; c++) tData.cardNums[String(uids[c])] = initHandNum;
        tData.lastPut = 0;
        tData.putType = 0;
        tData.winner = -1;
        tData.delEnd = 0;
        tData.tState = tableState("waitPut", 3);

        var data = {
            gameid: gameid,
            gameId: gameid,
            vipTable: 0,
            roomid: 0,
            pinfo: profile,
            players: players,
            uids: uids.slice(),
            tData: tData,
            serverNow: Date.now(),
            isOffline: true
        };
        O.state = {
            gameid: gameid,
            config: params,
            profile: profile,
            uids: uids,
            players: players,
            hands: hands,
            wall: wall,
            zhuang: zhuang,
            curPlayer: zhuang,
            roundAll: roundsTotal,
            roundNum: roundCount,
            cardNext: dealCount,
            cardCountExcludeSeat: -1,
            lastPut: 0,
            tData: tData,
            pending: [],
            ended: false,
            suppressInitialMjhand: true,
            initialDealerCard: initialDealerCard,
            initialDealerCardNext: dealCount,
            initialHandRendered: false,
            selfDrawCard: null
        };
        O.roundsTotal = roundsTotal;
        O.roundsRemaining = roundCount;
        installQueueBarrier(js);
        installOfflineQueueRunner(js);
        O.table = data;
        log("offline table start", JSON.stringify({ gameid: gameid, huziType: huziType, playType: params.playType, players: uids, deckSize: deck.length }));
        trace("round-state-initialized", { huziType: huziType, gameid: gameid, dealer: zhuang, dealtHands: hands.map(function (hand) { return hand.length; }) });
        installOfflineHandUI();
        emit("initSceneData", data);
        afterQueue(function () {
            // Render the original 14-card deal exactly once. The flag only
            // exists to avoid an earlier duplicate event; leaving it set here
            // suppresses every visible card on the offline table.
            O.state.suppressInitialMjhand = false;
            trace("initial-hand-render-enabled", { dealtCards: initialCards.length });
            emit("mjhand", { tData: freshTData(), cards: initialCards });
            updateClientTData();
            if (initialDealerCard !== undefined) {
                trace("dealer-extra-card", { seat: zhuang, card: initialDealerCard });
                var dealerCanSelfHu = canHu(zhuang, initialDealerCard, true);
                if (dealerCanSelfHu) {
                    state.hands[zhuang].push(initialDealerCard);
                    state.selfDrawCard = initialDealerCard;
                }
                addCardToClient(zhuang, initialDealerCard, true, false, dealerCanSelfHu);
            }
            trace("round-start-callbacks-complete", {});
        }, "round-start-deal", O.state);
        return true;
    }

    function createRoomOffline(layer) {
        if (!O.active) return false;
        try {
            var params = layer.getCreateParam();
            params = shallowCopy(params);
            params.playerNum = 4;
            O.roundsRemaining = undefined;
            O.roundsTotal = undefined;
            if (layer.removeFromParent) layer.removeFromParent(true);
            startRound(params);
        } catch (e) {
            log("offline CreateRoom failed", e && e.stack ? e.stack : e);
            showError("离线房间创建失败，请查看日志");
        }
        return true;
    }

    function handleTableMsg(data) {
        if (!O.active || !O.state || !data) {
            trace("table-command-rejected", { active: O.active, hasState: !!O.state, hasData: !!data });
            return;
        }
        var cmd = String(data.cmd || "");
        log("local table command", cmd, JSON.stringify(data));
        if (cmd === "MJPut") {
            var seat = 0, card = Number(data.card);
            var removed = removeOne(O.state.hands[seat], card);
            trace("human-discard-command", { card: card, removed: removed, handCount: O.state.hands[seat] && O.state.hands[seat].length });
            if (removed) {
                publishDiscard(seat, card);
            } else showError("这张牌不在当前手牌中");
            return;
        }
        if (cmd === "MJPass") {
            passHumanResponse(true, "after-human-pass");
            return;
        }
        if (cmd === "MJHu") {
            var humanCard = O.state.lastPut;
            if (canHu(0, humanCard, false)) settle(0, humanCard, false, O.state.curPlayer);
            else if (O.state.selfDrawCard !== null && canHu(0, O.state.selfDrawCard, true)) settle(0, O.state.selfDrawCard, true, 0);
            else showError("当前手牌不符合原规则的胡牌条件");
            return;
        }
        if (cmd === "MJPeng") {
            if (!humanResponseActions(O.state.pending).some(function (action) { return action.type === "peng"; })) {
                trace("human-peng-priority-blocked", { pending: pendingSummary() });
                return;
            }
            var pidx = -1;
            for (var i = 0; i < O.state.pending.length; i++) if (O.state.pending[i].seat === 0 && O.state.pending[i].type === "peng") { pidx = i; break; }
            if (pidx >= 0) {
                var peng = O.state.pending.splice(pidx, 1)[0];
                doPeng(peng, O.state.curPlayer, O.state.lastPut);
            }
            return;
        }
        if (cmd === "MJWai") {
            if (!humanResponseActions(O.state.pending).some(function (action) { return action.type === "wai"; })) {
                trace("human-wai-priority-blocked", { pending: pendingSummary() });
                return;
            }
            var widx = -1;
            for (var wi = 0; wi < O.state.pending.length; wi++) {
                if (O.state.pending[wi].seat === 0 && O.state.pending[wi].type === "wai") { widx = wi; break; }
            }
            if (widx >= 0) doWai(O.state.pending.splice(widx, 1)[0], O.state.curPlayer, O.state.lastPut);
            return;
        }
        if (cmd === "MJLiu") {
            var liuChoices = liuOptions(0);
            var selectedLiuCard = data.card;
            if (selectedLiuCard === undefined || selectedLiuCard === null) selectedLiuCard = liuChoices[0];
            if (selectedLiuCard !== undefined && selectedLiuCard !== null && !doLiu(0, selectedLiuCard)) {
                showError("原规则没有确认这张牌可以溜");
            }
            return;
        }
        if (cmd === "MJChi") {
            if (!humanResponseActions(O.state.pending).some(function (action) { return action.type === "chi"; })) {
                trace("human-chi-priority-blocked", { pos: data.pos, pending: pendingSummary() });
                return;
            }
            var cidx = -1;
            for (var j = 0; j < O.state.pending.length; j++) if (O.state.pending[j].seat === 0 && O.state.pending[j].type === "chi") { cidx = j; break; }
            if (cidx >= 0) {
                var chi = O.state.pending[cidx];
                if (!doChi(chi, O.state.curPlayer, O.state.lastPut, data.pos)) {
                    var liveChi = chiOptions(0, O.state.lastPut);
                    if (liveChi.length) {
                        chi.options = liveChi;
                        refreshHumanResponseFlags(O.state);
                        trace("human-chi-kept-pending", { pos: data.pos, legalCodes: liveChi, pending: pendingSummary() });
                        showError("当前选择不符合可吃牌型，请重新选择或点“过”");
                    } else {
                        O.state.pending.splice(cidx, 1);
                        var remainingHumanAction = O.state.pending.some(function (action) { return action.seat === 0; });
                        if (remainingHumanAction) {
                            refreshHumanResponseFlags(O.state);
                        } else {
                            trace("human-chi-invalid-cleared", { pos: data.pos, pending: pendingSummary() });
                            passHumanResponse(false, "after-invalid-chi-pass");
                        }
                        showError("当前手牌不满足吃牌条件，已取消无效吃牌");
                    }
                }
            } else {
                var state = O.state;
                var hasHumanAction = state.pending.some(function (action) { return action.seat === 0; });
                if (!hasHumanAction) {
                    trace("human-chi-stale-cleared", { pos: data.pos, pending: pendingSummary() });
                    passHumanResponse(false, "after-stale-chi-pass");
                } else {
                    refreshHumanResponseFlags(state);
                    trace("human-chi-stale-rejected", { pos: data.pos, pending: pendingSummary() });
                    showError("吃牌操作已过期，请按当前提示继续");
                }
            }
            return;
        }
        if (cmd === "refreshSceneData") return;
        if (cmd === "MJReady" || cmd === "oncemore") {
            startRound(O.state.config);
            return;
        }
        if (cmd === "MJGang") log("MJGang is a server callback in the original client, not an outgoing table command");
    }

    function activateOfflineMode() {
        var js = g.jsclient;
        if (!js) return false;
        installQueueBarrier(js);
        var wasActive = O.active;
        O.active = true;
        // The original updateFinish callback creates GameNet only when absent.
        // Create and hook it first so the offline login cannot leave a later
        // unpatched request() instance behind.
        if (!js.gamenet && typeof g.GameNet === "function") {
            try { js.gamenet = new g.GameNet(); log("offline GameNet created before updateFinish"); }
            catch (e) { log("offline GameNet creation failed", e && e.stack ? e.stack : e); }
        }
        try {
            if (g.cc && g.cc.sys && g.cc.sys.localStorage) {
                g.cc.sys.localStorage.setItem("PHZ_REA_OFFLINE_MODE", "1");
                g.cc.sys.localStorage.setItem("PHZ_REA_OFFLINE_MONEY", "99999");
            }
        } catch (e) { log("offline profile persistence failed", e); }
        try {
            if (js.data && js.data.pinfo) {
                js.data.pinfo = shallowCopy(js.data.pinfo);
                js.data.pinfo.money = 99999;
                js.data.pinfo.isOffline = true;
            }
            if (js.gamenet && !js.gamenet.__reaOffline) {
                js.gamenet.__reaOffline = true;
                js.gamenet.connect = function () { log("offline network connect suppressed"); };
                js.gamenet.request = function (api, payload) {
                    if (api === "pkplayer.handler.CreateVipTable") {
                        trace("create-table-request-intercepted", { api: api });
                        log("offline CreateVipTable intercepted", JSON.stringify(payload || {}));
                        if (!startRound(payload)) showError("离线牌局创建失败，请重试");
                        return undefined;
                    }
                    if (api === "pkroom.handler.tableMsg") {
                        trace("table-request-intercepted", { api: api, cmd: payload && payload.cmd, card: payload && payload.card });
                        return handleTableMsg(payload);
                    }
                    log("offline network request suppressed", api);
                    return undefined;
                };
                trace("network-hook-installed", { hasGameNet: !!js.gamenet, connect: "suppressed", request: "local-interceptor" });
            }
        } catch (e) { log("offline network hook failed", e && e.stack ? e.stack : e); }
        try { if (!wasActive && js.data && js.data.pinfo && typeof g.sendEvent === "function") g.sendEvent("updateInfo"); }
        catch (e) { log("offline balance refresh failed", e); }
        log("offline mode active");
        trace("offline-mode-active", { hasGameNet: !!js.gamenet, requestHooked: !!(js.gamenet && js.gamenet.__reaOffline) });
        return true;
    }

    function beginOfflineLogin() {
        if (!activateOfflineMode()) return;
        var js = g.jsclient;
        var uid = 93000001;
        var profile = {
            uid: uid,
            name: "单机玩家",
            nickname: "单机玩家",
            sex: 1,
            money: 99999,
            playNum: 0,
            headimgurl: "",
            head: "",
            level: 1,
            vip: 0,
            isGuest: true,
            isOffline: true
        };
        try {
            if (typeof g.sendEvent === "function") {
                g.sendEvent("loginOK", {
                    result: 0,
                    errCode: 0,
                    errno: 0,
                    errorCode: 0,
                    pinfo: profile,
                    uid: uid,
                    vipTable: 0,
                    isOffline: true
                });
            } else {
                js.data = { pinfo: profile, vipTable: 0, isOffline: true };
                js.Scene.addChild(new g.NewHomeLayer(0));
            }
        } catch (e) {
            log("offline login failed", e && e.stack ? e.stack : e);
            showError("离线入口启动失败，请查看日志");
        }
    }

    function addBadge(node, text, name) {
        if (!node || !g.cc || !g.cc.LayerColor || !g.cc.LabelTTF || !node.getContentSize || !node.addChild) return;
        try { if (node.getChildByName && node.getChildByName(name)) return; }
        catch (e) { log("badge lookup failed", name, e); }
        try {
            var size = node.getContentSize();
            var w = Math.min(size.width * 0.8, 320), h = Math.max(44, size.height * 0.27);
            var badge = new g.cc.LayerColor(g.cc.color(30, 54, 38, 238), w, h);
            badge.setName(name);
            if (badge.setAnchorPoint && g.cc.p) badge.setAnchorPoint(g.cc.p(0.5, 0.5));
            badge.setPosition(size.width / 2, size.height - h / 2 - 6);
            var label = new g.cc.LabelTTF(text, "Arial", Math.max(22, Math.min(29, h * 0.52)));
            if (label.setColor) label.setColor(g.cc.color(255, 224, 151));
            label.setPosition(w / 2, h / 2);
            badge.addChild(label, 1);
            node.addChild(badge, 1000);
            var subtitle = new g.cc.LabelTTF("衡阳跑胡子 · 单机畅玩", "Arial", 17);
            subtitle.setName(name + "Subtitle");
            subtitle.setPosition(size.width / 2, Math.max(24, h * 0.52));
            if (subtitle.setColor) subtitle.setColor(g.cc.color(255, 250, 226));
            node.addChild(subtitle, 1000);
        } catch (e) { log("badge failed", name, e); }
    }

    function findNodeByName(root, name) {
        if (!root) return null;
        try { if (root.getName && root.getName() === name) return root; } catch (e) {}
        if (!root.getChildren) return null;
        var children = root.getChildren(), found;
        if (!children || typeof children.length !== "number") return null;
        for (var i = 0; i < children.length; i++) {
            found = findNodeByName(children[i], name);
            if (found) return found;
        }
        return null;
    }

    function showHomeOfflineBadge() {
        try {
            var home = g.jsclient && g.jsclient.homeui;
            var panel = findNodeByName(home, "panel_new_buttons");
            var button = panel && findNodeByName(panel, "createphz");
            if (!button) { log("home offline badge target not found"); return; }
            addBadge(button, "衡阳跑胡子", "longgeHengyangTitle");
        } catch (e) { log("home badge failed", e); }
    }

    function patchLoginButton() {
        var login = g.jsclient && g.jsclient.loginui;
        var button = login && login.jsBind && login.jsBind.guestLogin;
        if (!button) return;
        try {
            if (button.setTitleText) button.setTitleText("离线练习");
            if (button.setTitleFontSize) button.setTitleFontSize(30);
            if (button.setVisible) button.setVisible(true);
            else button.visible = true;
        } catch (e) { log("login title failed", e); }
        try {
            var phone = login.jsBind.phoneLogin;
            if (phone && phone.setVisible) phone.setVisible(false);
            else if (phone) phone.visible = false;
        } catch (e) { log("phone login hide failed", e); }
    }

    function patchAds(js) {
        if (js && typeof js.showPopupImgLayer === "function" && !O.hooked.popup) {
            js.showPopupImgLayer = function () { log("popup ad suppressed"); };
            O.hooked.popup = true;
        }
        if (typeof g.checkGameNotice === "function" && !O.hooked.notice) {
            var originalNotice = g.checkGameNotice;
            g.checkGameNotice = function (manual) {
                // Startup callers omit the argument; the home notice button
                // passes true. Keep only the explicit user-opened notice.
                if (manual !== true) { log("automatic notice popup suppressed"); return; }
                return originalNotice.apply(this, arguments);
            };
            O.hooked.notice = true;
        }
        if (typeof g.hongBaoActiviteSwitch === "function" && !O.hooked.hongBao) {
            g.hongBaoActiviteSwitch = function () {
                log("automatic hongbao promotion suppressed");
                return false;
            };
            O.hooked.hongBao = true;
        }
    }

    function patchOfflinePhonePrompt(js) {
        if (!O.active || !js || typeof js.showMsg !== "function" || O.hooked.phonePrompt === js.showMsg) return;
        var original = js.showMsg;
        try {
            js.showMsg = function (message) {
                var text = "";
                try { text = String(message || ""); } catch (e) {}
                if (/(手机号|手机号码)/.test(text) && /(绑定|注册)/.test(text)) {
                    log("offline phone registration prompt suppressed", text);
                    return;
                }
                return original.apply(this, arguments);
            };
            O.hooked.phonePrompt = js.showMsg;
        } catch (e) { log("offline phone prompt hook failed", e && e.stack ? e.stack : e); }
    }

    function patchCreateRoom() {
        var ctor = g.CreateRoomLayer;
        if (!O.active || !ctor || !ctor.prototype || typeof ctor.prototype.createRoomEvent !== "function" || O.hooked.createRoom) return;
        var original = ctor.prototype.createRoomEvent;
        ctor.prototype.createRoomEvent = function () {
            if (O.active) return createRoomOffline(this);
            return original.apply(this, arguments);
        };
        O.hooked.createRoom = true;
    }

    function patchCreateRoomDispatch() {
        if (typeof g.sendEvent !== "function" || O.hooked.createRoomDispatch === g.sendEvent) return;
        var original = g.sendEvent;
        g.sendEvent = function (eventName) {
            // The stock updateFinish handler immediately calls
            // priorityConnectServer and waits for account/session services.
            // In this standalone build, enter the local guest flow here and
            // skip that network startup path entirely.
            if (eventName === "updateFinish") {
                if (!O.hooked.longgeStartup) {
                    O.hooked.longgeStartup = true;
                    activateOfflineMode();
                    patchAds(g.jsclient);
                    patchOfflinePhonePrompt(g.jsclient);
                    setVisible(g.jsclient && g.jsclient.loginui, false);
                    beginOfflineLogin();
                    patchCreateRoom();
                    trace("longge-startup-routed-local-before-connect", {
                        hasScene: !!(g.jsclient && g.jsclient.Scene),
                        hasGameNet: !!(g.jsclient && g.jsclient.gamenet),
                        hasHome: !!(g.jsclient && g.jsclient.homeui)
                    });
                }
                return undefined;
            }
            // ActivityLayer is an automatic campaign/ad page on login.
            if (O.active && eventName === "showActivity") {
                log("activity promotion layer suppressed");
                return undefined;
            }
            // app.jsc maps this event to JSScene._event.bindPhoneNumber,
            // which constructs PhoneBindLayer and blocks the offline home UI.
            if (O.active && eventName === "bindPhoneNumber") {
                log("offline phone registration layer suppressed");
                return undefined;
            }
            if (eventName === "loginOK" && O.active && arguments[1] && typeof arguments[1] === "object") {
                var loginData = shallowCopy(arguments[1]);
                loginData.pinfo = shallowCopy(loginData.pinfo || {});
                loginData.pinfo.money = 99999;
                loginData.pinfo.isOffline = true;
                loginData.isOffline = true;
                arguments[1] = loginData;
            }
            if (eventName === "createRoom") {
                if (activateOfflineMode()) patchCreateRoom();
            }
            return original.apply(this, arguments);
        };
        O.hooked.createRoomDispatch = g.sendEvent;
    }

    function attemptAutoOfflineLogin() {
        var js = g.jsclient;
        if (!js || !js.loginui || js.homeui || O.hooked.autoOfflineLogin || O.hooked.autoOfflineLoginRetry) return;
        var attempts = Number(O.hooked.autoOfflineLoginAttempts) || 0;
        if (attempts >= 3) {
            trace("auto-offline-login-failed", { attempts: attempts, hasLoginUi: !!js.loginui, hasHomeUi: !!js.homeui });
            return;
        }
        O.hooked.autoOfflineLoginAttempts = attempts + 1;
        trace("auto-offline-login-attempt", { attempt: attempts + 1, hasLoginUi: !!js.loginui, hasHomeUi: !!js.homeui });
        // Hide the account/login scene before dispatching the local guest event
        // so the user lands on the lobby without an actionable login screen.
        setVisible(js.loginui, false);
        beginOfflineLogin();
        if (g.jsclient === js && js.homeui) {
            O.hooked.autoOfflineLogin = true;
            trace("auto-offline-login-home-ready", { attempts: O.hooked.autoOfflineLoginAttempts });
            return;
        }
        // loginOK is dispatched locally and should build the home synchronously.
        // If its handler was not registered yet, retry after scene setup settles.
        if (typeof g.setTimeout === "function") {
            O.hooked.autoOfflineLoginRetry = true;
            g.setTimeout(function () {
                O.hooked.autoOfflineLoginRetry = false;
                if (g.jsclient === js && js.loginui && !js.homeui && !O.hooked.autoOfflineLogin) attemptAutoOfflineLogin();
            }, 450);
        }
    }

    function setVisible(node, visible) {
        if (!node) return;
        try {
            if (typeof node.setVisible === "function") node.setVisible(!!visible);
            else node.visible = !!visible;
        } catch (e) { log("lobby visibility failed", e && e.stack ? e.stack : e); }
    }

    function patchLonggeLobby(home, bind) {
        if (O.hooked.longgeLobby === home) return;
        var panelBind = bind.panel_new_buttons;
        var panel = findNodeByName(home, "panel_new_buttons");
        var card = panel && findNodeByName(panel, "createphz");
        if (!panelBind || !panel || !card) return;

        // Keep the original lobby background and its single Huzi entry card.
        // Apply visibility to the real Cocos nodes, not only the jsBind map.
        setVisible(findNodeByName(home, "dingtiao"), false);
        setVisible(findNodeByName(home, "ditiao"), false);
        setVisible(findNodeByName(home, "wanfa"), false);
        setVisible(findNodeByName(home, "ADShowList"), false);
        setVisible(findNodeByName(home, "scrollbg"), false);
        var entries = panel.getChildren ? panel.getChildren() : [];
        for (var i = 0; i < entries.length; i++) {
            var entryName = entries[i] && entries[i].getName ? entries[i].getName() : "";
            setVisible(entries[i], entryName === "createphz");
        }
        setVisible(card, true);
        try {
            if (panel.setPosition) panel.setPosition(960, 540);
            // The replacement lobby art is displayed at 2x the prior card
            // size. Keep its center on the right while fitting the 1920x1080
            // design canvas (455x195 * 2.1 ~= 956x410).
            if (card.setPosition) card.setPosition(960, 420);
            if (card.setScale) card.setScale(2.1);
            if (card.setTitleText) card.setTitleText("老满跑胡子");
        } catch (e) { log("single-card layout failed", e && e.stack ? e.stack : e); }
        addBadge(card, "老满跑胡子", "laomanGameTitle");
        O.hooked.longgeLobby = home;
        trace("laoman-single-card-lobby-ready", { game: "老满跑胡子", onlyEntry: "createphz", visibleEntries: 1 });
    }

    function patchHome() {
        var home = g.jsclient && g.jsclient.homeui;
        var bind = home && home.jsBind && home.jsBind.NewLayer;
        var button = bind && bind.panel_new_buttons && bind.panel_new_buttons.createphz;
        if (!home || !bind || !button) return;
        patchLonggeLobby(home, bind);
    }

    function hidePiaoMarkers(root) {
        if (!root || !root.getChildren) return;
        var children = root.getChildren(), node;
        for (var i = 0; i < children.length; i++) {
            node = children[i];
            if (!node) continue;
            try {
                if (node.getName && String(node.getName()).toLowerCase() === "piao") setVisible(node, false);
            } catch (e) {}
            hidePiaoMarkers(node);
        }
    }

    function patchTableDecorations() {
        var play = g.jsclient && g.jsclient.playui;
        if (play) hidePiaoMarkers(play);
    }

    function install() {
        var js = g.jsclient;
        patchCreateRoomDispatch();
        if (js) {
            if (O.active) installQueueBarrier(js);
            // Let the original startup reach its login/home layer before
            // suppressing game-network calls. Hooking gamenet while the
            // loader is still building the login scene can strand it at 100%.
            var offlineUiReady = !!(js.loginui || js.homeui);
            if (offlineUiReady && (!O.active || (js.gamenet && !js.gamenet.__reaOffline))) activateOfflineMode();
            patchAds(js);
            patchOfflinePhonePrompt(js);
            patchLoginButton();
            patchHome();
            patchTableDecorations();
            patchCreateRoom();
            attemptAutoOfflineLogin();
            if (typeof g.LoginAsGuest === "function" && !O.hooked.login) {
                g.LoginAsGuest = function () { beginOfflineLogin(); };
                O.hooked.login = true;
            }
        }
        if (!O.hooked.poll && typeof g.setTimeout === "function") {
            O.hooked.poll = true;
            var poll = function () {
                O.hooked.poll = false;
                install();
            };
            // Keep the login scene visible for as little time as possible before
            // the local guest profile is sent through the original loginOK path.
            g.setTimeout(poll, 75);
        }
    }

    install();
    g.__PHZ_PATCH_LOADED = true;
})(this);
