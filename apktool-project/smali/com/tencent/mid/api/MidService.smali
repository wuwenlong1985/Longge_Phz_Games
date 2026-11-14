.class public Lcom/tencent/mid/api/MidService;
.super Ljava/lang/Object;
.source "MidService.java"


# static fields
.field private static enableReportWifiList:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDebug(Z)V
    .locals 0

    .line 86
    invoke-static {p0}, Lcom/tencent/mid/core/ServiceIMPL;->enableDebug(Z)V

    return-void
.end method

.method public static getGuid(Landroid/content/Context;)J
    .locals 2

    .line 67
    invoke-static {p0}, Lcom/tencent/mid/core/ServiceIMPL;->getGuid(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLocalMidOnly(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readMidString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-static {p0}, Lcom/tencent/mid/core/ServiceIMPL;->getMid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMidRequestHost()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMidRequestUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNewMid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 144
    invoke-static {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readNewVersionMidStr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isEnableDebug()Z
    .locals 1

    .line 95
    invoke-static {}, Lcom/tencent/mid/core/ServiceIMPL;->isEnableDebug()Z

    move-result v0

    return v0
.end method

.method public static isEnableReportWifiList()Z
    .locals 1

    .line 136
    sget-boolean v0, Lcom/tencent/mid/api/MidService;->enableReportWifiList:Z

    return v0
.end method

.method public static isMidValid(Ljava/lang/String;)Z
    .locals 0

    .line 77
    invoke-static {p0}, Lcom/tencent/mid/core/ServiceIMPL;->isMidValid(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static requestMid(Landroid/content/Context;Lcom/tencent/mid/api/MidCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "error, callback is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-nez p0, :cond_1

    const/16 p0, -0x2710

    const-string v0, "content is null!"

    .line 34
    invoke-interface {p1, p0, v0}, Lcom/tencent/mid/api/MidCallback;->onFail(ILjava/lang/String;)V

    return-void

    .line 37
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/tencent/mid/core/ServiceIMPL;->requestMid(Landroid/content/Context;Lcom/tencent/mid/api/MidCallback;)V

    return-void
.end method

.method public static setEnableReportWifiList(Z)V
    .locals 0

    .line 140
    sput-boolean p0, Lcom/tencent/mid/api/MidService;->enableReportWifiList:Z

    return-void
.end method

.method public static setMidRequestUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
