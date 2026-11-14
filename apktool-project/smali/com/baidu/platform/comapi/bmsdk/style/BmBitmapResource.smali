.class public Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;
.super Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;
.source "BmBitmapResource.java"


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 15
    invoke-static {}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;->nativeCreate()J

    move-result-wide v0

    const/16 v2, 0x38

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 27
    invoke-static {}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;->nativeCreate()J

    move-result-wide v0

    const/16 v2, 0x38

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;-><init>(IJ)V

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;->a(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 82
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;->nativeInstance:J

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    move-object v2, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;->nativeSetBitmap(JLandroid/graphics/Bitmap;IIZ)Z

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object p2

    invoke-static {p2}, Lcom/baidu/platform/comapi/bmsdk/style/b;->a([B)Lcom/baidu/platform/comapi/bmsdk/style/b;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    .line 87
    new-array v0, v0, [I

    .line 88
    iget-object v1, p2, Lcom/baidu/platform/comapi/bmsdk/style/b;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p2, Lcom/baidu/platform/comapi/bmsdk/style/b;->a:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 90
    iget-object v1, p2, Lcom/baidu/platform/comapi/bmsdk/style/b;->a:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v0, v2

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget-object v1, p2, Lcom/baidu/platform/comapi/bmsdk/style/b;->a:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    sub-int/2addr p1, v1

    aput p1, v0, v2

    .line 93
    iget-object p1, p2, Lcom/baidu/platform/comapi/bmsdk/style/b;->b:[I

    iget-object p2, p2, Lcom/baidu/platform/comapi/bmsdk/style/b;->c:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;->a([I[I[I)V

    :cond_0
    return-void
.end method

.method private a([I[I[I)V
    .locals 6

    if-eqz p1, :cond_0

    .line 100
    array-length v0, p1

    if-lez v0, :cond_0

    .line 101
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;->nativeInstance:J

    array-length v2, p1

    invoke-static {v0, v1, p1, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;->nativeSetScaleX(J[II)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 103
    array-length p1, p2

    if-lez p1, :cond_1

    .line 104
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;->nativeInstance:J

    array-length p1, p2

    invoke-static {v0, v1, p2, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;->nativeSetScaleY(J[II)Z

    :cond_1
    if-eqz p3, :cond_2

    .line 106
    array-length p1, p3

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    .line 107
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;->nativeInstance:J

    const/4 p1, 0x0

    aget v2, p3, p1

    const/4 p1, 0x1

    aget v3, p3, p1

    const/4 p1, 0x2

    aget v4, p3, p1

    const/4 p1, 0x3

    aget v5, p3, p1

    invoke-static/range {v0 .. v5}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;->nativeSetFillArea(JIIII)Z

    :cond_2
    return-void
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeSetBitmap(JLandroid/graphics/Bitmap;IIZ)Z
.end method

.method private static native nativeSetFillArea(JIIII)Z
.end method

.method private static native nativeSetScaleX(J[II)Z
.end method

.method private static native nativeSetScaleY(J[II)Z
.end method
