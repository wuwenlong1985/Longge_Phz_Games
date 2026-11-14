.class public Lcom/baidu/location/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;


# static fields
.field private static b:Ljava/lang/Object;

.field private static c:Lcom/baidu/location/a/a;


# instance fields
.field public a:I

.field private d:I

.field private e:Landroid/content/Context;

.field private f:J

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/location/a/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/a/a;->d:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/a/a;->e:Landroid/content/Context;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/baidu/location/a/a;->f:J

    iput-object v1, p0, Lcom/baidu/location/a/a;->g:Ljava/lang/String;

    iput v0, p0, Lcom/baidu/location/a/a;->a:I

    return-void
.end method

.method public static a()Lcom/baidu/location/a/a;
    .locals 2

    sget-object v0, Lcom/baidu/location/a/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/location/a/a;->c:Lcom/baidu/location/a/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/location/a/a;

    invoke-direct {v1}, Lcom/baidu/location/a/a;-><init>()V

    sput-object v1, Lcom/baidu/location/a/a;->c:Lcom/baidu/location/a/a;

    :cond_0
    sget-object v1, Lcom/baidu/location/a/a;->c:Lcom/baidu/location/a/a;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/LBSAuthManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getPublicKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/LBSAuthManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getMCode()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/baidu/location/a/a;->e:Landroid/content/Context;

    iget-object p1, p0, Lcom/baidu/location/a/a;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/LBSAuthManager;

    move-result-object p1

    const-string v0, "lbs_locsdk"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, p0}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->authenticate(ZLjava/lang/String;Ljava/util/Hashtable;Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/a/a;->f:J

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/LBSAuthManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/a/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 8

    iget v0, p0, Lcom/baidu/location/a/a;->d:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/location/a/a;->d:I

    const/16 v2, 0x25a

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/baidu/location/a/a;->d:I

    const/16 v2, 0x259

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/baidu/location/a/a;->d:I

    const/16 v2, -0xa

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/baidu/location/a/a;->d:I

    const/16 v2, -0xb

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/baidu/location/a/a;->e:Landroid/content/Context;

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/a/a;->f:J

    sub-long v6, v2, v4

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-wide/32 v3, 0x5265c00

    cmp-long v5, v6, v3

    if-lez v5, :cond_3

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/baidu/location/a/a;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/LBSAuthManager;

    move-result-object v3

    const-string v4, "lbs_locsdk"

    invoke-virtual {v3, v1, v4, v2, p0}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->authenticate(ZLjava/lang/String;Ljava/util/Hashtable;Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/location/a/a;->f:J

    return v0

    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v5, v6, v3

    if-ltz v5, :cond_1

    const-wide/16 v3, 0x2710

    cmp-long v5, v6, v3

    if-lez v5, :cond_3

    goto :goto_1

    :cond_3
    return v0
.end method

.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x96

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAuthResult(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/a/a;->d:I

    iget p1, p0, Lcom/baidu/location/a/a;->d:I

    invoke-virtual {p0}, Lcom/baidu/location/a/a;->e()V

    if-eqz p2, :cond_1

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p2, "token"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "token"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p2, "token"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/baidu/location/a/a;->g:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    const-string p2, "ak_permission"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "ak_permission"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "ak_permission"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/location/a/a;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method
