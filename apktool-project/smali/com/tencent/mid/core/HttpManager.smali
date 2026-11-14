.class public Lcom/tencent/mid/core/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# static fields
.field private static final LOCAL_SERVER_SOCKET_NAME_SUFFIX:Ljava/lang/String; = "com.tencent.teg.mid.sock.lock"

.field private static final MAX_DURATION_FAILED_TIME:J = 0x1b7740L

.field private static final MAX_FAILED_COUNT:I = 0x3

.field private static applicationContext:Landroid/content/Context;

.field private static instance:Lcom/tencent/mid/core/HttpManager;

.field private static logger:Lcom/tencent/mid/util/Logger;


# instance fields
.field private aesHelper:Lcom/tencent/mid/util/AESHelper;

.field private defaultAesHelper:Lcom/tencent/mid/util/AESHelper;

.field private httpFailedCount:I

.field private lastHttpFailedTime:J

.field limit:I

.field mLocalServerSocket:Landroid/net/LocalServerSocket;

.field private seq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    invoke-static {}, Lcom/tencent/mid/util/Util;->getLogger()Lcom/tencent/mid/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/mid/core/HttpManager;->logger:Lcom/tencent/mid/util/Logger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/tencent/mid/core/HttpManager;->aesHelper:Lcom/tencent/mid/util/AESHelper;

    .line 48
    iput-object v0, p0, Lcom/tencent/mid/core/HttpManager;->defaultAesHelper:Lcom/tencent/mid/util/AESHelper;

    const-wide/16 v1, 0x0

    .line 50
    iput-wide v1, p0, Lcom/tencent/mid/core/HttpManager;->lastHttpFailedTime:J

    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lcom/tencent/mid/core/HttpManager;->httpFailedCount:I

    const/4 v1, -0x1

    .line 78
    iput v1, p0, Lcom/tencent/mid/core/HttpManager;->seq:I

    .line 122
    iput v1, p0, Lcom/tencent/mid/core/HttpManager;->limit:I

    .line 141
    iput-object v0, p0, Lcom/tencent/mid/core/HttpManager;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    .line 82
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    sget-object v0, Lcom/tencent/mid/core/HttpManager;->logger:Lcom/tencent/mid/util/Logger;

    invoke-virtual {v0, p1}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private checkFailedCountLimited()Z
    .locals 6

    .line 67
    iget v0, p0, Lcom/tencent/mid/core/HttpManager;->httpFailedCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mid/core/HttpManager;->lastHttpFailedTime:J

    sub-long v4, v0, v2

    const-wide/32 v0, 0x1b7740

    cmp-long v2, v4, v0

    if-gez v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mid/core/HttpManager;->resetFailedInfo()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private closeSocket()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/tencent/mid/core/HttpManager;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mid/core/HttpManager;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V

    .line 162
    sget-object v0, Lcom/tencent/mid/core/HttpManager;->logger:Lcom/tencent/mid/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close socket  mLocalServerSocket:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/mid/core/HttpManager;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/Logger;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/tencent/mid/core/HttpManager;->mLocalServerSocket:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 119
    sget-object v0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tencent/mid/core/HttpManager;
    .locals 2

    const-class v0, Lcom/tencent/mid/core/HttpManager;

    monitor-enter v0

    .line 112
    :try_start_0
    sget-object v1, Lcom/tencent/mid/core/HttpManager;->instance:Lcom/tencent/mid/core/HttpManager;

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Lcom/tencent/mid/core/HttpManager;

    invoke-direct {v1, p0}, Lcom/tencent/mid/core/HttpManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/mid/core/HttpManager;->instance:Lcom/tencent/mid/core/HttpManager;

    .line 115
    :cond_0
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->instance:Lcom/tencent/mid/core/HttpManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 111
    monitor-exit v0

    throw p0
.end method

