.class public Lcom/baidu/mshield/x6/d/e;
.super Ljava/lang/Object;
.source "HandleZidChecktor.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/baidu/mshield/x6/a/c;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mshield/x6/d/e;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/baidu/mshield/x6/d/e;->a:Landroid/content/Context;

    .line 4
    iput p2, p0, Lcom/baidu/mshield/x6/d/e;->c:I

    .line 5
    iput p3, p0, Lcom/baidu/mshield/x6/d/e;->d:I

    .line 6
    new-instance p2, Lcom/baidu/mshield/x6/a/c;

    invoke-direct {p2, p1}, Lcom/baidu/mshield/x6/a/c;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/baidu/mshield/x6/d/e;->b:Lcom/baidu/mshield/x6/a/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 18

    .line 212
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 214
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 215
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge v5, v6, :cond_7

    .line 217
    :try_start_1
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "eid"

    .line 218
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "pattern"

    .line 219
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "item"

    .line 220
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "value"

    .line 221
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v10, ""

    if-eqz v8, :cond_5

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-eq v8, v13, :cond_0

    if-eq v8, v12, :cond_0

    goto :goto_2

    :cond_0
    :try_start_2
    const-string v10, "\\|"

    .line 233
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v14, ""

    .line 235
    :try_start_3
    aget-object v15, v10, v4

    const/16 v16, 0x1

    .line 236
    aget-object v4, v10, v16

    .line 237
    array-length v11, v10

    if-ne v11, v12, :cond_1

    .line 238
    aget-object v14, v10, v13

    :cond_1
    if-ne v8, v13, :cond_3

    if-eqz p2, :cond_2

    const/16 v4, 0x19

    const/4 v8, 0x0

    .line 242
    invoke-static {v4, v9, v6, v8}, Lcom/baidu/xclient/gdid/a;->a(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    .line 244
    :cond_2
    invoke-static {v15, v4, v14, v6}, Lcom/baidu/mshield/x6/e/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    const/16 v4, 0x1a

    const/4 v8, 0x0

    .line 248
    invoke-static {v4, v9, v6, v8}, Lcom/baidu/xclient/gdid/a;->a(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    .line 250
    :cond_4
    invoke-static {v15, v4, v14, v6}, Lcom/baidu/mshield/x6/e/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    const/16 v4, 0x18

    const/4 v8, 0x0

    .line 251
    invoke-static {v4, v9, v6, v8}, Lcom/baidu/xclient/gdid/a;->a(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_1
    move-object v10, v4

    goto :goto_2

    .line 253
    :cond_6
    invoke-static {v9}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 280
    :goto_2
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 282
    :try_start_4
    invoke-static {v4}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 286
    invoke-static {v1}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    .line 288
    :cond_7
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public a()V
    .locals 13

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-class v1, Lcom/baidu/mshield/x6/d/e;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 3
    :try_start_1
    iget-object v2, p0, Lcom/baidu/mshield/x6/d/e;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/mshield/b/e/a;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "run isCanRequestNetBackground=false"

    .line 4
    invoke-static {v2}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V

    .line 5
    monitor-exit v1

    return-void

    .line 7
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startzidcheck==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/baidu/mshield/x6/d/e;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/baidu/mshield/x6/d/i;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 9
    sput-boolean v2, Lcom/baidu/mshield/x6/d/i;->b:Z

    .line 11
    iget-object v3, p0, Lcom/baidu/mshield/x6/d/e;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/mshield/x6/e/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 12
    iget-object v4, p0, Lcom/baidu/mshield/x6/d/e;->b:Lcom/baidu/mshield/x6/a/c;

    invoke-virtual {v4}, Lcom/baidu/mshield/x6/a/c;->b()Ljava/lang/String;

    move-result-object v4

    .line 13
    iget-object v5, p0, Lcom/baidu/mshield/x6/d/e;->b:Lcom/baidu/mshield/x6/a/c;

    invoke-virtual {v5}, Lcom/baidu/mshield/x6/a/c;->a()Ljava/lang/String;

    move-result-object v5

    .line 14
    iget-object v6, p0, Lcom/baidu/mshield/x6/d/e;->b:Lcom/baidu/mshield/x6/a/c;

    invoke-virtual {v6}, Lcom/baidu/mshield/x6/a/c;->c()Ljava/lang/String;

    move-result-object v6

    .line 15
    iget-object v7, p0, Lcom/baidu/mshield/x6/d/e;->b:Lcom/baidu/mshield/x6/a/c;

    invoke-virtual {v7}, Lcom/baidu/mshield/x6/a/c;->d()Ljava/lang/String;

    move-result-object v7

    .line 16
    iget-object v8, p0, Lcom/baidu/mshield/x6/d/e;->b:Lcom/baidu/mshield/x6/a/c;

    invoke-virtual {v8}, Lcom/baidu/mshield/x6/a/c;->e()Ljava/lang/String;

    move-result-object v8

    .line 17
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 20
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 21
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 24
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v10, :cond_2

    .line 26
    :try_start_2
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 27
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v12, v7, v10

    if-lez v12, :cond_2

    .line 28
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_2

    :goto_0
    move-object v4, v6

    goto :goto_1

    :catchall_0
    move-exception v6

    .line 32
    :try_start_3
    invoke-static {v6}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    .line 36
    :cond_2
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object v4, v5

    .line 39
    :cond_3
    iget-object v5, p0, Lcom/baidu/mshield/x6/d/e;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/baidu/mshield/utility/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 41
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "token"

    .line 43
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-string v4, "ut"

    .line 44
    :try_start_4
    iget-object v7, p0, Lcom/baidu/mshield/x6/d/e;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/baidu/mshield/x6/e/f;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "magic"

    .line 45
    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const-string v3, "token_rt"

    .line 46
    :try_start_5
    iget-object v4, p0, Lcom/baidu/mshield/x6/d/e;->b:Lcom/baidu/mshield/x6/a/c;

    invoke-virtual {v4}, Lcom/baidu/mshield/x6/a/c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    new-instance v3, Lcom/baidu/mshield/x6/a/b;

    iget-object v4, p0, Lcom/baidu/mshield/x6/d/e;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/baidu/mshield/x6/a/b;-><init>(Landroid/content/Context;)V

    .line 49
    iget v4, p0, Lcom/baidu/mshield/x6/d/e;->c:I

    invoke-virtual {v3, v4}, Lcom/baidu/mshield/x6/a/b;->g(I)V

    .line 51
    iget-object v4, p0, Lcom/baidu/mshield/x6/d/e;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/mshield/utility/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "mz"

    .line 52
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const-string v5, "ds"

    .line 53
    :try_start_6
    iget-object v7, p0, Lcom/baidu/mshield/x6/d/e;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/baidu/mshield/x6/e/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "zid"

    .line 54
    invoke-virtual {v6, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const-string v4, "act_st"

    .line 55
    :try_start_7
    iget v5, p0, Lcom/baidu/mshield/x6/d/e;->d:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    iget-object v4, p0, Lcom/baidu/mshield/x6/d/e;->a:Landroid/content/Context;

    const-string v5, "plc95"

    invoke-static {v4, v5, v0}, Lcom/baidu/mshield/x6/e/f;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const-string v5, "0"

    if-eqz v4, :cond_4

    const-string v5, "1"

    :cond_4
    :try_start_8
    const-string v4, "chn_st"

    .line 61
    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const-string v4, "os_ver"

    .line 62
    :try_start_9
    iget-object v5, p0, Lcom/baidu/mshield/x6/d/e;->a:Landroid/content/Context;

    .line 63
    invoke-static {v5}, Lcom/baidu/mshield/x6/EngineImpl;->getInstance(Landroid/content/Context;)Lcom/baidu/mshield/x6/EngineImpl;

    move-result-object v5

    const-string v7, "arl"

    invoke-virtual {v5, v7}, Lcom/baidu/mshield/x6/EngineImpl;->getPropertyByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 68
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const-string v8, "1"

    .line 69
    :try_start_a
    invoke-virtual {v3}, Lcom/baidu/mshield/x6/a/b;->q()I

    move-result v10

    invoke-virtual {v7, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const-string v8, "2"

    .line 70
    :try_start_b
    invoke-virtual {v3}, Lcom/baidu/mshield/x6/a/b;->r()J

    move-result-wide v10

    invoke-virtual {v7, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "3"

    .line 71
    invoke-virtual {v7, v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    const-string v8, "4"

    .line 72
    :try_start_c
    invoke-virtual {v3}, Lcom/baidu/mshield/x6/a/b;->s()I

    move-result v10

    invoke-virtual {v7, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "reason"

    .line 73
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    const-string v7, "tp"

    .line 75
    :try_start_d
    iget v8, p0, Lcom/baidu/mshield/x6/d/e;->c:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "tk"

    .line 76
    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    const-string v7, "pd"

    .line 77
    :try_start_e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    const-string v7, "lrc"

    .line 78
    :try_start_f
    invoke-virtual {v3}, Lcom/baidu/mshield/x6/a/b;->E()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    const-string v7, "cc"

    .line 79
    :try_start_10
    invoke-virtual {v3}, Lcom/baidu/mshield/x6/a/b;->F()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    invoke-virtual {v3}, Lcom/baidu/mshield/x6/a/b;->G()Ljava/lang/String;

    move-result-object v7

    .line 82
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 83
    invoke-virtual {v3}, Lcom/baidu/mshield/x6/a/b;->H()I

    move-result v8

    .line 84
    invoke-static {v8, v7}, Lcom/baidu/mshield/x6/e/d;->a(ILjava/lang/String;)I

    move-result v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    const-string v8, "dc"

    .line 85
    :try_start_11
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    :cond_5
    invoke-virtual {v3}, Lcom/baidu/mshield/x6/a/b;->D()Ljava/lang/String;

    move-result-object v7

    const-string v8, "lre"

    .line 88
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    const-string v7, "ipo"

    .line 89
    :try_start_12
    invoke-virtual {v3}, Lcom/baidu/mshield/x6/a/b;->m()Z

    move-result v8
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v8, :cond_6

    const-string v8, "1"

    goto :goto_2

    :cond_6
    const-string v8, "0"

    :goto_2
    :try_start_13
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    iget-object v7, p0, Lcom/baidu/mshield/x6/d/e;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/baidu/mshield/x6/e/f;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 91
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v7, "rmf"

    const-string v8, ""

    .line 92
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_3

    .line 95
    :cond_7
    :try_start_14
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "2"

    const-string v9, ""

    .line 96
    invoke-virtual {v8, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "rmf"

    .line 97
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v7

    .line 99
    :try_start_15
    invoke-static {v7}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    .line 104
    :goto_3
    invoke-virtual {p0, v6}, Lcom/baidu/mshield/x6/d/e;->a(Lorg/json/JSONObject;)V

    .line 107
    invoke-virtual {v3, v0}, Lcom/baidu/mshield/x6/a/b;->h(I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    const-string v7, ""

    .line 110
    :try_start_16
    iget-object v8, p0, Lcom/baidu/mshield/x6/d/e;->a:Landroid/content/Context;

    invoke-static {v8}, Lcom/baidu/mshield/utility/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    move-object v7, v8

    goto :goto_4

    :catchall_2
    move-exception v8

    .line 112
    :try_start_17
    invoke-static {v8}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :goto_4
    const-string v8, "cuid"

    .line 114
    :try_start_18
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    if-eqz v9, :cond_8

    const-string v7, ""

    :cond_8
    :try_start_19
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    iget-object v7, p0, Lcom/baidu/mshield/x6/d/e;->a:Landroid/content/Context;

    sget-object v8, Lcom/baidu/mshield/x6/e/g;->d:Ljava/lang/String;

    invoke-static {v7, v6, v8, v0}, Lcom/baidu/mshield/x6/e/f;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 119
    iget-object v7, p0, Lcom/baidu/mshield/x6/d/e;->a:Landroid/content/Context;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/baidu/mshield/x6/d/e;->d:I

    invoke-static {v7, v8, v9}, Lcom/baidu/mshield/x6/e/l;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    :goto_5
    const/16 v9, -0x64

    if-ne v7, v9, :cond_9

    const/4 v10, 0x3

    if-ge v8, v10, :cond_9

    const-wide/16 v9, 0x7d0

    .line 121
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 122
    iget-object v7, p0, Lcom/baidu/mshield/x6/d/e;->a:Landroid/content/Context;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/baidu/mshield/x6/d/e;->d:I

    invoke-static {v7, v9, v10}, Lcom/baidu/mshield/x6/e/l;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    if-ne v7, v9, :cond_a

    .line 126
    invoke-virtual {v3, v0}, Lcom/baidu/mshield/x6/a/b;->d(Z)V

    .line 127
    iget-object v2, p0, Lcom/baidu/mshield/x6/d/e;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/mshield/b/a/d;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 128
    iget-object v2, p0, Lcom/baidu/mshield/x6/d/e;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/mshield/x6/d/f;->a(Landroid/content/Context;)Lcom/baidu/mshield/x6/d/f;

    move-result-object v2

    const-wide/32 v3, 0x493e0

    .line 129
    invoke-virtual {v2, v3, v4}, Lcom/baidu/mshield/x6/d/f;->a(J)V

    goto :goto_6

    .line 132
    :cond_a
    invoke-virtual {v3, v4, v5}, Lcom/baidu/mshield/x6/a/b;->a(J)V

    .line 133
    invoke-virtual {v3, v2}, Lcom/baidu/mshield/x6/a/b;->h(I)V

    .line 135
    :cond_b
    :goto_6
    monitor-exit v1

    goto :goto_7

    :catchall_3
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    :try_start_1a
    throw v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    :catchall_4
    move-exception v1

    .line 137
    invoke-static {v1}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    .line 139
    :goto_7
    sput-boolean v0, Lcom/baidu/mshield/x6/d/i;->b:Z

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 10

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    .line 140
    :try_start_0
    iget-object v4, p0, Lcom/baidu/mshield/x6/d/e;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/mshield/x6/e/f;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 142
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "1"

    .line 143
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 145
    new-instance v6, Ljava/lang/String;

    .line 146
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v4

    .line 147
    invoke-static {v4}, Lcom/baidu/mshield/b/a/c;->b([B)[B

    move-result-object v4

    const-string v7, "utf-8"

    invoke-direct {v6, v4, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doRmfDetect ungzDrf : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v0, v6

    :cond_0
    :try_start_1
    const-string v4, "3"

    .line 152
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v1, "2"

    .line 153
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v4

    move-object v9, v4

    move-object v4, v1

    move-object v1, v9

    goto :goto_0

    :cond_1
    move-object v4, v1

    goto :goto_1

    :catchall_2
    move-exception v4

    move-object v9, v4

    move-object v4, v1

    move-object v1, v9

    .line 156
    :goto_0
    :try_start_3
    invoke-static {v1}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const-string v5, "15094"

    .line 158
    :try_start_4
    invoke-static {v1}, Lcom/baidu/mshield/x6/e/f;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    .line 160
    :try_start_5
    invoke-static {v1}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :goto_1
    const-string v1, "15091"

    .line 164
    :try_start_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-nez v5, :cond_2

    const-string v5, "1"

    goto :goto_2

    :cond_2
    const-string v5, "0"

    :goto_2
    :try_start_7
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    new-instance v1, Lcom/baidu/mshield/x6/a/b;

    iget-object v5, p0, Lcom/baidu/mshield/x6/d/e;->a:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/baidu/mshield/x6/a/b;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-virtual {v1}, Lcom/baidu/mshield/x6/a/b;->v()Ljava/lang/String;

    move-result-object v5

    .line 168
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v6, :cond_3

    const-string v5, "#"

    .line 171
    :cond_3
    :try_start_8
    iget-object v6, p0, Lcom/baidu/mshield/x6/d/e;->a:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/baidu/mshield/x6/e/f;->a(Landroid/content/Context;Z)Z

    move-result v6

    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "15082"

    .line 173
    invoke-virtual {p1, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "15083"

    .line 174
    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    invoke-virtual {v1}, Lcom/baidu/mshield/x6/a/b;->Q()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v4, :cond_4

    const-string v1, "#"

    .line 179
    :cond_4
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "15112"

    .line 180
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    iget-object v1, p0, Lcom/baidu/mshield/x6/d/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/xclient/gdid/a;->h(Landroid/content/Context;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    const-string v2, "15006"

    if-eqz v1, :cond_5

    const-string v4, "1"

    goto :goto_3

    :cond_5
    const-string v4, "0"

    .line 182
    :goto_3
    :try_start_a
    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string p1, "real machine sig is empty"

    .line 185
    invoke-static {p1}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V

    return-void

    .line 189
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    .line 191
    invoke-virtual {p0, v0, v1}, Lcom/baidu/mshield/x6/d/e;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cpp param 2 result : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    const-string v3, "d0006"

    sub-long v6, v1, v4

    .line 194
    :try_start_b
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "15085"

    .line 195
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isj"

    const-string v2, "0"

    .line 196
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ise"

    const-string v2, "1"

    .line 197
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "native cpp="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 200
    :cond_7
    invoke-virtual {p0, v0, v3}, Lcom/baidu/mshield/x6/d/e;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "java param 2 result : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    const-string v3, "d0006"

    sub-long v6, v1, v4

    .line 203
    :try_start_c
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "15085"

    .line 204
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "isj"

    const-string v1, "1"

    .line 205
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ise"

    const-string v1, "0"

    .line 206
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p1

    .line 211
    invoke-static {p1}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method
