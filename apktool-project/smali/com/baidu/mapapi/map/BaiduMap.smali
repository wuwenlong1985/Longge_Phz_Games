.class public Lcom/baidu/mapapi/map/BaiduMap;
.super Ljava/lang/Object;
.source "BaiduMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/BaiduMap$OnSynchronizationListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderValidDataListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnBaseIndoorMapListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMapDrawFrameCallback;,
        Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMyLocationClickListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMarkerDragListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMultiPointClickListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnTextClickListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnGroundOverlayClickListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnPolygonClickListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnCircleClickListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnArcClickListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnPolylineClickListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMarkerWithBaseUIClickListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMapLongClickListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMapDoubleClickListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderCallback;,
        Lcom/baidu/mapapi/map/BaiduMap$OnHeatMapDrawFrameCallBack;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMapLoadedCallback;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMapClickListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnLocationModeChangeListener;,
        Lcom/baidu/mapapi/map/BaiduMap$onMapGestureListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMapTouchListener;,
        Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;
    }
.end annotation


# static fields
.field public static final MAP_TYPE_NONE:I = 0x3

.field public static final MAP_TYPE_NORMAL:I = 0x1

.field public static final MAP_TYPE_SATELLITE:I = 0x2

.field public static final REAL_MAX_ZOOM_LEVEL:F = 22.0f

.field public static final REAL_MIN_ZOOM_LEVEL:F = 4.0f

.field private static volatile ao:Z = false

.field private static volatile ap:Z = false

.field private static final e:Ljava/lang/String; = "BaiduMap"

.field public static mapStatusReason:I = 0x100


# instance fields
.field private A:Lcom/baidu/mapapi/map/BaiduMap$OnMapDoubleClickListener;

.field private B:Lcom/baidu/mapapi/map/BaiduMap$OnMapLongClickListener;

.field private C:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/baidu/mapapi/map/BaiduMap$OnMarkerWithBaseUIClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/baidu/mapapi/map/BaiduMap$OnPolylineClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/baidu/mapapi/map/BaiduMap$OnMultiPointClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/baidu/mapapi/map/BaiduMap$OnCircleClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private H:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/baidu/mapapi/map/BaiduMap$OnPolygonClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/baidu/mapapi/map/BaiduMap$OnGroundOverlayClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private J:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/baidu/mapapi/map/BaiduMap$OnTextClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private K:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/baidu/mapapi/map/BaiduMap$OnArcClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private L:Lcom/baidu/mapapi/map/BaiduMap$OnMarkerDragListener;

.field private M:Lcom/baidu/mapapi/map/BaiduMap$OnMyLocationClickListener;

.field private N:Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;

.field private O:Lcom/baidu/mapapi/map/Building3DListener;

.field private P:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/baidu/mapapi/map/Building;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Lcom/baidu/mapapi/map/BaiduMap$OnMapDrawFrameCallback;

.field private R:Lcom/baidu/mapapi/map/BaiduMap$OnBaseIndoorMapListener;

.field private S:Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderValidDataListener;

.field private T:Lcom/baidu/mapapi/map/BaiduMap$OnHeatMapDrawFrameCallBack;

.field private U:Lcom/baidu/mapapi/map/BaiduMap$OnSynchronizationListener;

.field private V:Lcom/baidu/mapapi/map/TileOverlay;

.field private W:Lcom/baidu/mapapi/map/HeatMap;

.field private X:Lcom/baidu/mapapi/map/HexagonMap;

.field private Y:Ljava/util/concurrent/locks/Lock;

.field private Z:Ljava/util/concurrent/locks/Lock;

.field a:Lcom/baidu/mapapi/map/MapView;

.field private aa:Ljava/util/concurrent/locks/Lock;

.field private ab:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/baidu/mapapi/map/InfoWindow;",
            ">;"
        }
    .end annotation
.end field

.field private ac:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/baidu/mapapi/map/InfoWindow;",
            "Lcom/baidu/mapapi/map/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private ad:Lcom/baidu/mapapi/map/Marker;

.field private ae:Lcom/baidu/mapapi/map/MyLocationData;

.field private af:Lcom/baidu/mapapi/map/MyLocationConfiguration;

.field private ag:Lcom/baidu/mapapi/map/BaiduMap$OnLocationModeChangeListener;

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field private al:Landroid/graphics/Point;

.field private volatile am:Z

.field private an:Z

.field private aq:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

.field private ar:Z

.field b:Lcom/baidu/mapapi/map/TextureMapView;

.field c:Lcom/baidu/mapapi/map/WearMapView;

.field d:Lcom/baidu/mapsdkplatform/comapi/map/w;

.field private f:Lcom/baidu/mapapi/map/Projection;

.field private g:Lcom/baidu/mapapi/map/UiSettings;

.field private h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

.field private i:Lcom/baidu/platform/comapi/map/MapTextureView;

.field private j:Lcom/baidu/mapsdkplatform/comapi/map/c;

.field private k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/InfoWindow;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/baidu/mapapi/map/Overlay$a;

.field private q:Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI$onBaseUIListener;

.field private r:Lcom/baidu/mapapi/map/HexagonMap$a;

.field private s:Lcom/baidu/mapapi/map/InfoWindow$a;

.field private t:Lcom/baidu/mapapi/map/InfoWindowAdapter;

.field private u:Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;

.field private v:Lcom/baidu/mapapi/map/BaiduMap$OnMapTouchListener;

.field private w:Lcom/baidu/mapapi/map/BaiduMap$onMapGestureListener;

.field private x:Lcom/baidu/mapapi/map/BaiduMap$OnMapClickListener;

.field private y:Lcom/baidu/mapapi/map/BaiduMap$OnMapLoadedCallback;

.field private z:Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapSurfaceView;Lcom/baidu/mapsdkplatform/comapi/map/v;)V
    .locals 7

    .line 1543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->C:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 586
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->D:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 588
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 590
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 592
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 594
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 596
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 598
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 600
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->K:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 620
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Y:Ljava/util/concurrent/locks/Lock;

    .line 621
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Z:Ljava/util/concurrent/locks/Lock;

    .line 622
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->aa:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    .line 647
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->am:Z

    .line 649
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->an:Z

    .line 659
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ar:Z

    .line 1544
    iput-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    .line 1546
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mapsdkplatform/comapi/map/c;-><init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapSurfaceView;Lcom/baidu/mapsdkplatform/comapi/map/v;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    .line 1547
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {p2, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setBaseMap(Lcom/baidu/mapsdkplatform/comapi/map/c;)V

    .line 1548
    sget-object p1, Lcom/baidu/mapsdkplatform/comapi/map/w;->a:Lcom/baidu/mapsdkplatform/comapi/map/w;

    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    .line 1549
    invoke-direct {p0}, Lcom/baidu/mapapi/map/BaiduMap;->d()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapTextureView;Lcom/baidu/mapsdkplatform/comapi/map/v;)V
    .locals 7

    .line 1534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->C:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 586
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->D:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 588
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 590
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 592
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 594
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 596
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 598
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 600
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->K:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 620
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Y:Ljava/util/concurrent/locks/Lock;

    .line 621
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Z:Ljava/util/concurrent/locks/Lock;

    .line 622
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->aa:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    .line 647
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->am:Z

    .line 649
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->an:Z

    .line 659
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ar:Z

    .line 1535
    iput-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    .line 1536
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mapsdkplatform/comapi/map/c;-><init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapTextureView;Lcom/baidu/mapsdkplatform/comapi/map/v;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    .line 1537
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {p2, p1}, Lcom/baidu/platform/comapi/map/MapTextureView;->setBaseMap(Lcom/baidu/mapsdkplatform/comapi/map/c;)V

    .line 1539
    sget-object p1, Lcom/baidu/mapsdkplatform/comapi/map/w;->b:Lcom/baidu/mapsdkplatform/comapi/map/w;

    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    .line 1540
    invoke-direct {p0}, Lcom/baidu/mapapi/map/BaiduMap;->d()V

    return-void
.end method

