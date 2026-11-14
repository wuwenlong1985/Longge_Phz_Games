.class public Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;
.super Lcom/baidu/mapapi/map/AbsBackgroundDrawNaviLayer;
.source "BackgroundDrawNaviLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Lcom/baidu/platform/comapi/basestruct/Point;

.field private d:Landroid/graphics/Path;

.field private e:Landroid/graphics/Bitmap;

.field private final f:Ljava/lang/Object;

.field private g:Landroid/graphics/Bitmap;

.field private final h:Ljava/lang/Object;

.field private i:Landroid/graphics/Bitmap;

.field private final j:Ljava/lang/Object;

.field private k:Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;

.field private l:Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;

.field private m:D

.field private n:Z

.field private o:I

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/AbsBackgroundDrawNaviLayer;-><init>(Landroid/content/Context;I)V

    .line 52
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->f:Ljava/lang/Object;

    .line 58
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->h:Ljava/lang/Object;

    .line 64
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->j:Ljava/lang/Object;

    .line 80
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->n:Z

    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->q:Z

    const-string p1, "#50D27D"

    .line 99
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->o:I

    const/16 p1, 0xa

    .line 100
    iput p1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->p:I

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;)Lcom/baidu/platform/comapi/basestruct/Point;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    return-object p0
.end method

.method private a()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->l:Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 436
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->a()V

    .line 437
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 444
    iget-object v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->k:Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;

    if-nez v2, :cond_1

    .line 447
    invoke-static {v0}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->b(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-static {v0}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->c(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 458
    :cond_1
    invoke-virtual {v2}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->a()V

    .line 460
    invoke-static {v0}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->d(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)J

    move-result-wide v3

    invoke-static {v2}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->d(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)J

    move-result-wide v5

    sub-long v7, v3, v5

    const-wide/16 v3, 0x0

    cmp-long v5, v7, v3

    if-gtz v5, :cond_2

    .line 464
    invoke-static {v0}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->b(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-static {v0}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->c(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 471
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->d(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)J

    move-result-wide v5

    sub-long v9, v3, v5

    cmp-long v3, v9, v7

    if-ltz v3, :cond_3

    .line 474
    invoke-static {v0}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->b(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-static {v0}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->c(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 481
    :cond_3
    invoke-static {v2}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->b(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->b(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)I

    move-result v4

    invoke-static {v2}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->b(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-long v4, v4

    mul-long v4, v4, v9

    long-to-float v4, v4

    long-to-float v5, v7

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-static {v2}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->c(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->c(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)I

    move-result v0

    invoke-static {v2}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->c(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-long v6, v0

    mul-long v6, v6, v9

    long-to-float v0, v6

    div-float/2addr v0, v5

    add-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private a(Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;)V
    .locals 9

    .line 304
    iget-object v0, p0, Lcom/baidu/mapapi/map/AbsBackgroundDrawNaviLayer;->mEntity:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/mapapi/map/entity/BackgroundNaviEntity;

    if-nez v0, :cond_0

    return-void

    .line 309
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/entity/BackgroundNaviEntity;->getRouteShapePoints()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 311
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 315
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    return-void

    .line 320
    :cond_2
    iget-object v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->d:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const/4 v2, 0x0

    .line 321
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/model/LatLng;

    .line 322
    iget-object v4, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {p0, v3, v4}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->toScreenLocation(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/platform/comapi/basestruct/Point;)V

    .line 323
    iget-object v3, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->d:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    iget v4, v4, Lcom/baidu/platform/comapi/basestruct/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    iget v5, v5, Lcom/baidu/platform/comapi/basestruct/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v1, :cond_3

    .line 325
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/model/LatLng;

    .line 326
    iget-object v6, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {p0, v5, v6}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->toScreenLocation(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/platform/comapi/basestruct/Point;)V

    .line 327
    iget-object v5, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->d:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    iget v6, v6, Lcom/baidu/platform/comapi/basestruct/Point;->x:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    iget v7, v7, Lcom/baidu/platform/comapi/basestruct/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 331
    :cond_3
    iget-object v4, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->a:Landroid/graphics/Paint;

    iget v5, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->o:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    iget-object v4, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->a:Landroid/graphics/Paint;

    iget v5, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->p:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 333
    iget-object v4, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->d:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 336
    iget-boolean v4, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->n:Z

    if-eqz v4, :cond_6

    .line 337
    iget-object v4, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->f:Ljava/lang/Object;

    monitor-enter v4

    .line 338
    :try_start_0
    iget-object v5, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->e:Landroid/graphics/Bitmap;

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_4

    .line 339
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_4

    .line 340
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    .line 341
    iget-object v7, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {p0, v2, v7}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->toScreenLocation(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/platform/comapi/basestruct/Point;)V

    .line 342
    iget-object v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    iget v2, v2, Lcom/baidu/platform/comapi/basestruct/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    sub-float/2addr v2, v7

    iget-object v7, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    iget v7, v7, Lcom/baidu/platform/comapi/basestruct/Point;->y:I

    .line 343
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->b:Landroid/graphics/Paint;

    .line 342
    invoke-virtual {p1, v5, v2, v7, v8}, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 345
    :cond_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 347
    iget-object v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 348
    :try_start_1
    iget-object v4, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->g:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    .line 349
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_5

    sub-int/2addr v1, v3

    .line 350
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    .line 351
    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->toScreenLocation(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/platform/comapi/basestruct/Point;)V

    .line 352
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    iget v0, v0, Lcom/baidu/platform/comapi/basestruct/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    iget v1, v1, Lcom/baidu/platform/comapi/basestruct/Point;->y:I

    .line 353
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->b:Landroid/graphics/Paint;

    .line 352
    invoke-virtual {p1, v4, v0, v1, v3}, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 355
    :cond_5
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 345
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    return-void
.end method

.method private b(Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;)V
    .locals 9

    .line 363
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->l:Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;

    if-nez v0, :cond_0

    return-void

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->i:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    return-void

    .line 372
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 376
    :cond_2
    iget-object v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mController:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v2, :cond_3

    return-void

    .line 380
    :cond_3
    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v2

    if-nez v2, :cond_4

    return-void

    .line 386
    :cond_4
    invoke-direct {p0}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->a()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_5

    return-void

    .line 390
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    return-void

    :cond_6
    const/4 v4, 0x0

    .line 393
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x1

    .line 394
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 398
    iget-boolean v5, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->q:Z

    if-nez v5, :cond_7

    .line 399
    invoke-static {v0}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->a(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->getGpsDirection()F

    move-result v0

    iget v2, v2, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_0

    .line 401
    :cond_7
    iget-wide v5, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->m:D

    iget v0, v2, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    int-to-double v7, v0

    sub-double/2addr v5, v7

    double-to-float v0, v5

    .line 404
    :goto_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->save()I

    .line 405
    invoke-virtual {p1, v0, v4, v3}, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->rotate(FFF)V

    .line 406
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr v4, v0

    .line 407
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float/2addr v3, v0

    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->b:Landroid/graphics/Paint;

    .line 406
    invoke-virtual {p1, v1, v4, v3, v0}, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 408
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->restore()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .line 105
    invoke-super {p0}, Lcom/baidu/mapapi/map/AbsBackgroundDrawNaviLayer;->onCreate()V

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->a:Landroid/graphics/Paint;

    .line 109
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->o:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->p:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->b:Landroid/graphics/Paint;

    .line 118
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->d:Landroid/graphics/Path;

    .line 119
    new-instance v0, Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/basestruct/Point;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    const/4 v0, 0x0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->e:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "SDK_Default_Icon_Start.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->e:Landroid/graphics/Bitmap;

    .line 127
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 130
    :goto_0
    iget-object v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->g:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "SDK_Default_Icon_End.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 132
    :try_start_2
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->g:Landroid/graphics/Bitmap;

    .line 133
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_8

    :catch_0
    move-object v1, v2

    goto :goto_3

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 143
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_8

    :catch_1
    move-object v1, v0

    .line 138
    :catch_2
    :goto_3
    :try_start_4
    iput-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->e:Landroid/graphics/Bitmap;

    .line 139
    iput-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->g:Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v1, :cond_2

    goto :goto_2

    .line 151
    :catch_3
    :cond_2
    :goto_4
    iget-object v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->j:Ljava/lang/Object;

    monitor-enter v2

    .line 152
    :try_start_5
    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->i:Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v1, :cond_5

    .line 153
    :try_start_6
    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "SDK_Default_Icon_Passenger.png"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 154
    :try_start_7
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->i:Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_5

    .line 155
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_7

    :catchall_2
    move-exception v3

    goto :goto_5

    :catch_4
    move-exception v0

    .line 153
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_5
    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 155
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    :catch_5
    move-exception v1

    :try_start_b
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_4
    :goto_6
    throw v3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 159
    :catch_6
    :cond_5
    :goto_7
    :try_start_c
    monitor-exit v2

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :goto_8
    if-eqz v1, :cond_6

    .line 143
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 148
    :catch_7
    :cond_6
    throw v0
.end method

.method public onDestroy()V
    .locals 4

    .line 413
    invoke-super {p0}, Lcom/baidu/mapapi/map/AbsBackgroundDrawNaviLayer;->onDestroy()V

    .line 414
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->e:Landroid/graphics/Bitmap;

    .line 415
    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->g:Landroid/graphics/Bitmap;

    .line 416
    iget-object v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 418
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    if-eqz v2, :cond_2

    .line 423
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 424
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    const/4 v0, 0x0

    .line 426
    iput-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->e:Landroid/graphics/Bitmap;

    .line 427
    iput-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->g:Landroid/graphics/Bitmap;

    .line 428
    iput-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->i:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onDraw(Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;)V
    .locals 5

    .line 165
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mController:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 173
    :cond_1
    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    if-nez v0, :cond_2

    return-void

    .line 177
    :cond_2
    iget v1, v0, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    iget v2, v0, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 178
    iget v2, v0, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    iget v0, v0, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_8

    if-gtz v1, :cond_3

    goto :goto_1

    .line 182
    :cond_3
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->save()I

    .line 184
    iget v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mWidth:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mHeight:I

    sub-int/2addr v4, v0

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {p1, v2, v4}, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->translate(FF)V

    .line 186
    iget v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mWidth:I

    if-eq v2, v1, :cond_7

    iget v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mHeight:I

    if-eq v2, v0, :cond_7

    .line 190
    iget v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mWidth:I

    if-lt v2, v1, :cond_4

    iget v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mHeight:I

    if-lt v2, v0, :cond_4

    .line 191
    iget v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mWidth:I

    div-int/2addr v2, v1

    iget v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mHeight:I

    div-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    .line 192
    :cond_4
    iget v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mWidth:I

    if-gt v2, v1, :cond_5

    iget v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mHeight:I

    if-gt v2, v0, :cond_5

    .line 195
    iget v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mWidth:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mHeight:I

    div-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    .line 200
    :cond_5
    iget v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mWidth:I

    if-gt v2, v1, :cond_6

    .line 201
    iget v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mHeight:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    .line 205
    :cond_6
    iget v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mWidth:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 208
    :goto_0
    iget v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v0, v1, v2}, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->scale(FFFF)V

    .line 212
    :cond_7
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->a(Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;)V

    .line 214
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->b(Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;)V

    .line 216
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->restore()V

    return-void

    :cond_8
    :goto_1
    return-void
.end method

.method public setIsLocationDirectionFollowPhone(Z)V
    .locals 0

    .line 300
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->q:Z

    return-void
.end method

.method public setIsNeedShowStartAndEndMark(Z)V
    .locals 0

    .line 251
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->n:Z

    return-void
.end method

.method public setNaviEndMark(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->g:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 272
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->g:Landroid/graphics/Bitmap;

    .line 273
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setNaviLocationMark(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->i:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 284
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->i:Landroid/graphics/Bitmap;

    .line 285
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setNaviRouteColor(I)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->o:I

    return-void
.end method

.method public setNaviRouteWidth(I)V
    .locals 1

    const/4 v0, 0x1

    .line 295
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x1e

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->p:I

    return-void
.end method

.method public setNaviStartMark(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 261
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->e:Landroid/graphics/Bitmap;

    .line 262
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateHeading(D)V
    .locals 0

    .line 246
    iput-wide p1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->m:D

    return-void
.end method

.method public updateNaviLocEntity(Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->l:Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;

    .line 224
    new-instance v1, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;-><init>(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;)V

    if-eqz v0, :cond_1

    .line 226
    invoke-static {v0}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->a(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->getGpsLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->getGpsLatitude()D

    move-result-wide v4

    cmpl-double v6, v2, v4

    if-nez v6, :cond_1

    .line 227
    invoke-static {v0}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->a(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->getGpsLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->getGpsLongitude()D

    move-result-wide v4

    cmpl-double p1, v2, v4

    if-nez p1, :cond_1

    return-void

    .line 240
    :cond_1
    iput-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->k:Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;

    .line 242
    iput-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->l:Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;

    return-void
.end method
