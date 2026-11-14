.class public Lcom/tencent/mid/api/MidProvider;
.super Landroid/content/ContentProvider;
.source "MidProvider.java"


# static fields
.field public static final CMD_GET_PRIVATE_MID:I = 0x1

.field public static final CMD_GET_PRIVATE_MID_ENTITY:I = 0x2

.field public static final CMD_GET_PRIVATE_NEW_VERSION_MID_ENTITY:I = 0x3

.field public static final CMD_INSERT_NEW_VERSION_MID_ENTITY:I = 0xa

.field public static final CMD_INSERT_NEW_VERSION_MID_OLD_ENTITY:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 31
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-virtual {p0}, Lcom/tencent/mid/api/MidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lcom/tencent/mid/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "-1"

    return-object p1

    .line 40
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 55
    :pswitch_0
    invoke-static {v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readPrivateNewVersionMidEntity()Lcom/tencent/mid/api/MidEntity;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 57
    invoke-virtual {p1, v0}, Lcom/tencent/mid/api/MidEntity;->setImei(Ljava/lang/String;)V

    const-string v0, ""

    .line 58
    invoke-virtual {p1, v0}, Lcom/tencent/mid/api/MidEntity;->setImsi(Ljava/lang/String;)V

    const-string v0, ""

    .line 59
    invoke-virtual {p1, v0}, Lcom/tencent/mid/api/MidEntity;->setMac(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1

    .line 46
    :pswitch_1
    invoke-static {v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readPrivateMidEntity()Lcom/tencent/mid/api/MidEntity;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, ""

    .line 48
    invoke-virtual {p1, v0}, Lcom/tencent/mid/api/MidEntity;->setImei(Ljava/lang/String;)V

    const-string v0, ""

    .line 49
    invoke-virtual {p1, v0}, Lcom/tencent/mid/api/MidEntity;->setImsi(Ljava/lang/String;)V

    const-string v0, ""

    .line 50
    invoke-virtual {p1, v0}, Lcom/tencent/mid/api/MidEntity;->setMac(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1

    .line 42
    :pswitch_2
    invoke-static {v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readPrivateMidEntity()Lcom/tencent/mid/api/MidEntity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 43
    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->getMid()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v1

    :goto_0
    const-string p1, ""

    return-object p1

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "-2"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .line 84
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {p0}, Lcom/tencent/mid/api/MidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 87
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 90
    invoke-static {p1}, Lcom/tencent/mid/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 96
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_1
    const-string p1, "mid"

    .line 112
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {p0}, Lcom/tencent/mid/api/MidProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/mid/api/MidService;->getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/mid/util/Util;->isMidValid(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 116
    invoke-static {v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p2

    invoke-static {p1}, Lcom/tencent/mid/api/MidEntity;->parse(Ljava/lang/String;)Lcom/tencent/mid/api/MidEntity;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writeNewVersionMidEntityWithProvider(Lcom/tencent/mid/api/MidEntity;Z)V

    goto :goto_0

    :pswitch_1
    const-string p1, "mid"

    .line 99
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p0}, Lcom/tencent/mid/api/MidProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/mid/api/MidService;->getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/mid/util/Util;->isMidValid(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 103
    invoke-static {v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p2

    invoke-static {p1}, Lcom/tencent/mid/api/MidEntity;->parse(Ljava/lang/String;)Lcom/tencent/mid/api/MidEntity;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writeMidEntityWithProvide(Lcom/tencent/mid/api/MidEntity;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-object v1

    :catch_1
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
