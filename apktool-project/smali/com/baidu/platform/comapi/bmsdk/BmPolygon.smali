.class public Lcom/baidu/platform/comapi/bmsdk/BmPolygon;
.super Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
.source "BmPolygon.java"


# instance fields
.field private g:Lcom/baidu/mapapi/map/Polygon;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 11
    invoke-static {}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->nativeCreate()J

    move-result-wide v0

    const/16 v2, 0xa

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;-><init>(IJ)V

    return-void
.end method

.method private static native nativeAddGeoElement(JJ)Z
.end method

.method private static native nativeAddHoleGeoElement(JJ)Z
.end method

.method private static native nativeClearGeoElements(J)Z
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeSetDrawFullscreenMaskFlag(JZ)Z
.end method

.method private static native nativeSetJointType(JI)Z
.end method

.method private static native nativeSetSurfaceStyle(JJ)Z
.end method

.method private static native nativeSetThin(JI)Z
.end method

.method private static native nativeSetThinFactor(JF)Z
.end method


# virtual methods
.method public a()Lcom/baidu/mapapi/map/Polygon;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->g:Lcom/baidu/mapapi/map/Polygon;

    return-object v0
.end method

.method public a(Lcom/baidu/mapapi/map/Polygon;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->g:Lcom/baidu/mapapi/map/Polygon;

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 82
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->nativeInstance:J

    iget-wide v2, p1, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->nativeInstance:J

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->nativeSetSurfaceStyle(JJ)Z

    goto :goto_0

    .line 85
    :cond_0
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->nativeInstance:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->nativeSetSurfaceStyle(JJ)Z

    :goto_0
    return-void
.end method

.method public a(I)Z
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->nativeSetJointType(JI)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z
    .locals 4

    .line 28
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->nativeInstance:J

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->nativeAddGeoElement(JJ)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->nativeInstance:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->nativeClearGeoElements(J)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z
    .locals 4

    .line 37
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->nativeInstance:J

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->nativeAddHoleGeoElement(JJ)Z

    move-result p1

    return p1
.end method
