.class public Lcom/tencent/mid/core/ServiceIMPL;
.super Ljava/lang/Object;
.source "ServiceIMPL.java"


# static fields
.field private static logger:Lcom/tencent/mid/util/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    invoke-static {}, Lcom/tencent/mid/util/Util;->getLogger()Lcom/tencent/mid/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/mid/core/ServiceIMPL;->logger:Lcom/tencent/mid/util/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/tencent/mid/util/Logger;
    .locals 1

    .line 21
    sget-object v0, Lcom/tencent/mid/core/ServiceIMPL;->logger:Lcom/tencent/mid/util/Logger;

    return-object v0
.end method

.method private static checkPermissions(Landroid/content/Context;Lcom/tencent/mid/api/MidCallback;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->clear()V

    return-void
.end method

.method public static enableDebug(Z)V
    .locals 1

    .line 209
    invoke-static {}, Lcom/tencent/mid/util/Util;->getLogger()Lcom/tencent/mid/util/Logger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mid/util/Logger;->setDebugEnable(Z)V

    return-void
.end method

.method public static getGuid(Landroid/content/Context;)J
    .locals 2

    if-nez p0, :cond_0

    .line 161
    sget-object p0, Lcom/tencent/mid/core/ServiceIMPL;->logger:Lcom/tencent/mid/util/Logger;

    const-string v0, "context==null in getGuid()"

    invoke-virtual {p0, v0}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 164
    :cond_0
    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readGuid()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLocalMid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 192
    sget-object p0, Lcom/tencent/mid/core/ServiceIMPL;->logger:Lcom/tencent/mid/util/Logger;

    const-string v0, "context==null in getMid()"

    invoke-virtual {p0, v0}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 195
    :cond_0
    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readMidString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalMidEntity(Landroid/content/Context;)Lcom/tencent/mid/api/MidEntity;
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readMidEntity()Lcom/tencent/mid/api/MidEntity;

    move-result-object p0

    return-object p0
.end method

.method public static getMid(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    .line 132
    sget-object p0, Lcom/tencent/mid/core/ServiceIMPL;->logger:Lcom/tencent/mid/util/Logger;

    const-string v0, "context==null in getMid()"

    invoke-virtual {p0, v0}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 135
    :cond_0
    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readMidString()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    new-instance v1, Lcom/tencent/mid/core/ServiceIMPL$2;

    invoke-direct {v1}, Lcom/tencent/mid/core/ServiceIMPL$2;-><init>()V

    .line 152
    sget-object v2, Lcom/tencent/mid/core/ServiceIMPL;->logger:Lcom/tencent/mid/util/Logger;

    const-string v3, "getMid -> request new mid entity."

    invoke-virtual {v2, v3}, Lcom/tencent/mid/util/Logger;->d(Ljava/lang/Object;)V

    .line 154
    invoke-static {}, Lcom/tencent/mid/core/WorkThread;->getInstance()Lcom/tencent/mid/core/WorkThread;

    move-result-object v2

    new-instance v3, Lcom/tencent/mid/core/ServiceRunnable;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4, v1}, Lcom/tencent/mid/core/ServiceRunnable;-><init>(Landroid/content/Context;ILcom/tencent/mid/api/MidCallback;)V

    invoke-virtual {v2, v3}, Lcom/tencent/mid/core/WorkThread;->doWork(Ljava/lang/Runnable;)V

    :cond_1
    return-object v0
.end method

.method public static isEnableDebug()Z
    .locals 1

    .line 213
    invoke-static {}, Lcom/tencent/mid/util/Util;->getLogger()Lcom/tencent/mid/util/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mid/util/Logger;->isDebugEnable()Z

    move-result v0

    return v0
.end method

.method public static isMidValid(Ljava/lang/String;)Z
    .locals 0

    .line 205
    invoke-static {p0}, Lcom/tencent/mid/util/Util;->isMidValid(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static requestMid(Landroid/content/Context;Lcom/tencent/mid/api/MidCallback;)V
    .locals 3

    .line 88
    sget-object v0, Lcom/tencent/mid/core/ServiceIMPL;->logger:Lcom/tencent/mid/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestMid, callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/Logger;->i(Ljava/lang/Object;)V

    .line 89
    new-instance v0, Lcom/tencent/mid/core/ServiceIMPL$1;

    invoke-direct {v0, p1}, Lcom/tencent/mid/core/ServiceIMPL$1;-><init>(Lcom/tencent/mid/api/MidCallback;)V

    invoke-static {p0, v0}, Lcom/tencent/mid/core/ServiceIMPL;->requestMidEntity(Landroid/content/Context;Lcom/tencent/mid/api/MidCallback;)V

    return-void
.end method

.method public static requestMidEntity(Landroid/content/Context;Lcom/tencent/mid/api/MidCallback;)V
    .locals 4

    .line 115
    invoke-static {p0, p1}, Lcom/tencent/mid/core/ServiceIMPL;->checkPermissions(Landroid/content/Context;Lcom/tencent/mid/api/MidCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-static {p0}, Lcom/tencent/mid/core/ServiceIMPL;->getLocalMidEntity(Landroid/content/Context;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->isMidValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    sget-object v1, Lcom/tencent/mid/core/ServiceIMPL;->logger:Lcom/tencent/mid/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestMidEntity -> get local mid entity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mid/util/Logger;->i(Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tencent/mid/api/MidCallback;->onSuccess(Ljava/lang/Object;)V

    .line 123
    invoke-static {}, Lcom/tencent/mid/core/WorkThread;->getInstance()Lcom/tencent/mid/core/WorkThread;

    move-result-object v0

    new-instance v1, Lcom/tencent/mid/core/ServiceRunnable;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p1}, Lcom/tencent/mid/core/ServiceRunnable;-><init>(Landroid/content/Context;ILcom/tencent/mid/api/MidCallback;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mid/core/WorkThread;->doWork(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 125
    :cond_1
    sget-object v0, Lcom/tencent/mid/core/ServiceIMPL;->logger:Lcom/tencent/mid/util/Logger;

    const-string v1, "requestMidEntity -> request new mid entity."

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/Logger;->i(Ljava/lang/Object;)V

    .line 126
    invoke-static {}, Lcom/tencent/mid/core/WorkThread;->getInstance()Lcom/tencent/mid/core/WorkThread;

    move-result-object v0

    new-instance v1, Lcom/tencent/mid/core/ServiceRunnable;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p1}, Lcom/tencent/mid/core/ServiceRunnable;-><init>(Landroid/content/Context;ILcom/tencent/mid/api/MidCallback;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mid/core/WorkThread;->doWork(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
