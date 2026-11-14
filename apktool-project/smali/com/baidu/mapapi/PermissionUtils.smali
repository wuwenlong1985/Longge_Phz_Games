.class public Lcom/baidu/mapapi/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/PermissionUtils$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapapi/c;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/baidu/mapapi/PermissionUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/baidu/mapapi/PermissionUtils;
    .locals 1

    .line 19
    invoke-static {}, Lcom/baidu/mapapi/PermissionUtils$a;->a()Lcom/baidu/mapapi/PermissionUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isBWNaviInfoAuthorized()Z
    .locals 1

    .line 64
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/c;->a()Lcom/baidu/mapsdkplatform/comapi/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/util/c;->d()Z

    move-result v0

    return v0
.end method

.method public isBWNaviMultiMapAuthorized()Z
    .locals 1

    .line 46
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/c;->a()Lcom/baidu/mapsdkplatform/comapi/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/util/c;->e()Z

    move-result v0

    return v0
.end method

.method public isBWNaviTrafficLightAuthorized()Z
    .locals 1

    .line 55
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/c;->a()Lcom/baidu/mapsdkplatform/comapi/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/util/c;->f()Z

    move-result v0

    return v0
.end method

.method public isEnglishMapAuthorized()Z
    .locals 1

    .line 73
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/c;->a()Lcom/baidu/mapsdkplatform/comapi/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/util/c;->g()Z

    move-result v0

    return v0
.end method

.method public isIndoorNaviAuthorized()Z
    .locals 1

    .line 28
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/c;->a()Lcom/baidu/mapsdkplatform/comapi/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/util/c;->b()Z

    move-result v0

    return v0
.end method

.method public isIntegralRoutePlanAuthorized()Z
    .locals 1

    .line 81
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/c;->a()Lcom/baidu/mapsdkplatform/comapi/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/util/c;->h()Z

    move-result v0

    return v0
.end method

.method public isWalkARNaviAuthorized()Z
    .locals 1

    .line 37
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/c;->a()Lcom/baidu/mapsdkplatform/comapi/util/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/util/c;->c()Z

    move-result v0

    return v0
.end method
