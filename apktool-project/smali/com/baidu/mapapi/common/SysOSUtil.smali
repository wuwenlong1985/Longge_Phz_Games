.class public Lcom/baidu/mapapi/common/SysOSUtil;
.super Ljava/lang/Object;
.source "SysOSUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthToken()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDensity()F
    .locals 1

    .line 23
    sget v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->b:F

    return v0
.end method

.method public static getDensityDpi()I
    .locals 1

    .line 14
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->o()I

    move-result v0

    return v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 3

    .line 41
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->s()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "|"

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModuleFileName()Ljava/lang/String;
    .locals 1

    .line 32
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneType()Ljava/lang/String;
    .locals 1

    .line 84
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenSizeX()I
    .locals 1

    .line 66
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->k()I

    move-result v0

    return v0
.end method

.method public static getScreenSizeY()I
    .locals 1

    .line 75
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->m()I

    move-result v0

    return v0
.end method

.method public static updateCuid()V
    .locals 0

    .line 57
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->s()Ljava/lang/String;

    return-void
.end method
