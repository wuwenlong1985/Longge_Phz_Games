.class public Lcom/baidu/platform/comapi/bmsdk/style/BmGuessResource;
.super Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;
.source "BmGuessResource.java"


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 10
    invoke-static {}, Lcom/baidu/platform/comapi/bmsdk/style/BmGuessResource;->nativeCreate()J

    move-result-wide v0

    const/16 v2, 0x3b

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;-><init>(IJ)V

    return-void
.end method

.method private static native nativeBuildDefaultGradientBkImage(J)Z
.end method

.method private static native nativeBuildResource(JLjava/lang/String;Z)Z
.end method

.method private static native nativeCreate()J
.end method
