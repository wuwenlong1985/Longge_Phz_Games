.class public Lcom/baidu/platform/comapi/bmsdk/style/BmFrameResource;
.super Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;
.source "BmFrameResource.java"


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 13
    invoke-static {}, Lcom/baidu/platform/comapi/bmsdk/style/BmFrameResource;->nativeCreate()J

    move-result-wide v0

    const/16 v2, 0x39

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;-><init>(IJ)V

    return-void
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeSetBitmapResources(J[JI[III)Z
.end method

.method private static native nativeSetResIds(J[II[III)Z
.end method