.method static synthetic A(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic B(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic C(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic D(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic E(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic F(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->K:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic G(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Y:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic H(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/HeatMap;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Lcom/baidu/mapapi/map/HeatMap;

    return-object p0
.end method

.method static synthetic I(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMapDrawFrameCallback;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Q:Lcom/baidu/mapapi/map/BaiduMap$OnMapDrawFrameCallback;

    return-object p0
.end method

.method static synthetic J(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnBaseIndoorMapListener;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->R:Lcom/baidu/mapapi/map/BaiduMap$OnBaseIndoorMapListener;

    return-object p0
.end method

.method static synthetic K(Lcom/baidu/mapapi/map/BaiduMap;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ar:Z

    return p0
.end method

.method static synthetic L(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderValidDataListener;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->S:Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderValidDataListener;

    return-object p0
.end method

.method static synthetic M(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnHeatMapDrawFrameCallBack;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->T:Lcom/baidu/mapapi/map/BaiduMap$OnHeatMapDrawFrameCallBack;

    return-object p0
.end method

.method static synthetic N(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->aa:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic O(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/TileOverlay;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->V:Lcom/baidu/mapapi/map/TileOverlay;

    return-object p0
.end method

.method static synthetic P(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->D:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic Q(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/platform/comapi/bmsdk/BmLayer;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    return-object p0
.end method

.method static synthetic R(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->N:Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 9

    .line 3032
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "^\\{"

    const-string v1, ""

    .line 3037
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\}$"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v5, p1, v2

    const-string v6, "\""

    const-string v7, ""

    .line 3038
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "x"

    .line 3039
    aget-object v7, v5, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 3040
    aget-object v3, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_1
    const-string v6, "y"

    .line 3042
    aget-object v8, v5, v1

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3043
    aget-object v4, v5, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3046
    :cond_3
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/BaiduMap;Lcom/baidu/mapapi/map/HexagonMap;)Lcom/baidu/mapapi/map/HexagonMap;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->X:Lcom/baidu/mapapi/map/HexagonMap;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/BaiduMap;Lcom/baidu/mapapi/map/Marker;)Lcom/baidu/mapapi/map/Marker;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->ad:Lcom/baidu/mapapi/map/Marker;

    return-object p1
.end method

.method private a(Lcom/baidu/mapapi/map/Overlay;)Lcom/baidu/mapapi/map/Overlay;
    .locals 3

    if-eqz p1, :cond_2

    .line 1729
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->am:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1733
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1734
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/Overlay;->setBmLayer(Lcom/baidu/platform/comapi/bmsdk/BmLayer;)V

    .line 1736
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Overlay;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a(Ljava/lang/String;)Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1738
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)Z

    .line 1740
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Overlay;->toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    move-result-object v0

    .line 1742
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->e()S

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;S)Z

    .line 1743
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/BaiduMap;Lcom/baidu/mapapi/map/Projection;)Lcom/baidu/mapapi/map/Projection;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->f:Lcom/baidu/mapapi/map/Projection;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapsdkplatform/comapi/map/c;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    return-object p0
.end method

.method private a(Lcom/baidu/mapapi/map/MapStatusUpdate;)Lcom/baidu/mapsdkplatform/comapi/map/x;
    .locals 4

    .line 2257
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2260
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->G()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v0

    .line 2261
    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/baidu/mapapi/map/MapStatusUpdate;->a(Lcom/baidu/mapsdkplatform/comapi/map/c;Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatus;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 2266
    :cond_1
    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/MapStatus;->b(Lcom/baidu/mapsdkplatform/comapi/map/x;)Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object p1

    return-object p1
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "SSL\u63e1\u624b\u8d85\u65f6"

    goto :goto_0

    :pswitch_1
    const-string v0, "SSL\u63e1\u624b\u9519\u8bef"

    goto :goto_0

    :pswitch_2
    const-string v0, "\u7f51\u7edc\u5199\u9519\u8bef"

    goto :goto_0

    :pswitch_3
    const-string v0, "DNS\u89e3\u6790\u8d85\u65f6"

    goto :goto_0

    :pswitch_4
    const-string v0, "DNS\u89e3\u6790\u9519\u8bef"

    goto :goto_0

    :pswitch_5
    const-string v0, "\u7f51\u7edc\u63a5\u6536\u8d85\u65f6"

    goto :goto_0

    :pswitch_6
    const-string v0, "\u7f51\u7edc\u53d1\u9001\u8d85\u65f6"

    goto :goto_0

    :pswitch_7
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6"

    goto :goto_0

    :pswitch_8
    const-string v0, "\u7f51\u7edc\u8d85\u65f6\u9519\u8bef"

    goto :goto_0

    :pswitch_9
    const-string v0, "\u8bf7\u6c42\u53d6\u6d88"

    goto :goto_0

    :pswitch_a
    const-string v0, "\u6570\u636e\u4e0d\u4e00\u81f4"

    goto :goto_0

    :pswitch_b
    const-string v0, "\u5f53\u524d\u7f51\u7edc\u7c7b\u578b\u6709\u95ee\u9898"

    goto :goto_0

    :pswitch_c
    const-string v0, "\u8fd4\u56de\u54cd\u5e94\u6570\u636e\u8fc7\u5927\uff0c\u6570\u636e\u6ea2\u51fa"

    goto :goto_0

    :pswitch_d
    const-string v0, "\u54cd\u5e94\u6570\u636e\u8bfb\u53d6\u5931\u8d25"

    goto :goto_0

    :pswitch_e
    const-string v0, "\u8bf7\u6c42\u53d1\u9001\u9519\u8bef"

    goto :goto_0

    :pswitch_f
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u9519\u8bef"

    goto :goto_0

    :cond_0
    const-string v0, "\u6570\u636e\u8bf7\u6c42\u6210\u529f"

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/BaiduMap;I)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/BaiduMap;Lcom/baidu/mapapi/map/InfoWindow;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/InfoWindow;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/BaiduMap;Lcom/baidu/mapapi/map/Overlay;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/map/InfoWindow;)V
    .locals 7

    if-eqz p1, :cond_8

    .line 3507
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->am:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 3510
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ac:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3511
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_7

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 3518
    :cond_1
    iget-object v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 3519
    iget-boolean v3, p1, Lcom/baidu/mapapi/map/InfoWindow;->k:Z

    if-eqz v3, :cond_3

    .line 3520
    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 3521
    new-instance v3, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;

    invoke-direct {v3}, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;-><init>()V

    .line 3522
    sget-object v4, Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;->mapMode:Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;->layoutMode(Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;)Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/mapapi/map/InfoWindow;->d:Lcom/baidu/mapapi/model/LatLng;

    .line 3523
    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;

    move-result-object v3

    iget v4, p1, Lcom/baidu/mapapi/map/InfoWindow;->g:I

    .line 3524
    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;->yOffset(I)Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;

    move-result-object v3

    .line 3525
    invoke-virtual {v3}, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;->build()Lcom/baidu/mapapi/map/MapViewLayoutParams;

    move-result-object v3

    .line 3526
    sget-object v4, Lcom/baidu/mapapi/map/j;->b:[I

    iget-object v5, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    invoke-virtual {v5}, Lcom/baidu/mapsdkplatform/comapi/map/w;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 3534
    :pswitch_0
    iget-object v4, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    if-eqz v4, :cond_2

    .line 3535
    iget-object v4, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v4, v0, v3}, Lcom/baidu/mapapi/map/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3528
    :pswitch_1
    iget-object v4, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    if-eqz v4, :cond_2

    .line 3529
    iget-object v4, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v4, v0, v3}, Lcom/baidu/mapapi/map/TextureMapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3530
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3542
    :cond_2
    :goto_0
    iget-boolean v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->j:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 3547
    :goto_1
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->b(Lcom/baidu/mapapi/map/InfoWindow;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    .line 3549
    iget-object v4, p0, Lcom/baidu/mapapi/map/BaiduMap;->ac:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/map/Marker;

    if-eqz v4, :cond_6

    .line 3552
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3553
    iget-object v6, p1, Lcom/baidu/mapapi/map/InfoWindow;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v6, :cond_5

    .line 3554
    sget-object v6, Lcom/baidu/mapsdkplatform/comapi/map/h;->b:Lcom/baidu/mapsdkplatform/comapi/map/h;

    iput-object v6, v4, Lcom/baidu/mapapi/map/Marker;->type:Lcom/baidu/mapsdkplatform/comapi/map/h;

    .line 3555
    iput-object v3, v4, Lcom/baidu/mapapi/map/Marker;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 3556
    iget-object v3, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    if-eqz v3, :cond_4

    const-string v2, "draw_with_view"

    .line 3557
    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    const-string v1, "draw_with_view"

    .line 3559
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3562
    :cond_5
    :goto_2
    iget-object v1, p1, Lcom/baidu/mapapi/map/InfoWindow;->d:Lcom/baidu/mapapi/model/LatLng;

    iput-object v1, v4, Lcom/baidu/mapapi/map/Marker;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 3563
    iget p1, p1, Lcom/baidu/mapapi/map/InfoWindow;->g:I

    iput p1, v4, Lcom/baidu/mapapi/map/Marker;->j:I

    .line 3564
    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/map/Marker;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3565
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    iget-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->am:Z

    if-nez p1, :cond_6

    .line 3566
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {p1, v5}, Lcom/baidu/mapsdkplatform/comapi/map/c;->f(Landroid/os/Bundle;)V

    :cond_6
    return-void

    .line 3512
    :cond_7
    :goto_3
    invoke-virtual {p0, p1, v2}, Lcom/baidu/mapapi/map/BaiduMap;->showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;Z)V

    return-void

    :cond_8
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Lcom/baidu/mapapi/map/MyLocationConfiguration;)V
    .locals 5

    .line 2564
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_0

    .line 2565
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->w()V

    .line 2567
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2568
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MyLocationConfiguration;->isEnableCustom()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2570
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MyLocationConfiguration;->getArrow()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2571
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MyLocationConfiguration;->getArrow()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2572
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2573
    new-instance v2, Lcom/baidu/platform/comapi/map/OverlayLocationData;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/map/OverlayLocationData;-><init>()V

    .line 2574
    invoke-virtual {v2, v1}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setImage(Landroid/graphics/Bitmap;)V

    .line 2575
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setImgHeight(I)V

    .line 2576
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setImgWidth(I)V

    const-string v3, "arrowicon"

    .line 2577
    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setImgType(Ljava/lang/String;)V

    .line 2578
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arrowicon_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setImgName(Ljava/lang/String;)V

    .line 2579
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MyLocationConfiguration;->getArrowSize()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setArrowSize(F)V

    const/4 v1, 0x1

    .line 2580
    invoke-virtual {v2, v1}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setRotation(I)V

    .line 2581
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2585
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MyLocationConfiguration;->getCustomMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2586
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MyLocationConfiguration;->getCustomMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2587
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2588
    new-instance v2, Lcom/baidu/platform/comapi/map/OverlayLocationData;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/map/OverlayLocationData;-><init>()V

    .line 2589
    invoke-virtual {v2, v1}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setImage(Landroid/graphics/Bitmap;)V

    .line 2590
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setImgHeight(I)V

    .line 2591
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setImgWidth(I)V

    const-string v3, "icon"

    .line 2592
    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setImgType(Ljava/lang/String;)V

    .line 2593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "icon_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setImgName(Ljava/lang/String;)V

    .line 2594
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MyLocationConfiguration;->getMarkerSize()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setMarkerSize(F)V

    .line 2595
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MyLocationConfiguration;->isEnableRotation()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setRotation(I)V

    .line 2596
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MyLocationConfiguration;->isNeedAnimation()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setAnimation(I)V

    .line 2597
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2601
    :cond_2
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MyLocationConfiguration;->getGifMarker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2602
    new-instance v1, Lcom/baidu/platform/comapi/map/OverlayLocationData;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/map/OverlayLocationData;-><init>()V

    const-string v2, "gificon"

    .line 2603
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setImgType(Ljava/lang/String;)V

    const-string v2, "gificon"

    .line 2604
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setImgName(Ljava/lang/String;)V

    .line 2605
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MyLocationConfiguration;->getGifMarker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setGIFImgPath(Ljava/lang/String;)V

    .line 2606
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MyLocationConfiguration;->getMarkerSize()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setMarkerSize(F)V

    .line 2607
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MyLocationConfiguration;->isEnableRotation()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setRotation(I)V

    .line 2608
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MyLocationConfiguration;->isNeedAnimation()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setAnimation(I)V

    .line 2609
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2612
    :cond_3
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MyLocationConfiguration;->getCustomMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2613
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MyLocationConfiguration;->getCustomMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2614
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2615
    new-instance v2, Lcom/baidu/platform/comapi/map/OverlayLocationData;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/map/OverlayLocationData;-><init>()V

    .line 2616
    invoke-virtual {v2, v1}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setImage(Landroid/graphics/Bitmap;)V

    .line 2617
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setImgHeight(I)V

    .line 2618
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setImgWidth(I)V

    const-string v1, "icon"

    .line 2619
    invoke-virtual {v2, v1}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setImgName(Ljava/lang/String;)V

    .line 2620
    iget-boolean p1, p1, Lcom/baidu/mapapi/map/MyLocationConfiguration;->enableDirection:Z

    invoke-virtual {v2, p1}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->setRotation(I)V

    .line 2621
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2625
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 2627
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz p1, :cond_5

    .line 2628
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method private final a(Lcom/baidu/mapapi/map/MyLocationData;Lcom/baidu/mapapi/map/MyLocationConfiguration;)V
    .locals 10

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 2677
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->isMyLocationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2685
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2686
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2687
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2688
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2689
    new-instance v4, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v5, p1, Lcom/baidu/mapapi/map/MyLocationData;->latitude:D

    iget-wide v7, p1, Lcom/baidu/mapapi/map/MyLocationData;->longitude:D

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 2690
    invoke-static {v4}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v5

    :try_start_0
    const-string v6, "type"

    const/4 v7, 0x0

    .line 2693
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "ptx"

    .line 2695
    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v8

    invoke-virtual {v2, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v6, "pty"

    .line 2696
    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v8

    invoke-virtual {v2, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2697
    iget v6, p1, Lcom/baidu/mapapi/map/MyLocationData;->accuracy:F

    float-to-int v6, v6

    invoke-static {v4, v6}, Lcom/baidu/mapapi/model/CoordUtil;->getMCDistanceByOneLatLngAndRadius(Lcom/baidu/mapapi/model/LatLng;I)I

    move-result v4

    int-to-float v4, v4

    const-string v6, "radius"

    float-to-double v8, v4

    .line 2698
    invoke-virtual {v2, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2699
    iget v4, p1, Lcom/baidu/mapapi/map/MyLocationData;->direction:F

    .line 2700
    iget-boolean v4, p2, Lcom/baidu/mapapi/map/MyLocationConfiguration;->enableDirection:Z

    if-eqz v4, :cond_2

    .line 2701
    iget v4, p1, Lcom/baidu/mapapi/map/MyLocationData;->direction:F

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v4, v6

    const/high16 v8, 0x43340000    # 180.0f

    cmpl-float v8, v4, v8

    if-lez v8, :cond_1

    sub-float/2addr v4, v6

    goto :goto_0

    :cond_1
    const/high16 v8, -0x3ccc0000    # -180.0f

    cmpg-float v8, v4, v8

    if-gez v8, :cond_3

    add-float/2addr v4, v6

    goto :goto_0

    :cond_2
    const v4, -0x3b85c000    # -1001.0f

    :cond_3
    :goto_0
    const-string v6, "direction"

    float-to-double v8, v4

    .line 2711
    invoke-virtual {v2, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "iconarrownor"

    const-string v6, "NormalLocArrow"

    .line 2712
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "BaiduMapSDK_map_v"

    const-string v6, "BaiduMapSDK_map_for_navi_v"

    .line 2714
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "iconarrownorid"

    const/16 v6, 0x308

    .line 2715
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "iconarrowfocid"

    const/16 v6, 0x309

    .line 2716
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 2719
    :cond_4
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/MyLocationConfiguration;->isEnableCustom()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "iconarrownorid"

    const/16 v6, 0x1c

    .line 2720
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "iconarrowfocid"

    const/16 v6, 0x1d

    .line 2721
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_5
    :goto_1
    const-string v4, "iconarrowfoc"

    const-string v6, "FocusLocArrow"

    .line 2724
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "lineid"

    .line 2725
    iget v6, p2, Lcom/baidu/mapapi/map/MyLocationConfiguration;->accuracyCircleStrokeColor:I

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "areaid"

    .line 2726
    iget v6, p2, Lcom/baidu/mapapi/map/MyLocationConfiguration;->accuracyCircleFillColor:I

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "width"

    .line 2727
    iget v6, p2, Lcom/baidu/mapapi/map/MyLocationConfiguration;->width:I

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2728
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2729
    iget-object v2, p2, Lcom/baidu/mapapi/map/MyLocationConfiguration;->locationMode:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    sget-object v4, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->COMPASS:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    if-ne v2, v4, :cond_7

    const-string v2, "ptx"

    .line 2731
    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v8

    invoke-virtual {v3, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "pty"

    .line 2732
    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "radius"

    .line 2733
    invoke-virtual {v3, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "direction"

    .line 2734
    invoke-virtual {v3, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "iconarrownor"

    const-string v4, "direction_wheel"

    .line 2735
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "iconarrowfoc"

    const-string v4, "direction_wheel"

    .line 2736
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "BaiduMapSDK_map_v"

    const-string v4, "BaiduMapSDK_map_for_navi_v"

    .line 2738
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "iconarrownorid"

    const/16 v4, 0x153

    .line 2739
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "iconarrowfocid"

    .line 2740
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_6
    const-string v2, "iconarrownorid"

    const/16 v4, 0x36

    .line 2742
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "iconarrowfocid"

    .line 2743
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2745
    :goto_2
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_7
    const-string v2, "data"

    .line 2748
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 2752
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2755
    :goto_3
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v1, :cond_8

    .line 2756
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2762
    :cond_8
    sget-object v0, Lcom/baidu/mapapi/map/j;->a:[I

    iget-object p2, p2, Lcom/baidu/mapapi/map/MyLocationConfiguration;->locationMode:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    invoke-virtual {p2}, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    .line 2772
    :pswitch_0
    new-instance p2, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct {p2}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>()V

    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, p1, Lcom/baidu/mapapi/map/MyLocationData;->latitude:D

    iget-wide v3, p1, Lcom/baidu/mapapi/map/MyLocationData;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;->target(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object p1

    .line 2773
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object p2

    iget p2, p2, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/map/MapStatus$Builder;->zoom(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object p2

    iget p2, p2, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/map/MapStatus$Builder;->rotate(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object p1

    .line 2774
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object p2

    iget p2, p2, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/map/MapStatus$Builder;->overlook(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object p2

    iget-object p2, p2, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/map/MapStatus$Builder;->targetScreen(Landroid/graphics/Point;)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->build()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object p1

    .line 2775
    invoke-static {p1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object p1

    .line 2776
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    goto :goto_4

    .line 2764
    :pswitch_1
    new-instance p2, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct {p2}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>()V

    iget v0, p1, Lcom/baidu/mapapi/map/MyLocationData;->direction:F

    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;->rotate(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object p2

    const/high16 v0, -0x3dcc0000    # -45.0f

    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;->overlook(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object p2

    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, p1, Lcom/baidu/mapapi/map/MyLocationData;->latitude:D

    iget-wide v3, p1, Lcom/baidu/mapapi/map/MyLocationData;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 2765
    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;->target(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object p1

    .line 2766
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object p2

    iget-object p2, p2, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/map/MapStatus$Builder;->targetScreen(Landroid/graphics/Point;)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object p2

    iget p2, p2, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/map/MapStatus$Builder;->zoom(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->build()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object p1

    .line 2767
    invoke-static {p1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object p1

    .line 2768
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    :goto_4
    :pswitch_2
    return-void

    :cond_9
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/baidu/mapapi/map/ParticleEffectType;)V
    .locals 8

    .line 4556
    sget-object v0, Lcom/baidu/mapapi/map/ParticleEffectType;->Flower:Lcom/baidu/mapapi/map/ParticleEffectType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    sget-boolean v0, Lcom/baidu/mapapi/map/BaiduMap;->ao:Z

    if-nez v0, :cond_0

    const-string v0, "flower.png"

    .line 4558
    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4560
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "total"

    .line 4561
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4562
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "texture_%d"

    .line 4563
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4564
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4565
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1, v3}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapapi/map/ParticleEffectType;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4566
    sput-boolean v2, Lcom/baidu/mapapi/map/BaiduMap;->ao:Z

    .line 4571
    :cond_0
    sget-object v0, Lcom/baidu/mapapi/map/ParticleEffectType;->Fireworks:Lcom/baidu/mapapi/map/ParticleEffectType;

    if-ne v0, p1, :cond_1

    sget-boolean v0, Lcom/baidu/mapapi/map/BaiduMap;->ap:Z

    if-nez v0, :cond_1

    const-string v0, "firework_bullet.png"

    .line 4573
    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    const-string v3, "firework_tail.png"

    .line 4574
    invoke-static {v3}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 4576
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "total"

    const/4 v6, 0x2

    .line 4577
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4578
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "texture_%d"

    .line 4579
    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 4580
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4581
    invoke-virtual {v3}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "texture_%d"

    .line 4582
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4583
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4584
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1, v4}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapapi/map/ParticleEffectType;Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4585
    sput-boolean v2, Lcom/baidu/mapapi/map/BaiduMap;->ap:Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/BaiduMap;Z)Z
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->ak:Z

    return p1
.end method

.method private b(Lcom/baidu/mapapi/map/InfoWindow;)Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 3579
    iget-object v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->k:Z

    if-eqz v0, :cond_2

    .line 3581
    iget-boolean v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->h:Z

    if-eqz v0, :cond_1

    .line 3583
    iget v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->i:I

    if-gtz v0, :cond_0

    .line 3584
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v0

    iput v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->i:I

    .line 3586
    :cond_0
    iget-object v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    iget p1, p1, Lcom/baidu/mapapi/map/InfoWindow;->i:I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromViewWithDpi(Landroid/view/View;I)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object p1

    goto :goto_0

    .line 3588
    :cond_1
    iget-object p1, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    invoke-static {p1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object p1

    goto :goto_0

    .line 3592
    :cond_2
    iget-object p1, p1, Lcom/baidu/mapapi/map/InfoWindow;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    :goto_0
    return-object p1
.end method

.method static synthetic b(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Z:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method private b(Lcom/baidu/mapapi/map/Overlay;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1777
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->am:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1781
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Overlay;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a(Ljava/lang/String;)Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1783
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)Z

    .line 1784
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/baidu/mapapi/map/BaiduMap;Z)Z
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->ar:Z

    return p1
.end method

.method static synthetic c(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/HexagonMap;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->X:Lcom/baidu/mapapi/map/HexagonMap;

    return-object p0
.end method

.method private c(Lcom/baidu/mapapi/map/Overlay;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1789
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->am:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1792
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Overlay;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a(Ljava/lang/String;)Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1794
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)Z

    .line 1795
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Overlay;->toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    move-result-object p1

    .line 1796
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->e()S

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;S)Z

    .line 1797
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private d()V
    .locals 3

    const/4 v0, 0x0

    .line 662
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->am:Z

    .line 663
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->l:Ljava/util/List;

    .line 664
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->m:Ljava/util/List;

    .line 665
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->n:Ljava/util/List;

    .line 666
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->P:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 667
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ab:Ljava/util/Map;

    .line 668
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ac:Ljava/util/Map;

    .line 669
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->o:Ljava/util/List;

    .line 673
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensity()F

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 674
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensity()F

    move-result v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    .line 675
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->al:Landroid/graphics/Point;

    .line 678
    new-instance v0, Lcom/baidu/mapapi/map/UiSettings;

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/map/UiSettings;-><init>(Lcom/baidu/mapsdkplatform/comapi/map/c;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->g:Lcom/baidu/mapapi/map/UiSettings;

    .line 680
    new-instance v0, Lcom/baidu/mapapi/map/e;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/e;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->r:Lcom/baidu/mapapi/map/HexagonMap$a;

    .line 727
    new-instance v0, Lcom/baidu/mapapi/map/k;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/k;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->p:Lcom/baidu/mapapi/map/Overlay$a;

    .line 850
    new-instance v0, Lcom/baidu/mapapi/map/l;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/l;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->s:Lcom/baidu/mapapi/map/InfoWindow$a;

    .line 865
    new-instance v0, Lcom/baidu/mapapi/map/m;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/m;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 876
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/platform/comapi/map/al;)V

    .line 878
    new-instance v0, Lcom/baidu/mapapi/map/n;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/n;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 1479
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/platform/comapi/map/ak;)V

    .line 1482
    new-instance v0, Lcom/baidu/mapapi/map/p;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/p;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 1506
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapsdkplatform/comapi/map/l;)V

    .line 1509
    new-instance v0, Lcom/baidu/mapapi/map/q;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/q;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 1528
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapsdkplatform/comapi/map/ab;)V

    .line 1530
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->E()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ah:Z

    .line 1531
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->F()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ai:Z

    return-void
.end method

.method static synthetic d(Lcom/baidu/mapapi/map/BaiduMap;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->am:Z

    return p0
.end method

.method static synthetic e(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->l:Ljava/util/List;

    return-object p0
.end method

.method private declared-synchronized e()V
    .locals 2

    monitor-enter p0

    .line 1593
    :try_start_0
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1594
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1595
    monitor-exit p0

    return-void

    .line 1598
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/w;->a:Lcom/baidu/mapsdkplatform/comapi/map/w;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 1599
    monitor-exit p0

    return-void

    .line 1602
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/w;->b:Lcom/baidu/mapsdkplatform/comapi/map/w;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 1603
    monitor-exit p0

    return-void

    .line 1605
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_5

    .line 1606
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;-><init>(Z)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    .line 1607
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    const-string v1, "DefaultBmLayer"

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->setLayerTag(Ljava/lang/String;)Z

    .line 1609
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/w;->a:Lcom/baidu/mapsdkplatform/comapi/map/w;

    if-ne v0, v1, :cond_3

    .line 1610
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->addBmLayer(Lcom/baidu/platform/comapi/bmsdk/BmLayer;)Z

    goto :goto_0

    .line 1611
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/w;->b:Lcom/baidu/mapsdkplatform/comapi/map/w;

    if-ne v0, v1, :cond_4

    .line 1612
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/MapTextureView;->addBmLayer(Lcom/baidu/platform/comapi/bmsdk/BmLayer;)Z

    .line 1615
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/platform/comapi/bmsdk/BmLayer;)V

    .line 1616
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    new-instance v1, Lcom/baidu/mapapi/map/r;

    invoke-direct {v1, p0}, Lcom/baidu/mapapi/map/r;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a(Lcom/baidu/platform/comapi/bmsdk/d;)V

    .line 1708
    new-instance v0, Lcom/baidu/mapapi/map/s;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/s;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->q:Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI$onBaseUIListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1727
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 1592
    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->n:Ljava/util/List;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 4411
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapLanguage()Lcom/baidu/mapapi/map/MapLanguage;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/map/MapLanguage;->ENGLISH:Lcom/baidu/mapapi/map/MapLanguage;

    if-ne v0, v1, :cond_3

    .line 4412
    invoke-static {}, Lcom/baidu/platform/comapi/JNIInitializer;->getCachedContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4413
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4416
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 4417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/cfg/a/mode_1/englishmap.sty"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4418
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4419
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 4423
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setCustomStyleEnable(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 4425
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_4

    return-void

    .line 4428
    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->u()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4430
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->q(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic g(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->P:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic h(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->m:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/Building3DListener;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->O:Lcom/baidu/mapapi/map/Building3DListener;

    return-object p0
.end method

.method static synthetic j(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->u:Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;

    return-object p0
.end method

.method static synthetic k(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnSynchronizationListener;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->U:Lcom/baidu/mapapi/map/BaiduMap$OnSynchronizationListener;

    return-object p0
.end method

.method static synthetic l(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$onMapGestureListener;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->w:Lcom/baidu/mapapi/map/BaiduMap$onMapGestureListener;

    return-object p0
.end method

.method static synthetic m(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMapTouchListener;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->v:Lcom/baidu/mapapi/map/BaiduMap$OnMapTouchListener;

    return-object p0
.end method

.method static synthetic n(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMapClickListener;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->x:Lcom/baidu/mapapi/map/BaiduMap$OnMapClickListener;

    return-object p0
.end method

.method static synthetic o(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMapDoubleClickListener;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->A:Lcom/baidu/mapapi/map/BaiduMap$OnMapDoubleClickListener;

    return-object p0
.end method

.method static synthetic p(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMapLongClickListener;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->B:Lcom/baidu/mapapi/map/BaiduMap$OnMapLongClickListener;

    return-object p0
.end method

.method static synthetic q(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMapLoadedCallback;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->y:Lcom/baidu/mapapi/map/BaiduMap$OnMapLoadedCallback;

    return-object p0
.end method

.method static synthetic r(Lcom/baidu/mapapi/map/BaiduMap;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/baidu/mapapi/map/BaiduMap;->f()V

    return-void
.end method

.method static synthetic s(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderCallback;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->z:Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderCallback;

    return-object p0
.end method

.method static synthetic t(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/Marker;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ad:Lcom/baidu/mapapi/map/Marker;

    return-object p0
.end method

.method static synthetic u(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/Projection;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->f:Lcom/baidu/mapapi/map/Projection;

    return-object p0
.end method

.method static synthetic v(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMarkerDragListener;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->L:Lcom/baidu/mapapi/map/BaiduMap$OnMarkerDragListener;

    return-object p0
.end method

.method static synthetic w(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/BaiduMap$OnMyLocationClickListener;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->M:Lcom/baidu/mapapi/map/BaiduMap$OnMyLocationClickListener;

    return-object p0
.end method

.method static synthetic x(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/Map;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ab:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic y(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->C:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic z(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/baidu/mapapi/map/BaiduMap;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 1

    .line 2944
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    return-void

    .line 2947
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->y()V

    return-void
.end method

.method a(Lcom/baidu/mapapi/map/HeatMap;)V
    .locals 1

    .line 2926
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Y:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2928
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Lcom/baidu/mapapi/map/HeatMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Lcom/baidu/mapapi/map/HeatMap;

    if-ne p1, v0, :cond_0

    .line 2930
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Lcom/baidu/mapapi/map/HeatMap;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/HeatMap;->b()V

    .line 2931
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Lcom/baidu/mapapi/map/HeatMap;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/HeatMap;->c()V

    .line 2932
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Lcom/baidu/mapapi/map/HeatMap;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/baidu/mapapi/map/HeatMap;->a:Lcom/baidu/mapapi/map/BaiduMap;

    .line 2933
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->r()V

    .line 2935
    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Lcom/baidu/mapapi/map/HeatMap;

    .line 2936
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->s(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2939
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->Y:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Y:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2940
    throw p1
.end method

.method a(Lcom/baidu/mapapi/map/TileOverlay;)V
    .locals 2

    .line 4148
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->aa:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4150
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->V:Lcom/baidu/mapapi/map/TileOverlay;

    if-ne v1, p1, :cond_0

    .line 4153
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/TileOverlay;->b()V

    .line 4154
    iput-object v0, p1, Lcom/baidu/mapapi/map/TileOverlay;->a:Lcom/baidu/mapapi/map/BaiduMap;

    .line 4157
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz p1, :cond_0

    .line 4158
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4162
    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->V:Lcom/baidu/mapapi/map/TileOverlay;

    .line 4163
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->aa:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4164
    throw p1

    .line 4162
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->V:Lcom/baidu/mapapi/map/TileOverlay;

    .line 4163
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->aa:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public addHeatMap(Lcom/baidu/mapapi/map/HeatMap;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 2843
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2846
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Y:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2848
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Lcom/baidu/mapapi/map/HeatMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_1

    .line 2881
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->Y:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 2851
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Lcom/baidu/mapapi/map/HeatMap;

    if-eqz v0, :cond_2

    .line 2853
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Lcom/baidu/mapapi/map/HeatMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/HeatMap;->b()V

    .line 2854
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Lcom/baidu/mapapi/map/HeatMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/HeatMap;->c()V

    .line 2855
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Lcom/baidu/mapapi/map/HeatMap;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/baidu/mapapi/map/HeatMap;->a:Lcom/baidu/mapapi/map/BaiduMap;

    .line 2856
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->r()V

    .line 2859
    :cond_2
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Lcom/baidu/mapapi/map/HeatMap;

    .line 2860
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Lcom/baidu/mapapi/map/HeatMap;

    iput-object p0, v0, Lcom/baidu/mapapi/map/HeatMap;->a:Lcom/baidu/mapapi/map/BaiduMap;

    .line 2861
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/HeatMap;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 2864
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->s(Z)V

    .line 2866
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->i(Landroid/os/Bundle;)V

    .line 2867
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2868
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Lcom/baidu/mapapi/map/HeatMap;

    if-eqz v0, :cond_3

    const-string v0, "H"

    .line 2869
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Lcom/baidu/mapapi/map/HeatMap;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/HeatMap;->getMaxHigh()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "I"

    .line 2870
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Lcom/baidu/mapapi/map/HeatMap;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/HeatMap;->isInitAnimation()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "F"

    .line 2871
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Lcom/baidu/mapapi/map/HeatMap;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/HeatMap;->isFrameAnimation()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2873
    :cond_3
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/SDKLogFactory;->getLogUsrActStatistics()Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;

    move-result-object v0

    const-string v1, "B"

    const-string v2, "H"

    const-string v3, "0"

    .line 2874
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;->addLogWithLowLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2881
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->Y:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Y:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2882
    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public addHexagonMap(Lcom/baidu/mapapi/map/HexagonMap;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 2817
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2820
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Z:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2821
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->X:Lcom/baidu/mapapi/map/HexagonMap;

    if-eqz v0, :cond_1

    .line 2823
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->q()V

    .line 2826
    :cond_1
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->X:Lcom/baidu/mapapi/map/HexagonMap;

    .line 2827
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->X:Lcom/baidu/mapapi/map/HexagonMap;

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->r:Lcom/baidu/mapapi/map/HexagonMap$a;

    iput-object v1, v0, Lcom/baidu/mapapi/map/HexagonMap;->hexagonMapLayerListener:Lcom/baidu/mapapi/map/HexagonMap$a;

    .line 2828
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/HexagonMap;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 2830
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->t(Z)V

    .line 2832
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->k(Landroid/os/Bundle;)V

    .line 2833
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->Z:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public final addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 1808
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->am:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 1811
    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1812
    invoke-direct {p0}, Lcom/baidu/mapapi/map/BaiduMap;->e()V

    .line 1815
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/OverlayOptions;->a()Lcom/baidu/mapapi/map/Overlay;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 1817
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->p:Lcom/baidu/mapapi/map/Overlay$a;

    iput-object v0, p1, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    .line 1819
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 1821
    instance-of v0, p1, Lcom/baidu/mapapi/map/Arc;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/baidu/mapapi/map/Circle;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/baidu/mapapi/map/Polygon;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/baidu/mapapi/map/Polyline;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/baidu/mapapi/map/Text;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/baidu/mapapi/map/GroundOverlay;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/baidu/mapapi/map/MultiPoint;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/baidu/mapapi/map/Prism;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/baidu/mapapi/map/BM3DModel;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/baidu/mapapi/map/Track;

    if-eqz v0, :cond_7

    .line 1830
    :cond_2
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/Overlay;)Lcom/baidu/mapapi/map/Overlay;

    .line 1831
    instance-of v0, p1, Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_5

    .line 1832
    move-object v0, p1

    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    .line 1833
    iget-object v3, p0, Lcom/baidu/mapapi/map/BaiduMap;->s:Lcom/baidu/mapapi/map/InfoWindow$a;

    iput-object v3, v0, Lcom/baidu/mapapi/map/Marker;->D:Lcom/baidu/mapapi/map/InfoWindow$a;

    .line 1835
    iget-object v3, p0, Lcom/baidu/mapapi/map/BaiduMap;->t:Lcom/baidu/mapapi/map/InfoWindowAdapter;

    if-eqz v3, :cond_3

    .line 1836
    iget-object v3, p0, Lcom/baidu/mapapi/map/BaiduMap;->t:Lcom/baidu/mapapi/map/InfoWindowAdapter;

    iput-object v3, v0, Lcom/baidu/mapapi/map/Marker;->J:Lcom/baidu/mapapi/map/InfoWindowAdapter;

    .line 1839
    :cond_3
    iget-object v3, v0, Lcom/baidu/mapapi/map/Marker;->v:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/baidu/mapapi/map/Marker;->v:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 1840
    iget-object v3, p0, Lcom/baidu/mapapi/map/BaiduMap;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1841
    iget-object v3, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v3, :cond_4

    .line 1842
    iget-object v3, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v3, v2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->d(Z)V

    .line 1845
    :cond_4
    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->n:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1846
    iget-object v2, v0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    if-eqz v2, :cond_5

    .line 1847
    iget-object v0, v0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;Z)V

    .line 1851
    :cond_5
    instance-of v0, p1, Lcom/baidu/mapapi/map/Building;

    if-eqz v0, :cond_6

    .line 1852
    move-object v0, p1

    check-cast v0, Lcom/baidu/mapapi/map/Building;

    .line 1853
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->P:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object p1

    .line 1859
    :cond_7
    instance-of v0, p1, Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_9

    .line 1860
    move-object v0, p1

    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    .line 1861
    iget-object v3, p0, Lcom/baidu/mapapi/map/BaiduMap;->s:Lcom/baidu/mapapi/map/InfoWindow$a;

    iput-object v3, v0, Lcom/baidu/mapapi/map/Marker;->D:Lcom/baidu/mapapi/map/InfoWindow$a;

    .line 1862
    iget-object v3, v0, Lcom/baidu/mapapi/map/Marker;->v:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/baidu/mapapi/map/Marker;->v:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_8

    .line 1863
    iget-object v3, p0, Lcom/baidu/mapapi/map/BaiduMap;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1864
    iget-object v3, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v3, :cond_8

    .line 1865
    iget-object v3, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v3, v2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->d(Z)V

    .line 1868
    :cond_8
    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->n:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1869
    iget-object v2, v0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    if-eqz v2, :cond_a

    .line 1870
    iget-object v0, v0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;Z)V

    goto :goto_0

    .line 1873
    :cond_9
    instance-of v0, p1, Lcom/baidu/mapapi/map/Building;

    if-eqz v0, :cond_a

    .line 1874
    move-object v0, p1

    check-cast v0, Lcom/baidu/mapapi/map/Building;

    .line 1875
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->P:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1877
    :cond_a
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1878
    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1879
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->am:Z

    if-nez v1, :cond_b

    .line 1880
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->d(Landroid/os/Bundle;)V

    .line 1882
    :cond_b
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_c
    return-object v0

    :cond_d
    :goto_1
    return-object v0
.end method

.method public final addOverlays(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/OverlayOptions;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/Overlay;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    .line 1912
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->am:Z

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 1916
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1917
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1919
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1920
    div-int/lit16 v4, v3, 0x190

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    add-int/lit8 v8, v4, 0x1

    if-ge v6, v8, :cond_f

    const/4 v8, 0x0

    :goto_1
    const/16 v9, 0x190

    if-ge v8, v9, :cond_c

    mul-int/lit16 v9, v6, 0x190

    add-int/2addr v9, v8

    if-ge v9, v3, :cond_c

    .line 1932
    iget-boolean v10, p0, Lcom/baidu/mapapi/map/BaiduMap;->am:Z

    if-eqz v10, :cond_1

    return-object v0

    .line 1936
    :cond_1
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/mapapi/map/OverlayOptions;

    if-nez v9, :cond_2

    goto/16 :goto_3

    .line 1941
    :cond_2
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1942
    invoke-virtual {v9}, Lcom/baidu/mapapi/map/OverlayOptions;->a()Lcom/baidu/mapapi/map/Overlay;

    move-result-object v9

    .line 1943
    iget-object v11, p0, Lcom/baidu/mapapi/map/BaiduMap;->p:Lcom/baidu/mapapi/map/Overlay$a;

    iput-object v11, v9, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    .line 1945
    instance-of v11, v9, Lcom/baidu/mapapi/map/Marker;

    if-eqz v11, :cond_5

    .line 1946
    move-object v11, v9

    check-cast v11, Lcom/baidu/mapapi/map/Marker;

    .line 1947
    iget-object v12, p0, Lcom/baidu/mapapi/map/BaiduMap;->s:Lcom/baidu/mapapi/map/InfoWindow$a;

    iput-object v12, v11, Lcom/baidu/mapapi/map/Marker;->D:Lcom/baidu/mapapi/map/InfoWindow$a;

    .line 1948
    iget-object v12, p0, Lcom/baidu/mapapi/map/BaiduMap;->t:Lcom/baidu/mapapi/map/InfoWindowAdapter;

    if-eqz v12, :cond_3

    .line 1949
    iget-object v12, p0, Lcom/baidu/mapapi/map/BaiduMap;->t:Lcom/baidu/mapapi/map/InfoWindowAdapter;

    iput-object v12, v11, Lcom/baidu/mapapi/map/Marker;->J:Lcom/baidu/mapapi/map/InfoWindowAdapter;

    .line 1951
    :cond_3
    iget-object v12, v11, Lcom/baidu/mapapi/map/Marker;->v:Ljava/util/ArrayList;

    if-eqz v12, :cond_4

    iget-object v12, v11, Lcom/baidu/mapapi/map/Marker;->v:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eqz v12, :cond_4

    .line 1952
    iget-object v12, p0, Lcom/baidu/mapapi/map/BaiduMap;->m:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1953
    iget-object v12, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v12, :cond_4

    .line 1954
    iget-object v12, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v12, v7}, Lcom/baidu/mapsdkplatform/comapi/map/c;->d(Z)V

    .line 1958
    :cond_4
    iget-object v12, p0, Lcom/baidu/mapapi/map/BaiduMap;->n:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1961
    :cond_5
    instance-of v11, v9, Lcom/baidu/mapapi/map/Building;

    if-eqz v11, :cond_6

    .line 1962
    move-object v11, v9

    check-cast v11, Lcom/baidu/mapapi/map/Building;

    .line 1963
    iget-object v12, p0, Lcom/baidu/mapapi/map/BaiduMap;->P:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1966
    :cond_6
    iget-object v11, p0, Lcom/baidu/mapapi/map/BaiduMap;->l:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1967
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1969
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1971
    instance-of v11, v9, Lcom/baidu/mapapi/map/Arc;

    if-nez v11, :cond_9

    instance-of v11, v9, Lcom/baidu/mapapi/map/Circle;

    if-nez v11, :cond_9

    instance-of v11, v9, Lcom/baidu/mapapi/map/Polygon;

    if-nez v11, :cond_9

    instance-of v11, v9, Lcom/baidu/mapapi/map/Polyline;

    if-nez v11, :cond_9

    instance-of v11, v9, Lcom/baidu/mapapi/map/Text;

    if-eqz v11, :cond_7

    goto :goto_2

    .line 1976
    :cond_7
    invoke-virtual {v9, v10}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1977
    iget-object v9, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v9, :cond_8

    .line 1978
    iget-object v9, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v9, v10}, Lcom/baidu/mapsdkplatform/comapi/map/c;->h(Landroid/os/Bundle;)V

    .line 1979
    iget-object v9, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v9, v10}, Lcom/baidu/mapsdkplatform/comapi/map/c;->e(Landroid/os/Bundle;)V

    .line 1981
    :cond_8
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1974
    :cond_9
    :goto_2
    invoke-direct {p0, v9}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/Overlay;)Lcom/baidu/mapapi/map/Overlay;

    goto :goto_3

    .line 1984
    :cond_a
    invoke-virtual {v9, v10}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1985
    iget-object v9, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v9, :cond_b

    .line 1986
    iget-object v9, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v9, v10}, Lcom/baidu/mapsdkplatform/comapi/map/c;->h(Landroid/os/Bundle;)V

    .line 1987
    iget-object v9, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v9, v10}, Lcom/baidu/mapsdkplatform/comapi/map/c;->e(Landroid/os/Bundle;)V

    .line 1989
    :cond_b
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1994
    :cond_c
    iget-object v7, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v7, :cond_e

    if-eqz v2, :cond_e

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    .line 1995
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    .line 1996
    new-array v8, v7, [Landroid/os/Bundle;

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v7, :cond_d

    .line 1998
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2000
    :cond_d
    iget-object v7, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v7, v8}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a([Landroid/os/Bundle;)V

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_f
    return-object v1

    :cond_10
    :goto_5
    return-object v0
.end method

.method public addTileLayer(Lcom/baidu/mapapi/map/TileOverlayOptions;)Lcom/baidu/mapapi/map/TileOverlay;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 4067
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->V:Lcom/baidu/mapapi/map/TileOverlay;

    if-eqz v1, :cond_1

    .line 4068
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->V:Lcom/baidu/mapapi/map/TileOverlay;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/TileOverlay;->b()V

    .line 4070
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->V:Lcom/baidu/mapapi/map/TileOverlay;

    iput-object v0, v1, Lcom/baidu/mapapi/map/TileOverlay;->a:Lcom/baidu/mapapi/map/BaiduMap;

    .line 4073
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_2

    const-string v2, "T"

    .line 4075
    iget v3, p1, Lcom/baidu/mapapi/map/TileOverlayOptions;->datasource:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v2, "T"

    const-string v3, "null"

    .line 4078
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4081
    :goto_0
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/SDKLogFactory;->getLogUsrActStatistics()Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;

    move-result-object v2

    const-string v3, "B"

    const-string v4, "T"

    const-string v5, "0"

    .line 4082
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;->addLogWithLowLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4087
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/TileOverlayOptions;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4088
    invoke-virtual {p1, p0}, Lcom/baidu/mapapi/map/TileOverlayOptions;->a(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapapi/map/TileOverlay;

    move-result-object p1

    .line 4089
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->V:Lcom/baidu/mapapi/map/TileOverlay;

    return-object p1

    :cond_3
    return-object v0
.end method

.method public final addTraceOverlay(Lcom/baidu/mapapi/map/track/TraceOptions;Lcom/baidu/mapapi/map/track/TraceAnimationListener;)Lcom/baidu/mapapi/map/track/TraceOverlay;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1566
    :cond_0
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/SDKLogFactory;->getLogUsrActStatistics()Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;

    move-result-object v1

    const-string v2, "B"

    const-string v3, "TO"

    const-string v4, "0"

    .line 1567
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;->addLogWithLowLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1572
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->aq:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->aq:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1573
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/map/w;->a:Lcom/baidu/mapsdkplatform/comapi/map/w;

    if-ne v1, v2, :cond_2

    .line 1574
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-direct {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;-><init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->aq:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    goto :goto_0

    .line 1575
    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/map/w;->b:Lcom/baidu/mapsdkplatform/comapi/map/w;

    if-ne v1, v2, :cond_4

    .line 1576
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-direct {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;-><init>(Lcom/baidu/platform/comapi/map/MapTextureView;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->aq:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    .line 1580
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->aq:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a()V

    .line 1583
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->aq:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    invoke-virtual {v0, p2}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a(Lcom/baidu/mapapi/map/track/TraceAnimationListener;)V

    .line 1585
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->aq:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    invoke-virtual {p2, p1}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->a(Lcom/baidu/mapapi/map/track/TraceOptions;)Lcom/baidu/mapapi/map/track/TraceOverlay;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method

.method public final animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V
    .locals 1

    const/16 v0, 0x12c

    .line 2253
    invoke-virtual {p0, p1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;I)V

    return-void
.end method

.method public final animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;I)V
    .locals 1

    if-eqz p1, :cond_3

    if-gez p2, :cond_0

    goto :goto_1

    .line 2216
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/MapStatusUpdate;)Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object p1

    .line 2217
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_1

    return-void

    .line 2221
    :cond_1
    sget v0, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    or-int/lit16 v0, v0, 0x100

    sput v0, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    .line 2222
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ak:Z

    if-nez v0, :cond_2

    .line 2223
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {p2, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapsdkplatform/comapi/map/x;)V

    goto :goto_0

    .line 2225
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapsdkplatform/comapi/map/x;I)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method b()Z
    .locals 1

    .line 4137
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4140
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->f()Z

    move-result v0

    return v0
.end method

.method c()V
    .locals 1

    const/4 v0, 0x1

    .line 4318
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->am:Z

    .line 4320
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->aq:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    if-eqz v0, :cond_0

    .line 4321
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->aq:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/a/c;->c()V

    const/4 v0, 0x0

    .line 4322
    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->aq:Lcom/baidu/mapsdkplatform/comapi/map/a/c;

    .line 4325
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->hideInfoWindow()V

    return-void
.end method

.method public changeLocationLayerOrder(Z)V
    .locals 1

    .line 4116
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    return-void

    .line 4119
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->g(Z)V

    return-void
.end method

.method public cleanCache(I)V
    .locals 1

    .line 4311
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    return-void

    .line 4314
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(I)V

    return-void
.end method

.method public final clear()V
    .locals 2

    .line 2115
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->am:Z

    if-eqz v0, :cond_0

    return-void

    .line 2118
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2119
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2120
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2121
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->P:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 2123
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_1

    .line 2124
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->d(Z)V

    .line 2125
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->n()V

    .line 2128
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_2

    .line 2129
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->b()Z

    .line 2130
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->k:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    .line 2133
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->hideInfoWindow()V

    return-void
.end method

.method public closeParticleEffectByType(Lcom/baidu/mapapi/map/ParticleEffectType;)V
    .locals 1

    .line 4488
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_0

    .line 4489
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapapi/map/ParticleEffectType;)V

    :cond_0
    return-void
.end method

.method public customParticleEffectByType(Lcom/baidu/mapapi/map/ParticleEffectType;Lcom/baidu/mapapi/map/ParticleOptions;)Z
    .locals 8

    .line 4519
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 4521
    sget-object v0, Lcom/baidu/mapapi/map/ParticleEffectType;->Fireworks:Lcom/baidu/mapapi/map/ParticleEffectType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/baidu/mapapi/map/ParticleEffectType;->Flower:Lcom/baidu/mapapi/map/ParticleEffectType;

    if-ne p1, v0, :cond_1

    .line 4522
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/ParticleEffectType;)V

    .line 4524
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_4

    .line 4526
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/ParticleOptions;->getParticleImgs()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4527
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/ParticleOptions;->getParticleImgs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "total"

    .line 4528
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 4530
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/ParticleOptions;->getParticleImgs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 4531
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/ParticleOptions;->getParticleImgs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v4}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "texture_%d"

    const/4 v6, 0x1

    .line 4532
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 4533
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4537
    :cond_3
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/ParticleOptions;->getParticlePos()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4538
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/ParticleOptions;->getParticlePos()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p2

    invoke-static {p2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p2

    const-string v1, "location_x"

    .line 4539
    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "location_y"

    .line 4540
    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 4543
    :cond_4
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {p2, p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapapi/map/ParticleEffectType;Landroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_5
    return v1
.end method

.method public getAllInfoWindows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/InfoWindow;",
            ">;"
        }
    .end annotation

    .line 3420
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->o:Ljava/util/List;

    return-object v0
.end method

.method public final getCompassPosition()Landroid/graphics/Point;
    .locals 1

    .line 3024
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_0

    .line 3025
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->h()Ljava/lang/String;

    move-result-object v0

    .line 3026
    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/BaiduMap;->a(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusedBaseIndoorMapInfo()Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;
    .locals 1

    .line 3941
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3944
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->s()Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getFontSizeLevel()I
    .locals 1

    .line 4381
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_0

    .line 4382
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->J()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getGLMapView()Lcom/baidu/platform/comapi/map/MapSurfaceView;
    .locals 1

    .line 2405
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    return-object v0
.end method

.method public getHeatMapDrawFrameCallBack()Lcom/baidu/mapapi/map/BaiduMap$OnHeatMapDrawFrameCallBack;
    .locals 1

    .line 3678
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->T:Lcom/baidu/mapapi/map/BaiduMap$OnHeatMapDrawFrameCallBack;

    return-object v0
.end method

.method public getIsSDKLayerBelowBmLayer()Z
    .locals 1

    .line 4216
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->an:Z

    return v0
.end method

.method public final getLocationConfigeration()Lcom/baidu/mapapi/map/MyLocationConfiguration;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2673
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->getLocationConfiguration()Lcom/baidu/mapapi/map/MyLocationConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public final getLocationConfiguration()Lcom/baidu/mapapi/map/MyLocationConfiguration;
    .locals 1

    .line 2665
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->af:Lcom/baidu/mapapi/map/MyLocationConfiguration;

    return-object v0
.end method

.method public final getLocationData()Lcom/baidu/mapapi/map/MyLocationData;
    .locals 1

    .line 2553
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ae:Lcom/baidu/mapapi/map/MyLocationData;

    return-object v0
.end method

.method public final getMapApprovalNumber()Ljava/lang/String;
    .locals 1

    .line 4334
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 4337
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->R()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMapCopyrightInfo()Ljava/lang/String;
    .locals 1

    .line 4346
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 4350
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->T()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMapLanguage()Lcom/baidu/mapapi/map/MapLanguage;
    .locals 2

    .line 4440
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_0

    .line 4441
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->U()I

    move-result v0

    .line 4442
    invoke-static {}, Lcom/baidu/mapapi/map/MapLanguage;->values()[Lcom/baidu/mapapi/map/MapLanguage;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0

    .line 4445
    :cond_0
    sget-object v0, Lcom/baidu/mapapi/map/MapLanguage;->CHINESE:Lcom/baidu/mapapi/map/MapLanguage;

    return-object v0
.end method

.method public final getMapMappingQualificationInfo()Ljava/lang/String;
    .locals 1

    .line 4359
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 4363
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->S()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMapStatus()Lcom/baidu/mapapi/map/MapStatus;
    .locals 1

    .line 2164
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2167
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->G()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v0

    .line 2168
    invoke-static {v0}, Lcom/baidu/mapapi/map/MapStatus;->a(Lcom/baidu/mapsdkplatform/comapi/map/x;)Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    return-object v0
.end method

.method public final getMapStatusLimit()Lcom/baidu/mapapi/model/LatLngBounds;
    .locals 1

    .line 2176
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2179
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->H()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v0

    return-object v0
.end method

.method public getMapTextureView()Lcom/baidu/platform/comapi/map/MapTextureView;
    .locals 1

    .line 2414
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    return-object v0
.end method

.method public final getMapType()I
    .locals 2

    .line 2379
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2382
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->l()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    return v0

    .line 2385
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    :cond_2
    return v1
.end method

.method public getMarkersInBounds(Lcom/baidu/mapapi/model/LatLngBounds;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/mapapi/model/LatLngBounds;",
            ")",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/Marker;",
            ">;"
        }
    .end annotation

    .line 2092
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2097
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2098
    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 2102
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/map/Marker;

    .line 2103
    invoke-virtual {v2}, Lcom/baidu/mapapi/map/Marker;->getPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/baidu/mapapi/model/LatLngBounds;->contains(Lcom/baidu/mapapi/model/LatLng;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2104
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final getMaxZoomLevel()F
    .locals 1

    .line 2423
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2426
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->b()F

    move-result v0

    return v0
.end method

.method public final getMinZoomLevel()F
    .locals 1

    .line 2464
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2467
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/c;->b:F

    return v0
.end method

.method public getOverlayLatLngBounds(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/model/LatLngBounds;
    .locals 1

    if-eqz p1, :cond_1

    .line 1895
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1899
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/OverlayOptions;->a()Lcom/baidu/mapapi/map/Overlay;

    move-result-object p1

    .line 1900
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1901
    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1902
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->c(Landroid/os/Bundle;)Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPoiTagEnable(Lcom/baidu/mapapi/map/PoiTagType;)Z
    .locals 1

    .line 4476
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_0

    .line 4477
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapapi/map/PoiTagType;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getProjection()Lcom/baidu/mapapi/map/Projection;
    .locals 1

    .line 2476
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->f:Lcom/baidu/mapapi/map/Projection;

    return-object v0
.end method

.method public getProjectionMatrix()[F
    .locals 1

    .line 4173
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4177
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->P()[F

    move-result-object v0

    return-object v0
.end method

.method public final getUiSettings()Lcom/baidu/mapapi/map/UiSettings;
    .locals 1

    .line 2485
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->g:Lcom/baidu/mapapi/map/UiSettings;

    return-object v0
.end method

.method public getViewMatrix()[F
    .locals 1

    .line 4186
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4190
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->Q()[F

    move-result-object v0

    return-object v0
.end method

.method public getZoomToBound(IIIIII)F
    .locals 7

    .line 2241
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2244
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(IIIIII)F

    move-result p1

    return p1
.end method

.method public getmGLMapView()Lcom/baidu/platform/comapi/map/MapSurfaceView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2396
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    return-object v0
.end method

.method public hideInfoWindow()V
    .locals 5

    .line 3427
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ab:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 3428
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3429
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/InfoWindow;

    if-eqz v1, :cond_0

    .line 3431
    iget-object v1, v1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3433
    sget-object v2, Lcom/baidu/mapapi/map/j;->b:[I

    iget-object v3, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    invoke-virtual {v3}, Lcom/baidu/mapsdkplatform/comapi/map/w;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 3441
    :pswitch_0
    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    if-eqz v2, :cond_0

    .line 3442
    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/map/MapView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 3435
    :pswitch_1
    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    if-eqz v2, :cond_0

    .line 3436
    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/map/TextureMapView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 3453
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/Overlay;

    .line 3454
    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->ab:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 3455
    iget-object v3, v1, Lcom/baidu/mapapi/map/Overlay;->K:Ljava/lang/String;

    .line 3456
    instance-of v4, v1, Lcom/baidu/mapapi/map/Marker;

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3457
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/Overlay;->remove()V

    goto :goto_1

    .line 3460
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ab:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3461
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ac:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3462
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hideInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;)V
    .locals 3

    .line 3472
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ac:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 3473
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3476
    :cond_0
    iget-object v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3478
    sget-object v1, Lcom/baidu/mapapi/map/j;->b:[I

    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    invoke-virtual {v2}, Lcom/baidu/mapsdkplatform/comapi/map/w;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3485
    :pswitch_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    if-eqz v1, :cond_1

    .line 3486
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/MapView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 3480
    :pswitch_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    if-eqz v1, :cond_1

    .line 3481
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/TextureMapView;->removeView(Landroid/view/View;)V

    .line 3493
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ac:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_2

    .line 3495
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    .line 3496
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->ab:Ljava/util/Map;

    iget-object v0, v0, Lcom/baidu/mapapi/map/Marker;->K:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3498
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ac:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3499
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hideSDKLayer()V
    .locals 1

    .line 4097
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    return-void

    .line 4100
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->c()V

    return-void
.end method

.method public final isBaiduHeatMapEnabled()Z
    .locals 1

    .line 3055
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3058
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->i()Z

    move-result v0

    return v0
.end method

.method public isBaseIndoorMapMode()Z
    .locals 1

    .line 4027
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4030
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->t()Z

    move-result v0

    return v0
.end method

.method public final isBuildingsEnabled()Z
    .locals 1

    .line 2505
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2508
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->m()Z

    move-result v0

    return v0
.end method

.method public final isMyLocationEnabled()Z
    .locals 1

    .line 2528
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2531
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->x()Z

    move-result v0

    return v0
.end method

.method public final isShowMapPoi()Z
    .locals 1

    .line 3146
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ah:Z

    return v0
.end method

.method public final isSupportBaiduHeatMap()Z
    .locals 1

    .line 3067
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3070
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->j()Z

    move-result v0

    return v0
.end method

.method public final isTrafficEnabled()Z
    .locals 1

    .line 3123
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3126
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->g()Z

    move-result v0

    return v0
.end method

.method public final removeMarkerClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;)V
    .locals 1

    .line 4039
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->C:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4040
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->C:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final removeMarkerWithBaseUIClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMarkerWithBaseUIClickListener;)V
    .locals 1

    .line 4052
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->D:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4053
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->D:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOverLays(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/Overlay;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_c

    .line 2013
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->am:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 2017
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2018
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 2019
    div-int/lit16 v2, v1, 0x190

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v2, 0x1

    if-ge v4, v5, :cond_b

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x190

    if-ge v5, v6, :cond_8

    mul-int/lit16 v6, v4, 0x190

    add-int/2addr v6, v5

    if-ge v6, v1, :cond_8

    .line 2033
    iget-boolean v7, p0, Lcom/baidu/mapapi/map/BaiduMap;->am:Z

    if-eqz v7, :cond_1

    return-void

    .line 2037
    :cond_1
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/mapapi/map/Overlay;

    if-nez v6, :cond_2

    goto :goto_3

    .line 2042
    :cond_2
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2043
    invoke-direct {p0, v6}, Lcom/baidu/mapapi/map/BaiduMap;->b(Lcom/baidu/mapapi/map/Overlay;)V

    goto :goto_2

    .line 2045
    :cond_3
    invoke-virtual {v6}, Lcom/baidu/mapapi/map/Overlay;->a()Landroid/os/Bundle;

    move-result-object v7

    .line 2046
    iget-object v8, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v8, :cond_4

    .line 2047
    iget-object v8, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v8, v7}, Lcom/baidu/mapsdkplatform/comapi/map/c;->h(Landroid/os/Bundle;)V

    .line 2049
    :cond_4
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2053
    :goto_2
    iget-object v7, p0, Lcom/baidu/mapapi/map/BaiduMap;->n:Ljava/util/List;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/baidu/mapapi/map/BaiduMap;->n:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2054
    iget-object v7, p0, Lcom/baidu/mapapi/map/BaiduMap;->n:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2057
    :cond_5
    iget-object v7, p0, Lcom/baidu/mapapi/map/BaiduMap;->P:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/baidu/mapapi/map/BaiduMap;->P:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2058
    iget-object v7, p0, Lcom/baidu/mapapi/map/BaiduMap;->P:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2061
    :cond_6
    iget-object v7, p0, Lcom/baidu/mapapi/map/BaiduMap;->m:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2062
    check-cast v6, Lcom/baidu/mapapi/map/Marker;

    .line 2063
    iget-object v7, v6, Lcom/baidu/mapapi/map/Marker;->v:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    .line 2064
    iget-object v7, p0, Lcom/baidu/mapapi/map/BaiduMap;->m:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2065
    iget-object v6, p0, Lcom/baidu/mapapi/map/BaiduMap;->m:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_7

    .line 2066
    iget-object v6, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v6, :cond_7

    .line 2067
    iget-object v6, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v6, v3}, Lcom/baidu/mapsdkplatform/comapi/map/c;->d(Z)V

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2074
    :cond_8
    iget-object v5, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v5, :cond_a

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 2075
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 2076
    new-array v6, v5, [Landroid/os/Bundle;

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v5, :cond_9

    .line 2078
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2080
    :cond_9
    iget-object v5, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v5, v6}, Lcom/baidu/mapsdkplatform/comapi/map/c;->b([Landroid/os/Bundle;)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 2084
    :cond_b
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void

    :cond_c
    :goto_5
    return-void
.end method

.method public final setBaiduHeatMapEnabled(Z)V
    .locals 5

    .line 2956
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_0

    .line 2957
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/SDKLogFactory;->getLogUsrActStatistics()Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;

    move-result-object v0

    const-string v1, "B"

    const-string v2, "H"

    const-string v3, "0"

    const/4 v4, 0x0

    .line 2958
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;->addLogWithLowLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2961
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->l(Z)V

    :cond_0
    return-void
.end method

.method public final setBuildingsEnabled(Z)V
    .locals 1

    .line 2494
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_0

    .line 2495
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->n(Z)V

    :cond_0
    return-void
.end method

.method public setCompassEnable(Z)V
    .locals 1

    .line 4126
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    return-void

    .line 4129
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->i(Z)V

    return-void
.end method

.method public setCompassIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p1, :cond_0

    .line 3011
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: compass\'s icon can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3013
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_1

    return-void

    .line 3016
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setCompassPosition(Landroid/graphics/Point;)V
    .locals 3

    .line 2996
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    return-void

    .line 2999
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 3000
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3001
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->al:Landroid/graphics/Point;

    :cond_1
    return-void
.end method

.method public setCustomTrafficColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    .line 3100
    iget-object v1, v0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v1, "^#[0-9a-fA-F]{8}$"

    .line 3104
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v3, p1

    .line 3105
    invoke-virtual {v3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v4, p2

    invoke-virtual {v4, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v5, p3

    invoke-virtual {v5, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object/from16 v6, p4

    invoke-virtual {v6, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3106
    iget-object v1, v0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    int-to-long v7, v2

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    int-to-long v9, v2

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    int-to-long v11, v2

    invoke-static/range {p4 .. p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    int-to-long v13, v2

    const/4 v2, 0x1

    move-object v3, v1

    move-wide v4, v7

    move-wide v6, v9

    move-wide v8, v11

    move-wide v10, v13

    move v12, v2

    invoke-virtual/range {v3 .. v12}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(JJJJZ)V

    goto :goto_0

    .line 3108
    :cond_1
    sget-object v1, Lcom/baidu/mapapi/map/BaiduMap;->e:Ljava/lang/String;

    const-string v3, "the string of the input customTrafficColor is error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 3111
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3112
    iget-object v2, v0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    int-to-long v3, v1

    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    int-to-long v5, v1

    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    int-to-long v7, v1

    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    int-to-long v9, v1

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(JJJJZ)V

    :cond_3
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public setDEMEnable(Z)V
    .locals 1

    .line 4454
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_0

    .line 4455
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->c(Z)V

    :cond_0
    return-void
.end method

.method public final setFontSizeLevel(I)V
    .locals 1

    .line 4371
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_0

    .line 4372
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->d(I)V

    :cond_0
    return-void
.end method

.method public setHeatMapFrameAnimationIndex(I)V
    .locals 1

    .line 2913
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    return-void

    .line 2916
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->c(I)V

    return-void
.end method

.method public final setIndoorEnable(Z)V
    .locals 5

    .line 2972
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2973
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/SDKLogFactory;->getLogUsrActStatistics()Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;

    move-result-object v0

    const-string v2, "B"

    const-string v3, "C"

    const-string v4, "3"

    .line 2974
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;->addLogWithLowLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2979
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->aj:Z

    .line 2980
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->p(Z)V

    .line 2982
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->R:Lcom/baidu/mapapi/map/BaiduMap$OnBaseIndoorMapListener;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 2984
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->R:Lcom/baidu/mapapi/map/BaiduMap$OnBaseIndoorMapListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Lcom/baidu/mapapi/map/BaiduMap$OnBaseIndoorMapListener;->onBaseIndoorMapMode(ZLcom/baidu/mapapi/map/MapBaseIndoorMapInfo;)V

    :cond_1
    return-void
.end method

.method public final setInfoWindowAdapter(Lcom/baidu/mapapi/map/InfoWindowAdapter;)V
    .locals 0

    .line 3616
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->t:Lcom/baidu/mapapi/map/InfoWindowAdapter;

    return-void
.end method

.method public setLayerClickable(Lcom/baidu/mapapi/map/MapLayer;Z)V
    .locals 1

    .line 4295
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    return-void

    .line 4298
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapapi/map/MapLayer;Z)V

    return-void
.end method

.method public setMapBackgroundColor(I)V
    .locals 1

    .line 2306
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    return-void

    .line 2309
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->b(I)V

    return-void
.end method

.method public setMapBackgroundImage(Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .locals 2

    .line 2276
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2280
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "reset"

    const/4 v1, 0x1

    .line 2281
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2282
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->b(Landroid/os/Bundle;)V

    goto :goto_0

    .line 2286
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2287
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    const v1, 0x9c4000

    if-le v0, v1, :cond_2

    return-void

    .line 2293
    :cond_2
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "reset"

    const/4 v1, 0x0

    .line 2294
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2295
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->b(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public final setMapLanguage(Lcom/baidu/mapapi/map/MapLanguage;)V
    .locals 1

    .line 4396
    sget-object v0, Lcom/baidu/mapapi/map/MapLanguage;->ENGLISH:Lcom/baidu/mapapi/map/MapLanguage;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/baidu/mapapi/PermissionUtils;->getInstance()Lcom/baidu/mapapi/PermissionUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/PermissionUtils;->isEnglishMapAuthorized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "baidumapsdk"

    const-string v0, " No advanced permission to set English map"

    .line 4397
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4401
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_1

    .line 4402
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapLanguage;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->e(I)V

    .line 4404
    :cond_1
    invoke-direct {p0}, Lcom/baidu/mapapi/map/BaiduMap;->f()V

    return-void
.end method

.method public final setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2146
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/MapStatusUpdate;)Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object p1

    .line 2147
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_1

    return-void

    .line 2151
    :cond_1
    sget v0, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    or-int/lit16 v0, v0, 0x100

    sput v0, Lcom/baidu/mapapi/map/BaiduMap;->mapStatusReason:I

    .line 2152
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapsdkplatform/comapi/map/x;)V

    .line 2153
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->u:Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;

    if-eqz p1, :cond_2

    .line 2154
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->u:Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;->onMapStatusChange(Lcom/baidu/mapapi/map/MapStatus;)V

    :cond_2
    return-void
.end method

.method public final setMapStatusLimits(Lcom/baidu/mapapi/model/LatLngBounds;)V
    .locals 1

    .line 2196
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    return-void

    .line 2200
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapapi/model/LatLngBounds;)V

    .line 2201
    invoke-static {p1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLngBounds(Lcom/baidu/mapapi/model/LatLngBounds;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object p1

    .line 2202
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    return-void
.end method

.method public final setMapType(I)V
    .locals 5

    .line 2321
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    return-void

    .line 2325
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "T"

    .line 2326
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2327
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/SDKLogFactory;->getLogUsrActStatistics()Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;

    move-result-object v1

    const-string v2, "B"

    const-string v3, "M"

    const-string v4, "4"

    .line 2328
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;->addLogWithLowLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2335
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2336
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->F(Z)V

    .line 2338
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->F()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2339
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->G(Z)V

    .line 2341
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->k(Z)V

    .line 2342
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->p(Z)V

    goto :goto_0

    .line 2355
    :pswitch_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->b(Z)V

    .line 2356
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    iget-boolean v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->ah:Z

    invoke-virtual {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->F(Z)V

    .line 2357
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    iget-boolean v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->ai:Z

    invoke-virtual {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->G(Z)V

    .line 2358
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->k(Z)V

    goto :goto_0

    .line 2346
    :pswitch_2
    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v2, v1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->b(Z)V

    .line 2347
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    iget-boolean v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->ah:Z

    invoke-virtual {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->F(Z)V

    .line 2348
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    iget-boolean v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->ai:Z

    invoke-virtual {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->G(Z)V

    .line 2349
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->k(Z)V

    .line 2350
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->aj:Z

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->p(Z)V

    .line 2365
    :goto_0
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2366
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BasicMap setMapType type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2367
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setMaxAndMinZoomLevel(FF)V
    .locals 1

    const/high16 v0, 0x41b00000    # 22.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x40800000    # 4.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    cmpg-float v0, p1, p2

    if-gez v0, :cond_2

    return-void

    .line 2453
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_3

    .line 2454
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(FF)V

    :cond_3
    return-void
.end method

.method public final setMyLocationConfigeration(Lcom/baidu/mapapi/map/MyLocationConfiguration;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2656
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationConfiguration(Lcom/baidu/mapapi/map/MyLocationConfiguration;)V

    return-void
.end method

.method public final setMyLocationConfiguration(Lcom/baidu/mapapi/map/MyLocationConfiguration;)V
    .locals 2

    .line 2640
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->af:Lcom/baidu/mapapi/map/MyLocationConfiguration;

    .line 2642
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ae:Lcom/baidu/mapapi/map/MyLocationData;

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->af:Lcom/baidu/mapapi/map/MyLocationConfiguration;

    invoke-direct {p0, v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/MyLocationData;Lcom/baidu/mapapi/map/MyLocationConfiguration;)V

    .line 2644
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->af:Lcom/baidu/mapapi/map/MyLocationConfiguration;

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/MyLocationConfiguration;)V

    if-eqz p1, :cond_0

    .line 2646
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->isMyLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ag:Lcom/baidu/mapapi/map/BaiduMap$OnLocationModeChangeListener;

    if-eqz v0, :cond_0

    .line 2647
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ag:Lcom/baidu/mapapi/map/BaiduMap$OnLocationModeChangeListener;

    iget-object p1, p1, Lcom/baidu/mapapi/map/MyLocationConfiguration;->locationMode:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    invoke-interface {v0, p1}, Lcom/baidu/mapapi/map/BaiduMap$OnLocationModeChangeListener;->onLocationModeChange(Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;)V

    :cond_0
    return-void
.end method

.method public final setMyLocationData(Lcom/baidu/mapapi/map/MyLocationData;)V
    .locals 4

    .line 2540
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->ae:Lcom/baidu/mapapi/map/MyLocationData;

    .line 2541
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->af:Lcom/baidu/mapapi/map/MyLocationConfiguration;

    if-nez v0, :cond_0

    .line 2542
    new-instance v0, Lcom/baidu/mapapi/map/MyLocationConfiguration;

    sget-object v1, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->NORMAL:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/mapapi/map/MyLocationConfiguration;-><init>(Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;ZLcom/baidu/mapapi/map/BitmapDescriptor;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->af:Lcom/baidu/mapapi/map/MyLocationConfiguration;

    .line 2544
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->af:Lcom/baidu/mapapi/map/MyLocationConfiguration;

    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/MyLocationData;Lcom/baidu/mapapi/map/MyLocationConfiguration;)V

    return-void
.end method

.method public final setMyLocationEnabled(Z)V
    .locals 1

    .line 2517
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_0

    .line 2518
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->r(Z)V

    :cond_0
    return-void
.end method

.method public final setOn3DBuildingListener(Lcom/baidu/mapapi/map/Building3DListener;)V
    .locals 0

    .line 3643
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->O:Lcom/baidu/mapapi/map/Building3DListener;

    return-void
.end method

.method public final setOnArcClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnArcClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3764
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->K:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final setOnBaseIndoorMapListener(Lcom/baidu/mapapi/map/BaiduMap$OnBaseIndoorMapListener;)V
    .locals 5

    .line 3845
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/SDKLogFactory;->getLogUsrActStatistics()Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;

    move-result-object v0

    const-string v1, "B"

    const-string v2, "C"

    const-string v3, "3.2"

    const/4 v4, 0x0

    .line 3846
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;->addLogWithLowLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3850
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->R:Lcom/baidu/mapapi/map/BaiduMap$OnBaseIndoorMapListener;

    return-void
.end method

.method public final setOnCircleClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnCircleClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3725
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final setOnGroundOverlayClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnGroundOverlayClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3746
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->I:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setOnHeatMapDrawFrameCallBack(Lcom/baidu/mapapi/map/BaiduMap$OnHeatMapDrawFrameCallBack;)V
    .locals 0

    .line 3674
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->T:Lcom/baidu/mapapi/map/BaiduMap$OnHeatMapDrawFrameCallBack;

    return-void
.end method

.method public final setOnLocationModeChangeListener(Lcom/baidu/mapapi/map/BaiduMap$OnLocationModeChangeListener;)V
    .locals 0

    .line 3826
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->ag:Lcom/baidu/mapapi/map/BaiduMap$OnLocationModeChangeListener;

    return-void
.end method

.method public final setOnMapClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapClickListener;)V
    .locals 0

    .line 3661
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->x:Lcom/baidu/mapapi/map/BaiduMap$OnMapClickListener;

    return-void
.end method

.method public final setOnMapDoubleClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapDoubleClickListener;)V
    .locals 0

    .line 3695
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->A:Lcom/baidu/mapapi/map/BaiduMap$OnMapDoubleClickListener;

    return-void
.end method

.method public final setOnMapDrawFrameCallback(Lcom/baidu/mapapi/map/BaiduMap$OnMapDrawFrameCallback;)V
    .locals 0

    .line 3835
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->Q:Lcom/baidu/mapapi/map/BaiduMap$OnMapDrawFrameCallback;

    return-void
.end method

.method public final setOnMapGestureListener(Lcom/baidu/mapapi/map/BaiduMap$onMapGestureListener;)V
    .locals 5

    .line 3647
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/SDKLogFactory;->getLogUsrActStatistics()Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;

    move-result-object v0

    const-string v1, "B"

    const-string v2, "GD"

    const-string v3, "0"

    const/4 v4, 0x0

    .line 3648
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;->addLogWithLowLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3652
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->w:Lcom/baidu/mapapi/map/BaiduMap$onMapGestureListener;

    return-void
.end method

.method public setOnMapLoadedCallback(Lcom/baidu/mapapi/map/BaiduMap$OnMapLoadedCallback;)V
    .locals 0

    .line 3670
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->y:Lcom/baidu/mapapi/map/BaiduMap$OnMapLoadedCallback;

    return-void
.end method

.method public final setOnMapLongClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapLongClickListener;)V
    .locals 0

    .line 3704
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->B:Lcom/baidu/mapapi/map/BaiduMap$OnMapLongClickListener;

    return-void
.end method

.method public setOnMapRenderCallbadk(Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderCallback;)V
    .locals 0

    .line 3686
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->z:Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderCallback;

    return-void
.end method

.method public final setOnMapRenderValidDataListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderValidDataListener;)V
    .locals 0

    .line 3860
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->S:Lcom/baidu/mapapi/map/BaiduMap$OnMapRenderValidDataListener;

    return-void
.end method

.method public final setOnMapStatusChangeListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;)V
    .locals 0

    .line 3625
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->u:Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;

    return-void
.end method

.method public final setOnMapTouchListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapTouchListener;)V
    .locals 0

    .line 3634
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->v:Lcom/baidu/mapapi/map/BaiduMap$OnMapTouchListener;

    return-void
.end method

.method public final setOnMarkerClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3785
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->C:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3786
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->C:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final setOnMarkerDragListener(Lcom/baidu/mapapi/map/BaiduMap$OnMarkerDragListener;)V
    .locals 0

    .line 3809
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->L:Lcom/baidu/mapapi/map/BaiduMap$OnMarkerDragListener;

    return-void
.end method

.method public final setOnMarkerWithBaseUIClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMarkerWithBaseUIClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3798
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->D:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3799
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->D:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final setOnMultiPointClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMultiPointClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3775
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final setOnMyLocationClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMyLocationClickListener;)V
    .locals 0

    .line 3818
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->M:Lcom/baidu/mapapi/map/BaiduMap$OnMyLocationClickListener;

    return-void
.end method

.method public final setOnPolygonClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnPolygonClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3736
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final setOnPolylineClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnPolylineClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3714
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->E:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final setOnSynchronizationListener(Lcom/baidu/mapapi/map/BaiduMap$OnSynchronizationListener;)V
    .locals 0

    .line 3932
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->U:Lcom/baidu/mapapi/map/BaiduMap$OnSynchronizationListener;

    return-void
.end method

.method public final setOnTextClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnTextClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3758
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setOverlayUnderPoi(Z)V
    .locals 1

    .line 4203
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    return-void

    .line 4206
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->f(Z)V

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3166
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/baidu/mapapi/map/BaiduMap;->setViewPadding(IIII)V

    return-void
.end method

.method public setPixelFormatTransparent(Z)V
    .locals 1

    .line 3604
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3608
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setPixelFormatTransparent(Z)V

    goto :goto_0

    .line 3610
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setPixelFormatTransparent(Z)V

    :goto_0
    return-void
.end method

.method public setPoiTagEnable(Lcom/baidu/mapapi/map/PoiTagType;Z)V
    .locals 1

    .line 4465
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_0

    .line 4466
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapapi/map/PoiTagType;Z)V

    :cond_0
    return-void
.end method

.method public final setTrafficEnabled(Z)V
    .locals 5

    .line 3079
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_0

    .line 3080
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/SDKLogFactory;->getLogUsrActStatistics()Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;

    move-result-object v0

    const-string v1, "B"

    const-string v2, "C"

    const-string v3, "1"

    const/4 v4, 0x0

    .line 3081
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;->addLogWithLowLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3085
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->m(Z)V

    :cond_0
    return-void
.end method

.method public final setViewPadding(IIII)V
    .locals 6

    if-ltz p1, :cond_4

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    if-gez p4, :cond_0

    goto/16 :goto_1

    .line 3181
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_1

    return-void

    .line 3187
    :cond_1
    sget-object v0, Lcom/baidu/mapapi/map/j;->b:[I

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/w;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 3202
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    if-nez v0, :cond_2

    return-void

    .line 3206
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    sub-int/2addr v0, p3

    int-to-float v0, v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 3207
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p4

    int-to-float v1, v1

    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 3209
    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    new-instance v3, Landroid/graphics/Point;

    int-to-float v4, p1

    iget-object v5, p0, Lcom/baidu/mapapi/map/BaiduMap;->al:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float v5, v5, v0

    add-float/2addr v4, v5

    float-to-int v0, v4

    int-to-float v4, p2

    iget-object v5, p0, Lcom/baidu/mapapi/map/BaiduMap;->al:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float v5, v5, v1

    add-float/2addr v4, v5

    float-to-int v1, v4

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Landroid/graphics/Point;)Z

    .line 3211
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/mapapi/map/MapView;->setPadding(IIII)V

    .line 3212
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapView;->invalidate()V

    goto :goto_0

    .line 3189
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    if-nez v0, :cond_3

    return-void

    .line 3192
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/TextureMapView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    sub-int/2addr v0, p3

    int-to-float v0, v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/TextureMapView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 3193
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/TextureMapView;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p4

    int-to-float v1, v1

    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/TextureMapView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 3195
    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    new-instance v3, Landroid/graphics/Point;

    int-to-float v4, p1

    iget-object v5, p0, Lcom/baidu/mapapi/map/BaiduMap;->al:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float v5, v5, v0

    add-float/2addr v4, v5

    float-to-int v0, v4

    int-to-float v4, p2

    iget-object v5, p0, Lcom/baidu/mapapi/map/BaiduMap;->al:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float v5, v5, v1

    add-float/2addr v4, v5

    float-to-int v1, v4

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Landroid/graphics/Point;)Z

    .line 3197
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/mapapi/map/TextureMapView;->setPadding(IIII)V

    .line 3198
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/TextureMapView;->invalidate()V

    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;)V
    .locals 1

    const/4 v0, 0x1

    .line 3315
    invoke-virtual {p0, p1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;Z)V

    return-void
.end method

.method public showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;Z)V
    .locals 5

    .line 3325
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->ac:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz p1, :cond_7

    .line 3327
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->am:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_1

    .line 3332
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->hideInfoWindow()V

    .line 3335
    :cond_1
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->s:Lcom/baidu/mapapi/map/InfoWindow$a;

    iput-object p2, p1, Lcom/baidu/mapapi/map/InfoWindow;->f:Lcom/baidu/mapapi/map/InfoWindow$a;

    .line 3336
    iget-object p2, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    iget-boolean p2, p1, Lcom/baidu/mapapi/map/InfoWindow;->k:Z

    if-eqz p2, :cond_3

    .line 3337
    iget-object p2, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    .line 3338
    invoke-virtual {p2}, Landroid/view/View;->destroyDrawingCache()V

    .line 3340
    new-instance v2, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;-><init>()V

    .line 3342
    sget-object v3, Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;->mapMode:Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;->layoutMode(Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;)Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/mapapi/map/InfoWindow;->d:Lcom/baidu/mapapi/model/LatLng;

    .line 3343
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;

    move-result-object v2

    iget v3, p1, Lcom/baidu/mapapi/map/InfoWindow;->g:I

    .line 3344
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;->yOffset(I)Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;

    move-result-object v2

    .line 3345
    invoke-virtual {v2}, Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;->build()Lcom/baidu/mapapi/map/MapViewLayoutParams;

    move-result-object v2

    .line 3346
    sget-object v3, Lcom/baidu/mapapi/map/j;->b:[I

    iget-object v4, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    invoke-virtual {v4}, Lcom/baidu/mapsdkplatform/comapi/map/w;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 3355
    :pswitch_0
    iget-object v3, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    if-eqz v3, :cond_2

    .line 3356
    iget-object v3, p0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v3, p2, v2}, Lcom/baidu/mapapi/map/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3349
    :pswitch_1
    iget-object v3, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    if-eqz v3, :cond_2

    .line 3350
    iget-object v3, p0, Lcom/baidu/mapapi/map/BaiduMap;->b:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v3, p2, v2}, Lcom/baidu/mapapi/map/TextureMapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    const/4 p2, 0x1

    .line 3370
    :goto_1
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->b(Lcom/baidu/mapapi/map/InfoWindow;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v2

    if-nez v2, :cond_4

    return-void

    .line 3374
    :cond_4
    new-instance v3, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v3}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v3, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->perspective(Z)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    .line 3375
    invoke-virtual {v3, v2}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/mapapi/map/InfoWindow;->d:Lcom/baidu/mapapi/model/LatLng;

    .line 3376
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    const v3, 0x7fffffff

    .line 3377
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    iget v3, p1, Lcom/baidu/mapapi/map/InfoWindow;->g:I

    .line 3378
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->yOffset(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/mapapi/map/MarkerOptions;->infoWindow(Lcom/baidu/mapapi/map/InfoWindow;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 3379
    invoke-virtual {v2}, Lcom/baidu/mapapi/map/MarkerOptions;->a()Lcom/baidu/mapapi/map/Overlay;

    move-result-object v2

    .line 3380
    iget-object v3, p0, Lcom/baidu/mapapi/map/BaiduMap;->p:Lcom/baidu/mapapi/map/Overlay$a;

    iput-object v3, v2, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    .line 3381
    sget-object v3, Lcom/baidu/mapsdkplatform/comapi/map/h;->b:Lcom/baidu/mapsdkplatform/comapi/map/h;

    iput-object v3, v2, Lcom/baidu/mapapi/map/Overlay;->type:Lcom/baidu/mapsdkplatform/comapi/map/h;

    .line 3382
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3383
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3384
    iget-object v4, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    if-eqz v4, :cond_5

    const-string v1, "draw_with_view"

    .line 3385
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    const-string v0, "draw_with_view"

    .line 3387
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3389
    :goto_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->am:Z

    if-nez p2, :cond_6

    .line 3390
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {p2, v3}, Lcom/baidu/mapsdkplatform/comapi/map/c;->d(Landroid/os/Bundle;)V

    .line 3391
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->l:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3393
    :cond_6
    check-cast v2, Lcom/baidu/mapapi/map/Marker;

    .line 3394
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->s:Lcom/baidu/mapapi/map/InfoWindow$a;

    iput-object p2, v2, Lcom/baidu/mapapi/map/Marker;->D:Lcom/baidu/mapapi/map/InfoWindow$a;

    .line 3395
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->ab:Ljava/util/Map;

    iget-object v0, v2, Lcom/baidu/mapapi/map/Marker;->K:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3396
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->ac:Ljava/util/Map;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3397
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->o:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showInfoWindows(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/InfoWindow;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 3406
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3409
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/InfoWindow;

    const/4 v1, 0x0

    .line 3410
    invoke-virtual {p0, v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;Z)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public final showMapIndoorPoi(Z)V
    .locals 1

    .line 3154
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_0

    .line 3155
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->G(Z)V

    .line 3156
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->ai:Z

    :cond_0
    return-void
.end method

.method public final showMapPoi(Z)V
    .locals 1

    .line 3134
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_0

    .line 3135
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->F(Z)V

    .line 3136
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->ah:Z

    :cond_0
    return-void
.end method

.method public showOperateLayer(Z)V
    .locals 5

    .line 4274
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    return-void

    .line 4277
    :cond_0
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/SDKLogFactory;->getLogUsrActStatistics()Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;

    move-result-object v0

    const-string v1, "B"

    const-string v2, "C"

    const-string v3, "2"

    const/4 v4, 0x0

    .line 4278
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;->addLogWithLowLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4282
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->e(Z)V

    return-void
.end method

.method public showParticleEffectByType(Lcom/baidu/mapapi/map/ParticleEffectType;)Z
    .locals 1

    .line 4499
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_2

    .line 4501
    sget-object v0, Lcom/baidu/mapapi/map/ParticleEffectType;->Fireworks:Lcom/baidu/mapapi/map/ParticleEffectType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/baidu/mapapi/map/ParticleEffectType;->Flower:Lcom/baidu/mapapi/map/ParticleEffectType;

    if-ne p1, v0, :cond_1

    .line 4502
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/ParticleEffectType;)V

    .line 4504
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->b(Lcom/baidu/mapapi/map/ParticleEffectType;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public showSDKLayer()V
    .locals 1

    .line 4104
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    return-void

    .line 4107
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->d()V

    return-void
.end method

.method public final snapshot(Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;)V
    .locals 3

    .line 3228
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->N:Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;

    .line 3230
    sget-object p1, Lcom/baidu/mapapi/map/j;->b:[I

    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/w;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3245
    :pswitch_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3246
    new-instance p1, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapController;->getScreenHeight()I

    move-result v2

    invoke-direct {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3247
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    new-instance v1, Lcom/baidu/mapapi/map/g;

    invoke-direct {v1, p0}, Lcom/baidu/mapapi/map/g;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, p1, v2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->doCaptureMapView(Lcom/baidu/platform/comapi/map/c;Landroid/graphics/Rect;Landroid/graphics/Bitmap$Config;)V

    .line 3253
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->requestRender()V

    goto :goto_0

    .line 3232
    :pswitch_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapTextureView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3233
    new-instance p1, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapTextureView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapTextureView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapController;->getScreenHeight()I

    move-result v2

    invoke-direct {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3234
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    new-instance v1, Lcom/baidu/mapapi/map/f;

    invoke-direct {v1, p0}, Lcom/baidu/mapapi/map/f;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, p1, v2}, Lcom/baidu/platform/comapi/map/MapTextureView;->doCaptureMapView(Lcom/baidu/platform/comapi/map/c;Landroid/graphics/Rect;Landroid/graphics/Bitmap$Config;)V

    .line 3240
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapTextureView;->requestRender()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final snapshotScope(Landroid/graphics/Rect;Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;)V
    .locals 2

    .line 3272
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    return-void

    .line 3276
    :cond_0
    iput-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->N:Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;

    .line 3278
    sget-object p2, Lcom/baidu/mapapi/map/j;->b:[I

    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->d:Lcom/baidu/mapsdkplatform/comapi/map/w;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/w;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 3292
    :pswitch_0
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz p2, :cond_1

    .line 3293
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    new-instance v0, Lcom/baidu/mapapi/map/i;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/i;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v0, p1, v1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->doCaptureMapView(Lcom/baidu/platform/comapi/map/c;Landroid/graphics/Rect;Landroid/graphics/Bitmap$Config;)V

    .line 3299
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->h:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->requestRender()V

    goto :goto_0

    .line 3280
    :pswitch_1
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    if-eqz p2, :cond_1

    .line 3281
    iget-object p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    new-instance v0, Lcom/baidu/mapapi/map/h;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/h;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v0, p1, v1}, Lcom/baidu/platform/comapi/map/MapTextureView;->doCaptureMapView(Lcom/baidu/platform/comapi/map/c;Landroid/graphics/Rect;Landroid/graphics/Bitmap$Config;)V

    .line 3287
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->i:Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapTextureView;->requestRender()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startHeatMapFrameAnimation()V
    .locals 5

    .line 2889
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    return-void

    .line 2892
    :cond_0
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/SDKLogFactory;->getLogUsrActStatistics()Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;

    move-result-object v0

    const-string v1, "B"

    const-string v2, "H"

    const-string v3, "1"

    const/4 v4, 0x0

    .line 2893
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;->addLogWithLowLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2898
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->o()V

    return-void
.end method

.method public stopHeatMapFrameAnimation()V
    .locals 1

    .line 2905
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    return-void

    .line 2909
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->p()V

    return-void
.end method

.method public switchBaseIndoorMapFloor(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;
    .locals 3

    .line 3956
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3957
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 3967
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BaiduMap;->getFocusedBaseIndoorMapInfo()Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "S"

    .line 3969
    sget-object p2, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->SWITCH_ERROR:Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;

    invoke-virtual {p2}, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3970
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/SDKLogFactory;->getLogUsrActStatistics()Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;

    move-result-object p1

    const-string p2, "B"

    const-string v1, "C"

    const-string v2, "3.1"

    .line 3971
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;->addLogWithLowLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3976
    sget-object p1, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->SWITCH_ERROR:Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;

    return-object p1

    .line 3978
    :cond_1
    iget-object v2, v1, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p1, "S"

    .line 3979
    sget-object p2, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->FOCUSED_ID_ERROR:Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;

    invoke-virtual {p2}, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3980
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/SDKLogFactory;->getLogUsrActStatistics()Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;

    move-result-object p1

    const-string p2, "B"

    const-string v1, "C"

    const-string v2, "3.1"

    .line 3981
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;->addLogWithLowLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3986
    sget-object p1, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->FOCUSED_ID_ERROR:Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;

    return-object p1

    .line 3988
    :cond_2
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;->getFloors()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3989
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 3999
    :cond_3
    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v1, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "S"

    .line 4000
    sget-object p2, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->SWITCH_OK:Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;

    invoke-virtual {p2}, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4001
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/SDKLogFactory;->getLogUsrActStatistics()Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;

    move-result-object p1

    const-string p2, "B"

    const-string v1, "C"

    const-string v2, "3.1"

    .line 4002
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;->addLogWithLowLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4007
    sget-object p1, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->SWITCH_OK:Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;

    return-object p1

    :cond_4
    const-string p1, "S"

    .line 4010
    sget-object p2, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->SWITCH_ERROR:Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;

    invoke-virtual {p2}, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4011
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/SDKLogFactory;->getLogUsrActStatistics()Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;

    move-result-object p1

    const-string p2, "B"

    const-string v1, "C"

    const-string v2, "3.1"

    .line 4012
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;->addLogWithLowLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4016
    sget-object p1, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->SWITCH_ERROR:Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;

    return-object p1

    :cond_5
    :goto_0
    const-string p1, "S"

    .line 3990
    sget-object p2, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->FLOOR_OVERLFLOW:Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;

    invoke-virtual {p2}, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3991
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/SDKLogFactory;->getLogUsrActStatistics()Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;

    move-result-object p1

    const-string p2, "B"

    const-string v1, "C"

    const-string v2, "3.1"

    .line 3992
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;->addLogWithLowLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3997
    sget-object p1, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->FLOOR_OVERLFLOW:Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;

    return-object p1

    :cond_6
    :goto_1
    const-string p1, "S"

    .line 3958
    sget-object p2, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->FLOOR_INFO_ERROR:Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;

    invoke-virtual {p2}, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3959
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/SDKLogFactory;->getLogUsrActStatistics()Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;

    move-result-object p1

    const-string p2, "B"

    const-string v1, "C"

    const-string v2, "3.1"

    .line 3960
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;->addLogWithLowLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3965
    sget-object p1, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;->FLOOR_INFO_ERROR:Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo$SwitchFloorError;

    return-object p1
.end method

.method public switchLayerOrder(Lcom/baidu/mapapi/map/MapLayer;Lcom/baidu/mapapi/map/MapLayer;)V
    .locals 5

    .line 4228
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    return-void

    .line 4232
    :cond_0
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/SDKLogFactory;->getLogUsrActStatistics()Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;

    move-result-object v0

    const-string v1, "B"

    const-string v2, "C"

    const-string v3, "5"

    const/4 v4, 0x0

    .line 4233
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;->addLogWithLowLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4237
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapapi/map/MapLayer;Lcom/baidu/mapapi/map/MapLayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4238
    sget-object v0, Lcom/baidu/mapapi/map/MapLayer;->BM_LAYER_OVERLAY:Lcom/baidu/mapapi/map/MapLayer;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/baidu/mapapi/map/MapLayer;->MAP_LAYER_OVERLAY:Lcom/baidu/mapapi/map/MapLayer;

    if-eq p2, v0, :cond_2

    :cond_1
    sget-object v0, Lcom/baidu/mapapi/map/MapLayer;->MAP_LAYER_OVERLAY:Lcom/baidu/mapapi/map/MapLayer;

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/baidu/mapapi/map/MapLayer;->BM_LAYER_OVERLAY:Lcom/baidu/mapapi/map/MapLayer;

    if-ne p2, p1, :cond_3

    .line 4241
    :cond_2
    iget-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->an:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->an:Z

    .line 4242
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    iget-boolean p2, p0, Lcom/baidu/mapapi/map/BaiduMap;->an:Z

    invoke-virtual {p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Z)V

    :cond_3
    return-void
.end method

.method public switchOverlayLayerAndNavigationLayer(Z)Z
    .locals 5

    .line 4254
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4258
    :cond_0
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/SDKLogFactory;->getLogUsrActStatistics()Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;

    move-result-object v0

    const-string v1, "B"

    const-string v2, "C"

    const-string v3, "4"

    const/4 v4, 0x0

    .line 4259
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;->addLogWithLowLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4263
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->h(Z)Z

    move-result p1

    return p1
.end method

.method public updateHeatMap(Lcom/baidu/mapapi/map/HeatMap;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2794
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2797
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Y:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2800
    :try_start_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Lcom/baidu/mapapi/map/HeatMap;

    .line 2801
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->W:Lcom/baidu/mapapi/map/HeatMap;

    iput-object p0, v0, Lcom/baidu/mapapi/map/HeatMap;->a:Lcom/baidu/mapapi/map/BaiduMap;

    .line 2802
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/HeatMap;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 2805
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->j(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2808
    iget-object p1, p0, Lcom/baidu/mapapi/map/BaiduMap;->Y:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMap;->Y:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2809
    throw p1

    :cond_1
    :goto_0
    return-void
.end method
