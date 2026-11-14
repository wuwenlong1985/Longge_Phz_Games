.class public Lcom/tencent/mid/sotrage/CheckEntity;
.super Ljava/lang/Object;
.source "CheckEntity.java"


# static fields
.field public static DAYS:Ljava/lang/String; = "mdays"

.field public static FREQ:Ljava/lang/String; = "mfreq"

.field public static TIMES:Ljava/lang/String; = "times"

.field public static TS:Ljava/lang/String; = "ts"

.field private static logger:Lcom/tencent/mid/util/Logger;


# instance fields
.field private lastCheckTimes:I

.field private lastCheckTimestamps:J

.field private maxDays:I

.field private maxFreq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    invoke-static {}, Lcom/tencent/mid/util/Util;->getLogger()Lcom/tencent/mid/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/mid/sotrage/CheckEntity;->logger:Lcom/tencent/mid/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/tencent/mid/sotrage/CheckEntity;->lastCheckTimestamps:J

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/tencent/mid/sotrage/CheckEntity;->lastCheckTimes:I

    const/16 v0, 0x400

    .line 25
    iput v0, p0, Lcom/tencent/mid/sotrage/CheckEntity;->maxFreq:I

    const/4 v0, 0x3

    .line 27
    iput v0, p0, Lcom/tencent/mid/sotrage/CheckEntity;->maxDays:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/tencent/mid/sotrage/CheckEntity;->lastCheckTimestamps:J

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/tencent/mid/sotrage/CheckEntity;->lastCheckTimes:I

    const/16 v0, 0x400

    .line 25
    iput v0, p0, Lcom/tencent/mid/sotrage/CheckEntity;->maxFreq:I

    const/4 v0, 0x3

    .line 27
    iput v0, p0, Lcom/tencent/mid/sotrage/CheckEntity;->maxDays:I

    .line 38
    invoke-static {p1}, Lcom/tencent/mid/util/Util;->isStringValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    sget-object p1, Lcom/tencent/mid/sotrage/CheckEntity;->TS:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 44
    sget-object p1, Lcom/tencent/mid/sotrage/CheckEntity;->TS:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/mid/sotrage/CheckEntity;->lastCheckTimestamps:J

    .line 46
    :cond_1
    sget-object p1, Lcom/tencent/mid/sotrage/CheckEntity;->FREQ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 47
    sget-object p1, Lcom/tencent/mid/sotrage/CheckEntity;->FREQ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/mid/sotrage/CheckEntity;->maxFreq:I

    .line 49
    :cond_2
    sget-object p1, Lcom/tencent/mid/sotrage/CheckEntity;->TIMES:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 50
    sget-object p1, Lcom/tencent/mid/sotrage/CheckEntity;->TIMES:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/mid/sotrage/CheckEntity;->lastCheckTimes:I

    .line 52
    :cond_3
    sget-object p1, Lcom/tencent/mid/sotrage/CheckEntity;->DAYS:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 53
    sget-object p1, Lcom/tencent/mid/sotrage/CheckEntity;->DAYS:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/mid/sotrage/CheckEntity;->maxDays:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    sget-object v0, Lcom/tencent/mid/sotrage/CheckEntity;->logger:Lcom/tencent/mid/util/Logger;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/mid/util/Logger;->w(Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getLastCheckTimes()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/tencent/mid/sotrage/CheckEntity;->lastCheckTimes:I

    return v0
.end method

.method public getLastCheckTimestamps()J
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/tencent/mid/sotrage/CheckEntity;->lastCheckTimestamps:J

    return-wide v0
.end method

.method public getMaxDays()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/tencent/mid/sotrage/CheckEntity;->maxDays:I

    return v0
.end method

.method public getMaxFreq()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/tencent/mid/sotrage/CheckEntity;->maxFreq:I

    return v0
.end method

.method public setLastCheckTimes(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/tencent/mid/sotrage/CheckEntity;->lastCheckTimes:I

    return-void
.end method

.method public setLastCheckTimestamps(J)V
    .locals 0

    .line 87
    iput-wide p1, p0, Lcom/tencent/mid/sotrage/CheckEntity;->lastCheckTimestamps:J

    return-void
.end method

.method public setMaxDays(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/tencent/mid/sotrage/CheckEntity;->maxDays:I

    return-void
.end method

.method public setMaxFreq(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/tencent/mid/sotrage/CheckEntity;->maxFreq:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 64
    :try_start_0
    sget-object v1, Lcom/tencent/mid/sotrage/CheckEntity;->TS:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tencent/mid/sotrage/CheckEntity;->lastCheckTimestamps:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 65
    sget-object v1, Lcom/tencent/mid/sotrage/CheckEntity;->TIMES:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mid/sotrage/CheckEntity;->lastCheckTimes:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    sget-object v1, Lcom/tencent/mid/sotrage/CheckEntity;->FREQ:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mid/sotrage/CheckEntity;->maxFreq:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    sget-object v1, Lcom/tencent/mid/sotrage/CheckEntity;->DAYS:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mid/sotrage/CheckEntity;->maxDays:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 69
    sget-object v2, Lcom/tencent/mid/sotrage/CheckEntity;->logger:Lcom/tencent/mid/util/Logger;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/mid/util/Logger;->w(Ljava/lang/Object;)V

    .line 71
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
