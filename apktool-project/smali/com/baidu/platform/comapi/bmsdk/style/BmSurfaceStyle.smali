.class public Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;
.super Lcom/baidu/platform/comapi/bmsdk/BmObject;
.source "BmSurfaceStyle.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 12
    invoke-static {}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->nativeCreate()J

    move-result-wide v0

    const/16 v2, 0x35

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmObject;-><init>(IJ)V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->a:I

    .line 8
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->b:I

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->c:Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    return-void
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeSetBitmapResource(JJ)Z
.end method

.method private static native nativeSetBmpResId(JI)Z
.end method

.method private static native nativeSetColor(JI)Z
.end method


# virtual methods
.method public a(I)Z
    .locals 2

    .line 21
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->b:I

    .line 22
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->nativeInstance:J

    invoke-static {p1}, Lcom/baidu/platform/comapi/bmsdk/style/a;->a(I)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->nativeSetColor(JI)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;)Z
    .locals 4

    .line 31
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->c:Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->a:I

    .line 33
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->nativeInstance:J

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->nativeSetBitmapResource(JJ)Z

    move-result p1

    return p1
.end method
