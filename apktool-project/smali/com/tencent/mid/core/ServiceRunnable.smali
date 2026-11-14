.class public Lcom/tencent/mid/core/ServiceRunnable;
.super Ljava/lang/Object;
.source "ServiceRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final CHECK_TYPE:I = 0x2

.field public static final REQUEST_NEW_TYPE:I = 0x3

.field public static final REQUEST_TYPE:I = 0x1


# instance fields
.field private callback:Lcom/tencent/mid/api/MidCallback;

.field private context:Landroid/content/Context;

.field private logger:Lcom/tencent/mid/util/Logger;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/tencent/mid/api/MidCallback;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/tencent/mid/core/ServiceRunnable;->context:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Lcom/tencent/mid/core/ServiceRunnable;->callback:Lcom/tencent/mid/api/MidCallback;

    const/4 v1, 0x0

    .line 32
    iput v1, p0, Lcom/tencent/mid/core/ServiceRunnable;->type:I

    .line 33
    iput-object v0, p0, Lcom/tencent/mid/core/ServiceRunnable;->logger:Lcom/tencent/mid/util/Logger;

    .line 40
    iput-object p1, p0, Lcom/tencent/mid/core/ServiceRunnable;->context:Landroid/content/Context;

    .line 41
    iput p2, p0, Lcom/tencent/mid/core/ServiceRunnable;->type:I

    .line 42
    iput-object p3, p0, Lcom/tencent/mid/core/ServiceRunnable;->callback:Lcom/tencent/mid/api/MidCallback;

    .line 43
    invoke-static {}, Lcom/tencent/mid/util/Util;->getLogger()Lcom/tencent/mid/util/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mid/core/ServiceRunnable;->logger:Lcom/tencent/mid/util/Logger;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/mid/core/ServiceRunnable;)Lcom/tencent/mid/util/Logger;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tencent/mid/core/ServiceRunnable;->logger:Lcom/tencent/mid/util/Logger;

    return-object p0
.end method