.method private getSocket()Z
    .locals 5

    const-string v0, "com.tencent.teg.mid.sock.lock"

    const/4 v1, 0x0

    .line 146
    :try_start_0
    new-instance v2, Landroid/net/LocalServerSocket;

    invoke-direct {v2, v0}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/mid/core/HttpManager;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    .line 147
    sget-object v2, Lcom/tencent/mid/core/HttpManager;->logger:Lcom/tencent/mid/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open socket mLocalServerSocket:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/mid/core/HttpManager;->mLocalServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mid/util/Logger;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    .line 153
    :catch_0
    sget-object v0, Lcom/tencent/mid/core/HttpManager;->logger:Lcom/tencent/mid/util/Logger;

    const-string v2, "something wrong while create LocalServerSocket."

    invoke-virtual {v0, v2}, Lcom/tencent/mid/util/Logger;->w(Ljava/lang/Object;)V

    return v1

    .line 150
    :catch_1
    sget-object v2, Lcom/tencent/mid/core/HttpManager;->logger:Lcom/tencent/mid/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "socket Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is in use."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mid/util/Logger;->w(Ljava/lang/Object;)V

    return v1
.end method

.method private incFailedCount()V
    .locals 2

    .line 62
    iget v0, p0, Lcom/tencent/mid/core/HttpManager;->httpFailedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mid/core/HttpManager;->httpFailedCount:I

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mid/core/HttpManager;->lastHttpFailedTime:J

    return-void
.end method

