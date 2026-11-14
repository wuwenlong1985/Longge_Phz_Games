.class public Lcom/baidu/platform/comjni/map/basemap/NABaseMap;
.super Lcom/baidu/platform/comjni/NativeComponent;
.source "NABaseMap.java"


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private b:J

.field private volatile c:Z

.field private final d:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 26
    invoke-direct {p0}, Lcom/baidu/platform/comjni/NativeComponent;-><init>()V

    .line 28
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v7, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->c:Z

    .line 220
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 221
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->e:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;JJJZLandroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p8}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetFocus(JJJZLandroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 67
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 69
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;JJ)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeUpdateLayers(JJ)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;JJZ)V
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowLayers(JJZ)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;JLandroid/os/Bundle;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeAddItemData(JLandroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;JZ)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetCustomStyleEnable(JZ)V

    return-void
.end method

.method private a(J)Z
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->e:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method static synthetic a(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;J)Z
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a(J)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;JJJ)Z
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p6}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSwitchLayer(JJJ)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;JLandroid/os/Bundle;)Z
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeRemoveItemData(JLandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;JJ)I
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeRemoveLayer(JJ)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;JJZ)V
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetLayersClickable(JJZ)V

    return-void
.end method

.method private b()Z
    .locals 1

    .line 1155
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;)Ljava/util/Set;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->e:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic c(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;JJ)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSyncClearLayer(JJ)V

    return-void
.end method

.method static synthetic d(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;JJ)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeClearLayer(JJ)V

    return-void
.end method

.method static synthetic d(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;)Z
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->c:Z

    return p0
.end method

.method private native nativSetAuto3DEnter3DByZoomIn(JZ)V
.end method

.method private native nativeAdd3DModelIDForFilterList(JLjava/lang/String;)V
.end method

.method private native nativeAddBmLayerBelow(JJJII)Z
.end method

.method private native nativeAddHexagonMapData(JJLandroid/os/Bundle;)V
.end method

.method private native nativeAddItemData(JLandroid/os/Bundle;Z)V
.end method

.method private native nativeAddLayer(JIILjava/lang/String;)J
.end method

.method private native nativeAddPopupData(JLandroid/os/Bundle;)V
.end method

.method private native nativeAddRtPopData(JLandroid/os/Bundle;)V
.end method

.method private native nativeAddStreetCustomMarker(JLandroid/os/Bundle;Landroid/graphics/Bitmap;)V
.end method

.method private native nativeAttachDC(JJ)V
.end method

.method private native nativeBeginLocationLayerAnimation(J)Z
.end method

.method private native nativeCancelPreload(JI)V
.end method

.method private native nativeCleanCache(JIZ)Z
.end method

.method private native nativeClearFullscreenMaskColor(J)V
.end method

.method private native nativeClearHeatMapLayerCache(JJ)V
.end method

.method private native nativeClearHexagonLayerCache(JJ)V
.end method

.method private native nativeClearLayer(JJ)V
.end method

.method private native nativeClearLocationLayerData(JLandroid/os/Bundle;)V
.end method

.method private native nativeClearMistmapLayer(J)V
.end method

.method private native nativeClearParticleSystemMemory(J)V
.end method

.method private native nativeClearUniversalLayer(J)V
.end method

.method private native nativeCloseCache(J)Z
.end method

.method private native nativeCloseParticleEffect(JLjava/lang/String;)V
.end method

.method private native nativeCloseParticleEffectByType(JI)V
.end method

.method private native nativeCreate()J
.end method

.method private native nativeCreateDuplicate(J)J
.end method

.method private native nativeCustomParticleEffectByType(JILandroid/os/Bundle;)Z
.end method

.method private native nativeDraw(J)I
.end method

.method private native nativeEnablePOIAnimation(JZ)V
.end method

