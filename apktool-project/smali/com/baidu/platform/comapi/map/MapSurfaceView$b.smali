.class Lcom/baidu/platform/comapi/map/MapSurfaceView$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MapSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platform/comapi/map/MapSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platform/comapi/map/MapSurfaceView;


# direct methods
.method private constructor <init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;)V
    .locals 0

    .line 1524
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;Lcom/baidu/platform/comapi/map/s;)V
    .locals 0

    .line 1524
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;-><init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;)V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1527
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 1528
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/MapController;->mIsMapLoadFinish:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1532
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v5, v0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    iget v6, v0, Lcom/baidu/platform/comapi/map/MapController;->nearlyRadius:I

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetNearlyObjID(JIII)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const-string v3, ""

    .line 1534
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1536
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    if-eqz v3, :cond_c

    .line 1538
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1539
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v2, v3, p1}, Lcom/baidu/platform/comapi/map/Projection;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    .line 1541
    :cond_1
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    iget-object p1, p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    iget-object p1, p1, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/platform/comapi/map/ak;

    if-nez v3, :cond_3

    goto :goto_0

    .line 1547
    :cond_3
    invoke-interface {v3, v0}, Lcom/baidu/platform/comapi/map/ak;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1548
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    iput-boolean v1, v3, Lcom/baidu/platform/comapi/map/MapController;->mHasMapObjDraging:Z

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_2

    .line 1551
    invoke-interface {v3, v2}, Lcom/baidu/platform/comapi/map/ak;->c(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V

    goto :goto_0

    .line 1557
    :cond_5
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1558
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d(Lcom/baidu/platform/comapi/map/MapSurfaceView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d(Lcom/baidu/platform/comapi/map/MapSurfaceView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1559
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d(Lcom/baidu/platform/comapi/map/MapSurfaceView;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    .line 1560
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    iget-object v5, v5, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    iget v5, v5, Lcom/baidu/platform/comapi/map/MapController;->nearlyRadius:I

    invoke-virtual {v0, v3, v4, v5}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a(III)Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1564
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    if-eqz v3, :cond_8

    .line 1565
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/platform/comapi/map/ak;

    if-nez v4, :cond_7

    goto :goto_1

    .line 1570
    :cond_7
    invoke-interface {v4, v0}, Lcom/baidu/platform/comapi/map/ak;->a(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1571
    iget-object v4, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    iget-object v4, v4, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    iput-boolean v1, v4, Lcom/baidu/platform/comapi/map/MapController;->mHasBmDrawItemDraging:Z

    goto :goto_1

    .line 1581
    :cond_8
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 1583
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1584
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v0, v1, p1}, Lcom/baidu/platform/comapi/map/Projection;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    :cond_9
    if-nez v2, :cond_a

    return-void

    .line 1589
    :cond_a
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;->a:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    iget-object p1, p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    iget-object p1, p1, Lcom/baidu/platform/comapi/map/MapController;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/ak;

    if-eqz v0, :cond_b

    if-eqz v2, :cond_b

    .line 1594
    invoke-interface {v0, v2}, Lcom/baidu/platform/comapi/map/ak;->c(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V

    goto :goto_2

    :cond_c
    return-void

    :cond_d
    :goto_3
    return-void
.end method
