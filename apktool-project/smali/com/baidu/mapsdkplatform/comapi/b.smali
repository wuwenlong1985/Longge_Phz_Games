.class public Lcom/baidu/mapsdkplatform/comapi/b;
.super Ljava/lang/Object;
.source "Initializer.java"


# static fields
.field private static a:Z = false

.field private static b:Lcom/baidu/mapapi/CommonInfo; = null

.field private static c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1

    if-nez p0, :cond_0

    .line 95
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "BDMapSDKException: context can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_0
    instance-of v0, p0, Landroid/app/Application;

    if-nez v0, :cond_1

    .line 99
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "BDMapSDKException: context must be an ApplicationContext"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :cond_1
    sput-boolean p1, Lcom/baidu/mapsdkplatform/comapi/b;->c:Z

    .line 102
    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->setPrivacyMode(Z)V

    .line 103
    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/util/k;->a(Z)V

    .line 104
    invoke-static {p0}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/LBSAuthManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->setPrivacyMode(Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mapapi/ISDKInitializerListener;)V
    .locals 0

    .line 37
    sget-boolean p4, Lcom/baidu/mapsdkplatform/comapi/b;->a:Z

    if-eqz p4, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "BDMapSDKException: context can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_1
    instance-of p4, p0, Landroid/app/Application;

    if-nez p4, :cond_2

    .line 50
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "BDMapSDKException: context must be an ApplicationContext"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_2
    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->setContext(Landroid/content/Context;)V

    .line 54
    invoke-static {p1, p2}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->a(ZLjava/lang/String;)V

    .line 57
    move-object p1, p0

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/baidu/mapapi/JNIInitializer;->setContext(Landroid/app/Application;)V

    .line 58
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object p1

    new-instance p2, Lcom/baidu/platform/comapi/util/a/b;

    invoke-direct {p2}, Lcom/baidu/platform/comapi/util/a/b;-><init>()V

    new-instance p4, Lcom/baidu/platform/comapi/util/a/a;

    invoke-direct {p4}, Lcom/baidu/platform/comapi/util/a/a;-><init>()V

    invoke-virtual {p1, p2, p4}, Lcom/baidu/platform/comapi/util/SysOSUtil;->init(Lcom/baidu/platform/comapi/util/a/b;Lcom/baidu/platform/comapi/util/a/a;)V

    .line 61
    invoke-static {p3}, Lcom/baidu/mapsdkplatform/comapi/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 62
    invoke-static {p3}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->setSDCardPath(Ljava/lang/String;)V

    .line 64
    :cond_3
    invoke-static {p0}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->initAppDirectory(Landroid/content/Context;)V

    .line 68
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/a;->a()Lcom/baidu/mapsdkplatform/comapi/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/mapsdkplatform/comapi/a;->a(Landroid/content/Context;)V

    .line 69
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/a;->a()Lcom/baidu/mapsdkplatform/comapi/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/a;->c()Z

    .line 71
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isNativeLogAnalysisEnable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 73
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/b/a/c;->a()Lcom/baidu/mapsdkplatform/comapi/b/a/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/mapsdkplatform/comapi/b/a/c;->a(Landroid/content/Context;)V

    :cond_4
    const/4 p0, 0x1

    .line 75
    sput-boolean p0, Lcom/baidu/mapsdkplatform/comapi/b;->a:Z

    if-eqz p5, :cond_5

    .line 77
    invoke-interface {p5}, Lcom/baidu/mapapi/ISDKInitializerListener;->initializerFinish()V

    :cond_5
    return-void
.end method

.method public static a(Lcom/baidu/mapapi/CommonInfo;)V
    .locals 0

    .line 86
    sput-object p0, Lcom/baidu/mapsdkplatform/comapi/b;->b:Lcom/baidu/mapapi/CommonInfo;

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 82
    sget-boolean v0, Lcom/baidu/mapsdkplatform/comapi/b;->a:Z

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_3

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/check.0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 122
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v0, "SDKInitializer"

    const-string v1, "SDCard cache path invalid"

    .line 128
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: Provided sdcard cache path invalid can not used."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b()Lcom/baidu/mapapi/CommonInfo;
    .locals 1

    .line 90
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/b;->b:Lcom/baidu/mapapi/CommonInfo;

    return-object v0
.end method

.method public static c()Z
    .locals 1

    .line 108
    sget-boolean v0, Lcom/baidu/mapsdkplatform/comapi/b;->c:Z

    return v0
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x1

    .line 136
    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/util/k;->b(Z)V

    return-void
.end method

.method public static e()V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/util/k;->b(Z)V

    return-void
.end method