.method private native nativeEntrySearchTopic(JILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeExitSearchTopic(J)V
.end method

.method private native nativeFocusTrafficUGCLabel(J)V
.end method

.method private native nativeGeoPt3ToScrPoint(JIII)Ljava/lang/String;
.end method

.method private native nativeGeoPtToScrPoint(JII)Ljava/lang/String;
.end method

.method private static native nativeGet3DModelEnable(J)Z
.end method

.method private native nativeGetAdapterZoomUnitsEx(J)F
.end method

.method private native nativeGetBaseRoadData(J)Landroid/os/Bundle;
.end method

.method private native nativeGetCacheSize(JI)I
.end method

.method private native nativeGetCityInfoByBound(JLandroid/os/Bundle;)Z
.end method

.method private native nativeGetCityInfoByID(JI)Ljava/lang/String;
.end method

.method private native nativeGetCurDrawPoiInfo(JI)Ljava/lang/String;
.end method

.method private static native nativeGetDEMEnable(J)Z
.end method

.method private native nativeGetDpiScale(J)F
.end method

.method private static native nativeGetDrawHouseHeightEnable(J)Z
.end method

.method private native nativeGetDrawingMapStatus(J)Landroid/os/Bundle;
.end method

.method private native nativeGetFZoomToBoundF(JLandroid/os/Bundle;Landroid/os/Bundle;)F
.end method

.method private native nativeGetFocusedBaseIndoorMapInfo(J)Ljava/lang/String;
.end method

.method private native nativeGetFontSizeLevel(J)I
.end method

.method private static native nativeGetHouseSmoothLevel(J)I
.end method

.method private native nativeGetIndoorMapShowMode(JLjava/lang/String;)I
.end method

.method private static native nativeGetLayerIDByTag(JLjava/lang/String;)J
.end method

.method private native nativeGetLayerPos(JJ)I
.end method

.method private native nativeGetMapBarData(JLandroid/os/Bundle;)Z
.end method

.method private native nativeGetMapLanguage(J)I
.end method

.method private native nativeGetMapRenderType(J)I
.end method

.method private native nativeGetMapScene(J)I
.end method

.method private native nativeGetMapSceneAttr(J)I
.end method

.method private native nativeGetMapStatus(JZ)Landroid/os/Bundle;
.end method

.method private static native nativeGetMapStatusLimits(J)Landroid/os/Bundle;
.end method

.method private native nativeGetMapStatusLimitsLevel(J[I)Z
.end method

.method private native nativeGetMapTheme(J)I
.end method

.method private native nativeGetNearlyObjID(JJIII)Ljava/lang/String;
.end method

.method private native nativeGetPoiMarkData(JIIIIZ)Ljava/lang/String;
.end method

.method private static native nativeGetPoiTagEnable(JI)Z
.end method

.method private static native nativeGetProjectionMatrix(J[F)V
.end method

.method private native nativeGetProjectionPt(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetScaleLevel(JII)I
.end method

.method private static native nativeGetSkyboxStyle(J)I
.end method

.method private native nativeGetStreetRoadNearPointFromCenter(JDDI)Ljava/lang/String;
.end method

.method private native nativeGetVMPMapCityInfo(JLandroid/os/Bundle;)I
.end method

.method private static native nativeGetViewMatrix(J[F)V
.end method

.method private native nativeGetVirtualPoiShowEnable(J)Z
.end method

.method private native nativeGetZoomToBound(JLandroid/os/Bundle;II)F
.end method

.method private native nativeGetZoomToBoundF(JLandroid/os/Bundle;)F
.end method

.method private native nativeImportMapTheme(JI)Z
.end method

.method private native nativeInit(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)Z
.end method

.method private native nativeInitCustomStyle(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeInitHeatMapData(JJLandroid/os/Bundle;)V
.end method

.method private native nativeInitLayerCallback(J)I
.end method

.method private native nativeInitWithBundle(JLandroid/os/Bundle;Z)Z
.end method

.method private native nativeInsertLayerAt(JIIILjava/lang/String;)J
.end method

.method private native nativeInterruptDraw(JZ)V
.end method

.method private native nativeIsAnimationRunning(J)Z
.end method

.method private native nativeIsBaseIndoorMapMode(J)Z
.end method

.method private native nativeIsBaseIndoorMapShow(J)Z
.end method

.method private native nativeIsEnableIndoor3D(J)Z
.end method

.method private native nativeIsNaviMode(J)Z
.end method

.method private native nativeIsPointInFocusBarBorder(JDDD)Z
.end method

.method private native nativeIsPointInFocusIDRBorder(JDD)Z
.end method

.method private native nativeIsStreetArrowShown(J)Z
.end method

.method private native nativeIsStreetCustomMarkerShown(J)Z
.end method

.method private native nativeIsStreetPOIMarkerShown(J)Z
.end method

.method private native nativeIsStreetRoadClickable(J)Z
.end method

.method private native nativeIsSupBackgroundDraw(J)Z
.end method

.method private native nativeLayersIsShow(JJ)Z
.end method

.method private native nativeMoveLayerBelow(JJLjava/lang/String;)Z
.end method

.method private native nativeMoveLayerBelowTo(JJI)Z
.end method

.method private native nativeMoveToScrPoint(JII)V
.end method

.method private native nativeNewSetMapStatus(JLandroid/os/Bundle;)V
.end method

.method private native nativeOnBackground(J)V
.end method

.method private native nativeOnForeground(J)V
.end method

.method private native nativeOnHotcityGet(J)Ljava/lang/String;
.end method

.method private native nativeOnPause(J)V
.end method

.method private native nativeOnRecordAdd(JI)Z
.end method

.method private native nativeOnRecordGetAll(J)Ljava/lang/String;
.end method

.method private native nativeOnRecordGetAt(JI)Ljava/lang/String;
.end method

.method private native nativeOnRecordImport(JZZ)Z
.end method

.method private native nativeOnRecordReload(JIZ)Z
.end method

.method private native nativeOnRecordRemove(JIZ)Z
.end method

.method private native nativeOnRecordStart(JIZI)Z
.end method

.method private native nativeOnRecordSuspend(JIZI)Z
.end method

.method private native nativeOnResume(J)V
.end method

.method private native nativeOnSchcityGet(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeOnUsrcityMsgInterval(JI)Z
.end method

.method private native nativeOnWifiRecordAdd(JI)I
.end method

.method private native nativePerformAction(JLjava/lang/String;)Z
.end method

.method private native nativePreLoadParticleFile(JLjava/lang/String;)V
.end method

.method private native nativePreload(JLandroid/os/Bundle;I)Z
.end method

.method private native nativeQueryInterface(J)I
.end method

.method private native nativeReadMapResData(JLjava/lang/String;)[B
.end method

.method private native nativeRecycleMemory(JI)V
.end method

.method private native nativeRelease(J)I
.end method

.method private native nativeRemove3DModelIDForFilterList(JLjava/lang/String;)V
.end method

.method private native nativeRemoveBmLayer(JJ)Z
.end method

.method private native nativeRemoveItemData(JLandroid/os/Bundle;)Z
.end method

.method private native nativeRemoveLayer(JJ)I
.end method

.method private native nativeRemoveStreetAllCustomMarker(J)V
.end method

.method private native nativeRemoveStreetCustomMaker(JLjava/lang/String;)V
.end method

.method private static native nativeRenderClearShaderCache(Ljava/lang/String;)V
.end method

.method private static native nativeRenderInit(JIILandroid/view/Surface;I)V
.end method

.method private native nativeRenderResize(JII)V
.end method

.method private native nativeResetImageRes(J)V
.end method

.method private native nativeResumeCache(J)Z
.end method

.method private native nativeSaveCache(J)Z
.end method

.method private native nativeSaveScreenToLocal(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeScrPtToGeoPoint(JII)Ljava/lang/String;
.end method

.method private static native nativeSet3DModelEnable(JZ)V
.end method

.method private native nativeSetAllStreetCustomMarkerVisibility(JZ)V
.end method

.method private native nativeSetBackgroundColor(JI)V
.end method

.method private native nativeSetCustomStyleEnable(JZ)V
.end method

.method private native nativeSetCustomVMPDataRoot(JLjava/lang/String;)V
.end method

.method private static native nativeSetDEMEnable(JZ)V
.end method

.method private native nativeSetDpiScale(JF)V
.end method

.method private static native nativeSetDrawHouseHeightEnable(JZ)V
.end method

.method private native nativeSetEnableIndoor3D(JZ)V
.end method

.method private native nativeSetFeatureConfig(JLjava/lang/String;)V
.end method

.method private native nativeSetFocus(JJJZLandroid/os/Bundle;)Ljava/lang/String;
.end method

.method private native nativeSetFontSizeLevel(JI)V
.end method

.method private native nativeSetFullscreenMaskColor(JI)V
.end method

.method private native nativeSetGlobalLightEnable(JZ)V
.end method

.method private native nativeSetHeatMapFrameAnimationIndex(JJI)V
.end method

.method private static native nativeSetHouseSmoothLevel(JI)V
.end method

.method private native nativeSetIndoorMapShowMode(JLjava/lang/String;I)V
.end method

.method private native nativeSetItsPreTime(JIII)Z
.end method

.method private native nativeSetLayerSceneMode(JJI)Z
.end method

.method private native nativeSetLayersClickable(JJZ)V
.end method

.method private static native nativeSetLittle3DEnable(JZ)V
.end method

.method private native nativeSetLocationLayerData(JLandroid/os/Bundle;)V
.end method

.method private native nativeSetMapBackgroundImage(JLandroid/os/Bundle;)V
.end method

.method private native nativeSetMapControlMode(JI)I
.end method

.method private native nativeSetMapLanguage(JI)V
.end method

.method private native nativeSetMapScene(JI)Z
.end method

.method private native nativeSetMapSceneAttr(JI)Z
.end method

.method private native nativeSetMapStatus(JLandroid/os/Bundle;)V
.end method

.method private static native nativeSetMapStatusLimits(JLandroid/os/Bundle;)V
.end method

.method private native nativeSetMapStatusLimitsLevel(JII)Z
.end method

.method private native nativeSetMapTheme(JILandroid/os/Bundle;)Z
.end method

.method private native nativeSetMapThemeScene(JIILandroid/os/Bundle;)Z
.end method

.method private static native nativeSetMaxAndMinZoomLevel(JLandroid/os/Bundle;)V
.end method

.method private native nativeSetPoiTagEnable(JIZ)V
.end method

.method private native nativeSetRecommendPOIScene(JI)V
.end method

.method private static native nativeSetSkyboxStyle(JI)V
.end method

.method private native nativeSetStreetArrowShow(JZ)V
.end method

.method private static native nativeSetStreetLayerNewDesignFlag(JZ)V
.end method

.method private native nativeSetStreetMarkerClickable(JLjava/lang/String;Z)V
.end method

.method private native nativeSetStreetRoadClickable(JZ)V
.end method

.method private native nativeSetStyleMode(JI)V
.end method

.method private native nativeSetSupBackgroundDraw(JZ)V
.end method

.method private native nativeSetTargetStreetCustomMarkerVisibility(JZLjava/lang/String;)V
.end method

.method private native nativeSetTestSwitch(JZ)Z
.end method

.method private native nativeSetTrafficUGCData(JLjava/lang/String;)V
.end method

.method private native nativeSetUniversalFilter(JLjava/lang/String;)V
.end method

.method private native nativeSetUseCustomVMP(JZ)V
.end method

.method private native nativeSetVirtualPoiShowEnable(JZ)V
.end method

.method private native nativeShowBaseIndoorMap(JZ)V
.end method

.method private native nativeShowFootMarkGrid(JZLjava/lang/String;)V
.end method

.method private native nativeShowHotMap(JZI)V
.end method

.method private native nativeShowHotMapWithUid(JZILjava/lang/String;)V
.end method

.method private native nativeShowLayers(JJZ)V
.end method

.method private native nativeShowMistMap(JZLjava/lang/String;)V
.end method

.method private native nativeShowOperatorDataByType(JZI)V
.end method

.method private native nativeShowParticleEffect(JI)Z
.end method

.method private native nativeShowParticleEffectByFileName(JLjava/lang/String;)Z
.end method

.method private native nativeShowParticleEffectByFilenameAndPos(JLjava/lang/String;FFF)Z
.end method

.method private native nativeShowParticleEffectByName(JLjava/lang/String;Z)Z
.end method

.method private native nativeShowParticleEffectByType(JI)Z
.end method

.method private native nativeShowParticleEffectByTypeAndPos(JIFFF)Z
.end method

.method private native nativeShowParticleEffectByTypeAndStyleID(JII)Z
.end method

.method private native nativeShowSatelliteMap(JZ)V
.end method

.method private native nativeShowStreetPOIMarker(JZ)V
.end method

.method private native nativeShowStreetPopup(JZ)V
.end method

.method private native nativeShowStreetRoadMap(JZ)V
.end method

.method private native nativeShowTopicPOI(JLjava/lang/String;ZLjava/lang/String;Z)V
.end method

.method private native nativeShowTrafficMap(JZ)V
.end method

.method private native nativeShowTrafficUGCMap(JZ)V
.end method

.method private native nativeShowUniversalLayer(JLandroid/os/Bundle;)V
.end method

.method private native nativeStartHeatMapFrameAnimation(JJ)V
.end method

.method private native nativeStartIndoorAnimation(J)V
.end method

.method private native nativeStopHeatMapFrameAnimation(JJ)V
.end method

.method private native nativeSurfaceDestroyed(JLandroid/view/Surface;)V
.end method

.method private native nativeSwitchBaseIndoorMapFloor(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeSwitchDayOrDarkTheme(JIZ)V
.end method

.method private native nativeSwitchLayer(JJJ)Z
.end method

.method private native nativeSyncClearLayer(JJ)V
.end method

.method private native nativeUnFocusTrafficUGCLabel(J)V
.end method

.method private native nativeUpdateBaseLayers(J)V
.end method

.method private native nativeUpdateDrawFPS(J)V
.end method

.method private native nativeUpdateFootMarkGrid(J)V
.end method

.method private native nativeUpdateHeatMapData(JJLandroid/os/Bundle;)V
.end method

.method private native nativeUpdateLayers(JJ)V
.end method

.method private native nativeworldPointToScreenPoint(JFFF)Ljava/lang/String;
.end method

.method public static renderClearShaderCache(Ljava/lang/String;)V
    .locals 0

    .line 1465
    invoke-static {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeRenderClearShaderCache(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public add3DModelIDForFilterList(Ljava/lang/String;)V
    .locals 5

    .line 1711
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1712
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeAdd3DModelIDForFilterList(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addBmLayerBelow(JJII)Z
    .locals 9

    .line 1512
    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeAddBmLayerBelow(JJJII)Z

    move-result p1

    return p1
.end method

.method public addHexagonMapData(JLandroid/os/Bundle;)V
    .locals 11

    .line 1558
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1559
    iget-wide v6, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v5, p0

    move-wide v8, p1

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeAddHexagonMapData(JJLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public addItemData(Landroid/os/Bundle;Z)V
    .locals 2

    .line 623
    invoke-direct {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/baidu/platform/comjni/map/basemap/q;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/q;-><init>(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;Landroid/os/Bundle;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public addLayer(IILjava/lang/String;)J
    .locals 6

    .line 348
    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeAddLayer(JIILjava/lang/String;)J

    move-result-wide p1

    .line 349
    iget-object p3, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->e:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-wide p1
.end method

.method public addOneOverlayItem(Landroid/os/Bundle;)V
    .locals 2

    .line 1014
    invoke-direct {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/baidu/platform/comjni/map/basemap/d;

    invoke-direct {v1, p0, p1}, Lcom/baidu/platform/comjni/map/basemap/d;-><init>(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public addOverlayItems([Landroid/os/Bundle;I)V
    .locals 2

    .line 1042
    invoke-direct {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/baidu/platform/comjni/map/basemap/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/e;-><init>(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;[Landroid/os/Bundle;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public addPopupData(Landroid/os/Bundle;)V
    .locals 2

    .line 618
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeAddPopupData(JLandroid/os/Bundle;)V

    return-void
.end method

.method public addRtPopData(Landroid/os/Bundle;)V
    .locals 2

    .line 655
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeAddRtPopData(JLandroid/os/Bundle;)V

    return-void
.end method

.method public addStreetCustomMarker(Landroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 5

    .line 839
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 840
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeAddStreetCustomMarker(JLandroid/os/Bundle;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public beginLocationLayerAnimation()V
    .locals 2

    .line 667
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeBeginLocationLayerAnimation(J)Z

    return-void
.end method

.method public cancelPreload(I)V
    .locals 5

    .line 1670
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1671
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeCancelPreload(JI)V

    :cond_0
    return-void
.end method

.method public cleanCache(IZ)Z
    .locals 2

    .line 587
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeCleanCache(JIZ)Z

    move-result p1

    return p1
.end method

.method public clearFullscreenMaskColor()V
    .locals 5

    .line 1682
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1683
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeClearFullscreenMaskColor(J)V

    :cond_0
    return-void
.end method

.method public clearHeatMapLayerCache(J)V
    .locals 5

    .line 1570
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1571
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeClearHeatMapLayerCache(JJ)V

    :cond_0
    return-void
.end method

.method public clearHexagonLayerCache(J)V
    .locals 5

    .line 1576
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1577
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeClearHexagonLayerCache(JJ)V

    :cond_0
    return-void
.end method

.method public clearLayer(J)V
    .locals 2

    .line 435
    invoke-direct {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/baidu/platform/comjni/map/basemap/o;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/o;-><init>(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;J)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public clearLocationLayerData(Landroid/os/Bundle;)V
    .locals 2

    .line 663
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeClearLocationLayerData(JLandroid/os/Bundle;)V

    return-void
.end method

.method public clearMistmapLayer()V
    .locals 2

    .line 217
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeClearMistmapLayer(J)V

    return-void
.end method

.method public clearParticleSystemMemory()V
    .locals 2

    .line 921
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeClearParticleSystemMemory(J)V

    return-void
.end method

.method public clearSDKLayer(J)V
    .locals 2

    .line 407
    invoke-direct {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/baidu/platform/comjni/map/basemap/n;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/n;-><init>(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;J)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public clearUniversalLayer()V
    .locals 2

    .line 1166
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeClearUniversalLayer(J)V

    return-void
.end method

.method public closeCache()Z
    .locals 2

    .line 610
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeCloseCache(J)Z

    move-result v0

    return v0
.end method

.method public closeParticleEffect(Ljava/lang/String;)V
    .locals 2

    .line 877
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeCloseParticleEffect(JLjava/lang/String;)V

    return-void
.end method

.method public closeParticleEffectByType(I)V
    .locals 2

    .line 881
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeCloseParticleEffectByType(JI)V

    return-void
.end method

.method public create()J
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    .line 40
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeInitLayerCallback(J)I

    .line 41
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    return-wide v0
.end method

.method public createByDuplicate(J)J
    .locals 3

    .line 721
    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeCreateDuplicate(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    .line 722
    iget-wide p1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 723
    iget-wide p1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeInitLayerCallback(J)I

    .line 725
    :cond_0
    iget-wide p1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    return-wide p1
.end method

.method public createDuplicate()J
    .locals 2

    .line 717
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeCreateDuplicate(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public customParticleEffectByType(ILandroid/os/Bundle;)Z
    .locals 2

    .line 905
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeCustomParticleEffectByType(JILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public dispose()I
    .locals 5

    .line 46
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->c:Z

    .line 49
    invoke-direct {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a()V

    .line 51
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeRelease(J)I

    move-result v0

    .line 52
    iput-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public draw()I
    .locals 5

    .line 104
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 105
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeDraw(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public enablePOIAnimation(Z)V
    .locals 5

    .line 1254
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1255
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeEnablePOIAnimation(JZ)V

    :cond_0
    return-void
.end method

.method public entrySearchTopic(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1220
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1221
    iget-wide v6, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v5, p0

    move v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeEntrySearchTopic(JILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public exitSearchTopic()V
    .locals 5

    .line 1226
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1227
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeExitSearchTopic(J)V

    :cond_0
    return-void
.end method

.method public focusTrafficUGCLabel()V
    .locals 2

    .line 945
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeFocusTrafficUGCLabel(J)V

    return-void
.end method

.method public geoPt3ToScrPoint(III)Ljava/lang/String;
    .locals 6

    .line 519
    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGeoPt3ToScrPoint(JIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public geoPtToScrPoint(II)Ljava/lang/String;
    .locals 2

    .line 515
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGeoPtToScrPoint(JII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get3DModelEnable()Z
    .locals 5

    .line 1339
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1340
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGet3DModelEnable(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapterZoomUnitsEx()F
    .locals 2

    .line 729
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetAdapterZoomUnitsEx(J)F

    move-result v0

    return v0
.end method

.method public getBaseRoadData()Landroid/os/Bundle;
    .locals 5

    .line 1768
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1771
    :cond_0
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetBaseRoadData(J)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getCacheSize(I)I
    .locals 2

    .line 583
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetCacheSize(JI)I

    move-result p1

    return p1
.end method

.method public getCityInfoByBound(Landroid/os/Bundle;)Z
    .locals 2

    .line 606
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetCityInfoByBound(JLandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public getCityInfoByID(I)Ljava/lang/String;
    .locals 2

    .line 591
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetCityInfoByID(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCurDrawPoiInfo(I)Ljava/lang/String;
    .locals 5

    .line 1723
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1724
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetCurDrawPoiInfo(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getDEMEnable()Z
    .locals 5

    .line 1312
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1313
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetDEMEnable(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDpiScale()F
    .locals 5

    .line 1601
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1602
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetDpiScale(J)F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getDrawHouseHeightEnable()Z
    .locals 5

    .line 1286
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1287
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetDrawHouseHeightEnable(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDrawingMapStatus()Landroid/os/Bundle;
    .locals 2

    .line 166
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetDrawingMapStatus(J)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFZoomToBoundF(Landroid/os/Bundle;Landroid/os/Bundle;)F
    .locals 2

    .line 185
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetFZoomToBoundF(JLandroid/os/Bundle;Landroid/os/Bundle;)F

    move-result p1

    return p1
.end method

.method public getFocusedBaseIndoorMapInfo()Ljava/lang/String;
    .locals 5

    .line 780
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 781
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetFocusedBaseIndoorMapInfo(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFontSizeLevel()I
    .locals 5

    .line 1527
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1528
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetFontSizeLevel(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getHouseSmoothLevel()I
    .locals 5

    .line 1299
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1300
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetHouseSmoothLevel(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getIndoorMapShowMode(Ljava/lang/String;)I
    .locals 5

    .line 1694
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1695
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetIndoorMapShowMode(JLjava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getLayerIDByTag(Ljava/lang/String;)J
    .locals 5

    .line 1398
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1399
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetLayerIDByTag(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public getMapBarData(Landroid/os/Bundle;)Z
    .locals 2

    .line 984
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetMapBarData(JLandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public getMapLanguage()I
    .locals 5

    .line 1614
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1615
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetMapLanguage(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMapRenderType()I
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetMapRenderType(J)I

    move-result v0

    return v0
.end method

.method public getMapScene()I
    .locals 2

    .line 965
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetMapScene(J)I

    move-result v0

    return v0
.end method

.method public getMapSceneAttr()I
    .locals 2

    .line 980
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetMapSceneAttr(J)I

    move-result v0

    return v0
.end method

.method public getMapStatus(Z)Landroid/os/Bundle;
    .locals 2

    .line 161
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetMapStatus(JZ)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getMapStatusLimits()Landroid/os/Bundle;
    .locals 5

    .line 1378
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1379
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetMapStatusLimits(J)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapStatusLimitsLevel([I)Z
    .locals 5

    .line 1469
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1470
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetMapStatusLimitsLevel(J[I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getMapTheme()I
    .locals 2

    .line 969
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetMapTheme(J)I

    move-result v0

    return v0
.end method

.method public getNativeMapPointer()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    return-wide v0
.end method

.method public getNearlyObjID(JIII)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_3

    .line 466
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 477
    iget-object p2, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_0
    return-object p1

    .line 469
    :cond_1
    :try_start_2
    iget-wide v3, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v2, p0

    move-wide v5, p1

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetNearlyObjID(JJIII)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 477
    iget-object p2, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    move v0, v1

    goto :goto_1

    :catch_0
    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_3
    const-string p1, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    iget-object p2, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_4
    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    :goto_0
    :try_start_4
    const-string p1, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_5

    iget-object p2, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_5
    return-object p1

    :goto_1
    if-eqz v0, :cond_6

    iget-object p2, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 479
    :cond_6
    throw p1
.end method

.method public getPoiMarkData(IIIIZ)Ljava/lang/String;
    .locals 8

    .line 1701
    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetPoiMarkData(JIIIIZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPoiTagEnable(I)Z
    .locals 5

    .line 1331
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1332
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetPoiTagEnable(JI)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getProjectMatrix([F)V
    .locals 5

    .line 1386
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1387
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetProjectionMatrix(J[F)V

    :cond_0
    return-void
.end method

.method public getProjectionPt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 996
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetProjectionPt(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScaleLevel(II)I
    .locals 5

    .line 1182
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1183
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetScaleLevel(JII)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getSkyboxStyle()I
    .locals 5

    .line 1352
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1353
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetSkyboxStyle(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStreetRoadNearPointFromCenter(DDI)Ljava/lang/String;
    .locals 8

    .line 1000
    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetStreetRoadNearPointFromCenter(JDDI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVMPMapCityInfo(Landroid/os/Bundle;)I
    .locals 2

    .line 595
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetVMPMapCityInfo(JLandroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public getViewMatrix([F)V
    .locals 5

    .line 1392
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1393
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetViewMatrix(J[F)V

    :cond_0
    return-void
.end method

.method public getVirtualPoiShowEnable()Z
    .locals 2

    .line 933
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetVirtualPoiShowEnable(J)Z

    move-result v0

    return v0
.end method

.method public getZoomToBound(JLandroid/os/Bundle;II)F
    .locals 0

    .line 176
    invoke-direct/range {p0 .. p5}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetZoomToBound(JLandroid/os/Bundle;II)F

    move-result p1

    return p1
.end method

.method public getZoomToBound(Landroid/os/Bundle;II)F
    .locals 6

    .line 171
    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetZoomToBound(JLandroid/os/Bundle;II)F

    move-result p1

    return p1
.end method

.method public getZoomToBoundF(Landroid/os/Bundle;)F
    .locals 2

    .line 181
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeGetZoomToBoundF(JLandroid/os/Bundle;)F

    move-result p1

    return p1
.end method

.method public importMapTheme(I)Z
    .locals 2

    .line 953
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeImportMapTheme(JI)Z

    move-result p1

    return p1
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)Z
    .locals 19

    move-object/from16 v15, p0

    .line 93
    iget-wide v0, v15, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v1, v15, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v0, v15

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    invoke-direct/range {v0 .. v18}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeInit(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initCustomStyle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    .line 1416
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 1418
    :try_start_1
    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 1419
    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeInitCustomStyle(JLjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move v0, v1

    goto :goto_1

    :catch_0
    move v0, v1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_1

    .line 1426
    iget-object p2, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1428
    :cond_1
    throw p1

    :catch_1
    :goto_2
    if-eqz v0, :cond_2

    .line 1426
    :goto_3
    iget-object p1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public initHeatMapData(JLandroid/os/Bundle;)V
    .locals 11

    .line 1552
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1553
    iget-wide v6, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v5, p0

    move-wide v8, p1

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeInitHeatMapData(JJLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public initWithOptions(Landroid/os/Bundle;Z)Z
    .locals 5

    .line 100
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeInitWithBundle(JLandroid/os/Bundle;Z)Z

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
    .locals 5

    .line 1195
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1196
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeInterruptDraw(JZ)V

    :cond_0
    return-void
.end method

.method public isAnimationRunning()Z
    .locals 2

    .line 992
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeIsAnimationRunning(J)Z

    move-result v0

    return v0
.end method

.method public isBaseIndoorMapMode()Z
    .locals 5

    .line 792
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeIsBaseIndoorMapMode(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBaseIndoorMapShow()Z
    .locals 5

    .line 801
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeIsBaseIndoorMapShow(J)Z

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
    .locals 5

    .line 1588
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1589
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeIsEnableIndoor3D(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isNaviMode()Z
    .locals 2

    .line 1004
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeIsNaviMode(J)Z

    move-result v0

    return v0
.end method

.method public isPointInFocusBarBorder(DDD)Z
    .locals 10

    move-object v9, p0

    .line 809
    iget-wide v0, v9, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v1, v9, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v0, v9

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeIsPointInFocusBarBorder(JDDD)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPointInFocusIDRBorder(DD)Z
    .locals 8

    .line 805
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeIsPointInFocusIDRBorder(JDD)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStreetArrowShown()Z
    .locals 2

    .line 857
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeIsStreetArrowShown(J)Z

    move-result v0

    return v0
.end method

.method public isStreetCustomMarkerShown()Z
    .locals 2

    .line 873
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeIsStreetCustomMarkerShown(J)Z

    move-result v0

    return v0
.end method

.method public isStreetPOIMarkerShown()Z
    .locals 5

    .line 817
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeIsStreetPOIMarkerShown(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStreetRoadClickable()Z
    .locals 2

    .line 865
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeIsStreetRoadClickable(J)Z

    move-result v0

    return v0
.end method

.method public isSupBackgroundDraw()Z
    .locals 5

    .line 1761
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1764
    :cond_0
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeIsSupBackgroundDraw(J)Z

    move-result v0

    return v0
.end method

.method public layersIsShow(J)Z
    .locals 5

    const/4 v0, 0x0

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_3

    .line 273
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a(J)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 284
    iget-object p1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_0
    return v0

    .line 276
    :cond_1
    :try_start_2
    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeLayersIsShow(JJ)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 284
    iget-object p2, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_2
    return p1

    :catchall_0
    move-exception p1

    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_4
    return v0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_5

    iget-object p2, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 286
    :cond_5
    throw p1

    :catch_0
    const/4 v1, 0x0

    :catch_1
    if-eqz v1, :cond_6

    .line 284
    iget-object p1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_6
    return v0
.end method

.method public moveLayerBelow(JLjava/lang/String;)Z
    .locals 11

    .line 1502
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1503
    iget-wide v6, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v5, p0

    move-wide v8, p1

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeMoveLayerBelow(JJLjava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public moveLayerBelowTo(JI)Z
    .locals 11

    .line 1489
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1490
    iget-wide v6, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v5, p0

    move-wide v8, p1

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeMoveLayerBelowTo(JJI)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public moveToScrPoint(II)V
    .locals 2

    .line 579
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeMoveToScrPoint(JII)V

    return-void
.end method

.method public native nativeAddOneOverlayItem(JLandroid/os/Bundle;)V
.end method

.method public native nativeAddOverlayItems(J[Landroid/os/Bundle;I)V
.end method

.method public native nativeAddTileOverlay(JLandroid/os/Bundle;)Z
.end method

.method public native nativeCleanSDKTileDataCache(JJ)Z
.end method

.method public native nativeRemoveOneOverlayItem(JLandroid/os/Bundle;)V
.end method

.method public native nativeUpdateOneOverlayItem(JLandroid/os/Bundle;)V
.end method

.method public native nativeUpdateSDKTile(JLandroid/os/Bundle;)Z
.end method

.method public onBackground()V
    .locals 5

    .line 123
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 124
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeOnBackground(J)V

    :cond_0
    return-void
.end method

.method public onForeground()V
    .locals 5

    .line 129
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 130
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeOnForeground(J)V

    :cond_0
    return-void
.end method

.method public onHotcityGet()Ljava/lang/String;
    .locals 2

    .line 567
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeOnHotcityGet(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 5

    .line 111
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 112
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeOnPause(J)V

    :cond_0
    return-void
.end method

.method public onRecordAdd(I)Z
    .locals 2

    .line 535
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeOnRecordAdd(JI)Z

    move-result p1

    return p1
.end method

.method public onRecordGetAll()Ljava/lang/String;
    .locals 2

    .line 555
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeOnRecordGetAll(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onRecordGetAt(I)Ljava/lang/String;
    .locals 2

    .line 559
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeOnRecordGetAt(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onRecordImport(ZZ)Z
    .locals 2

    .line 563
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeOnRecordImport(JZZ)Z

    move-result p1

    return p1
.end method

.method public onRecordReload(IZ)Z
    .locals 2

    .line 547
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeOnRecordReload(JIZ)Z

    move-result p1

    return p1
.end method

.method public onRecordRemove(IZ)Z
    .locals 2

    .line 551
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeOnRecordRemove(JIZ)Z

    move-result p1

    return p1
.end method

.method public onRecordStart(IZI)Z
    .locals 6

    .line 539
    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeOnRecordStart(JIZI)Z

    move-result p1

    return p1
.end method

.method public onRecordSuspend(IZI)Z
    .locals 6

    .line 543
    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeOnRecordSuspend(JIZI)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 5

    .line 117
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 118
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeOnResume(J)V

    :cond_0
    return-void
.end method

.method public onSchcityGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 571
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeOnSchcityGet(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onUsrcityMsgInterval(I)Z
    .locals 2

    .line 713
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeOnUsrcityMsgInterval(JI)Z

    move-result p1

    return p1
.end method

.method public onWifiRecordAdd(I)I
    .locals 2

    .line 575
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeOnWifiRecordAdd(JI)I

    move-result p1

    return p1
.end method

.method public performAction(Ljava/lang/String;)Z
    .locals 2

    .line 988
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativePerformAction(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public preLoad(ILjava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/n;",
            ">;)Z"
        }
    .end annotation

    .line 1632
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x0

    if-nez v4, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_5

    .line 1636
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto/16 :goto_2

    .line 1640
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1641
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 1642
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1643
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/platform/comapi/map/n;

    .line 1644
    new-instance v5, Lcom/baidu/platform/comjni/tools/ParcelItem;

    invoke-direct {v5}, Lcom/baidu/platform/comjni/tools/ParcelItem;-><init>()V

    .line 1645
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "x"

    .line 1647
    iget-wide v8, v4, Lcom/baidu/platform/comapi/map/n;->d:D

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v7, "y"

    .line 1648
    iget-wide v8, v4, Lcom/baidu/platform/comapi/map/n;->e:D

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v7, "z"

    .line 1649
    iget-wide v8, v4, Lcom/baidu/platform/comapi/map/n;->f:D

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v7, "level"

    .line 1650
    iget v8, v4, Lcom/baidu/platform/comapi/map/n;->a:F

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v7, "rotation"

    .line 1651
    iget v8, v4, Lcom/baidu/platform/comapi/map/n;->b:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "overlooking"

    .line 1652
    iget v4, v4, Lcom/baidu/platform/comapi/map/n;->c:I

    int-to-double v8, v4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1654
    invoke-virtual {v5, v6}, Lcom/baidu/platform/comjni/tools/ParcelItem;->setBundle(Landroid/os/Bundle;)V

    .line 1655
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1657
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 1658
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Lcom/baidu/platform/comjni/tools/ParcelItem;

    .line 1659
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1660
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/platform/comjni/tools/ParcelItem;

    aput-object v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string v0, "points"

    .line 1662
    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1664
    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v2, v3, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativePreload(JLandroid/os/Bundle;I)Z

    move-result p1

    return p1

    :cond_4
    return v0

    :cond_5
    :goto_2
    return v0
.end method

.method public preLoadParticleFile(Ljava/lang/String;)V
    .locals 2

    .line 917
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativePreLoadParticleFile(JLjava/lang/String;)V

    return-void
.end method

.method public readMapResData(Ljava/lang/String;)[B
    .locals 5

    .line 1625
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1626
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeReadMapResData(JLjava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public recycleMemory(I)V
    .locals 5

    .line 1008
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1009
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeRecycleMemory(JI)V

    :cond_0
    return-void
.end method

.method public remove3DModelIDForFilterList(Ljava/lang/String;)V
    .locals 5

    .line 1717
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1718
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeRemove3DModelIDForFilterList(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeBmLayer(J)V
    .locals 2

    .line 1516
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeRemoveBmLayer(JJ)Z

    return-void
.end method

.method public removeItemData(Landroid/os/Bundle;)Z
    .locals 2

    .line 672
    invoke-direct {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/baidu/platform/comjni/map/basemap/c;

    invoke-direct {v1, p0, p1}, Lcom/baidu/platform/comjni/map/basemap/c;-><init>(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p1, 0x1

    return p1
.end method

.method public removeLayer(J)V
    .locals 2

    .line 354
    invoke-direct {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/baidu/platform/comjni/map/basemap/l;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/l;-><init>(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;J)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public removeOneOverlayItem(Landroid/os/Bundle;)V
    .locals 2

    .line 1096
    invoke-direct {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/baidu/platform/comjni/map/basemap/g;

    invoke-direct {v1, p0, p1}, Lcom/baidu/platform/comjni/map/basemap/g;-><init>(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public removeOneOverlayItems([Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1123
    invoke-direct {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/baidu/platform/comjni/map/basemap/h;

    invoke-direct {v1, p0, p1}, Lcom/baidu/platform/comjni/map/basemap/h;-><init>(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;[Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public removeStreetAllCustomMarker()V
    .locals 2

    .line 849
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeRemoveStreetAllCustomMarker(J)V

    return-void
.end method

.method public removeStreetCustomMaker(Ljava/lang/String;)V
    .locals 2

    .line 845
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeRemoveStreetCustomMaker(JLjava/lang/String;)V

    return-void
.end method

.method public renderDone()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public renderInit(IILandroid/view/Surface;I)V
    .locals 11

    .line 1201
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1202
    iget-wide v5, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move v7, p1

    move v8, p2

    move-object v9, p3

    move v10, p4

    invoke-static/range {v5 .. v10}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeRenderInit(JIILandroid/view/Surface;I)V

    :cond_0
    return-void
.end method

.method public renderRender()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1261
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1262
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeDraw(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public renderResize(II)V
    .locals 5

    .line 1207
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1208
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeRenderResize(JII)V

    :cond_0
    return-void
.end method

.method public resetImageRes()V
    .locals 5

    .line 135
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 136
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeResetImageRes(J)V

    :cond_0
    return-void
.end method

.method public resumeCache()Z
    .locals 2

    .line 614
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeResumeCache(J)Z

    move-result v0

    return v0
.end method

.method public saveCache()Z
    .locals 2

    .line 705
    :try_start_0
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSaveCache(J)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public saveScreenToLocal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 527
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSaveScreenToLocal(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public scrPtToGeoPoint(II)Ljava/lang/String;
    .locals 2

    .line 511
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeScrPtToGeoPoint(JII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public set3DModelEnable(Z)V
    .locals 5

    .line 1319
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1320
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSet3DModelEnable(JZ)V

    :cond_0
    return-void
.end method

.method public setAllStreetCustomMarkerVisibility(Z)V
    .locals 5

    .line 827
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 828
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetAllStreetCustomMarkerVisibility(JZ)V

    :cond_0
    return-void
.end method

.method public setAutoEnter3DByZoomIn(Z)V
    .locals 5

    .line 1730
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1731
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativSetAuto3DEnter3DByZoomIn(JZ)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 5

    .line 263
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 264
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetBackgroundColor(JI)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/baidu/platform/comapi/map/ae;)V
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;->setMapCallback(JLcom/baidu/platform/comjni/map/basemap/a;)Z

    return-void
.end method

.method public setCustomStyleEnable(Z)V
    .locals 2

    .line 1436
    invoke-direct {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1439
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/baidu/platform/comjni/map/basemap/i;

    invoke-direct {v1, p0, p1}, Lcom/baidu/platform/comjni/map/basemap/i;-><init>(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setDEMEnable(Z)V
    .locals 5

    .line 1306
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1307
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetDEMEnable(JZ)V

    :cond_0
    return-void
.end method

.method public setDpiScale(F)V
    .locals 5

    .line 1595
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1596
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetDpiScale(JF)V

    :cond_0
    return-void
.end method

.method public setDrawHouseHeightEnable(Z)V
    .locals 5

    .line 1274
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1275
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetDrawHouseHeightEnable(JZ)V

    :cond_0
    return-void
.end method

.method public setEnableIndoor3D(Z)V
    .locals 5

    .line 1582
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1583
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetEnableIndoor3D(JZ)V

    :cond_0
    return-void
.end method

.method public setFeatureConfig(Ljava/lang/String;)V
    .locals 5

    .line 1748
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1749
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetFeatureConfig(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFocus(JJZLandroid/os/Bundle;)V
    .locals 11

    .line 484
    invoke-direct {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 488
    iget-object v9, v0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v10, Lcom/baidu/platform/comjni/map/basemap/p;

    move-object v1, v10

    move-object v2, v0

    move-wide v3, p1

    move-wide v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/baidu/platform/comjni/map/basemap/p;-><init>(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;JJZLandroid/os/Bundle;)V

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setFontSizeLevel(I)V
    .locals 5

    .line 1521
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1522
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetFontSizeLevel(JI)V

    :cond_0
    return-void
.end method

.method public setFullscreenMaskColor(I)V
    .locals 5

    .line 1676
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1677
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetFullscreenMaskColor(JI)V

    :cond_0
    return-void
.end method

.method public setGlobalLightEnable(Z)V
    .locals 5

    .line 1705
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1706
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetGlobalLightEnable(JZ)V

    :cond_0
    return-void
.end method

.method public setHeatMapFrameAnimationIndex(JI)V
    .locals 11

    .line 1546
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1547
    iget-wide v6, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v5, p0

    move-wide v8, p1

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetHeatMapFrameAnimationIndex(JJI)V

    :cond_0
    return-void
.end method

.method public setHouseSmoothLevel(I)V
    .locals 5

    .line 1293
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1294
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetHouseSmoothLevel(JI)V

    :cond_0
    return-void
.end method

.method public setIndoorMapShowMode(Ljava/lang/String;I)V
    .locals 5

    .line 1688
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1689
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetIndoorMapShowMode(JLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setItsPreTime(III)Z
    .locals 6

    .line 531
    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetItsPreTime(JIII)Z

    move-result p1

    return p1
.end method

.method public setLayerSceneMode(JI)Z
    .locals 6

    .line 747
    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetLayerSceneMode(JJI)Z

    move-result p1

    return p1
.end method

.method public setLayersClickable(JZ)V
    .locals 2

    .line 291
    invoke-direct {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/baidu/platform/comjni/map/basemap/j;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/j;-><init>(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;JZ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setLittle3DEnable(Z)V
    .locals 5

    .line 1280
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1281
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetLittle3DEnable(JZ)V

    :cond_0
    return-void
.end method

.method public setLocationLayerData(Landroid/os/Bundle;)V
    .locals 2

    .line 659
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetLocationLayerData(JLandroid/os/Bundle;)V

    return-void
.end method

.method public setMapBackgroundImage(Landroid/os/Bundle;)V
    .locals 5

    .line 256
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 257
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetMapBackgroundImage(JLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setMapControlMode(I)I
    .locals 2

    .line 157
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetMapControlMode(JI)I

    move-result p1

    return p1
.end method

.method public setMapLanguage(I)V
    .locals 5

    .line 1608
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1609
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetMapLanguage(JI)V

    :cond_0
    return-void
.end method

.method public setMapScene(I)V
    .locals 2

    .line 949
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetMapScene(JI)Z

    return-void
.end method

.method public setMapSceneAttr(I)Z
    .locals 2

    .line 976
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetMapSceneAttr(JI)Z

    move-result p1

    return p1
.end method

.method public setMapStatus(Landroid/os/Bundle;)V
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetMapStatus(JLandroid/os/Bundle;)V

    return-void
.end method

.method public setMapStatusLimits(Landroid/os/Bundle;)V
    .locals 5

    .line 1372
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1373
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetMapStatusLimits(JLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setMapStatusLimitsLevel(II)Z
    .locals 5

    .line 1476
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1477
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetMapStatusLimitsLevel(JII)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setMapTheme(ILandroid/os/Bundle;)Z
    .locals 2

    .line 957
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetMapTheme(JILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setMapThemeScene(IILandroid/os/Bundle;)Z
    .locals 6

    .line 961
    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetMapThemeScene(JIILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setMaxAndMinZoomLevel(Landroid/os/Bundle;)V
    .locals 5

    .line 1366
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1367
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetMaxAndMinZoomLevel(JLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setNewMapStatus(Landroid/os/Bundle;)V
    .locals 2

    .line 149
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeNewSetMapStatus(JLandroid/os/Bundle;)V

    return-void
.end method

.method public setPoiTagEnable(IZ)V
    .locals 5

    .line 1325
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1326
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetPoiTagEnable(JIZ)V

    :cond_0
    return-void
.end method

.method public setRecommendPOIScene(I)V
    .locals 2

    .line 1178
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetRecommendPOIScene(JI)V

    return-void
.end method

.method public setSkyboxStyle(I)V
    .locals 5

    .line 1346
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1347
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetSkyboxStyle(JI)V

    :cond_0
    return-void
.end method

.method public setStreetArrowShow(Z)V
    .locals 2

    .line 861
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetStreetArrowShow(JZ)V

    return-void
.end method

.method public setStreetLayerNewDesignFlag(Z)V
    .locals 5

    .line 1360
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1361
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetStreetLayerNewDesignFlag(JZ)V

    :cond_0
    return-void
.end method

.method public setStreetMarkerClickable(Ljava/lang/String;Z)V
    .locals 2

    .line 853
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetStreetMarkerClickable(JLjava/lang/String;Z)V

    return-void
.end method

.method public setStreetRoadClickable(Z)V
    .locals 2

    .line 869
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetStreetRoadClickable(JZ)V

    return-void
.end method

.method public setStyleMode(I)V
    .locals 2

    .line 736
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetStyleMode(JI)V

    return-void
.end method

.method public setSupBackgroundDraw(Z)V
    .locals 5

    .line 1754
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 1757
    :cond_0
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetSupBackgroundDraw(JZ)V

    return-void
.end method

.method public setTargetStreetCustomMarkerVisibility(ZLjava/lang/String;)V
    .locals 5

    .line 833
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 834
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetTargetStreetCustomMarkerVisibility(JZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTestSwitch(Z)Z
    .locals 2

    .line 1174
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetTestSwitch(JZ)Z

    move-result p1

    return p1
.end method

.method public setTrafficUGCData(Ljava/lang/String;)V
    .locals 2

    .line 937
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetTrafficUGCData(JLjava/lang/String;)V

    return-void
.end method

.method public setUniversalFilter(Ljava/lang/String;)V
    .locals 2

    .line 1170
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetUniversalFilter(JLjava/lang/String;)V

    return-void
.end method

.method public setVirtualPoiShowEnable(Z)V
    .locals 2

    .line 929
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSetVirtualPoiShowEnable(JZ)V

    return-void
.end method

.method public showBaseIndoorMap(Z)V
    .locals 2

    .line 756
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowBaseIndoorMap(JZ)V

    return-void
.end method

.method public showFootMarkGrid(ZLjava/lang/String;)V
    .locals 5

    .line 1237
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1238
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowFootMarkGrid(JZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showHotMap(ZI)V
    .locals 2

    .line 205
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowHotMap(JZI)V

    return-void
.end method

.method public showHotMap(ZILjava/lang/String;)V
    .locals 6

    .line 209
    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowHotMapWithUid(JZILjava/lang/String;)V

    return-void
.end method

.method public showLayers(JZ)V
    .locals 2

    .line 229
    invoke-direct {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/baidu/platform/comjni/map/basemap/b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/b;-><init>(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;JZ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public showMistMap(ZLjava/lang/String;)V
    .locals 2

    .line 213
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowMistMap(JZLjava/lang/String;)V

    return-void
.end method

.method public showOperatorDataByType(ZI)V
    .locals 5

    .line 1736
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1737
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowOperatorDataByType(JZI)V

    :cond_0
    return-void
.end method

.method public showParticleEffect(I)Z
    .locals 2

    .line 885
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowParticleEffect(JI)Z

    move-result p1

    return p1
.end method

.method public showParticleEffectByFileName(Ljava/lang/String;)Z
    .locals 2

    .line 909
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowParticleEffectByFileName(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public showParticleEffectByFilenameAndPos(Ljava/lang/String;FFF)Z
    .locals 7

    .line 913
    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowParticleEffectByFilenameAndPos(JLjava/lang/String;FFF)Z

    move-result p1

    return p1
.end method

.method public showParticleEffectByName(Ljava/lang/String;Z)Z
    .locals 2

    .line 901
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowParticleEffectByName(JLjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public showParticleEffectByType(I)Z
    .locals 2

    .line 889
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowParticleEffectByType(JI)Z

    move-result p1

    return p1
.end method

.method public showParticleEffectByTypeAndPos(IFFF)Z
    .locals 7

    .line 893
    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowParticleEffectByTypeAndPos(JIFFF)Z

    move-result p1

    return p1
.end method

.method public showParticleEffectByTypeAndStyleID(II)Z
    .locals 2

    .line 897
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowParticleEffectByTypeAndStyleID(JII)Z

    move-result p1

    return p1
.end method

.method public showSatelliteMap(Z)V
    .locals 2

    .line 189
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowSatelliteMap(JZ)V

    return-void
.end method

.method public showStreetPOIMarker(Z)V
    .locals 5

    .line 821
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 822
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowStreetPOIMarker(JZ)V

    :cond_0
    return-void
.end method

.method public showStreetPopup(Z)V
    .locals 2

    .line 201
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowStreetPopup(JZ)V

    return-void
.end method

.method public showStreetRoadMap(Z)V
    .locals 2

    .line 197
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowStreetRoadMap(JZ)V

    return-void
.end method

.method public showTopicPOI(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 7

    .line 1232
    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowTopicPOI(JLjava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method public showTrafficMap(Z)V
    .locals 2

    .line 193
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowTrafficMap(JZ)V

    return-void
.end method

.method public showTrafficUGCMap(Z)V
    .locals 2

    .line 925
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowTrafficUGCMap(JZ)V

    return-void
.end method

.method public showUniversalLayer(Landroid/os/Bundle;)V
    .locals 2

    .line 1162
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeShowUniversalLayer(JLandroid/os/Bundle;)V

    return-void
.end method

.method public startHeatMapFrameAnimation(J)V
    .locals 5

    .line 1534
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1535
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeStartHeatMapFrameAnimation(JJ)V

    :cond_0
    return-void
.end method

.method public startIndoorAnimation()V
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeStartIndoorAnimation(J)V

    return-void
.end method

.method public stopHeatMapFrameAnimation(J)V
    .locals 5

    .line 1540
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1541
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeStopHeatMapFrameAnimation(JJ)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/Surface;)V
    .locals 5

    .line 1214
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1215
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSurfaceDestroyed(JLandroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public switchBaseIndoorMapFloor(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 767
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSwitchBaseIndoorMapFloor(JLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public switchDayOrDarkTheme(IZ)V
    .locals 5

    .line 1742
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1743
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeSwitchDayOrDarkTheme(JIZ)V

    :cond_0
    return-void
.end method

.method public switchLayer(JJ)Z
    .locals 8

    .line 379
    invoke-direct {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lcom/baidu/platform/comjni/map/basemap/m;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/baidu/platform/comjni/map/basemap/m;-><init>(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;JJ)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p1, 0x1

    return p1
.end method

.method public unFocusTrafficUGCLabel()V
    .locals 2

    .line 941
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeUnFocusTrafficUGCLabel(J)V

    return-void
.end method

.method public updateBaseLayers()V
    .locals 2

    .line 1250
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeUpdateBaseLayers(J)V

    return-void
.end method

.method public updateDrawFPS()V
    .locals 5

    .line 1189
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1190
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeUpdateDrawFPS(J)V

    :cond_0
    return-void
.end method

.method public updateFootMarkGrid()V
    .locals 2

    .line 1243
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeUpdateFootMarkGrid(J)V

    return-void
.end method

.method public updateHeatMapData(JLandroid/os/Bundle;)V
    .locals 11

    .line 1564
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1565
    iget-wide v6, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v5, p0

    move-wide v8, p1

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeUpdateHeatMapData(JJLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public updateLayers(J)V
    .locals 2

    .line 320
    invoke-direct {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/baidu/platform/comjni/map/basemap/k;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/k;-><init>(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;J)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public updateOneOverlayItem(Landroid/os/Bundle;)V
    .locals 2

    .line 1069
    invoke-direct {p0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/baidu/platform/comjni/map/basemap/f;

    invoke-direct {v1, p0, p1}, Lcom/baidu/platform/comjni/map/basemap/f;-><init>(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public worldPointToScreenPoint(FFF)Ljava/lang/String;
    .locals 6

    .line 523
    iget-wide v1, p0, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->nativeworldPointToScreenPoint(JFFF)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
