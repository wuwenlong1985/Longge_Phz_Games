.class public Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;
.super Ljava/lang/Object;
.source "AppBaseMap.java"


# instance fields
.field private a:J

.field private b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

.field private final c:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    .line 29
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 32
    new-instance v0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    return-void
.end method

.method public static renderClearShaderCache(Ljava/lang/String;)V
    .locals 0

    .line 924
    invoke-static {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->renderClearShaderCache(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public AddItemData(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 397
    invoke-virtual {p0, p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->AddItemData(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public AddItemData(Landroid/os/Bundle;Z)V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->addItemData(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public AddLayer(IILjava/lang/String;)J
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->addLayer(IILjava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public AddPopupData(Landroid/os/Bundle;)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->addPopupData(Landroid/os/Bundle;)V

    return-void
.end method

.method public AddRtPopData(Landroid/os/Bundle;)V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->addRtPopData(Landroid/os/Bundle;)V

    return-void
.end method

.method public AddStreetCustomMarker(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 5

    .line 561
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 562
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->addStreetCustomMarker(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public BeginLocationLayerAnimation()V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->beginLocationLayerAnimation()V

    return-void
.end method

.method public ClearLayer(J)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->clearLayer(J)V

    return-void
.end method

.method public ClearLocationLayerData(Landroid/os/Bundle;)V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->clearLocationLayerData(Landroid/os/Bundle;)V

    return-void
.end method

.method public ClearMistmapLayer()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->clearMistmapLayer()V

    return-void
.end method

.method public ClearSDKLayer(J)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->clearSDKLayer(J)V

    return-void
.end method

.method public CloseCache()Z
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->closeCache()Z

    move-result v0

    return v0
.end method

.method public Create()Z
    .locals 2

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 46
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 49
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50
    throw v0
.end method

.method public CreateByDuplicate(J)Z
    .locals 3

    .line 446
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->createByDuplicate(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    .line 447
    iget-wide p1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public CreateDuplicate()J
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->createDuplicate()J

    move-result-wide v0

    return-wide v0
.end method

.method public Draw()I
    .locals 5

    .line 97
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 98
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->draw()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public GeoPtToScrPoint(II)Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->geoPtToScrPoint(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetAdapterZoomUnitsEx()F
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getAdapterZoomUnitsEx()F

    move-result v0

    return v0
.end method

.method public GetCacheSize(I)I
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getCacheSize(I)I

    move-result p1

    return p1
.end method

.method public GetCityInfoByID(I)Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getCityInfoByID(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetDrawingMapStatus()Landroid/os/Bundle;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getDrawingMapStatus()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public GetFZoomToBoundF(Landroid/os/Bundle;Landroid/os/Bundle;)F
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getFZoomToBoundF(Landroid/os/Bundle;Landroid/os/Bundle;)F

    move-result p1

    return p1
.end method

.method public GetFocusedBaseIndoorMapInfo()Ljava/lang/String;
    .locals 5

    .line 502
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 503
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getFocusedBaseIndoorMapInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetId()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    return-wide v0
.end method

.method public GetMapRenderType()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getMapRenderType()I

    move-result v0

    return v0
.end method

.method public GetMapStatus()Landroid/os/Bundle;
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getMapStatus(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public GetMapStatus(Z)Landroid/os/Bundle;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getMapStatus(Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public GetNearlyObjID(JIII)Ljava/lang/String;
    .locals 6

    .line 277
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getNearlyObjID(JIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetVMPMapCityInfo(Landroid/os/Bundle;)I
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getVMPMapCityInfo(Landroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public GetZoomToBound(Landroid/os/Bundle;II)F
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getZoomToBound(Landroid/os/Bundle;II)F

    move-result p1

    return p1
.end method

.method public GetZoomToBoundF(Landroid/os/Bundle;)F
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getZoomToBoundF(Landroid/os/Bundle;)F

    move-result p1

    return p1
.end method

.method public Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)Z
    .locals 23
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    .line 80
    iget-wide v1, v0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v6, v0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    move/from16 v18, p12

    move/from16 v19, p13

    move/from16 v20, p14

    move/from16 v21, p15

    move/from16 v22, p16

    .line 81
    invoke-virtual/range {v6 .. v22}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public IsBaseIndoorMapMode()Z
    .locals 5

    .line 514
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isBaseIndoorMapMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public IsPointInFocusBarBorder(DDD)Z
    .locals 13

    move-object v0, p0

    .line 531
    iget-wide v1, v0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v6, v0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    move-wide v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    invoke-virtual/range {v6 .. v12}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isPointInFocusBarBorder(DDD)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public IsPointInFocusIDRBorder(DD)Z
    .locals 5

    .line 527
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isPointInFocusIDRBorder(DD)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public IsStreetArrowShown()Z
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isStreetArrowShown()Z

    move-result v0

    return v0
.end method

.method public IsStreetCustomMarkerShown()Z
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isStreetCustomMarkerShown()Z

    move-result v0

    return v0
.end method

.method public IsStreetPOIMarkerShown()Z
    .locals 5

    .line 539
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isStreetPOIMarkerShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public IsStreetRoadClickable()Z
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isStreetRoadClickable()Z

    move-result v0

    return v0
.end method

.method public LayersIsShow(J)Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->layersIsShow(J)Z

    move-result p1

    return p1
.end method

.method public MoveToScrPoint(II)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->moveToScrPoint(II)V

    return-void
.end method

.method public OnBackground()V
    .locals 5

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 128
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 129
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onBackground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 133
    throw v0
.end method

.method public OnForeground()V
    .locals 5

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 139
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 140
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onForeground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 144
    throw v0
.end method

.method public OnHotcityGet()Ljava/lang/String;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onHotcityGet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OnPause()V
    .locals 5

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 106
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 107
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 111
    throw v0
.end method

.method public OnRecordAdd(I)Z
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onRecordAdd(I)Z

    move-result p1

    return p1
.end method

.method public OnRecordGetAll()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onRecordGetAll()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OnRecordGetAt(I)Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onRecordGetAt(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public OnRecordImport(ZZ)Z
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onRecordImport(ZZ)Z

    move-result p1

    return p1
.end method

.method public OnRecordReload(IZ)Z
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onRecordReload(IZ)Z

    move-result p1

    return p1
.end method

.method public OnRecordRemove(IZ)Z
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onRecordRemove(IZ)Z

    move-result p1

    return p1
.end method

.method public OnRecordStart(IZI)Z
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onRecordStart(IZI)Z

    move-result p1

    return p1
.end method

.method public OnRecordSuspend(IZI)Z
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onRecordSuspend(IZI)Z

    move-result p1

    return p1
.end method

.method public OnResume()V
    .locals 5

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 117
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 118
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 122
    throw v0
.end method

.method public OnSchcityGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onSchcityGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public OnUsrcityMsgInterval(I)Z
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onUsrcityMsgInterval(I)Z

    move-result p1

    return p1
.end method

.method public OnWifiRecordAdd(I)I
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->onWifiRecordAdd(I)I

    move-result p1

    return p1
.end method

.method public Release()Z
    .locals 5

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 57
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 58
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;->release(J)V

    .line 59
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->dispose()I

    .line 60
    iput-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 65
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 66
    throw v0
.end method

.method public Remo()V
    .locals 0

    return-void
.end method

.method public RemoveItemData(Landroid/os/Bundle;)Z
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->removeItemData(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public RemoveLayer(J)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->removeLayer(J)V

    return-void
.end method

.method public RemoveStreetAllCustomMarker()V
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->removeStreetAllCustomMarker()V

    return-void
.end method

.method public RemoveStreetCustomMaker(Ljava/lang/String;)V
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->removeStreetCustomMaker(Ljava/lang/String;)V

    return-void
.end method

.method public ResetImageRes()V
    .locals 5

    .line 148
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 149
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->resetImageRes()V

    :cond_0
    return-void
.end method

.method public ResumeCache()Z
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->resumeCache()Z

    move-result v0

    return v0
.end method

.method public SaveCache()Z
    .locals 1

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->saveCache()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public SaveScreenToLocal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->saveScreenToLocal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ScrPtToGeoPoint(II)Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->scrPtToGeoPoint(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public SetAllStreetCustomMarkerVisibility(Z)V
    .locals 5

    .line 549
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 550
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setAllStreetCustomMarkerVisibility(Z)V

    :cond_0
    return-void
.end method

.method public SetCallback(Lcom/baidu/platform/comjni/map/basemap/a;)Z
    .locals 5

    if-eqz p1, :cond_0

    .line 36
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;->setMapCallback(JLcom/baidu/platform/comjni/map/basemap/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public SetFocus(JJZLandroid/os/Bundle;)V
    .locals 7

    .line 281
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setFocus(JJZLandroid/os/Bundle;)V

    return-void
.end method

.method public SetItsPreTime(III)Z
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setItsPreTime(III)Z

    move-result p1

    return p1
.end method

.method public SetLayerSceneMode(JI)Z
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setLayerSceneMode(JI)Z

    move-result p1

    return p1
.end method

.method public SetLayersClickable(JZ)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setLayersClickable(JZ)V

    return-void
.end method

.method public SetLocationLayerData(Landroid/os/Bundle;)V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setLocationLayerData(Landroid/os/Bundle;)V

    return-void
.end method

.method public SetMapControlMode(I)I
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setMapControlMode(I)I

    move-result p1

    return p1
.end method

.method public SetMapStatus(Landroid/os/Bundle;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setMapStatus(Landroid/os/Bundle;)V

    return-void
.end method

.method public SetNewMapStatus(Landroid/os/Bundle;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setNewMapStatus(Landroid/os/Bundle;)V

    return-void
.end method

.method public SetSDKLayerCallback(Lcom/baidu/mapsdkplatform/comjni/a/a/a;)Z
    .locals 5

    if-eqz p1, :cond_0

    .line 40
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;->setMapSDKCallback(JLcom/baidu/mapsdkplatform/comjni/a/a/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public SetStreetArrowShow(Z)V
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setStreetArrowShow(Z)V

    return-void
.end method

.method public SetStreetMarkerClickable(Ljava/lang/String;Z)V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setStreetMarkerClickable(Ljava/lang/String;Z)V

    return-void
.end method

.method public SetStreetRoadClickable(Z)V
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setStreetRoadClickable(Z)V

    return-void
.end method

.method public SetStyleMode(I)V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setStyleMode(I)V

    return-void
.end method

.method public SetTargetStreetCustomMarkerVisibility(ZLjava/lang/String;)V
    .locals 5

    .line 555
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 556
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setTargetStreetCustomMarkerVisibility(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ShowBaseIndoorMap(Z)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showBaseIndoorMap(Z)V

    return-void
.end method

.method public ShowHotMap(ZI)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showHotMap(ZI)V

    return-void
.end method

.method public ShowHotMap(ZILjava/lang/String;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showHotMap(ZILjava/lang/String;)V

    return-void
.end method

.method public ShowLayers(JZ)V
    .locals 5

    .line 230
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 231
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showLayers(JZ)V

    :cond_0
    return-void
.end method

.method public ShowMistMap(ZLjava/lang/String;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showMistMap(ZLjava/lang/String;)V

    return-void
.end method

.method public ShowSatelliteMap(Z)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showSatelliteMap(Z)V

    return-void
.end method

.method public ShowStreetPOIMarker(Z)V
    .locals 5

    .line 543
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 544
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showStreetPOIMarker(Z)V

    :cond_0
    return-void
.end method

.method public ShowStreetRoadMap(Z)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showStreetRoadMap(Z)V

    return-void
.end method

.method public ShowTrafficMap(Z)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showTrafficMap(Z)V

    return-void
.end method

.method public StartIndoorAnimation()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->startIndoorAnimation()V

    return-void
.end method

.method public SwitchBaseIndoorMapFloor(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->switchBaseIndoorMapFloor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public SwitchLayer(JJ)Z
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->switchLayer(JJ)Z

    move-result p1

    return p1
.end method

.method public UpdateLayers(J)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->updateLayers(J)V

    return-void
.end method

.method public add3DModelIDForFilterList(Ljava/lang/String;)V
    .locals 1

    .line 1081
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->add3DModelIDForFilterList(Ljava/lang/String;)V

    return-void
.end method

.method public addBmLayerBelow(JJII)Z
    .locals 7

    .line 1009
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->addBmLayerBelow(JJII)Z

    move-result p1

    return p1
.end method

.method public addHexagonMapData(JLandroid/os/Bundle;)V
    .locals 1

    .line 1194
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->addHexagonMapData(JLandroid/os/Bundle;)V

    return-void
.end method

.method public addOneOverlayItem(Landroid/os/Bundle;)V
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->addOneOverlayItem(Landroid/os/Bundle;)V

    return-void
.end method

.method public addOverlayItems([Landroid/os/Bundle;I)V
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->addOverlayItems([Landroid/os/Bundle;I)V

    return-void
.end method

.method public addSDKTileData(Landroid/os/Bundle;)Z
    .locals 3

    .line 762
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeAddTileOverlay(JLandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public cancelPreload(I)V
    .locals 1

    .line 1053
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->cancelPreload(I)V

    return-void
.end method

.method public cleanCache(IZ)Z
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->cleanCache(IZ)Z

    move-result p1

    return p1
.end method

.method public cleanSDKTileDataCache(J)Z
    .locals 3

    .line 758
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeCleanSDKTileDataCache(JJ)Z

    move-result p1

    return p1
.end method

.method public clearFullscreenMaskColor()V
    .locals 1

    .line 1065
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->clearFullscreenMaskColor()V

    return-void
.end method

.method public clearHeatMapLayerCache(J)V
    .locals 1

    .line 1150
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->clearHeatMapLayerCache(J)V

    return-void
.end method

.method public clearHexagonLayerCache(J)V
    .locals 1

    .line 1158
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->clearHexagonLayerCache(J)V

    return-void
.end method

.method public clearParticleSystemMemory()V
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->clearParticleSystemMemory()V

    return-void
.end method

.method public clearUniversalLayer()V
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->clearUniversalLayer()V

    return-void
.end method

.method public closeParticleEffect(Ljava/lang/String;)V
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->closeParticleEffect(Ljava/lang/String;)V

    return-void
.end method

.method public closeParticleEffectByType(I)V
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->closeParticleEffectByType(I)V

    return-void
.end method

.method public customParticleEffectByType(ILandroid/os/Bundle;)Z
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->customParticleEffectByType(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public enablePOIAnimation(Z)V
    .locals 1

    .line 844
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 845
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->enablePOIAnimation(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    iget-object p1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 848
    throw p1
.end method

.method public entryFeedTopic(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 932
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->entrySearchTopic(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public entrySearchTopic(I)V
    .locals 3

    .line 928
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v0, p1, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->entrySearchTopic(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public exitSearchTopic()V
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->exitSearchTopic()V

    return-void
.end method

.method public focusTrafficUGCLabel()V
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->focusTrafficUGCLabel()V

    return-void
.end method

.method public geoPt3ToScrPoint(III)Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->geoPt3ToScrPoint(III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get3DModelEnable()Z
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->get3DModelEnable()Z

    move-result v0

    return v0
.end method

.method public getBaseRoadData()Landroid/os/Bundle;
    .locals 2

    .line 1317
    invoke-virtual {p0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->isSupBackgroundDraw()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1320
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_1

    return-object v1

    .line 1323
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getBaseRoadData()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getCityInfoByBound(Landroid/os/Bundle;)Z
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getCityInfoByBound(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public getCurDrawPoiInfo(I)Ljava/lang/String;
    .locals 1

    .line 1227
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getCurDrawPoiInfo(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDEMEnable()Z
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getDEMEnable()Z

    move-result v0

    return v0
.end method

.method public getDpiScale()F
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getDpiScale()F

    move-result v0

    return v0
.end method

.method public getDrawHouseHeightEnable()Z
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getDrawHouseHeightEnable()Z

    move-result v0

    return v0
.end method

.method public getFontSizeLevel()I
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getFontSizeLevel()I

    move-result v0

    return v0
.end method

.method public getHouseSmoothLevel()I
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getHouseSmoothLevel()I

    move-result v0

    return v0
.end method

.method public getIndoorMapShowMode(Ljava/lang/String;)I
    .locals 1

    .line 1073
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getIndoorMapShowMode(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLayerIDByTag(Ljava/lang/String;)J
    .locals 2

    .line 999
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMapBarData(Landroid/os/Bundle;)Z
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getMapBarData(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public getMapLanguage()I
    .locals 1

    .line 1280
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getMapLanguage()I

    move-result v0

    return v0
.end method

.method public getMapScene()I
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getMapScene()I

    move-result v0

    return v0
.end method

.method public getMapSceneAttr()I
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getMapSceneAttr()I

    move-result v0

    return v0
.end method

.method public getMapStatusLimits()Landroid/os/Bundle;
    .locals 1

    .line 1103
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getMapStatusLimits()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getMapStatusLimitsLevel([I)Z
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getMapStatusLimitsLevel([I)Z

    move-result p1

    return p1
.end method

.method public getMapTheme()I
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getMapTheme()I

    move-result v0

    return v0
.end method

.method public getPoiMarkData(IIIIZ)Ljava/lang/String;
    .locals 6

    .line 1057
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getPoiMarkData(IIIIZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPoiTagEnable(I)Z
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getPoiTagEnable(I)Z

    move-result p1

    return p1
.end method

.method public getProjectionMatrix()[F
    .locals 2

    .line 1110
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v0, 0x10

    .line 1114
    new-array v0, v0, [F

    .line 1116
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getProjectMatrix([F)V

    return-object v0
.end method

.method public getProjectionPt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getProjectionPt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScaleLevel(II)I
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getScaleLevel(II)I

    move-result p1

    return p1
.end method

.method public getSkyboxStyle()I
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getSkyboxStyle()I

    move-result v0

    return v0
.end method

.method public getStreetRoadNearPointFromCenter(DDI)Ljava/lang/String;
    .locals 6

    .line 722
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getStreetRoadNearPointFromCenter(DDI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getViewMatrix()[F
    .locals 2

    .line 1122
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v0, 0x10

    .line 1126
    new-array v0, v0, [F

    .line 1128
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getViewMatrix([F)V

    return-object v0
.end method

.method public getVirtualPoiShowEnable()Z
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->getVirtualPoiShowEnable()Z

    move-result v0

    return v0
.end method

.method public importMapTheme(I)Z
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->importMapTheme(I)Z

    move-result p1

    return p1
.end method

.method public initCustomStyle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->initCustomStyle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public initHeatMapData(JLandroid/os/Bundle;)V
    .locals 1

    .line 1187
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->initHeatMapData(JLandroid/os/Bundle;)V

    return-void
.end method

.method public initWithOptions(Landroid/os/Bundle;Z)Z
    .locals 5

    .line 87
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->initWithOptions(Landroid/os/Bundle;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public interruptDraw(Z)V
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->interruptDraw(Z)V

    return-void
.end method

.method public isAnimationRunning()Z
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isAnimationRunning()Z

    move-result v0

    return v0
.end method

.method public isBaseIndoorMapShow()Z
    .locals 5

    .line 523
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isBaseIndoorMapShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableIndoor3D()Z
    .locals 1

    .line 1030
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isEnableIndoor3D()Z

    move-result v0

    return v0
.end method

.method public isNaviMode()Z
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isNaviMode()Z

    move-result v0

    return v0
.end method

.method public isSupBackgroundDraw()Z
    .locals 1

    .line 1306
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1310
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->isSupBackgroundDraw()Z

    move-result v0

    return v0
.end method

.method public moveLayerBelow(JLjava/lang/String;)Z
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->moveLayerBelow(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public moveLayerBelowTo(JI)Z
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->moveLayerBelowTo(JI)Z

    move-result p1

    return p1
.end method

.method public performAction(Ljava/lang/String;)Z
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->performAction(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public preLoad(ILjava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/n;",
            ">;)Z"
        }
    .end annotation

    .line 1049
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->preLoad(ILjava/util/List;)Z

    move-result p1

    return p1
.end method

.method public preLoadParticleFile(Ljava/lang/String;)V
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->preLoadParticleFile(Ljava/lang/String;)V

    return-void
.end method

.method public readMapResData(Ljava/lang/String;)[B
    .locals 1

    .line 1045
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->readMapResData(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public recycleMemory(I)V
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->recycleMemory(I)V

    return-void
.end method

.method public releaseFromOfflineMap()Z
    .locals 5

    .line 1209
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1210
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->dispose()I

    .line 1212
    iput-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 1217
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1218
    throw v0
.end method

.method public remove3DModelIDForFilterList(Ljava/lang/String;)V
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->remove3DModelIDForFilterList(Ljava/lang/String;)V

    return-void
.end method

.method public removeBmLayer(J)V
    .locals 1

    .line 1013
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->removeBmLayer(J)V

    return-void
.end method

.method public removeOneOverlayItem(Landroid/os/Bundle;)V
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->removeOneOverlayItem(Landroid/os/Bundle;)V

    return-void
.end method

.method public removeOverlayItems([Landroid/os/Bundle;)V
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->removeOneOverlayItems([Landroid/os/Bundle;)V

    return-void
.end method

.method public renderDone()V
    .locals 2

    .line 835
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 836
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->renderDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 839
    throw v0
.end method

.method public renderInit(IILandroid/view/Surface;I)V
    .locals 1

    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 800
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->renderInit(IILandroid/view/Surface;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    iget-object p1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 803
    throw p1
.end method

.method public renderRender()I
    .locals 2

    .line 826
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 827
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->renderRender()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 830
    throw v0
.end method

.method public renderResize(II)V
    .locals 1

    .line 808
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 809
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->renderResize(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    iget-object p1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 812
    throw p1
.end method

.method public resize(II)V
    .locals 5

    .line 91
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 92
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->renderResize(II)V

    :cond_0
    return-void
.end method

.method public set3DModelEnable(Z)V
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->set3DModelEnable(Z)V

    return-void
.end method

.method public setAutoEnter3DByZoomIn(Z)V
    .locals 1

    .line 1234
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setAutoEnter3DByZoomIn(Z)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setBackgroundColor(I)V

    return-void
.end method

.method public setCustomStyleEnable(Z)V
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setCustomStyleEnable(Z)V

    return-void
.end method

.method public setDEMEnable(Z)V
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setDEMEnable(Z)V

    return-void
.end method

.method public setDpiScale(F)V
    .locals 1

    .line 1034
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setDpiScale(F)V

    return-void
.end method

.method public setDrawHouseHeightEnable(Z)V
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setDrawHouseHeightEnable(Z)V

    return-void
.end method

.method public setEnableIndoor3D(Z)V
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setEnableIndoor3D(Z)V

    return-void
.end method

.method public setFeatureConfig(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1253
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setFeatureConfig(Ljava/lang/String;)V

    return-void
.end method

.method public setFontSizeLevel(I)V
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setFontSizeLevel(I)V

    return-void
.end method

.method public setFullscreenMaskColor(I)V
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setFullscreenMaskColor(I)V

    return-void
.end method

.method public setGlobalLightEnable(Z)V
    .locals 1

    .line 1077
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setGlobalLightEnable(Z)V

    return-void
.end method

.method public setHeatMapFrameAnimationIndex(JI)V
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setHeatMapFrameAnimationIndex(JI)V

    return-void
.end method

.method public setHouseSmoothLevel(I)V
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setHouseSmoothLevel(I)V

    return-void
.end method

.method public setIndoorMapShowMode(Ljava/lang/String;I)V
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setIndoorMapShowMode(Ljava/lang/String;I)V

    return-void
.end method

.method public setLittle3DEnable(Z)V
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setLittle3DEnable(Z)V

    return-void
.end method

.method public setMapBackgroundImage(Landroid/os/Bundle;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setMapBackgroundImage(Landroid/os/Bundle;)V

    return-void
.end method

.method public setMapLanguage(I)V
    .locals 1

    .line 1272
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setMapLanguage(I)V

    return-void
.end method

.method public setMapScene(I)V
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setMapScene(I)V

    return-void
.end method

.method public setMapSceneAttr(I)Z
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setMapSceneAttr(I)Z

    move-result p1

    return p1
.end method

.method public setMapStatusLimits(Landroid/os/Bundle;)V
    .locals 1

    .line 1089
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setMapStatusLimits(Landroid/os/Bundle;)V

    return-void
.end method

.method public setMapStatusLimitsLevel(II)Z
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setMapStatusLimitsLevel(II)Z

    move-result p1

    return p1
.end method

.method public setMapTheme(ILandroid/os/Bundle;)Z
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setMapTheme(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setMapThemeScene(IILandroid/os/Bundle;)Z
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setMapThemeScene(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setMaxAndMinZoomLevel(Landroid/os/Bundle;)V
    .locals 1

    .line 1096
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setMaxAndMinZoomLevel(Landroid/os/Bundle;)V

    return-void
.end method

.method public setPoiTagEnable(IZ)V
    .locals 1

    .line 895
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setPoiTagEnable(IZ)V

    return-void
.end method

.method public setRecommendPOIScene(I)V
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setRecommendPOIScene(I)V

    return-void
.end method

.method public setSkyboxStyle(I)V
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setSkyboxStyle(I)V

    return-void
.end method

.method public setStreetLayerNewDesignFlag(Z)V
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setStreetLayerNewDesignFlag(Z)V

    return-void
.end method

.method public setSupBackgroundDraw(Z)V
    .locals 1

    .line 1295
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1299
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setSupBackgroundDraw(Z)V

    return-void
.end method

.method public setTestSwitch(Z)Z
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setTestSwitch(Z)Z

    move-result p1

    return p1
.end method

.method public setTrafficUGCData(Ljava/lang/String;)V
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setTrafficUGCData(Ljava/lang/String;)V

    return-void
.end method

.method public setUniversalFilter(Ljava/lang/String;)V
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setUniversalFilter(Ljava/lang/String;)V

    return-void
.end method

.method public setVirtualPoiShowEnable(Z)V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->setVirtualPoiShowEnable(Z)V

    return-void
.end method

.method public showFootMarkGrid(ZLjava/lang/String;)V
    .locals 1

    .line 957
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showFootMarkGrid(ZLjava/lang/String;)V

    return-void
.end method

.method public showOperatorDataByType(ZI)V
    .locals 1

    .line 1243
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showOperatorDataByType(ZI)V

    return-void
.end method

.method public showParticleEffect(I)Z
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showParticleEffect(I)Z

    move-result p1

    return p1
.end method

.method public showParticleEffectByFileName(Ljava/lang/String;)Z
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showParticleEffectByFileName(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public showParticleEffectByFilenameAndPos(Ljava/lang/String;FFF)Z
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showParticleEffectByFilenameAndPos(Ljava/lang/String;FFF)Z

    move-result p1

    return p1
.end method

.method public showParticleEffectByName(Ljava/lang/String;Z)Z
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showParticleEffectByName(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public showParticleEffectByType(I)Z
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showParticleEffectByType(I)Z

    move-result p1

    return p1
.end method

.method public showParticleEffectByTypeAndPos(IFFF)Z
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showParticleEffectByTypeAndPos(IFFF)Z

    move-result p1

    return p1
.end method

.method public showParticleEffectByTypeAndStyleID(II)Z
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showParticleEffectByTypeAndStyleID(II)Z

    move-result p1

    return p1
.end method

.method public showStreetPopup(Z)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showStreetPopup(Z)V

    return-void
.end method

.method public showTopicPOI(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showTopicPOI(Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method public showTrafficUGCMap(Z)V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showTrafficUGCMap(Z)V

    return-void
.end method

.method public showUniversalLayer(Landroid/os/Bundle;)V
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->showUniversalLayer(Landroid/os/Bundle;)V

    return-void
.end method

.method public startHeatMapFrameAnimation(J)V
    .locals 1

    .line 1166
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->startHeatMapFrameAnimation(J)V

    return-void
.end method

.method public stopHeatMapFrameAnimation(J)V
    .locals 1

    .line 1173
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1176
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->stopHeatMapFrameAnimation(J)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/Surface;)V
    .locals 1

    .line 817
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 818
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->surfaceDestroyed(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    iget-object p1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->c:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 821
    throw p1
.end method

.method public switchDayOrDarkTheme(IZ)V
    .locals 1

    .line 1249
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->switchDayOrDarkTheme(IZ)V

    return-void
.end method

.method public unFocusTrafficUGCLabel()V
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->unFocusTrafficUGCLabel()V

    return-void
.end method

.method public updateBaseLayers()V
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->updateBaseLayers()V

    return-void
.end method

.method public updateDrawFPS()V
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->updateDrawFPS()V

    return-void
.end method

.method public updateFootMarkGrid()V
    .locals 1

    .line 961
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->updateFootMarkGrid()V

    return-void
.end method

.method public updateHeatMapData(JLandroid/os/Bundle;)V
    .locals 1

    .line 1201
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->updateHeatMapData(JLandroid/os/Bundle;)V

    return-void
.end method

.method public updateOneOverlayItem(Landroid/os/Bundle;)V
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->updateOneOverlayItem(Landroid/os/Bundle;)V

    return-void
.end method

.method public updateSDKTile(Landroid/os/Bundle;)Z
    .locals 3

    .line 754
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeUpdateSDKTile(JLandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public worldPointToScreenPoint(FFF)Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->worldPointToScreenPoint(FFF)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
