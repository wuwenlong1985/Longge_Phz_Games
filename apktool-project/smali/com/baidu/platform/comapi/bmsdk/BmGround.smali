.class public Lcom/baidu/platform/comapi/bmsdk/BmGround;
.super Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
.source "BmGround.java"


# instance fields
.field private g:Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;

.field private h:Lcom/baidu/mapapi/map/GroundOverlay;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 12
    invoke-static {}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->nativeCreate()J

    move-result-wide v0

    const/16 v2, 0x16

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;-><init>(IJ)V

    return-void
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
.method public a()Lcom/baidu/mapapi/map/GroundOverlay;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmGround;->h:Lcom/baidu/mapapi/map/GroundOverlay;

    return-object v0
.end method

.method public a(Lcom/baidu/mapapi/map/GroundOverlay;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmGround;->h:Lcom/baidu/mapapi/map/GroundOverlay;

    return-void
.end method

.method public a(D)Z
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmGround;->nativeInstance:J

    invoke-static {v0, v1, p1, p2}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->nativeSetWidth(JD)Z

    move-result p1

    return p1
.end method

.method public a(F)Z
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmGround;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->nativeSetAnchorX(JF)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/b;)Z
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 24
    :cond_0
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmGround;->nativeInstance:J

    iget-wide v2, p1, Lcom/baidu/platform/comapi/bmsdk/b;->a:D

    iget-wide v4, p1, Lcom/baidu/platform/comapi/bmsdk/b;->b:D

    const-wide/16 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->nativeSetPosition(JDDD)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;)Z
    .locals 4

    .line 69
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmGround;->g:Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;

    .line 71
    iget-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmGround;->g:Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;

    if-eqz p1, :cond_0

    .line 72
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmGround;->nativeInstance:J

    iget-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmGround;->g:Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->nativeSetDrawableResource(JJ)Z

    move-result p1

    return p1

    .line 74
    :cond_0
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmGround;->nativeInstance:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->nativeSetDrawableResource(JJ)Z

    move-result p1

    return p1
.end method

.method public b(D)Z
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmGround;->nativeInstance:J

    invoke-static {v0, v1, p1, p2}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->nativeSetHeight(JD)Z

    move-result p1

    return p1
.end method

.method public b(F)Z
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmGround;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->nativeSetAnchorY(JF)Z

    move-result p1

    return p1
.end method