.method private autoCheck()V
    .locals 8

    .line 100
    iget-object v0, p0, Lcom/tencent/mid/core/ServiceRunnable;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readCheckEntity()Lcom/tencent/mid/sotrage/CheckEntity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/tencent/mid/core/ServiceRunnable;->logger:Lcom/tencent/mid/util/Logger;

    const-string v1, "CheckEntity is null"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/Logger;->w(Ljava/lang/Object;)V

    return-void

    .line 105
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mid/sotrage/CheckEntity;->getLastCheckTimes()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/tencent/mid/sotrage/CheckEntity;->getLastCheckTimestamps()J

    move-result-wide v4

    sub-long v6, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v4, v6, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    neg-long v6, v6

    .line 108
    :goto_0
    iget-object v2, p0, Lcom/tencent/mid/core/ServiceRunnable;->logger:Lcom/tencent/mid/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check entity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/mid/sotrage/CheckEntity;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",duration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mid/util/Logger;->i(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v0}, Lcom/tencent/mid/sotrage/CheckEntity;->getMaxFreq()I

    move-result v2

    if-le v1, v2, :cond_2

    sget-wide v2, Lcom/tencent/mid/core/Constants;->DAY_TIMESTAMPS:J

    cmp-long v4, v6, v2

    if-gtz v4, :cond_3

    .line 111
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mid/sotrage/CheckEntity;->getMaxDays()I

    move-result v2

    int-to-long v2, v2

    sget-wide v4, Lcom/tencent/mid/core/Constants;->DAY_TIMESTAMPS:J

    mul-long v2, v2, v4

    cmp-long v4, v6, v2

    if-lez v4, :cond_4

    .line 112
    :cond_3
    invoke-direct {p0}, Lcom/tencent/mid/core/ServiceRunnable;->checkLocalConsistency()V

    .line 113
    invoke-direct {p0}, Lcom/tencent/mid/core/ServiceRunnable;->checkServer()V

    .line 114
    invoke-virtual {v0, v1}, Lcom/tencent/mid/sotrage/CheckEntity;->setLastCheckTimes(I)V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mid/sotrage/CheckEntity;->setLastCheckTimestamps(J)V

    .line 116
    iget-object v1, p0, Lcom/tencent/mid/core/ServiceRunnable;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writeCheckEntity(Lcom/tencent/mid/sotrage/CheckEntity;)V

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/tencent/mid/core/ServiceRunnable;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readNewVersionMidEntity()Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/tencent/mid/core/ServiceRunnable;->logger:Lcom/tencent/mid/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "midNewEntity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mid/util/Logger;->i(Ljava/lang/Object;)V

    .line 120
    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 121
    iget-object v0, p0, Lcom/tencent/mid/core/ServiceRunnable;->logger:Lcom/tencent/mid/util/Logger;

    const-string v1, "request mid_new "

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/Logger;->i(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/tencent/mid/core/ServiceRunnable;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/core/HttpManager;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/core/HttpManager;

    move-result-object v0

    const/4 v1, 0x3

    new-instance v2, Lcom/tencent/mid/core/RequestPacket;

    iget-object v3, p0, Lcom/tencent/mid/core/ServiceRunnable;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/mid/core/RequestPacket;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/tencent/mid/core/ServiceRunnable$1;

    invoke-direct {v3, p0}, Lcom/tencent/mid/core/ServiceRunnable$1;-><init>(Lcom/tencent/mid/core/ServiceRunnable;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mid/core/HttpManager;->send(ILcom/tencent/mid/core/PacketInterface;Lcom/tencent/mid/api/MidCallback;)V

    :cond_5
    return-void
.end method

.method private checkLocalConsistency()V
    .locals 7

    .line 79
    iget-object v0, p0, Lcom/tencent/mid/core/ServiceRunnable;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Integer;

    const/4 v4, 0x2

    .line 80
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readMidEntity(Ljava/util/List;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/tencent/mid/core/ServiceRunnable;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    new-array v4, v2, [Ljava/lang/Integer;

    const/4 v6, 0x4

    .line 82
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readMidEntity(Ljava/util/List;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v1

    .line 84
    invoke-static {v1, v0}, Lcom/tencent/mid/util/Util;->equal(Lcom/tencent/mid/api/MidEntity;Lcom/tencent/mid/api/MidEntity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    iget-object v0, p0, Lcom/tencent/mid/core/ServiceRunnable;->logger:Lcom/tencent/mid/util/Logger;

    const-string v1, "local mid check passed."

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/Logger;->w(Ljava/lang/Object;)V

    return-void

    .line 88
    :cond_0
    invoke-static {v1, v0}, Lcom/tencent/mid/util/Util;->getNewerMidEntity(Lcom/tencent/mid/api/MidEntity;Lcom/tencent/mid/api/MidEntity;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/tencent/mid/core/ServiceRunnable;->logger:Lcom/tencent/mid/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local mid check failed, redress with mid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/mid/util/Logger;->w(Ljava/lang/Object;)V

    .line 92
    iget-object v1, p0, Lcom/tencent/mid/core/ServiceRunnable;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mid/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/util/SettingsHelper;

    move-result-object v1

    const-string v3, "ten.mid.allowCheckAndRewriteLocal.bool"

    .line 93
    invoke-virtual {v1, v3, v5}, Lcom/tencent/mid/util/SettingsHelper;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 95
    iget-object v1, p0, Lcom/tencent/mid/core/ServiceRunnable;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writeMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    :cond_1
    return-void
.end method

.method private checkServer()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/tencent/mid/core/ServiceRunnable;->logger:Lcom/tencent/mid/util/Logger;

    const-string v1, "checkServer"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/Logger;->i(Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/tencent/mid/core/ServiceRunnable;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/core/HttpManager;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/core/HttpManager;

    move-result-object v0

    new-instance v1, Lcom/tencent/mid/core/RequestPacket;

    iget-object v2, p0, Lcom/tencent/mid/core/ServiceRunnable;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/mid/core/RequestPacket;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/tencent/mid/core/ServiceRunnable$2;

    invoke-direct {v2, p0}, Lcom/tencent/mid/core/ServiceRunnable$2;-><init>(Lcom/tencent/mid/core/ServiceRunnable;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/mid/core/HttpManager;->send(ILcom/tencent/mid/core/PacketInterface;Lcom/tencent/mid/api/MidCallback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 48
    const-class v0, Lcom/tencent/mid/core/ServiceRunnable;

    monitor-enter v0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mid/core/ServiceRunnable;->logger:Lcom/tencent/mid/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceRunnable begin, type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/mid/core/ServiceRunnable;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",ver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x40823d71    # 4.07f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mid/util/Logger;->w(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :try_start_1
    iget v1, p0, Lcom/tencent/mid/core/ServiceRunnable;->type:I

    packed-switch v1, :pswitch_data_0

    .line 66
    iget-object v1, p0, Lcom/tencent/mid/core/ServiceRunnable;->logger:Lcom/tencent/mid/util/Logger;

    goto :goto_0

    .line 63
    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/mid/core/ServiceRunnable;->autoCheck()V

    goto :goto_1

    .line 53
    :pswitch_1
    iget-object v1, p0, Lcom/tencent/mid/core/ServiceRunnable;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mid/core/ServiceIMPL;->getLocalMidEntity(Landroid/content/Context;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v1

    .line 54
    invoke-static {v1}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/tencent/mid/core/ServiceRunnable;->callback:Lcom/tencent/mid/api/MidCallback;

    invoke-interface {v2, v1}, Lcom/tencent/mid/api/MidCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/tencent/mid/core/ServiceRunnable;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mid/util/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/tencent/mid/core/ServiceRunnable;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mid/core/HttpManager;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/core/HttpManager;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/tencent/mid/core/RequestPacket;

    iget-object v4, p0, Lcom/tencent/mid/core/ServiceRunnable;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/tencent/mid/core/RequestPacket;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/tencent/mid/core/ServiceRunnable;->callback:Lcom/tencent/mid/api/MidCallback;

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mid/core/HttpManager;->send(ILcom/tencent/mid/core/PacketInterface;Lcom/tencent/mid/api/MidCallback;)V

    goto :goto_1

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/tencent/mid/core/ServiceRunnable;->callback:Lcom/tencent/mid/api/MidCallback;

    const/16 v2, -0x271a

    const-string v3, "network not available."

    invoke-interface {v1, v2, v3}, Lcom/tencent/mid/api/MidCallback;->onFail(ILjava/lang/String;)V

    goto :goto_1

    .line 66
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/mid/core/ServiceRunnable;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mid/util/Logger;->w(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 69
    :try_start_2
    iget-object v2, p0, Lcom/tencent/mid/core/ServiceRunnable;->logger:Lcom/tencent/mid/util/Logger;

    invoke-virtual {v2, v1}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    .line 71
    :goto_1
    iget-object v1, p0, Lcom/tencent/mid/core/ServiceRunnable;->logger:Lcom/tencent/mid/util/Logger;

    const-string v2, "ServiceRunnable end"

    invoke-virtual {v1, v2}, Lcom/tencent/mid/util/Logger;->w(Ljava/lang/Object;)V

    .line 72
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