.method private request(ILcom/tencent/mid/core/PacketInterface;Lcom/tencent/mid/api/MidCallback;)V
    .locals 8

    .line 240
    sget-object v0, Lcom/tencent/mid/core/HttpManager;->logger:Lcom/tencent/mid/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " enter http request, type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/Logger;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 244
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/mid/core/HttpManager;->checkFailedCountLimited()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "Http request failed too much, please check the network."

    .line 246
    sget-object p2, Lcom/tencent/mid/core/HttpManager;->logger:Lcom/tencent/mid/util/Logger;

    invoke-virtual {p2, p1}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    const/16 p2, -0x2742

    .line 248
    invoke-interface {p3, p2, p1}, Lcom/tencent/mid/api/MidCallback;->onFail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 252
    :cond_1
    sget-object v1, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mid/util/ConstantUtil;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/util/ConstantUtil;

    move-result-object v1

    .line 253
    new-instance v2, Lcom/tencent/mid/core/HttpConnectClient;

    sget-object v3, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/mid/util/Util;->getHttpAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/tencent/mid/core/HttpConnectClient;-><init>(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 260
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 261
    invoke-virtual {p2, v0}, Lcom/tencent/mid/core/PacketInterface;->encode(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string p2, "rty"

    .line 262
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 263
    iget p2, p0, Lcom/tencent/mid/core/HttpManager;->seq:I

    if-lez p2, :cond_2

    const-string p2, "seq"

    .line 264
    iget v3, p0, Lcom/tencent/mid/core/HttpManager;->seq:I

    invoke-virtual {v0, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 266
    :cond_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "android"

    .line 267
    invoke-virtual {p2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mid_list"

    .line 268
    sget-object v3, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/tencent/mid/util/Util;->queryMids(Landroid/content/Context;I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mid_list_new"

    .line 269
    sget-object v3, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lcom/tencent/mid/util/Util;->queryMids(Landroid/content/Context;I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 272
    sget-object v0, Lcom/tencent/mid/core/HttpManager;->logger:Lcom/tencent/mid/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jsonBodyStr:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mid/util/Logger;->i(Ljava/lang/Object;)V

    .line 273
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 274
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v5, "UTF-8"

    .line 275
    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 276
    invoke-virtual {v3, p2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 277
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 278
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 279
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 286
    invoke-virtual {p0, p1}, Lcom/tencent/mid/core/HttpManager;->getAesHelper(I)Lcom/tencent/mid/util/AESHelper;

    move-result-object v3

    .line 287
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 288
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 289
    invoke-virtual {v1}, Lcom/tencent/mid/util/ConstantUtil;->getVerifyMidUrl()Ljava/lang/String;

    move-result-object v6

    if-eq p1, v4, :cond_3

    const/4 v7, 0x3

    if-ne p1, v7, :cond_5

    :cond_3
    if-ne p1, v4, :cond_4

    .line 292
    invoke-virtual {v1}, Lcom/tencent/mid/util/ConstantUtil;->getRequestMidUrl()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v6, v4

    goto :goto_1

    .line 294
    :cond_4
    invoke-virtual {v1}, Lcom/tencent/mid/util/ConstantUtil;->getRequestMidNewUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 296
    :goto_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x40

    invoke-direct {v4, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 297
    invoke-virtual {v3}, Lcom/tencent/mid/util/AESHelper;->getKeyBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 298
    invoke-virtual {v3}, Lcom/tencent/mid/util/AESHelper;->getIvBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 299
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 300
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 301
    invoke-virtual {v1}, Lcom/tencent/mid/util/ConstantUtil;->getRSAPK()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/mid/util/RSAHelper;->createPublicKey(Ljava/lang/String;)V

    .line 302
    invoke-static {v4}, Lcom/tencent/mid/util/RSAHelper;->encrypt([B)[B

    move-result-object v4

    .line 309
    invoke-virtual {v1}, Lcom/tencent/mid/util/ConstantUtil;->getRSAKeyVersion()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 310
    array-length v1, v4

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 311
    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 317
    :cond_5
    invoke-virtual {v3, p2}, Lcom/tencent/mid/util/AESHelper;->encrypt([B)[B

    move-result-object p2

    .line 318
    invoke-virtual {v5, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 319
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 320
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 322
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    const-string v0, "gzip"

    .line 328
    invoke-virtual {v2, v6, p2, v0, p1}, Lcom/tencent/mid/core/HttpConnectClient;->httpPost(Ljava/lang/String;[BLjava/lang/String;I)Lcom/tencent/mid/core/HttpResponseResult;

    move-result-object p1

    .line 331
    invoke-virtual {p1}, Lcom/tencent/mid/core/HttpResponseResult;->getCode()I

    move-result p2

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_7

    .line 332
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "response code invalid:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/mid/core/HttpResponseResult;->getCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 333
    sget-object v0, Lcom/tencent/mid/core/HttpManager;->logger:Lcom/tencent/mid/util/Logger;

    invoke-virtual {v0, p2}, Lcom/tencent/mid/util/Logger;->w(Ljava/lang/Object;)V

    .line 334
    invoke-virtual {p1}, Lcom/tencent/mid/core/HttpResponseResult;->getCode()I

    move-result p1

    invoke-interface {p3, p1, p2}, Lcom/tencent/mid/api/MidCallback;->onFail(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_6

    .line 385
    :try_start_2
    invoke-virtual {v2}, Lcom/tencent/mid/core/HttpConnectClient;->shutdown()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 387
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_2
    return-void

    .line 340
    :cond_7
    :try_start_3
    invoke-virtual {p1}, Lcom/tencent/mid/core/HttpResponseResult;->getData()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "ret_code"

    .line 341
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "ret_msg"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    :cond_8
    const-string p2, "ret_code"

    .line 342
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "ret_msg"

    .line 343
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response code:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",msg:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    sget-object v1, Lcom/tencent/mid/core/HttpManager;->logger:Lcom/tencent/mid/util/Logger;

    invoke-virtual {v1, v0}, Lcom/tencent/mid/util/Logger;->w(Ljava/lang/Object;)V

    if-eqz p2, :cond_a

    .line 347
    invoke-interface {p3, p2, v0}, Lcom/tencent/mid/api/MidCallback;->onFail(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_9

    .line 385
    :try_start_4
    invoke-virtual {v2}, Lcom/tencent/mid/core/HttpConnectClient;->shutdown()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 387
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_3
    return-void

    :cond_a
    :try_start_5
    const-string p2, "seq"

    .line 352
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "seq"

    .line 353
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/tencent/mid/core/HttpManager;->seq:I

    :cond_b
    const-string p2, "mid"

    .line 356
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    if-nez p2, :cond_c

    const-string p2, "mid"

    .line 357
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "guid"

    .line 360
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "guid"

    .line 361
    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v1, "reset"

    .line 362
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {p2, v5, v6, v1, p3}, Lcom/tencent/mid/core/HttpManager;->updateMidEntity(Ljava/lang/String;JILcom/tencent/mid/api/MidCallback;)V

    :cond_c
    const-string p2, "locW"

    const/4 v1, -0x1

    .line 365
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    if-le p2, v1, :cond_d

    .line 367
    sget-object v1, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mid/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/util/SettingsHelper;

    move-result-object v1

    const-string v5, "ten.mid.allowCheckAndRewriteLocal.bool"

    invoke-virtual {v1, v5, p2}, Lcom/tencent/mid/util/SettingsHelper;->putInt(Ljava/lang/String;I)Z

    :cond_d
    const-string p2, "mid_new"

    .line 371
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "guid"

    .line 373
    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v1, "reset_new"

    .line 374
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p2, v3, v4, p1}, Lcom/tencent/mid/core/HttpManager;->updateNewVersionMidEntity(Ljava/lang/String;JI)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_e

    .line 385
    :try_start_6
    invoke-virtual {v2}, Lcom/tencent/mid/core/HttpConnectClient;->shutdown()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_2
    move-exception p1

    move-object v0, v2

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v2, v0

    goto :goto_6

    :catch_3
    move-exception p1

    .line 377
    :goto_4
    :try_start_7
    invoke-direct {p0}, Lcom/tencent/mid/core/HttpManager;->incFailedCount()V

    .line 378
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 p2, -0x272e

    .line 379
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, p2, v1}, Lcom/tencent/mid/api/MidCallback;->onFail(ILjava/lang/String;)V

    .line 380
    sget-object p2, Lcom/tencent/mid/core/HttpManager;->logger:Lcom/tencent/mid/util/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/tencent/mid/util/Logger;->w(Ljava/lang/Object;)V

    .line 381
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_e

    .line 385
    :try_start_8
    invoke-virtual {v0}, Lcom/tencent/mid/core/HttpConnectClient;->shutdown()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 387
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_5
    return-void

    :goto_6
    if-eqz v2, :cond_f

    .line 385
    :try_start_9
    invoke-virtual {v2}, Lcom/tencent/mid/core/HttpConnectClient;->shutdown()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_7

    :catch_5
    move-exception p2

    .line 387
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 388
    :cond_f
    :goto_7
    throw p1
.end method

.method private resetFailedInfo()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lcom/tencent/mid/core/HttpManager;->lastHttpFailedTime:J

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/tencent/mid/core/HttpManager;->httpFailedCount:I

    return-void
.end method

.method private static updateMidEntity(Ljava/lang/String;JILcom/tencent/mid/api/MidCallback;)V
    .locals 3

    .line 452
    invoke-static {p0}, Lcom/tencent/mid/util/Util;->isMidValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    sget-object v0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/core/ServiceIMPL;->getLocalMid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p3, 0x4

    .line 458
    :cond_0
    sget-object v0, Lcom/tencent/mid/core/HttpManager;->logger:Lcom/tencent/mid/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMidEntity reset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/Logger;->i(Ljava/lang/Object;)V

    if-lez p3, :cond_1

    .line 460
    new-instance v0, Lcom/tencent/mid/api/MidEntity;

    invoke-direct {v0}, Lcom/tencent/mid/api/MidEntity;-><init>()V

    .line 461
    invoke-virtual {v0, p0}, Lcom/tencent/mid/api/MidEntity;->setMid(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0, p1, p2}, Lcom/tencent/mid/api/MidEntity;->setGuid(J)V

    .line 463
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/mid/api/MidEntity;->setMac(Ljava/lang/String;)V

    .line 464
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/mid/api/MidEntity;->setImei(Ljava/lang/String;)V

    .line 465
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/mid/api/MidEntity;->setImsi(Ljava/lang/String;)V

    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mid/api/MidEntity;->setTimestamps(J)V

    const/4 p0, 0x3

    .line 467
    invoke-virtual {v0, p0}, Lcom/tencent/mid/api/MidEntity;->setVersion(I)V

    .line 468
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->logger:Lcom/tencent/mid/util/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "server return new mid midEntity:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/mid/util/Logger;->i(Ljava/lang/Object;)V

    .line 469
    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Lcom/tencent/mid/api/MidCallback;->onSuccess(Ljava/lang/Object;)V

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 482
    :pswitch_0
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writeMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    .line 483
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writeOldMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    .line 479
    :pswitch_1
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writeMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    .line 476
    :pswitch_2
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writePublicMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    .line 473
    :pswitch_3
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writePrivateMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    .line 489
    :goto_0
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p1}, Lcom/tencent/mid/sotrage/UnifiedStorage;->resetCheckEntity(II)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static updateNewVersionMidEntity(Ljava/lang/String;JI)V
    .locals 4

    .line 394
    invoke-static {p0}, Lcom/tencent/mid/util/Util;->isMidValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    sget-object v0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readNewVersionMidStr()Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    const/4 p3, 0x3

    .line 399
    :cond_0
    sget-object v0, Lcom/tencent/mid/core/HttpManager;->logger:Lcom/tencent/mid/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNewVersionMidEntity reset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mid/util/Logger;->i(Ljava/lang/Object;)V

    if-lez p3, :cond_2

    .line 401
    new-instance v0, Lcom/tencent/mid/api/MidEntity;

    invoke-direct {v0}, Lcom/tencent/mid/api/MidEntity;-><init>()V

    .line 402
    invoke-virtual {v0, p0}, Lcom/tencent/mid/api/MidEntity;->setMid(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0, p1, p2}, Lcom/tencent/mid/api/MidEntity;->setGuid(J)V

    .line 404
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/mid/api/MidEntity;->setMac(Ljava/lang/String;)V

    .line 405
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/mid/api/MidEntity;->setImei(Ljava/lang/String;)V

    .line 406
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/mid/api/MidEntity;->setImsi(Ljava/lang/String;)V

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mid/api/MidEntity;->setTimestamps(J)V

    .line 408
    invoke-virtual {v0, v1}, Lcom/tencent/mid/api/MidEntity;->setVersion(I)V

    .line 409
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->logger:Lcom/tencent/mid/util/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "server return new version mid midEntity:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/mid/util/Logger;->i(Ljava/lang/Object;)V

    const/16 p0, 0x8

    if-eq p3, p0, :cond_1

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 422
    :pswitch_0
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writeMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    .line 423
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writeNewVersionMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    .line 419
    :pswitch_1
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writeNewVersionMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    .line 416
    :pswitch_2
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writePublicNewVersionMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    .line 413
    :pswitch_3
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writePrivateNewVersionMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    .line 426
    :cond_1
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writeMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    .line 427
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writeNewVersionMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    .line 428
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writeOldMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    .line 434
    :goto_0
    sget-object p0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p1}, Lcom/tencent/mid/sotrage/UnifiedStorage;->resetCheckEntity(II)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method checkSendLimit()Z
    .locals 5

    .line 125
    iget v0, p0, Lcom/tencent/mid/core/HttpManager;->limit:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/mid/core/HttpManager;->limit:I

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_0

    .line 126
    sget-object v0, Lcom/tencent/mid/core/HttpManager;->logger:Lcom/tencent/mid/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send count limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/mid/core/HttpManager;->limit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    return v1

    .line 129
    :cond_0
    sget-object v0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/api/MidPreference;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/api/MidPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 131
    invoke-static {v1}, Lcom/tencent/mid/util/Util;->getDateString(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SEND_LIMIT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    iget v3, p0, Lcom/tencent/mid/core/HttpManager;->limit:I

    if-nez v3, :cond_1

    .line 134
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tencent/mid/core/HttpManager;->limit:I

    .line 136
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mid/core/HttpManager;->limit:I

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method getAesHelper(I)Lcom/tencent/mid/util/AESHelper;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 92
    iget-object p1, p0, Lcom/tencent/mid/core/HttpManager;->aesHelper:Lcom/tencent/mid/util/AESHelper;

    if-nez p1, :cond_0

    .line 94
    new-instance p1, Lcom/tencent/mid/util/AESHelper;

    invoke-direct {p1}, Lcom/tencent/mid/util/AESHelper;-><init>()V

    iput-object p1, p0, Lcom/tencent/mid/core/HttpManager;->aesHelper:Lcom/tencent/mid/util/AESHelper;

    .line 95
    iget-object p1, p0, Lcom/tencent/mid/core/HttpManager;->aesHelper:Lcom/tencent/mid/util/AESHelper;

    invoke-virtual {p1}, Lcom/tencent/mid/util/AESHelper;->initKeyAndIV()V

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/tencent/mid/core/HttpManager;->aesHelper:Lcom/tencent/mid/util/AESHelper;

    return-object p1

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/tencent/mid/core/HttpManager;->defaultAesHelper:Lcom/tencent/mid/util/AESHelper;

    if-nez p1, :cond_2

    .line 100
    new-instance p1, Lcom/tencent/mid/util/AESHelper;

    invoke-direct {p1}, Lcom/tencent/mid/util/AESHelper;-><init>()V

    iput-object p1, p0, Lcom/tencent/mid/core/HttpManager;->defaultAesHelper:Lcom/tencent/mid/util/AESHelper;

    .line 101
    iget-object p1, p0, Lcom/tencent/mid/core/HttpManager;->defaultAesHelper:Lcom/tencent/mid/util/AESHelper;

    const-string v0, "key-/.*$!xx"

    const-string v1, "vec-;*5@)&%("

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mid/util/AESHelper;->setKeyAndIV(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_2
    iget-object p1, p0, Lcom/tencent/mid/core/HttpManager;->defaultAesHelper:Lcom/tencent/mid/util/AESHelper;

    return-object p1
.end method

.method send(ILcom/tencent/mid/core/PacketInterface;Lcom/tencent/mid/api/MidCallback;)V
    .locals 4

    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto :goto_2

    .line 185
    :cond_0
    sget-object v0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 p1, -0x271a

    const-string p2, "network not available."

    .line 186
    invoke-interface {p3, p1, p2}, Lcom/tencent/mid/api/MidCallback;->onFail(ILjava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 191
    :goto_0
    invoke-direct {p0}, Lcom/tencent/mid/core/HttpManager;->getSocket()Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    if-lt v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x1f4

    .line 197
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 203
    sget-object v0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/core/ServiceIMPL;->getLocalMidEntity(Landroid/content/Context;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 205
    invoke-interface {p3, v0}, Lcom/tencent/mid/api/MidCallback;->onSuccess(Ljava/lang/Object;)V

    .line 206
    invoke-direct {p0}, Lcom/tencent/mid/core/HttpManager;->closeSocket()V

    return-void

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 211
    sget-object v0, Lcom/tencent/mid/core/HttpManager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readNewVersionMidEntity()Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    .line 212
    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 213
    invoke-interface {p3, v0}, Lcom/tencent/mid/api/MidCallback;->onSuccess(Ljava/lang/Object;)V

    .line 214
    invoke-direct {p0}, Lcom/tencent/mid/core/HttpManager;->closeSocket()V

    return-void

    .line 219
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/mid/core/HttpManager;->checkSendLimit()Z

    move-result v0

    if-nez v0, :cond_6

    .line 220
    invoke-direct {p0}, Lcom/tencent/mid/core/HttpManager;->closeSocket()V

    return-void

    .line 224
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mid/core/HttpManager;->request(ILcom/tencent/mid/core/PacketInterface;Lcom/tencent/mid/api/MidCallback;)V

    .line 226
    invoke-direct {p0}, Lcom/tencent/mid/core/HttpManager;->closeSocket()V

    return-void

    :cond_7
    :goto_2
    if-eqz p3, :cond_8

    const/16 p1, -0x2710

    const-string p2, "packet == null || handler == null"

    .line 180
    invoke-interface {p3, p1, p2}, Lcom/tencent/mid/api/MidCallback;->onFail(ILjava/lang/String;)V

    .line 182
    :cond_8
    sget-object p1, Lcom/tencent/mid/core/HttpManager;->logger:Lcom/tencent/mid/util/Logger;

    const-string p2, "packet == null || handler == null || cb == null"

    invoke-virtual {p1, p2}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    return-void
.end method
