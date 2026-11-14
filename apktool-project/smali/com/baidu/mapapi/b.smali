.class public Lcom/baidu/mapapi/b;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkCallbackImpl.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/baidu/mapapi/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 6

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto :goto_1

    .line 43
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    const-string p1, "mobile"

    const/16 v0, 0x10

    .line 45
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    const/4 v2, 0x3

    .line 51
    invoke-virtual {p2, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    const/4 v3, 0x6

    .line 53
    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    const/4 v4, 0x4

    .line 55
    invoke-virtual {p2, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    const/4 v5, 0x5

    .line 57
    invoke-virtual {p2, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p2

    if-eqz v0, :cond_1

    const-string p1, "WIFI"

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const-string p1, "CELLULAR"

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const-string p1, "ETHERNET"

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    const-string p1, "LoWPAN"

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    const-string p1, "VPN"

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    const-string p1, "WifiAware"

    .line 73
    :cond_6
    :goto_0
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->h()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 76
    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/util/k;->a(Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/baidu/mapapi/b;->a:Landroid/content/Context;

    if-eqz p1, :cond_7

    .line 79
    iget-object p1, p0, Lcom/baidu/mapapi/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/baidu/mapapi/NetworkUtil;->updateNetworkProxy(Landroid/content/Context;)V

    :cond_7
    return-void

    :cond_8
    :goto_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    const-string p1, "mobile"

    .line 35
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/util/SysOSUtil;->updateNetType(Ljava/lang/String;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 88
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    const-string v0, "mobile"

    .line 90
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/util/SysOSUtil;->updateNetType(Ljava/lang/String;)V

    return-void
.end method
