.class public final Lcom/baidu/mapapi/map/Circle;
.super Lcom/baidu/mapapi/map/Overlay;
.source "Circle.java"


# instance fields
.field a:Lcom/baidu/mapapi/model/LatLng;

.field b:I

.field c:I

.field d:Lcom/baidu/mapapi/map/Stroke;

.field e:Z

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/HoleOptions;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/baidu/mapapi/map/HoleOptions;

.field h:Z

.field i:Z

.field j:Z

.field k:I

.field l:I

.field m:I

.field n:Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

.field o:I

.field p:I

.field q:F

.field r:F

.field private s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Circle;->i:Z

    .line 36
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Circle;->j:Z

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/baidu/mapapi/map/Circle;->k:I

    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lcom/baidu/mapapi/map/Circle;->l:I

    .line 39
    sget-object v0, Lcom/baidu/mapapi/map/PolylineDottedLineType;->DOTTED_LINE_SQUARE:Lcom/baidu/mapapi/map/PolylineDottedLineType;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/PolylineDottedLineType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/Circle;->m:I

    .line 40
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Circle;->n:Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 43
    iput v0, p0, Lcom/baidu/mapapi/map/Circle;->q:F

    const v0, 0x3e4ccccd    # 0.2f

    .line 44
    iput v0, p0, Lcom/baidu/mapapi/map/Circle;->r:F

    .line 49
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/h;->h:Lcom/baidu/mapsdkplatform/comapi/map/h;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Circle;->type:Lcom/baidu/mapsdkplatform/comapi/map/h;

    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "lineDashTexture.png"

    .line 647
    iget v1, p0, Lcom/baidu/mapapi/map/Circle;->m:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, "CircleDashTexture.png"

    .line 651
    :cond_0
    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "image_info"

    .line 653
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private c()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Circle;->h:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->a(Z)Z

    .line 157
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Circle;->h:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->b()Z

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    iget-object v1, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    iget v2, p0, Lcom/baidu/mapapi/map/Circle;->r:F

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->b(F)Z

    .line 163
    iget-object v1, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    iget v2, p0, Lcom/baidu/mapapi/map/Circle;->q:F

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->a(F)Z

    .line 164
    iget v1, p0, Lcom/baidu/mapapi/map/Circle;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget v1, p0, Lcom/baidu/mapapi/map/Circle;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    iget v2, p0, Lcom/baidu/mapapi/map/Circle;->l:I

    invoke-virtual {v1, v2, v0}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->a(ILjava/util/List;)Z

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    :cond_1
    return-void
.end method

.method private c(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/HoleOptions;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 658
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 659
    invoke-static {p1, v0}, Lcom/baidu/mapapi/map/Overlay;->b(Ljava/util/List;Landroid/os/Bundle;)Z

    move-result p1

    const-string v1, "has_holes"

    .line 660
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    const-string p1, "holes"

    .line 662
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->d:Lcom/baidu/mapapi/map/Stroke;

    if-eqz v0, :cond_1

    .line 320
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;-><init>()V

    .line 322
    iget-object v1, p0, Lcom/baidu/mapapi/map/Circle;->d:Lcom/baidu/mapapi/map/Stroke;

    iget v1, v1, Lcom/baidu/mapapi/map/Stroke;->strokeWidth:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->b(I)Z

    .line 324
    iget-object v1, p0, Lcom/baidu/mapapi/map/Circle;->d:Lcom/baidu/mapapi/map/Stroke;

    iget v1, v1, Lcom/baidu/mapapi/map/Stroke;->color:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->a(I)Z

    .line 325
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Circle;->e:Z

    if-eqz v1, :cond_0

    .line 326
    iget v1, p0, Lcom/baidu/mapapi/map/Circle;->m:I

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mapapi/map/Circle;->setDottedBitmapResource(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;I)V

    const/4 v1, 0x5

    .line 327
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->c(I)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 329
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->d(I)Z

    .line 332
    :goto_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;)V

    :cond_1
    return-void
.end method

