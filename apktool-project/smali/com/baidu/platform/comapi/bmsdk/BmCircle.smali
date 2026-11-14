.class public Lcom/baidu/platform/comapi/bmsdk/BmCircle;
.super Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
.source "BmCircle.java"


# instance fields
.field private g:Lcom/baidu/mapapi/map/Circle;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 17
    invoke-static {}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeCreate()J

    move-result-wide v0

    const/16 v2, 0xb

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;-><init>(IJ)V

    return-void
.end method

.method private static native nativeAddHoleGeoElement(JJ)Z
.end method

.method private static native nativeClearGeoElements(J)Z
.end method

.method private static native nativeClearGradientColors(J)Z
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeDelGradientColors(JI)Z
.end method

.method private static native nativeSetCenter(JDDD)Z
.end method

.method private static native nativeSetGradientColorWeight(JF)Z
.end method

.method private static native nativeSetGradientColors(JI[II)Z
.end method

.method private static native nativeSetGradientRadiusWeight(JF)Z
.end method

.method private static native nativeSetIsGradientCircle(JZ)Z
.end method

.method private static native nativeSetLineStyle(JJ)Z
.end method

.method private static native nativeSetPixelRadius(JI)Z
.end method

.method private static native nativeSetRadius(JD)Z
.end method

.method private static native nativeSetSurfaceStyle(JJ)Z
.end method

.method private static native nativeSetTrackBy(JI)Z
.end method


# virtual methods
.method public a()Lcom/baidu/mapapi/map/Circle;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->g:Lcom/baidu/mapapi/map/Circle;

    return-object v0
.end method

.method public a(Lcom/baidu/mapapi/map/Circle;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->g:Lcom/baidu/mapapi/map/Circle;

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 66
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeInstance:J

    iget-wide v2, p1, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->nativeInstance:J

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeSetLineStyle(JJ)Z

    goto :goto_0

    .line 69
    :cond_0
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeInstance:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeSetLineStyle(JJ)Z

    :goto_0
    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 75
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeInstance:J

    iget-wide v2, p1, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->nativeInstance:J

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeSetSurfaceStyle(JJ)Z

    goto :goto_0

    .line 78
    :cond_0
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeInstance:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeSetSurfaceStyle(JJ)Z

    :goto_0
    return-void
.end method

.method public a(D)Z
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeInstance:J

    invoke-static {v0, v1, p1, p2}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeSetRadius(JD)Z

    move-result p1

    return p1
.end method

.method public a(F)Z
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeSetGradientRadiusWeight(JF)Z

    move-result p1

    return p1
.end method

.method public a(ILjava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 91
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 92
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 94
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    add-int/lit8 v3, v0, 0x1

    .line 95
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/baidu/platform/comapi/bmsdk/style/a;->a(I)I

    move-result v2

    aput v2, v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 99
    :cond_1
    iget-wide v2, p0, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeInstance:J

    invoke-static {v2, v3, p1, v1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeSetGradientColors(JI[II)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z
    .locals 4

    .line 147
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeInstance:J

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeAddHoleGeoElement(JJ)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/b;)Z
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 38
    :cond_0
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeInstance:J

    iget-wide v2, p1, Lcom/baidu/platform/comapi/bmsdk/b;->a:D

    iget-wide v4, p1, Lcom/baidu/platform/comapi/bmsdk/b;->b:D

    const-wide/16 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeSetCenter(JDDD)Z

    move-result p1

    return p1
.end method

.method public a(Z)Z
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeSetIsGradientCircle(JZ)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeInstance:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeClearGradientColors(J)Z

    move-result v0

    return v0
.end method

.method public b(F)Z
    .locals 2

    .line 138
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeSetGradientColorWeight(JF)Z

    move-result p1

    return p1
.end method

.method public c()Z
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeInstance:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->nativeClearGeoElements(J)Z

    move-result v0

    return v0
.end method
