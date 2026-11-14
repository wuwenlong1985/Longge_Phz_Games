.class public Lcom/baidu/mapsdkplatform/comapi/map/i;
.super Ljava/lang/Object;
.source "EngineManager.java"


# static fields
.field private static a:I

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->b:Landroid/content/Context;

    .line 261
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->getInstance()Lcom/baidu/mapsdkplatform/comapi/NativeLoader;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mapapi/VersionInfo;->getKitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 267
    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/VersionInfo;->getApiVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/VersionInfo;->getApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    new-instance v0, Lcom/baidu/mapapi/common/BaiduMapSDKException;

    const-string v1, "the version of map is not match with base"

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/common/BaiduMapSDKException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->getInstance()Lcom/baidu/mapsdkplatform/comapi/NativeLoader;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/VersionInfo;->getKitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->loadLibrary(Ljava/lang/String;)Z

    return-void
.end method

.method public static a()V
    .locals 3

    .line 59
    sget v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->a:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 60
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Lcom/baidu/platform/comapi/JNIInitializer;->getCachedContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->b:Landroid/content/Context;

    .line 62
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "BDMapSDK"

    const-string v1, "you have not supplyed the global app context info from SDKInitializer.initialize(Context) function."

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 70
    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->updateCuid()V

    .line 73
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->b()V

    .line 75
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, v1}, Lcom/baidu/platform/comapi/JNIInitializer;->attach(Landroid/app/Application;ZZZZ)V

    .line 76
    invoke-static {}, Lcom/baidu/platform/comapi/JNIInitializer;->initEngine()V

    .line 77
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/AppResList;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/AppResList;-><init>()V

    invoke-static {v0}, Lcom/baidu/platform/comapi/JNIInitializer;->initEngineResource(Lcom/baidu/platform/comapi/resource/ResourceList;)V

    .line 79
    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->b()V

    .line 82
    invoke-static {}, Lcom/baidu/platform/comapi/longlink/BNLongLink;->initLongLink()V

    .line 84
    invoke-static {}, Lcom/baidu/platform/comjni/engine/NAEngine;->c()Z

    .line 86
    invoke-static {}, Lcom/baidu/platform/comjni/engine/NAEngine;->startRunningRequest()V

    .line 88
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->getInstance()Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;

    move-result-object v0

    new-instance v2, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;

    invoke-direct {v2}, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;-><init>()V

    invoke-virtual {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->addObserver(Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObserver;)V

    .line 89
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->getInstance()Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->init(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->a()V

    .line 93
    :cond_1
    sget v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->a:I

    add-int/2addr v0, v1

    sput v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->a:I

    .line 94
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BasicMap init mRef = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/baidu/mapsdkplatform/comapi/map/i;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static b()V
    .locals 3

    .line 242
    sget v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->a:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->a:I

    .line 243
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BasicMap destroy mRef = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/baidu/mapsdkplatform/comapi/map/i;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    .line 247
    :cond_0
    sget v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->a:I

    if-nez v0, :cond_1

    .line 248
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->c()V

    .line 249
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/LogStatistics;->getInstance()Lcom/baidu/platform/comapi/logstatistics/LogStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/logstatistics/LogStatistics;->destroy()V

    .line 250
    invoke-static {}, Lcom/baidu/platform/comapi/JNIInitializer;->destroy()V

    :cond_1
    return-void
.end method

.method public static c()I
    .locals 1

    .line 256
    sget v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->a:I

    return v0
.end method