.method private e()V
    .locals 4

    .line 434
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-nez v0, :cond_0

    goto :goto_1

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->f:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->c()Z

    .line 441
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->f:Ljava/util/List;

    invoke-static {v0}, Lcom/baidu/mapapi/map/Circle;->holeInfo2BmGeo(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 442
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 443
    new-instance v2, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;-><init>()V

    .line 444
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 445
    iget-object v3, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    invoke-virtual {v3, v2}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->g:Lcom/baidu/mapapi/map/HoleOptions;

    if-eqz v0, :cond_2

    .line 450
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->c()Z

    .line 452
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;-><init>()V

    .line 453
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 454
    iget-object v3, p0, Lcom/baidu/mapapi/map/Circle;->g:Lcom/baidu/mapapi/map/HoleOptions;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-static {v2}, Lcom/baidu/mapapi/map/Circle;->holeInfo2BmGeo(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 456
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 458
    iget-object v1, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    return-void

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .line 594
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 595
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->a:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    const-string v1, "location_x"

    .line 596
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "location_y"

    .line 597
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 598
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Circle;->h:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const-string v1, "m_isGradientCircle"

    .line 599
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 600
    iget v1, p0, Lcom/baidu/mapapi/map/Circle;->o:I

    invoke-static {v1, p1}, Lcom/baidu/mapapi/map/Overlay;->e(ILandroid/os/Bundle;)V

    .line 601
    iget v1, p0, Lcom/baidu/mapapi/map/Circle;->p:I

    invoke-static {v1, p1}, Lcom/baidu/mapapi/map/Overlay;->f(ILandroid/os/Bundle;)V

    const-string v1, "m_color_weight"

    .line 602
    iget v4, p0, Lcom/baidu/mapapi/map/Circle;->r:F

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "m_radius_weight"

    .line 603
    iget v4, p0, Lcom/baidu/mapapi/map/Circle;->q:F

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    :cond_0
    const-string v1, "m_isGradientCircle"

    .line 605
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 609
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Circle;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "dotted_stroke_location_x"

    .line 610
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "dotted_stroke_location_y"

    .line 611
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "has_dotted_stroke"

    .line 612
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 613
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/Circle;->b(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    const-string v0, "has_dotted_stroke"

    .line 615
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    const-string v0, "radius"

    .line 618
    iget-object v1, p0, Lcom/baidu/mapapi/map/Circle;->a:Lcom/baidu/mapapi/model/LatLng;

    iget v4, p0, Lcom/baidu/mapapi/map/Circle;->c:I

    .line 619
    invoke-static {v1, v4}, Lcom/baidu/mapapi/model/CoordUtil;->getMCDistanceByOneLatLngAndRadius(Lcom/baidu/mapapi/model/LatLng;I)I

    move-result v1

    .line 618
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 620
    iget v0, p0, Lcom/baidu/mapapi/map/Circle;->b:I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(ILandroid/os/Bundle;)V

    .line 621
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->d:Lcom/baidu/mapapi/map/Stroke;

    if-nez v0, :cond_2

    const-string v0, "has_stroke"

    .line 622
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    const-string v0, "has_stroke"

    .line 624
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 625
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "stroke"

    .line 626
    iget-object v4, p0, Lcom/baidu/mapapi/map/Circle;->d:Lcom/baidu/mapapi/map/Stroke;

    invoke-virtual {v4, v0}, Lcom/baidu/mapapi/map/Stroke;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 629
    :goto_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->f:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 630
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->f:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/baidu/mapapi/map/Circle;->c(Ljava/util/List;Landroid/os/Bundle;)V

    const-string v0, "holes_count"

    .line 631
    iget-object v1, p0, Lcom/baidu/mapapi/map/Circle;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 632
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->g:Lcom/baidu/mapapi/map/HoleOptions;

    if-eqz v0, :cond_4

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 634
    iget-object v1, p0, Lcom/baidu/mapapi/map/Circle;->g:Lcom/baidu/mapapi/map/HoleOptions;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    invoke-direct {p0, v0, p1}, Lcom/baidu/mapapi/map/Circle;->c(Ljava/util/List;Landroid/os/Bundle;)V

    const-string v0, "holes_count"

    .line 636
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_4
    const-string v0, "has_holes"

    .line 638
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_3
    const-string v0, "isClickable"

    .line 640
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Circle;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "isHoleClickable"

    .line 641
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Circle;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public getCenter()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->a:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getCenterColor()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/baidu/mapapi/map/Circle;->o:I

    return v0
.end method

.method public getColorWeight()F
    .locals 1

    .line 94
    iget v0, p0, Lcom/baidu/mapapi/map/Circle;->r:F

    return v0
.end method

.method public getDottedStrokeType()I
    .locals 1

    .line 384
    iget v0, p0, Lcom/baidu/mapapi/map/Circle;->m:I

    return v0
.end method

.method public getFillColor()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/baidu/mapapi/map/Circle;->b:I

    return v0
.end method

.method public getHoleClickedIndex()I
    .locals 1

    .line 589
    iget v0, p0, Lcom/baidu/mapapi/map/Circle;->k:I

    return v0
.end method

.method public getHoleOption()Lcom/baidu/mapapi/map/HoleOptions;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->g:Lcom/baidu/mapapi/map/HoleOptions;

    return-object v0
.end method

.method public getHoleOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/HoleOptions;",
            ">;"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->f:Ljava/util/List;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/baidu/mapapi/map/Circle;->c:I

    return v0
.end method

.method public getRadiusWeight()F
    .locals 1

    .line 85
    iget v0, p0, Lcom/baidu/mapapi/map/Circle;->q:F

    return v0
.end method

.method public getSideColor()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/baidu/mapapi/map/Circle;->p:I

    return v0
.end method

.method public getStroke()Lcom/baidu/mapapi/map/Stroke;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->d:Lcom/baidu/mapapi/map/Stroke;

    return-object v0
.end method

.method public isClickable()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Circle;->i:Z

    return v0
.end method

.method public isDottedStroke()Z
    .locals 1

    .line 358
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Circle;->e:Z

    return v0
.end method

.method public isIsGradientCircle()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Circle;->h:Z

    return v0
.end method

.method public setCenter(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 5

    if-nez p1, :cond_0

    .line 242
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: circle center can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 244
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/Circle;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 245
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->a:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/map/Circle;->mcLocation:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    .line 246
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 247
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_2

    .line 249
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/b;

    sget-object v1, Lcom/baidu/mapapi/map/Circle;->mcLocation:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v1

    sget-object v3, Lcom/baidu/mapapi/map/Circle;->mcLocation:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->a(Lcom/baidu/platform/comapi/bmsdk/b;)Z

    .line 251
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 254
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setCenterColor(I)V
    .locals 0

    .line 178
    iput p1, p0, Lcom/baidu/mapapi/map/Circle;->o:I

    .line 180
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Circle;->c()V

    goto :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :goto_0
    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    .line 469
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Circle;->i:Z

    .line 470
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->c(Z)Z

    .line 473
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 476
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setColorWeight(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_1

    .line 227
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/Circle;->r:F

    .line 228
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 229
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Circle;->c()V

    goto :goto_0

    .line 231
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public setDottedStroke(Z)V
    .locals 0

    .line 341
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Circle;->e:Z

    .line 342
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 343
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->n:Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    if-eqz p1, :cond_1

    .line 344
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Circle;->d()V

    .line 345
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 348
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDottedStrokeType(Lcom/baidu/mapapi/map/CircleDottedStrokeType;)V
    .locals 0

    .line 367
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/CircleDottedStrokeType;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/Circle;->m:I

    .line 368
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 369
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->n:Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    if-eqz p1, :cond_1

    .line 370
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Circle;->d()V

    .line 371
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 374
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    .line 264
    iput p1, p0, Lcom/baidu/mapapi/map/Circle;->b:I

    .line 265
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->n:Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    if-eqz p1, :cond_1

    .line 268
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->n:Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    iget v0, p0, Lcom/baidu/mapapi/map/Circle;->b:I

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->a(I)Z

    .line 270
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->n:Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;)V

    .line 271
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHoleClickable(Z)V
    .locals 1

    .line 504
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Circle;->j:Z

    .line 505
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->d(Z)Z

    .line 508
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 511
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHoleOption(Lcom/baidu/mapapi/map/HoleOptions;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 396
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/Circle;->g:Lcom/baidu/mapapi/map/HoleOptions;

    const/4 p1, 0x0

    .line 397
    iput-object p1, p0, Lcom/baidu/mapapi/map/Circle;->f:Ljava/util/List;

    .line 398
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 399
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Circle;->e()V

    goto :goto_0

    .line 401
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :goto_0
    return-void
.end method

.method public setHoleOptions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/HoleOptions;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 420
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 423
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/Circle;->f:Ljava/util/List;

    const/4 p1, 0x0

    .line 424
    iput-object p1, p0, Lcom/baidu/mapapi/map/Circle;->g:Lcom/baidu/mapapi/map/HoleOptions;

    .line 425
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 426
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Circle;->e()V

    goto :goto_0

    .line 428
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public setIsGradientCircle(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Circle;->h:Z

    .line 145
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Circle;->c()V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :goto_0
    return-void
.end method

.method public setRadius(I)V
    .locals 3

    .line 284
    iput p1, p0, Lcom/baidu/mapapi/map/Circle;->c:I

    .line 285
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 286
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->n:Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    if-eqz p1, :cond_1

    .line 288
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->a:Lcom/baidu/mapapi/model/LatLng;

    iget v0, p0, Lcom/baidu/mapapi/map/Circle;->c:I

    invoke-static {p1, v0}, Lcom/baidu/mapapi/model/CoordUtil;->getMCDistanceByOneLatLngAndRadius(Lcom/baidu/mapapi/model/LatLng;I)I

    move-result p1

    .line 289
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->a(D)Z

    .line 290
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 293
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRadiusWeight(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_1

    .line 210
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/Circle;->q:F

    .line 211
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 212
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Circle;->c()V

    goto :goto_0

    .line 214
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public setSideColor(I)V
    .locals 0

    .line 193
    iput p1, p0, Lcom/baidu/mapapi/map/Circle;->p:I

    .line 194
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Circle;->c()V

    goto :goto_0

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :goto_0
    return-void
.end method

.method public setStroke(Lcom/baidu/mapapi/map/Stroke;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/baidu/mapapi/map/Circle;->d:Lcom/baidu/mapapi/map/Stroke;

    .line 304
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 305
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->n:Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    if-eqz p1, :cond_1

    .line 306
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Circle;->d()V

    .line 307
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 310
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
    .locals 6

    .line 517
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    .line 518
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->a(Lcom/baidu/mapapi/map/Circle;)V

    .line 519
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/Circle;->setDrawItem(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)V

    .line 521
    invoke-super {p0}, Lcom/baidu/mapapi/map/Overlay;->toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    .line 523
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->a:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/map/Circle;->mcLocation:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    .line 525
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    new-instance v1, Lcom/baidu/platform/comapi/bmsdk/b;

    sget-object v2, Lcom/baidu/mapapi/map/Circle;->mcLocation:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    sget-object v4, Lcom/baidu/mapapi/map/Circle;->mcLocation:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->a(Lcom/baidu/platform/comapi/bmsdk/b;)Z

    .line 527
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->a:Lcom/baidu/mapapi/model/LatLng;

    iget v1, p0, Lcom/baidu/mapapi/map/Circle;->c:I

    invoke-static {v0, v1}, Lcom/baidu/mapapi/model/CoordUtil;->getMCDistanceByOneLatLngAndRadius(Lcom/baidu/mapapi/model/LatLng;I)I

    move-result v0

    .line 528
    iget-object v1, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    int-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->a(D)Z

    .line 529
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->d:Lcom/baidu/mapapi/map/Stroke;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 531
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;-><init>()V

    .line 533
    iget-object v2, p0, Lcom/baidu/mapapi/map/Circle;->d:Lcom/baidu/mapapi/map/Stroke;

    iget v2, v2, Lcom/baidu/mapapi/map/Stroke;->strokeWidth:I

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->b(I)Z

    .line 535
    iget-object v2, p0, Lcom/baidu/mapapi/map/Circle;->d:Lcom/baidu/mapapi/map/Stroke;

    iget v2, v2, Lcom/baidu/mapapi/map/Stroke;->color:I

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->a(I)Z

    .line 536
    iget-boolean v2, p0, Lcom/baidu/mapapi/map/Circle;->e:Z

    if-eqz v2, :cond_0

    .line 537
    iget v2, p0, Lcom/baidu/mapapi/map/Circle;->m:I

    invoke-virtual {p0, v0, v2}, Lcom/baidu/mapapi/map/Circle;->setDottedBitmapResource(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;I)V

    const/4 v2, 0x5

    .line 538
    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->c(I)Z

    goto :goto_0

    .line 540
    :cond_0
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->d(I)Z

    .line 543
    :goto_0
    iget-object v2, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    invoke-virtual {v2, v0}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;)V

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->n:Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    iget v2, p0, Lcom/baidu/mapapi/map/Circle;->b:I

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->a(I)Z

    .line 548
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Circle;->n:Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;)V

    .line 550
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->f:Ljava/util/List;

    invoke-static {v0}, Lcom/baidu/mapapi/map/Circle;->holeInfo2BmGeo(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 552
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 553
    new-instance v2, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;-><init>()V

    .line 554
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 555
    iget-object v3, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    invoke-virtual {v3, v2}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->g:Lcom/baidu/mapapi/map/HoleOptions;

    if-eqz v0, :cond_3

    .line 559
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;-><init>()V

    .line 560
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 561
    iget-object v3, p0, Lcom/baidu/mapapi/map/Circle;->g:Lcom/baidu/mapapi/map/HoleOptions;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-static {v2}, Lcom/baidu/mapapi/map/Circle;->holeInfo2BmGeo(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 563
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 565
    iget-object v1, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    .line 568
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Circle;->j:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->d(Z)Z

    .line 570
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Circle;->i:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->c(Z)Z

    .line 572
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Circle;->h:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->a(Z)Z

    .line 573
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Circle;->h:Z

    if-eqz v0, :cond_4

    .line 574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 575
    iget-object v1, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    iget v2, p0, Lcom/baidu/mapapi/map/Circle;->r:F

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->b(F)Z

    .line 576
    iget-object v1, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    iget v2, p0, Lcom/baidu/mapapi/map/Circle;->q:F

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->a(F)Z

    .line 577
    iget v1, p0, Lcom/baidu/mapapi/map/Circle;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    iget v1, p0, Lcom/baidu/mapapi/map/Circle;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v1, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    iget v2, p0, Lcom/baidu/mapapi/map/Circle;->l:I

    invoke-virtual {v1, v2, v0}, Lcom/baidu/platform/comapi/bmsdk/BmCircle;->a(ILjava/util/List;)Z

    .line 581
    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->s:Lcom/baidu/platform/comapi/bmsdk/BmCircle;

    return-object v0
.end method
