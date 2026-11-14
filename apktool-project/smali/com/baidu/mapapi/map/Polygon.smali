.class public final Lcom/baidu/mapapi/map/Polygon;
.super Lcom/baidu/mapapi/map/Overlay;
.source "Polygon.java"


# instance fields
.field a:Lcom/baidu/mapapi/map/Stroke;

.field b:Z

.field c:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

.field d:Ljava/lang/String;

.field e:Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

.field f:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

.field g:I

.field h:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;",
            ">;"
        }
    .end annotation
.end field

.field j:I

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/HoleOptions;",
            ">;"
        }
    .end annotation
.end field

.field m:Lcom/baidu/mapapi/map/HoleOptions;

.field n:Z

.field o:Z

.field p:Z

.field q:I

.field r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Polygon;->b:Z

    .line 40
    sget-object v1, Lcom/baidu/mapapi/map/PolylineDottedLineType;->DOTTED_LINE_SQUARE:Lcom/baidu/mapapi/map/PolylineDottedLineType;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/PolylineDottedLineType;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/map/Polygon;->g:I

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/map/Polygon;->i:Ljava/util/List;

    .line 48
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Polygon;->o:Z

    .line 49
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Polygon;->p:Z

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/baidu/mapapi/map/Polygon;->q:I

    .line 56
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/h;->j:Lcom/baidu/mapsdkplatform/comapi/map/h;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->type:Lcom/baidu/mapsdkplatform/comapi/map/h;

    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "lineDashTexture.png"

    .line 344
    iget v1, p0, Lcom/baidu/mapapi/map/Polygon;->g:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, "CircleDashTexture.png"

    .line 348
    :cond_0
    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "image_info"

    .line 350
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

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

    .line 355
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 356
    invoke-static {p1, v0}, Lcom/baidu/mapapi/map/Overlay;->b(Ljava/util/List;Landroid/os/Bundle;)Z

    move-result p1

    const-string v1, "has_holes"

    .line 357
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    const-string p1, "holes"

    .line 359
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .line 293
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 296
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polygon;->n:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "has_dotted_stroke"

    .line 297
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/Polygon;->b(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string v0, "has_dotted_stroke"

    .line 300
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->L:Lcom/baidu/mapapi/map/EncodePointType;

    if-eqz v0, :cond_1

    const-string v0, "encodedPoints"

    .line 304
    iget-object v3, p0, Lcom/baidu/mapapi/map/Polygon;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "encodePointType"

    .line 305
    iget-object v3, p0, Lcom/baidu/mapapi/map/Polygon;->L:Lcom/baidu/mapapi/map/EncodePointType;

    invoke-virtual {v3}, Lcom/baidu/mapapi/map/EncodePointType;->ordinal()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->k:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    const-string v3, "location_x"

    .line 309
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v3, "location_y"

    .line 310
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 311
    iget-object v3, p0, Lcom/baidu/mapapi/map/Polygon;->k:Ljava/util/List;

    invoke-static {v3, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Ljava/util/List;Landroid/os/Bundle;)V

    .line 312
    iget-boolean v3, p0, Lcom/baidu/mapapi/map/Polygon;->n:Z

    if-eqz v3, :cond_2

    const-string v3, "dotted_stroke_location_x"

    .line 313
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v3, "dotted_stroke_location_y"

    .line 314
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 318
    :cond_2
    :goto_1
    iget v0, p0, Lcom/baidu/mapapi/map/Polygon;->j:I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(ILandroid/os/Bundle;)V

    .line 319
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->a:Lcom/baidu/mapapi/map/Stroke;

    if-nez v0, :cond_3

    const-string v0, "has_stroke"

    .line 320
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    const-string v0, "has_stroke"

    .line 322
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 323
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "stroke"

    .line 324
    iget-object v4, p0, Lcom/baidu/mapapi/map/Polygon;->a:Lcom/baidu/mapapi/map/Stroke;

    invoke-virtual {v4, v0}, Lcom/baidu/mapapi/map/Stroke;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 326
    :goto_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->l:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 327
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->l:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/baidu/mapapi/map/Polygon;->c(Ljava/util/List;Landroid/os/Bundle;)V

    const-string v0, "holes_count"

    .line 328
    iget-object v1, p0, Lcom/baidu/mapapi/map/Polygon;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 329
    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->m:Lcom/baidu/mapapi/map/HoleOptions;

    if-eqz v0, :cond_5

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->m:Lcom/baidu/mapapi/map/HoleOptions;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-direct {p0, v0, p1}, Lcom/baidu/mapapi/map/Polygon;->c(Ljava/util/List;Landroid/os/Bundle;)V

    const-string v0, "holes_count"

    .line 333
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_5
    const-string v0, "has_holes"

    .line 335
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_3
    const-string v0, "isClickable"

    .line 337
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Polygon;->o:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "isHoleClickable"

    .line 338
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Polygon;->p:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method b()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
    .locals 9

    .line 365
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->c:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 369
    :cond_0
    invoke-super {p0}, Lcom/baidu/mapapi/map/Overlay;->b()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    .line 371
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->b()Z

    .line 373
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->a:Lcom/baidu/mapapi/map/Stroke;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->f:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->f:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->a:Lcom/baidu/mapapi/map/Stroke;

    iget v2, v2, Lcom/baidu/mapapi/map/Stroke;->strokeWidth:I

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->b(I)Z

    .line 375
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->f:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->a:Lcom/baidu/mapapi/map/Stroke;

    iget v2, v2, Lcom/baidu/mapapi/map/Stroke;->color:I

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->a(I)Z

    .line 376
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polygon;->n:Z

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->f:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    iget v2, p0, Lcom/baidu/mapapi/map/Polygon;->g:I

    invoke-virtual {p0, v0, v2}, Lcom/baidu/mapapi/map/Polygon;->setDottedBitmapResource(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;I)V

    .line 378
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->f:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->c(I)Z

    goto :goto_0

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->f:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->d(I)Z

    .line 384
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->c:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->f:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;)Z

    .line 387
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 388
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->L:Lcom/baidu/mapapi/map/EncodePointType;

    if-eqz v2, :cond_4

    .line 391
    new-instance v2, Lcom/baidu/mapsdkplatform/comapi/map/y;

    invoke-direct {v2}, Lcom/baidu/mapsdkplatform/comapi/map/y;-><init>()V

    .line 392
    iget-object v3, p0, Lcom/baidu/mapapi/map/Polygon;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/mapsdkplatform/comapi/map/y;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 393
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/model/LatLng;

    .line 394
    invoke-static {v3}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v3

    .line 395
    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    .line 396
    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v6

    .line 397
    new-instance v3, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    .line 398
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 400
    :cond_3
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->c:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v2, v0}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    goto :goto_3

    .line 402
    :cond_4
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->k:Ljava/util/List;

    if-eqz v2, :cond_6

    .line 404
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    sput-object v2, Lcom/baidu/mapapi/map/Polygon;->mcLocation:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    .line 405
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/model/LatLng;

    .line 406
    invoke-static {v3}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v3

    .line 407
    new-instance v4, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 409
    :cond_5
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->c:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v2, v0}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 414
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->c:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    .line 416
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->l:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 418
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->l:Ljava/util/List;

    invoke-static {v0}, Lcom/baidu/mapapi/map/Polygon;->holeInfo2BmGeo(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 419
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 420
    new-instance v2, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;-><init>()V

    .line 421
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 422
    iget-object v3, p0, Lcom/baidu/mapapi/map/Polygon;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v3, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    invoke-virtual {v3, v2}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->b(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 426
    :cond_7
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->m:Lcom/baidu/mapapi/map/HoleOptions;

    if-eqz v0, :cond_8

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->m:Lcom/baidu/mapapi/map/HoleOptions;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-static {v0}, Lcom/baidu/mapapi/map/Polygon;->holeInfo2BmGeo(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 430
    new-instance v1, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/map/Polygon;->h:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    .line 431
    iget-object v1, p0, Lcom/baidu/mapapi/map/Polygon;->h:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 433
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polygon;->h:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->b(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    .line 436
    :cond_8
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->e:Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    if-eqz v0, :cond_9

    .line 437
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->e:Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    iget v1, p0, Lcom/baidu/mapapi/map/Polygon;->j:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->a(I)Z

    .line 438
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polygon;->e:Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;)V

    .line 441
    :cond_9
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->a(I)Z

    .line 442
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Polygon;->o:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->c(Z)Z

    .line 443
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Polygon;->p:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->d(Z)Z

    .line 444
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    .line 445
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    return-object v0

    .line 366
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    return-object v0
.end method

.method public getEncodedPoint()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/baidu/mapapi/map/Polygon;->j:I

    return v0
.end method

.method public getHoleClickedIndex()I
    .locals 1

    .line 279
    iget v0, p0, Lcom/baidu/mapapi/map/Polygon;->q:I

    return v0
.end method

.method public getHoleOption()Lcom/baidu/mapapi/map/HoleOptions;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->m:Lcom/baidu/mapapi/map/HoleOptions;

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

    .line 288
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->l:Ljava/util/List;

    return-object v0
.end method

.method public getPointType()Lcom/baidu/mapapi/map/EncodePointType;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->L:Lcom/baidu/mapapi/map/EncodePointType;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->k:Ljava/util/List;

    return-object v0
.end method

.method public getStroke()Lcom/baidu/mapapi/map/Stroke;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->a:Lcom/baidu/mapapi/map/Stroke;

    return-object v0
.end method

.method public isClickable()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polygon;->o:Z

    return v0
.end method

.method public setClickable(Z)V
    .locals 1

    .line 195
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Polygon;->o:Z

    .line 196
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->c(Z)Z

    .line 199
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEncodeInfo(Ljava/lang/String;Lcom/baidu/mapapi/map/EncodePointType;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->d:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lcom/baidu/mapapi/map/Polygon;->L:Lcom/baidu/mapapi/map/EncodePointType;

    .line 121
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/Polygon;->b()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    goto :goto_0

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public setFillColor(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/baidu/mapapi/map/Polygon;->j:I

    .line 94
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/Polygon;->b()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :goto_0
    return-void
.end method

.method public setHoleClickable(Z)V
    .locals 1

    .line 263
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Polygon;->p:Z

    .line 264
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->d(Z)Z

    .line 267
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHoleOption(Lcom/baidu/mapapi/map/HoleOptions;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 224
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->m:Lcom/baidu/mapapi/map/HoleOptions;

    const/4 p1, 0x0

    .line 225
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->l:Ljava/util/List;

    .line 226
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/Polygon;->b()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    goto :goto_0

    .line 229
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :goto_0
    return-void
.end method

.method public setHoleOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/HoleOptions;",
            ">;)V"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->l:Ljava/util/List;

    const/4 p1, 0x0

    .line 249
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->m:Lcom/baidu/mapapi/map/HoleOptions;

    .line 250
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/Polygon;->b()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    goto :goto_0

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :goto_0
    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 144
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 147
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points count can not less than three"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 150
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not contains null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v0, 0x0

    .line 154
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    .line 155
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 156
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/model/LatLng;

    .line 157
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/model/LatLng;

    if-ne v3, v4, :cond_3

    .line 159
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not has same points"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0

    .line 164
    :cond_5
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->k:Ljava/util/List;

    .line 166
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 167
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/Polygon;->b()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    goto :goto_2

    .line 169
    :cond_6
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :goto_2
    return-void
.end method

.method public setStroke(Lcom/baidu/mapapi/map/Stroke;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->a:Lcom/baidu/mapapi/map/Stroke;

    const/4 p1, 0x1

    .line 180
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Polygon;->b:Z

    .line 181
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/Polygon;->b()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    goto :goto_0

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :goto_0
    return-void
.end method

.method toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
    .locals 9

    .line 450
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    .line 451
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->a(Lcom/baidu/mapapi/map/Polygon;)V

    .line 452
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/Polygon;->setDrawItem(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)V

    .line 454
    invoke-super {p0}, Lcom/baidu/mapapi/map/Overlay;->toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    .line 457
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->c:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    .line 459
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->f:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    .line 460
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->a:Lcom/baidu/mapapi/map/Stroke;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->f:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->a:Lcom/baidu/mapapi/map/Stroke;

    iget v2, v2, Lcom/baidu/mapapi/map/Stroke;->strokeWidth:I

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->b(I)Z

    .line 462
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->f:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->a:Lcom/baidu/mapapi/map/Stroke;

    iget v2, v2, Lcom/baidu/mapapi/map/Stroke;->color:I

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->a(I)Z

    .line 463
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polygon;->n:Z

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->f:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    iget v2, p0, Lcom/baidu/mapapi/map/Polygon;->g:I

    invoke-virtual {p0, v0, v2}, Lcom/baidu/mapapi/map/Polygon;->setDottedBitmapResource(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;I)V

    .line 465
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->f:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->c(I)Z

    goto :goto_0

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->f:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->d(I)Z

    .line 471
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->c:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->f:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;)Z

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 473
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->L:Lcom/baidu/mapapi/map/EncodePointType;

    if-eqz v2, :cond_3

    .line 474
    new-instance v2, Lcom/baidu/mapsdkplatform/comapi/map/y;

    invoke-direct {v2}, Lcom/baidu/mapsdkplatform/comapi/map/y;-><init>()V

    .line 475
    iget-object v3, p0, Lcom/baidu/mapapi/map/Polygon;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/mapsdkplatform/comapi/map/y;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 476
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/model/LatLng;

    .line 477
    invoke-static {v3}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v3

    .line 478
    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    .line 479
    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v6

    .line 480
    new-instance v3, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    .line 481
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 483
    :cond_2
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->c:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v2, v0}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    goto :goto_3

    .line 487
    :cond_3
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->k:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 488
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    sput-object v2, Lcom/baidu/mapapi/map/Polygon;->mcLocation:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    .line 489
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/model/LatLng;

    .line 490
    invoke-static {v3}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v3

    .line 491
    new-instance v4, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 493
    :cond_4
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->c:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v2, v0}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 496
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->c:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    .line 499
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->l:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 500
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->l:Ljava/util/List;

    invoke-static {v0}, Lcom/baidu/mapapi/map/Polygon;->holeInfo2BmGeo(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 501
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 502
    new-instance v2, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;-><init>()V

    .line 503
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 504
    iget-object v3, p0, Lcom/baidu/mapapi/map/Polygon;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    iget-object v3, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    invoke-virtual {v3, v2}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->b(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 508
    :cond_6
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->m:Lcom/baidu/mapapi/map/HoleOptions;

    if-eqz v0, :cond_7

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 510
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->m:Lcom/baidu/mapapi/map/HoleOptions;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-static {v0}, Lcom/baidu/mapapi/map/Polygon;->holeInfo2BmGeo(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 512
    new-instance v1, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/map/Polygon;->h:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    .line 513
    iget-object v1, p0, Lcom/baidu/mapapi/map/Polygon;->h:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 515
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polygon;->h:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->b(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    .line 518
    :cond_7
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->e:Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    .line 519
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->e:Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    iget v1, p0, Lcom/baidu/mapapi/map/Polygon;->j:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->a(I)Z

    .line 520
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polygon;->e:Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;)V

    .line 521
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->a(I)Z

    .line 522
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Polygon;->o:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->c(Z)Z

    .line 523
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Polygon;->p:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmPolygon;->d(Z)Z

    .line 524
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->r:Lcom/baidu/platform/comapi/bmsdk/BmPolygon;

    return-object v0
.end method
