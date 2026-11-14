.class public Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;
.super Lcom/baidu/platform/comapi/bmsdk/BmObject;
.source "BmTrackStyle.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

.field private d:F

.field private e:Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

.field private f:F

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 9
    invoke-static {}, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->nativeCreate()J

    move-result-wide v0

    const/16 v2, 0x3d

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmObject;-><init>(IJ)V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->a:I

    .line 14
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->b:I

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->c:Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    const/4 v2, 0x0

    .line 18
    iput v2, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->d:F

    .line 19
    iput-object v1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->e:Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    .line 20
    iput v2, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->f:F

    .line 21
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->g:I

    return-void
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeSetBitmapResource(JJ)Z
.end method

.method private static native nativeSetColor(JI)Z
.end method

.method private static native nativeSetOpacity(JF)Z
.end method

.method private static native nativeSetPaletteBitmapResource(JJ)Z
.end method

.method private static native nativeSetPaletteOpacity(JF)Z
.end method

.method private static native nativeSetTrackType(JI)Z
.end method

.method private static native nativeSetWidth(JI)Z
.end method


# virtual methods
.method public a(F)Z
    .locals 2

    .line 55
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->d:F

    .line 56
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->nativeInstance:J

    iget p1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->d:F

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->nativeSetOpacity(JF)Z

    move-result p1

    return p1
.end method

.method public a(I)Z
    .locals 2

    .line 29
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->a:I

    .line 30
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->nativeInstance:J

    iget p1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->a:I

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->nativeSetWidth(JI)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;)Z
    .locals 4

    .line 45
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->c:Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    .line 46
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->nativeInstance:J

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->nativeSetBitmapResource(JJ)Z

    move-result p1

    return p1
.end method

.method public b(F)Z
    .locals 2

    .line 60
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->f:F

    .line 61
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->nativeInstance:J

    iget p1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->f:F

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->nativeSetPaletteOpacity(JF)Z

    move-result p1

    return p1
.end method

.method public b(I)Z
    .locals 2

    .line 39
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->b:I

    .line 40
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->nativeSetTrackType(JI)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;)Z
    .locals 4

    .line 50
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->e:Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    .line 51
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->nativeInstance:J

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->nativeSetPaletteBitmapResource(JJ)Z

    move-result p1

    return p1
.end method
