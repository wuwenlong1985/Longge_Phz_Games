.class public Lcom/tencent/mid/api/MidEntity;
.super Ljava/lang/Object;
.source "MidEntity.java"


# static fields
.field public static final TAG_GUID:Ljava/lang/String; = "guid"

.field public static final TAG_IMEI:Ljava/lang/String; = "imei"

.field public static final TAG_IMSI:Ljava/lang/String; = "imsi"

.field public static final TAG_MAC:Ljava/lang/String; = "mac"

.field public static final TAG_MID:Ljava/lang/String; = "mid"

.field public static final TAG_TIMESTAMPS:Ljava/lang/String; = "ts"

.field public static final TAG_VER:Ljava/lang/String; = "ver"

.field public static final TYPE_DEFAULT:I = 0x1

.field public static final TYPE_NEW:I = 0x2

.field private static logger:Lcom/tencent/mid/util/Logger;


# instance fields
.field private guid:J

.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private mid:Ljava/lang/String;

.field private timestamps:J

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/tencent/mid/util/Util;->getLogger()Lcom/tencent/mid/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/mid/api/MidEntity;->logger:Lcom/tencent/mid/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/tencent/mid/api/MidEntity;->imei:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/tencent/mid/api/MidEntity;->imsi:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/tencent/mid/api/MidEntity;->mac:Ljava/lang/String;

    const-string v0, "0"

    .line 46
    iput-object v0, p0, Lcom/tencent/mid/api/MidEntity;->mid:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/tencent/mid/api/MidEntity;->timestamps:J

    const/4 v2, 0x0

    .line 48
    iput v2, p0, Lcom/tencent/mid/api/MidEntity;->version:I

    .line 49
    iput-wide v0, p0, Lcom/tencent/mid/api/MidEntity;->guid:J

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/tencent/mid/api/MidEntity;
    .locals 4

    .line 97
    new-instance v0, Lcom/tencent/mid/api/MidEntity;

    invoke-direct {v0}, Lcom/tencent/mid/api/MidEntity;-><init>()V

    .line 98
    invoke-static {p0}, Lcom/tencent/mid/util/Util;->isStringValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 100
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "imei"

    .line 101
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "imei"

    .line 102
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/mid/api/MidEntity;->setImei(Ljava/lang/String;)V

    :cond_0
    const-string p0, "imsi"

    .line 104
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "imsi"

    .line 105
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/mid/api/MidEntity;->setImsi(Ljava/lang/String;)V

    :cond_1
    const-string p0, "mac"

    .line 107
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "mac"

    .line 108
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/mid/api/MidEntity;->setMac(Ljava/lang/String;)V

    :cond_2
    const-string p0, "mid"

    .line 110
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "mid"

    .line 111
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/mid/api/MidEntity;->setMid(Ljava/lang/String;)V

    :cond_3
    const-string p0, "ts"

    .line 116
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "ts"

    .line 117
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mid/api/MidEntity;->setTimestamps(J)V

    :cond_4
    const-string p0, "ver"

    .line 119
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "ver"

    const/4 v2, 0x0

    .line 120
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/tencent/mid/api/MidEntity;->version:I

    :cond_5
    const-string p0, "guid"

    .line 122
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "guid"

    const-wide/16 v2, 0x0

    .line 123
    invoke-virtual {v1, p0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mid/api/MidEntity;->guid:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 126
    sget-object v1, Lcom/tencent/mid/api/MidEntity;->logger:Lcom/tencent/mid/util/Logger;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/tencent/mid/util/Logger;->w(Ljava/lang/Object;)V

    :cond_6
    :goto_0
    return-object v0
.end method


# virtual methods
.method public compairTo(Lcom/tencent/mid/api/MidEntity;)I
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mid/api/MidEntity;->isMidValid()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->isMidValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    iget-object v1, p0, Lcom/tencent/mid/api/MidEntity;->mid:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/mid/api/MidEntity;->mid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 149
    :cond_1
    iget-wide v3, p0, Lcom/tencent/mid/api/MidEntity;->timestamps:J

    iget-wide v5, p1, Lcom/tencent/mid/api/MidEntity;->timestamps:J

    cmp-long p1, v3, v5

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 152
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mid/api/MidEntity;->isMidValid()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method encode()Lorg/json/JSONObject;
    .locals 4

    .line 164
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "imei"

    .line 166
    iget-object v2, p0, Lcom/tencent/mid/api/MidEntity;->imei:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "imsi"

    .line 167
    iget-object v2, p0, Lcom/tencent/mid/api/MidEntity;->imsi:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mac"

    .line 168
    iget-object v2, p0, Lcom/tencent/mid/api/MidEntity;->mac:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mid"

    .line 169
    iget-object v2, p0, Lcom/tencent/mid/api/MidEntity;->mid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "guid"

    .line 171
    iget-wide v2, p0, Lcom/tencent/mid/api/MidEntity;->guid:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :try_start_2
    const-string v1, "ts"

    .line 176
    iget-wide v2, p0, Lcom/tencent/mid/api/MidEntity;->timestamps:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 178
    sget-object v2, Lcom/tencent/mid/api/MidEntity;->logger:Lcom/tencent/mid/util/Logger;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/mid/util/Logger;->w(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public getGuid()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/tencent/mid/api/MidEntity;->guid:J

    return-wide v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/tencent/mid/api/MidEntity;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/tencent/mid/api/MidEntity;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/tencent/mid/api/MidEntity;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/tencent/mid/api/MidEntity;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamps()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/tencent/mid/api/MidEntity;->timestamps:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/tencent/mid/api/MidEntity;->version:I

    return v0
.end method

.method public isMidValid()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/tencent/mid/api/MidEntity;->mid:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setGuid(J)V
    .locals 0

    .line 55
    iput-wide p1, p0, Lcom/tencent/mid/api/MidEntity;->guid:J

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/tencent/mid/api/MidEntity;->imei:Ljava/lang/String;

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/tencent/mid/api/MidEntity;->imsi:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/tencent/mid/api/MidEntity;->mac:Ljava/lang/String;

    return-void
.end method

.method public setMid(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/tencent/mid/api/MidEntity;->mid:Ljava/lang/String;

    return-void
.end method

.method public setTimestamps(J)V
    .locals 0

    .line 75
    iput-wide p1, p0, Lcom/tencent/mid/api/MidEntity;->timestamps:J

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/tencent/mid/api/MidEntity;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/tencent/mid/api/MidEntity;->encode()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/tencent/mid/api/MidEntity;->setMid(Ljava/lang/String;)V

    return-void
.end method
