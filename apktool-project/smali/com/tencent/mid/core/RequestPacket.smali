.class public Lcom/tencent/mid/core/RequestPacket;
.super Lcom/tencent/mid/core/PacketInterface;
.source "RequestPacket.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/tencent/mid/core/PacketInterface;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getJsonStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 37
    invoke-static {p1}, Lcom/tencent/mid/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "-"

    :goto_0
    return-object p1
.end method


# virtual methods
.method protected getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected onEncode(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "mid"

    const-string v1, "0"

    .line 42
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "imei"

    .line 43
    iget-object v1, p0, Lcom/tencent/mid/core/RequestPacket;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/mid/core/RequestPacket;->getJsonStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "imsi"

    .line 44
    iget-object v1, p0, Lcom/tencent/mid/core/RequestPacket;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/mid/core/RequestPacket;->getJsonStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mac"

    .line 45
    iget-object v1, p0, Lcom/tencent/mid/core/RequestPacket;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/mid/core/RequestPacket;->getJsonStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ts"

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 48
    iget-object v0, p0, Lcom/tencent/mid/core/RequestPacket;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/core/ServiceIMPL;->getLocalMidEntity(Landroid/content/Context;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->isMidValid()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mid"

    .line 50
    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/core/RequestPacket;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readNewVersionMidStr()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "mid_new"

    .line 54
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string v0, "mid_new"

    const-string v1, "0"

    .line 56
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    :goto_0
    :try_start_0
    new-instance v0, Lcom/tencent/mid/util/Env;

    iget-object v1, p0, Lcom/tencent/mid/core/RequestPacket;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/mid/util/Env;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v0, p1}, Lcom/tencent/mid/util/Env;->encode(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
