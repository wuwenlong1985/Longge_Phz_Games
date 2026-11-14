.class public Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;
.super Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
.source "BmMultiPoint.java"


# instance fields
.field private g:Lcom/baidu/mapapi/map/MultiPoint;

.field private h:Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 15
    invoke-static {}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->nativeCreate()J

    move-result-wide v0

    const/16 v2, 0x18

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;-><init>(IJ)V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->i:I

    return-void
.end method

.method private static native nativeAddGeoElement(JJ)Z
.end method

.method private static native nativeClearGeoElements(J)Z
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeSetAnchorX(JF)Z
.end method

.method private static native nativeSetAnchorY(JF)Z
.end method

.method private static native nativeSetDrawableResource(JJ)Z
.end method

.method private static native nativeSetHeight(JD)Z
.end method

.method private static native nativeSetPosition(JDDD)Z
.end method

.method private static native nativeSetWidth(JD)Z
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->i:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->i:I

    return-void
.end method

.method public a(Lcom/baidu/mapapi/map/MultiPoint;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->g:Lcom/baidu/mapapi/map/MultiPoint;

    return-void
.end method

.method public a(D)Z
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->nativeInstance:J

    invoke-static {v0, v1, p1, p2}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->nativeSetWidth(JD)Z

    move-result p1

    return p1
.end method

.method public a(F)Z
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->nativeSetAnchorX(JF)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z
    .locals 4

    .line 24
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->nativeInstance:J

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->nativeAddGeoElement(JJ)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/b;)Z
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 54
    :cond_0
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->nativeInstance:J

    iget-wide v2, p1, Lcom/baidu/platform/comapi/bmsdk/b;->a:D

    iget-wide v4, p1, Lcom/baidu/platform/comapi/bmsdk/b;->b:D

    const-wide/16 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->nativeSetPosition(JDDD)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;)Z
    .locals 4

    .line 88
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;

    .line 90
    iget-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;

    if-eqz p1, :cond_0

    .line 91
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->nativeInstance:J

    iget-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->nativeSetDrawableResource(JJ)Z

    move-result p1

    return p1

    .line 93
    :cond_0
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->nativeInstance:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->nativeSetDrawableResource(JJ)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->nativeInstance:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->nativeClearGeoElements(J)Z

    move-result v0

    return v0
.end method

.method public b(D)Z
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->nativeInstance:J

    invoke-static {v0, v1, p1, p2}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->nativeSetHeight(JD)Z

    move-result p1

    return p1
.end method

.method public b(F)Z
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->nativeSetAnchorY(JF)Z

    move-result p1

    return p1
.end method

.method public c()Lcom/baidu/mapapi/map/MultiPoint;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->g:Lcom/baidu/mapapi/map/MultiPoint;

    return-object v0
.end method
