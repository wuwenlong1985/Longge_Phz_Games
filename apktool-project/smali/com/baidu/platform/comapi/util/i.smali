.class public Lcom/baidu/platform/comapi/util/i;
.super Ljava/lang/Object;
.source "MapAuthManager.java"


# static fields
.field private static a:Lcom/baidu/platform/comjni/base/sdkauth/NASDKAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/baidu/platform/comjni/base/sdkauth/NASDKAuth;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/base/sdkauth/NASDKAuth;-><init>()V

    sput-object v0, Lcom/baidu/platform/comapi/util/i;->a:Lcom/baidu/platform/comjni/base/sdkauth/NASDKAuth;

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 17
    sget-object v0, Lcom/baidu/platform/comapi/util/i;->a:Lcom/baidu/platform/comjni/base/sdkauth/NASDKAuth;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/base/sdkauth/NASDKAuth;->dispose()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 13
    sget-object v0, Lcom/baidu/platform/comapi/util/i;->a:Lcom/baidu/platform/comjni/base/sdkauth/NASDKAuth;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comjni/base/sdkauth/NASDKAuth;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
