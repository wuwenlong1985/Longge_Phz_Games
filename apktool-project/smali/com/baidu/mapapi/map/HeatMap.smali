.class public Lcom/baidu/mapapi/map/HeatMap;
.super Ljava/lang/Object;
.source "HeatMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/HeatMap$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_GRADIENT:Lcom/baidu/mapapi/map/Gradient;

.field public static final DEFAULT_MAX_HIGH:I = 0x0

.field public static final DEFAULT_MAX_LEVEL:I = 0x16

.field public static final DEFAULT_MIN_LEVEL:I = 0x4

.field public static final DEFAULT_OPACITY:D = 0.6

.field public static final DEFAULT_RADIUS:I = 0xc

.field private static E:I = 0x0

.field private static final b:Ljava/lang/String; = "HeatMap"

.field private static final c:Landroid/util/SparseIntArray;

.field private static final d:[I

.field private static final e:[F


# instance fields
.field private A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/baidu/mapapi/map/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/concurrent/ExecutorService;

.field private C:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private D:I

.field a:Lcom/baidu/mapapi/map/BaiduMap;

.field private f:I

.field private g:Z

.field private h:I

.field private i:I

.field private j:Lcom/baidu/mapapi/map/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/mapapi/map/ah<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:F

.field protected mIsSetMaxIntensity:Z

.field private n:F

.field private o:Lcom/baidu/mapapi/map/HeatMapAnimation;

.field private p:Lcom/baidu/mapapi/map/HeatMapAnimation;

.field private q:I

.field private r:I

.field private s:Lcom/baidu/mapapi/map/Gradient;

.field private t:D

.field private u:Lcom/baidu/mapapi/map/v;

.field private v:[I

.field private w:[F

.field private x:[D

.field private y:[D

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    .line 39
    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/high16 v2, 0x800000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    const/high16 v3, 0x400000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    const/high16 v3, 0x200000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    const/high16 v3, 0x100000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    const/high16 v3, 0x80000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    const/high16 v3, 0x40000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    const/high16 v3, 0x20000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v2, 0xb

    const v3, 0x8000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v2, 0xc

    const/16 v3, 0x4000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v2, 0xd

    const/16 v3, 0x2000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v2, 0xe

    const/16 v3, 0x1000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v2, 0xf

    const/16 v3, 0x800

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    const/16 v3, 0x400

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v2, 0x11

    const/16 v3, 0x200

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v2, 0x12

    const/16 v3, 0x100

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v2, 0x13

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 63
    new-array v0, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xc8

    .line 64
    invoke-static {v2, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v0, v2

    const/16 v3, 0xe1

    invoke-static {v2, v3, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v0, v4

    const/16 v3, 0xff

    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v3, 0x2

    aput v2, v0, v3

    sput-object v0, Lcom/baidu/mapapi/map/HeatMap;->d:[I

    .line 73
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/mapapi/map/HeatMap;->e:[F

    .line 234
    new-instance v0, Lcom/baidu/mapapi/map/Gradient;

    sget-object v1, Lcom/baidu/mapapi/map/HeatMap;->d:[I

    sget-object v2, Lcom/baidu/mapapi/map/HeatMap;->e:[F

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/map/Gradient;-><init>([I[F)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMap;->DEFAULT_GRADIENT:Lcom/baidu/mapapi/map/Gradient;

    return-void

    nop

    :array_0
    .array-data 4
        0x3da3d70a    # 0.08f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>(Lcom/baidu/mapapi/map/HeatMap$Builder;)V
    .locals 4

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 127
    iput v0, p0, Lcom/baidu/mapapi/map/HeatMap;->f:I

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/HeatMap;->g:Z

    const/16 v1, 0x16

    .line 132
    iput v1, p0, Lcom/baidu/mapapi/map/HeatMap;->h:I

    const/4 v1, 0x4

    .line 134
    iput v1, p0, Lcom/baidu/mapapi/map/HeatMap;->i:I

    .line 220
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getScreenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/baidu/mapapi/map/HeatMap;->D:I

    .line 829
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->A:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 830
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->B:Ljava/util/concurrent/ExecutorService;

    .line 831
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->C:Ljava/util/HashSet;

    .line 833
    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap$Builder;->a(Lcom/baidu/mapapi/map/HeatMap$Builder;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->l:Ljava/util/List;

    .line 834
    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap$Builder;->b(Lcom/baidu/mapapi/map/HeatMap$Builder;)I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/map/HeatMap;->q:I

    .line 835
    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap$Builder;->c(Lcom/baidu/mapapi/map/HeatMap$Builder;)I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/map/HeatMap;->r:I

    .line 836
    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap$Builder;->d(Lcom/baidu/mapapi/map/HeatMap$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/HeatMap;->g:Z

    .line 837
    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap$Builder;->e(Lcom/baidu/mapapi/map/HeatMap$Builder;)I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/map/HeatMap;->h:I

    .line 838
    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap$Builder;->f(Lcom/baidu/mapapi/map/HeatMap$Builder;)I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/map/HeatMap;->i:I

    .line 840
    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap$Builder;->g(Lcom/baidu/mapapi/map/HeatMap$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/HeatMap;->mIsSetMaxIntensity:Z

    .line 842
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/HeatMap;->mIsSetMaxIntensity:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->l:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 844
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->z:Ljava/util/List;

    .line 845
    :goto_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 846
    iget-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->k:Ljava/util/Collection;

    .line 847
    iget-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->k:Ljava/util/Collection;

    invoke-static {v1}, Lcom/baidu/mapapi/map/HeatMap;->d(Ljava/util/Collection;)Lcom/baidu/mapapi/map/v;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->u:Lcom/baidu/mapapi/map/v;

    .line 848
    iget-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->z:Ljava/util/List;

    iget v2, p0, Lcom/baidu/mapapi/map/HeatMap;->q:I

    invoke-direct {p0, v2}, Lcom/baidu/mapapi/map/HeatMap;->a(I)[D

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 853
    :cond_0
    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap$Builder;->h(Lcom/baidu/mapapi/map/HeatMap$Builder;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->k:Ljava/util/Collection;

    .line 856
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/HeatMap;->mIsSetMaxIntensity:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->k:Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 858
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->k:Ljava/util/Collection;

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/HeatMap;->b(Ljava/util/Collection;)V

    .line 862
    :cond_1
    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap$Builder;->i(Lcom/baidu/mapapi/map/HeatMap$Builder;)Lcom/baidu/mapapi/map/HeatMapAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->p:Lcom/baidu/mapapi/map/HeatMapAnimation;

    .line 863
    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap$Builder;->j(Lcom/baidu/mapapi/map/HeatMap$Builder;)Lcom/baidu/mapapi/map/HeatMapAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->o:Lcom/baidu/mapapi/map/HeatMapAnimation;

    .line 864
    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap$Builder;->k(Lcom/baidu/mapapi/map/HeatMap$Builder;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/HeatMap;->f:I

    .line 865
    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap$Builder;->l(Lcom/baidu/mapapi/map/HeatMap$Builder;)F

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/HeatMap;->m:F

    .line 866
    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap$Builder;->m(Lcom/baidu/mapapi/map/HeatMap$Builder;)F

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/HeatMap;->n:F

    .line 867
    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap$Builder;->n(Lcom/baidu/mapapi/map/HeatMap$Builder;)Lcom/baidu/mapapi/map/Gradient;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->s:Lcom/baidu/mapapi/map/Gradient;

    .line 868
    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap$Builder;->o(Lcom/baidu/mapapi/map/HeatMap$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/map/HeatMap;->t:D

    .line 870
    iget p1, p0, Lcom/baidu/mapapi/map/HeatMap;->q:I

    iget v0, p0, Lcom/baidu/mapapi/map/HeatMap;->q:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/baidu/mapapi/map/HeatMap;->a(ID)[D

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/map/HeatMap;->x:[D

    .line 872
    iget-object p1, p0, Lcom/baidu/mapapi/map/HeatMap;->s:Lcom/baidu/mapapi/map/Gradient;

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/HeatMap;->a(Lcom/baidu/mapapi/map/Gradient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapapi/map/HeatMap$Builder;Lcom/baidu/mapapi/map/x;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/HeatMap;-><init>(Lcom/baidu/mapapi/map/HeatMap$Builder;)V

    return-void
.end method

.method private static a(Ljava/util/Collection;Lcom/baidu/mapapi/map/v;II)D
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;",
            "Lcom/baidu/mapapi/map/v;",
            "II)D"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1591
    iget-wide v1, v0, Lcom/baidu/mapapi/map/v;->a:D

    .line 1592
    iget-wide v3, v0, Lcom/baidu/mapapi/map/v;->c:D

    .line 1593
    iget-wide v5, v0, Lcom/baidu/mapapi/map/v;->b:D

    .line 1594
    iget-wide v7, v0, Lcom/baidu/mapapi/map/v;->d:D

    sub-double/2addr v3, v1

    sub-double/2addr v7, v5

    cmpl-double v0, v3, v7

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v3, v7

    :goto_0
    mul-int/lit8 v0, p2, 0x2

    .line 1599
    div-int v0, p3, v0

    int-to-double v7, v0

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v7, v9

    double-to-int v0, v7

    int-to-double v7, v0

    div-double/2addr v7, v3

    .line 1606
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 1612
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v11, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/map/WeightedLatLng;

    .line 1613
    invoke-virtual {v4}, Lcom/baidu/mapapi/map/WeightedLatLng;->getPoint()Landroid/graphics/Point;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Point;->x:I

    int-to-double v13, v13

    .line 1614
    invoke-virtual {v4}, Lcom/baidu/mapapi/map/WeightedLatLng;->getPoint()Landroid/graphics/Point;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Point;->y:I

    int-to-double v9, v15

    sub-double/2addr v13, v1

    mul-double v13, v13, v7

    double-to-int v13, v13

    sub-double/2addr v9, v5

    mul-double v9, v9, v7

    double-to-int v9, v9

    int-to-long v13, v13

    .line 1620
    invoke-virtual {v0, v13, v14}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/util/LongSparseArray;

    if-nez v10, :cond_1

    .line 1622
    new-instance v10, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v10}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 1623
    invoke-virtual {v0, v13, v14, v10}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    int-to-long v13, v9

    .line 1626
    invoke-virtual {v10, v13, v14}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    if-nez v9, :cond_2

    move-object/from16 v19, v0

    move-wide/from16 v17, v1

    const-wide/16 v0, 0x0

    .line 1628
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object/from16 v19, v0

    move-wide/from16 v17, v1

    const-wide/16 v0, 0x0

    .line 1630
    :goto_2
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    iget-wide v0, v4, Lcom/baidu/mapapi/map/WeightedLatLng;->intensity:D

    add-double/2addr v0, v15

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1632
    invoke-virtual {v10, v13, v14, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1634
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    cmpl-double v4, v1, v11

    if-lez v4, :cond_3

    .line 1635
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    move-wide v11, v0

    :cond_3
    move-wide/from16 v1, v17

    move-object/from16 v0, v19

    goto :goto_1

    :cond_4
    return-wide v11
.end method

.method private static a([[D[ID)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1531
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v2, v1, v2

    .line 1534
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    int-to-double v3, v3

    div-double v3, v3, p2

    .line 1536
    array-length v12, v0

    mul-int v5, v12, v12

    .line 1541
    new-array v6, v5, [I

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v12, :cond_3

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v12, :cond_2

    .line 1548
    aget-object v9, v0, v8

    aget-wide v10, v9, v7

    mul-int v9, v7, v12

    add-int/2addr v9, v8

    mul-double v13, v10, v3

    double-to-int v13, v13

    const-wide/16 v14, 0x0

    cmpl-double v16, v10, v14

    if-eqz v16, :cond_1

    .line 1554
    array-length v10, v1

    if-ge v13, v10, :cond_0

    .line 1555
    aget v10, v1, v13

    aput v10, v6, v9

    goto :goto_2

    .line 1557
    :cond_0
    aput v2, v6, v9

    goto :goto_2

    .line 1559
    :cond_1
    aput v5, v6, v9

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1565
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    move v8, v12

    move v11, v12

    .line 1569
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v0
.end method

.method private a(II)Lcom/baidu/mapapi/map/HeatMapData;
    .locals 2

    .line 1070
    iget-object p1, p0, Lcom/baidu/mapapi/map/HeatMap;->k:Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1073
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/HeatMap;->y:[D

    if-eqz p1, :cond_1

    .line 1074
    iget-object p1, p0, Lcom/baidu/mapapi/map/HeatMap;->y:[D

    aget-wide v0, p1, p2

    double-to-float p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1077
    :goto_0
    new-instance p2, Lcom/baidu/mapapi/map/HeatMapData;

    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->k:Ljava/util/Collection;

    invoke-direct {p2, v0, p1}, Lcom/baidu/mapapi/map/HeatMapData;-><init>(Ljava/util/Collection;F)V

    return-object p2
.end method

.method private static a(Landroid/graphics/Bitmap;)Lcom/baidu/mapapi/map/Tile;
    .locals 2

    .line 1356
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1357
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 1356
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1358
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 1359
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 1360
    new-instance v0, Lcom/baidu/mapapi/map/Tile;

    const/16 v1, 0x100

    invoke-direct {v0, v1, v1, p0}, Lcom/baidu/mapapi/map/Tile;-><init>(II[B)V

    return-object v0
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/baidu/mapapi/map/HeatMap;->c(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/baidu/mapapi/map/HeatMap;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(III)V
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1147
    sget-object v4, Lcom/baidu/mapapi/map/HeatMap;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    int-to-double v4, v4

    .line 1156
    iget v6, v0, Lcom/baidu/mapapi/map/HeatMap;->q:I

    int-to-double v6, v6

    mul-double v6, v6, v4

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v6

    add-double/2addr v8, v4

    .line 1167
    iget v10, v0, Lcom/baidu/mapapi/map/HeatMap;->q:I

    mul-int/lit8 v10, v10, 0x2

    add-int/lit16 v10, v10, 0x100

    int-to-double v10, v10

    div-double/2addr v8, v10

    if-ltz v1, :cond_8

    if-gez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    int-to-double v10, v1

    mul-double v10, v10, v4

    sub-double/2addr v10, v6

    add-int/lit8 v12, v1, 0x1

    int-to-double v12, v12

    mul-double v12, v12, v4

    add-double v15, v12, v6

    int-to-double v12, v2

    mul-double v12, v12, v4

    sub-double v17, v12, v6

    add-int/lit8 v12, v2, 0x1

    int-to-double v12, v12

    mul-double v12, v12, v4

    add-double v4, v12, v6

    .line 1188
    new-instance v13, Lcom/baidu/mapapi/map/v;

    move-object v12, v13

    move-object v2, v13

    move-wide v13, v10

    move-wide/from16 v19, v4

    invoke-direct/range {v12 .. v20}, Lcom/baidu/mapapi/map/v;-><init>(DDDD)V

    .line 1195
    new-instance v12, Lcom/baidu/mapapi/map/v;

    iget-object v13, v0, Lcom/baidu/mapapi/map/HeatMap;->u:Lcom/baidu/mapapi/map/v;

    iget-wide v13, v13, Lcom/baidu/mapapi/map/v;->a:D

    sub-double v22, v13, v6

    iget-object v13, v0, Lcom/baidu/mapapi/map/HeatMap;->u:Lcom/baidu/mapapi/map/v;

    iget-wide v13, v13, Lcom/baidu/mapapi/map/v;->c:D

    add-double v24, v13, v6

    iget-object v13, v0, Lcom/baidu/mapapi/map/HeatMap;->u:Lcom/baidu/mapapi/map/v;

    iget-wide v13, v13, Lcom/baidu/mapapi/map/v;->b:D

    sub-double v26, v13, v6

    iget-object v13, v0, Lcom/baidu/mapapi/map/HeatMap;->u:Lcom/baidu/mapapi/map/v;

    iget-wide v13, v13, Lcom/baidu/mapapi/map/v;->d:D

    add-double v28, v13, v6

    move-object/from16 v21, v12

    invoke-direct/range {v21 .. v29}, Lcom/baidu/mapapi/map/v;-><init>(DDDD)V

    .line 1200
    invoke-virtual {v2, v12}, Lcom/baidu/mapapi/map/v;->a(Lcom/baidu/mapapi/map/v;)Z

    move-result v6

    if-nez v6, :cond_1

    return-void

    .line 1208
    :cond_1
    iget-object v6, v0, Lcom/baidu/mapapi/map/HeatMap;->j:Lcom/baidu/mapapi/map/ah;

    invoke-virtual {v6, v2}, Lcom/baidu/mapapi/map/ah;->a(Lcom/baidu/mapapi/map/v;)Ljava/util/Collection;

    move-result-object v2

    .line 1213
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    return-void

    .line 1221
    :cond_2
    iget v6, v0, Lcom/baidu/mapapi/map/HeatMap;->q:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit16 v6, v6, 0x100

    iget v7, v0, Lcom/baidu/mapapi/map/HeatMap;->q:I

    mul-int/lit8 v7, v7, 0x2

    add-int/lit16 v7, v7, 0x100

    filled-new-array {v6, v7}, [I

    move-result-object v6

    const-class v7, D

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 1223
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/mapapi/map/WeightedLatLng;

    .line 1224
    invoke-virtual {v7}, Lcom/baidu/mapapi/map/WeightedLatLng;->getPoint()Landroid/graphics/Point;

    move-result-object v12

    .line 1225
    iget v13, v12, Landroid/graphics/Point;->x:I

    int-to-double v13, v13

    sub-double/2addr v13, v10

    div-double/2addr v13, v8

    double-to-int v13, v13

    .line 1227
    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-double v14, v12

    sub-double v14, v4, v14

    div-double/2addr v14, v8

    double-to-int v12, v14

    .line 1228
    iget v14, v0, Lcom/baidu/mapapi/map/HeatMap;->q:I

    mul-int/lit8 v14, v14, 0x2

    add-int/lit16 v14, v14, 0x100

    if-lt v13, v14, :cond_3

    .line 1229
    iget v13, v0, Lcom/baidu/mapapi/map/HeatMap;->q:I

    mul-int/lit8 v13, v13, 0x2

    add-int/lit16 v13, v13, 0x100

    add-int/lit8 v13, v13, -0x1

    .line 1231
    :cond_3
    iget v14, v0, Lcom/baidu/mapapi/map/HeatMap;->q:I

    mul-int/lit8 v14, v14, 0x2

    add-int/lit16 v14, v14, 0x100

    if-lt v12, v14, :cond_4

    .line 1232
    iget v12, v0, Lcom/baidu/mapapi/map/HeatMap;->q:I

    mul-int/lit8 v12, v12, 0x2

    add-int/lit16 v12, v12, 0x100

    add-int/lit8 v12, v12, -0x1

    .line 1234
    :cond_4
    aget-object v13, v6, v13

    aget-wide v14, v13, v12

    move-wide/from16 v30, v4

    iget-wide v4, v7, Lcom/baidu/mapapi/map/WeightedLatLng;->intensity:D

    add-double/2addr v14, v4

    aput-wide v14, v13, v12

    move-wide/from16 v4, v30

    goto :goto_0

    .line 1237
    :cond_5
    iget-object v2, v0, Lcom/baidu/mapapi/map/HeatMap;->x:[D

    invoke-static {v6, v2}, Lcom/baidu/mapapi/map/HeatMap;->a([[D[D)[[D

    move-result-object v2

    .line 1239
    iget-object v4, v0, Lcom/baidu/mapapi/map/HeatMap;->v:[I

    iget-object v5, v0, Lcom/baidu/mapapi/map/HeatMap;->y:[D

    add-int/lit8 v6, v3, -0x1

    aget-wide v6, v5, v6

    invoke-static {v2, v4, v6, v7}, Lcom/baidu/mapapi/map/HeatMap;->a([[D[ID)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1257
    invoke-static {v2}, Lcom/baidu/mapapi/map/HeatMap;->a(Landroid/graphics/Bitmap;)Lcom/baidu/mapapi/map/Tile;

    move-result-object v4

    .line 1258
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1261
    invoke-direct {v0, v1, v4}, Lcom/baidu/mapapi/map/HeatMap;->a(Ljava/lang/String;Lcom/baidu/mapapi/map/Tile;)V

    .line 1262
    iget-object v1, v0, Lcom/baidu/mapapi/map/HeatMap;->A:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    sget v2, Lcom/baidu/mapapi/map/HeatMap;->E:I

    if-le v1, v2, :cond_6

    .line 1263
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/mapapi/map/HeatMap;->a()V

    .line 1266
    :cond_6
    iget-object v1, v0, Lcom/baidu/mapapi/map/HeatMap;->a:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v1, :cond_7

    .line 1267
    iget-object v1, v0, Lcom/baidu/mapapi/map/HeatMap;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BaiduMap;->a()V

    :cond_7
    return-void

    :cond_8
    :goto_1
    return-void
.end method

.method private a(Lcom/baidu/mapapi/map/Gradient;)V
    .locals 2

    .line 1280
    iput-object p1, p0, Lcom/baidu/mapapi/map/HeatMap;->s:Lcom/baidu/mapapi/map/Gradient;

    .line 1281
    iget-wide v0, p0, Lcom/baidu/mapapi/map/HeatMap;->t:D

    invoke-virtual {p1, v0, v1}, Lcom/baidu/mapapi/map/Gradient;->a(D)[I

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->v:[I

    .line 1282
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Gradient;->a()[F

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/map/HeatMap;->w:[F

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/HeatMap;III)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mapapi/map/HeatMap;->a(III)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/baidu/mapapi/map/Tile;)V
    .locals 1

    monitor-enter p0

    .line 1124
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->A:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1123
    monitor-exit p0

    throw p1
.end method

.method private a(I)[D
    .locals 12

    const/16 v0, 0x17

    .line 1324
    new-array v1, v0, [D

    const/4 v2, 0x4

    const/4 v3, 0x4

    :goto_0
    const/16 v4, 0xb

    if-ge v3, v4, :cond_1

    .line 1329
    iget-object v4, p0, Lcom/baidu/mapapi/map/HeatMap;->k:Ljava/util/Collection;

    iget-object v5, p0, Lcom/baidu/mapapi/map/HeatMap;->u:Lcom/baidu/mapapi/map/v;

    const-wide/high16 v6, 0x4094000000000000L    # 1280.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-int/lit8 v10, v3, -0x3

    int-to-double v10, v10

    .line 1330
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double v8, v8, v6

    double-to-int v6, v8

    .line 1329
    invoke-static {v4, v5, p1, v6}, Lcom/baidu/mapapi/map/HeatMap;->a(Ljava/util/Collection;Lcom/baidu/mapapi/map/v;II)D

    move-result-wide v4

    aput-wide v4, v1, v3

    if-ne v3, v2, :cond_0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    .line 1333
    aget-wide v5, v1, v3

    aput-wide v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v4, v0, :cond_2

    const/16 p1, 0xa

    .line 1337
    aget-wide v2, v1, p1

    aput-wide v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    return-object v1
.end method

.method private static a(ID)[D
    .locals 7

    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 1413
    new-array v0, v0, [D

    neg-int v1, p0

    :goto_0
    if-gt v1, p0, :cond_0

    add-int v2, v1, p0

    neg-int v3, v1

    mul-int v3, v3, v1

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v5, v5, p1

    mul-double v5, v5, p1

    div-double/2addr v3, v5

    .line 1415
    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a([[D[D)[[D
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1433
    array-length v2, v1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1435
    array-length v3, v0

    mul-int/lit8 v4, v2, 0x2

    sub-int v4, v3, v4

    add-int v5, v2, v4

    add-int/lit8 v5, v5, -0x1

    .line 1444
    filled-new-array {v3, v3}, [I

    move-result-object v6

    const-class v7, D

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    const/4 v8, 0x0

    :goto_0
    const-wide/16 v9, 0x0

    if-ge v8, v3, :cond_4

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v3, :cond_3

    .line 1454
    aget-object v12, v0, v8

    aget-wide v13, v12, v11

    cmpl-double v12, v13, v9

    if-eqz v12, :cond_2

    add-int v12, v8, v2

    if-ge v5, v12, :cond_0

    move v12, v5

    :cond_0
    add-int/lit8 v12, v12, 0x1

    sub-int v15, v8, v2

    if-le v2, v15, :cond_1

    move/from16 v16, v2

    goto :goto_2

    :cond_1
    move/from16 v16, v15

    :goto_2
    move/from16 v7, v16

    :goto_3
    if-ge v7, v12, :cond_2

    .line 1471
    aget-object v16, v6, v7

    aget-wide v17, v16, v11

    sub-int v19, v7, v15

    aget-wide v19, v1, v19

    mul-double v19, v19, v13

    add-double v17, v17, v19

    aput-wide v17, v16, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1478
    :cond_4
    filled-new-array {v4, v4}, [I

    move-result-object v0

    const-class v4, D

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v4, v2

    :goto_4
    add-int/lit8 v7, v5, 0x1

    if-ge v4, v7, :cond_9

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v3, :cond_8

    .line 1491
    aget-object v8, v6, v4

    aget-wide v11, v8, v7

    cmpl-double v8, v11, v9

    if-eqz v8, :cond_7

    add-int v8, v7, v2

    if-ge v5, v8, :cond_5

    move v8, v5

    :cond_5
    add-int/lit8 v8, v8, 0x1

    sub-int v13, v7, v2

    if-le v2, v13, :cond_6

    move v14, v2

    goto :goto_6

    :cond_6
    move v14, v13

    :goto_6
    if-ge v14, v8, :cond_7

    sub-int v15, v4, v2

    .line 1507
    aget-object v15, v0, v15

    sub-int v16, v14, v2

    aget-wide v17, v15, v16

    sub-int v19, v14, v13

    aget-wide v19, v1, v19

    mul-double v19, v19, v11

    add-double v17, v17, v19

    aput-wide v17, v15, v16

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    return-object v0
.end method

.method private b(II)Lcom/baidu/mapapi/map/HeatMapData;
    .locals 3

    .line 1081
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->l:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    return-object v1

    .line 1087
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    .line 1090
    iget-object v2, p0, Lcom/baidu/mapapi/map/HeatMap;->z:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/baidu/mapapi/map/HeatMap;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_2

    .line 1091
    iget-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->z:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    .line 1092
    aget-wide v1, p1, p2

    double-to-float v1, v1

    .line 1095
    :cond_2
    new-instance p1, Lcom/baidu/mapapi/map/HeatMapData;

    invoke-direct {p1, v0, v1}, Lcom/baidu/mapapi/map/HeatMapData;-><init>(Ljava/util/Collection;F)V

    return-object p1
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;>;"
        }
    .end annotation

    .line 996
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 998
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 999
    invoke-static {v1}, Lcom/baidu/mapapi/map/HeatMap;->c(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1000
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private b(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;)V"
        }
    .end annotation

    .line 923
    iput-object p1, p0, Lcom/baidu/mapapi/map/HeatMap;->k:Ljava/util/Collection;

    .line 928
    iget-object p1, p0, Lcom/baidu/mapapi/map/HeatMap;->k:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 929
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: No input points."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 941
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/HeatMap;->k:Ljava/util/Collection;

    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap;->d(Ljava/util/Collection;)Lcom/baidu/mapapi/map/v;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/map/HeatMap;->u:Lcom/baidu/mapapi/map/v;

    .line 945
    new-instance p1, Lcom/baidu/mapapi/map/ah;

    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->u:Lcom/baidu/mapapi/map/v;

    invoke-direct {p1, v0}, Lcom/baidu/mapapi/map/ah;-><init>(Lcom/baidu/mapapi/map/v;)V

    iput-object p1, p0, Lcom/baidu/mapapi/map/HeatMap;->j:Lcom/baidu/mapapi/map/ah;

    .line 948
    iget-object p1, p0, Lcom/baidu/mapapi/map/HeatMap;->k:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/WeightedLatLng;

    .line 949
    iget-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->j:Lcom/baidu/mapapi/map/ah;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/ah;->a(Lcom/baidu/mapapi/map/ah$a;)V

    goto :goto_0

    .line 955
    :cond_1
    iget p1, p0, Lcom/baidu/mapapi/map/HeatMap;->q:I

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/HeatMap;->a(I)[D

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/map/HeatMap;->y:[D

    return-void
.end method

.method private static c(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;"
        }
    .end annotation

    .line 980
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 982
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    .line 983
    new-instance v2, Lcom/baidu/mapapi/map/WeightedLatLng;

    invoke-direct {v2, v1}, Lcom/baidu/mapapi/map/WeightedLatLng;-><init>(Lcom/baidu/mapapi/model/LatLng;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static d(Ljava/util/Collection;)Lcom/baidu/mapapi/map/v;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;)",
            "Lcom/baidu/mapapi/map/v;"
        }
    .end annotation

    .line 1374
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1376
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/WeightedLatLng;

    .line 1378
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/WeightedLatLng;->getPoint()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    .line 1379
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/WeightedLatLng;->getPoint()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-double v4, v4

    .line 1380
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/WeightedLatLng;->getPoint()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-double v6, v6

    .line 1381
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/WeightedLatLng;->getPoint()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-double v8, v1

    move-wide v11, v2

    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v17, v8

    .line 1383
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1384
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/WeightedLatLng;

    .line 1385
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/WeightedLatLng;->getPoint()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    .line 1386
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/WeightedLatLng;->getPoint()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-double v4, v1

    cmpg-double v1, v2, v11

    if-gez v1, :cond_1

    move-wide v11, v2

    :cond_1
    cmpl-double v1, v2, v13

    if-lez v1, :cond_2

    move-wide v13, v2

    :cond_2
    cmpg-double v1, v4, v15

    if-gez v1, :cond_3

    move-wide v15, v4

    :cond_3
    cmpl-double v1, v4, v17

    if-lez v1, :cond_0

    move-wide/from16 v17, v4

    goto :goto_0

    .line 1398
    :cond_4
    new-instance v0, Lcom/baidu/mapapi/map/v;

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/baidu/mapapi/map/v;-><init>(DDDD)V

    return-object v0
.end method

.method private declared-synchronized d()V
    .locals 1

    monitor-enter p0

    .line 1129
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1130
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 1128
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 1110
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->C:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1111
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 1109
    monitor-exit p0

    throw v0
.end method

.method b()V
    .locals 0

    .line 1134
    invoke-direct {p0}, Lcom/baidu/mapapi/map/HeatMap;->d()V

    return-void
.end method

.method c()V
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->B:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method protected getData(II)Lcom/baidu/mapapi/map/HeatMapData;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x17

    if-gt p2, v1, :cond_4

    const/4 v1, 0x4

    if-ge p2, v1, :cond_0

    goto :goto_0

    .line 1057
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->l:Ljava/util/List;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->k:Ljava/util/Collection;

    if-nez v1, :cond_1

    return-object v0

    .line 1059
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->l:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1060
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/HeatMap;->b(II)Lcom/baidu/mapapi/map/HeatMapData;

    move-result-object p1

    return-object p1

    .line 1061
    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->k:Ljava/util/Collection;

    if-eqz v1, :cond_3

    .line 1062
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/HeatMap;->a(II)Lcom/baidu/mapapi/map/HeatMapData;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public getMaxHigh()I
    .locals 1

    .line 876
    iget v0, p0, Lcom/baidu/mapapi/map/HeatMap;->f:I

    return v0
.end method

.method public isFrameAnimation()Z
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->o:Lcom/baidu/mapapi/map/HeatMapAnimation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->o:Lcom/baidu/mapapi/map/HeatMapAnimation;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/HeatMapAnimation;->getIsAnimation()Z

    move-result v0

    return v0
.end method

.method public isInitAnimation()Z
    .locals 1

    .line 887
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->p:Lcom/baidu/mapapi/map/HeatMapAnimation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->p:Lcom/baidu/mapapi/map/HeatMapAnimation;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/HeatMapAnimation;->getIsAnimation()Z

    move-result v0

    return v0
.end method

.method public removeHeatMap()V
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->a:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/HeatMap;)V

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 904
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->k:Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 905
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap;->k:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    :cond_2
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 1642
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "grid_size"

    .line 1643
    iget v2, p0, Lcom/baidu/mapapi/map/HeatMap;->D:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "point_size_meter"

    .line 1644
    iget v2, p0, Lcom/baidu/mapapi/map/HeatMap;->r:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "point_size"

    .line 1645
    iget v2, p0, Lcom/baidu/mapapi/map/HeatMap;->q:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "max_hight"

    .line 1646
    iget v2, p0, Lcom/baidu/mapapi/map/HeatMap;->f:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "alpha"

    .line 1647
    iget-wide v2, p0, Lcom/baidu/mapapi/map/HeatMap;->t:D

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1648
    iget-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->l:Ljava/util/List;

    if-eqz v1, :cond_0

    const-string v1, "frame_count"

    .line 1649
    iget-object v2, p0, Lcom/baidu/mapapi/map/HeatMap;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1650
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/HeatMap;->k:Ljava/util/Collection;

    if-eqz v1, :cond_1

    const-string v1, "frame_count"

    const/4 v2, 0x1

    .line 1651
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    const-string v1, "color_array"

    .line 1653
    iget-object v2, p0, Lcom/baidu/mapapi/map/HeatMap;->v:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v1, "color_start_points"

    .line 1654
    iget-object v2, p0, Lcom/baidu/mapapi/map/HeatMap;->w:[F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    const-string v1, "is_need_init_animation"

    .line 1655
    iget-object v2, p0, Lcom/baidu/mapapi/map/HeatMap;->p:Lcom/baidu/mapapi/map/HeatMapAnimation;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/HeatMapAnimation;->getIsAnimation()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "is_need_frame_animation"

    .line 1656
    iget-object v2, p0, Lcom/baidu/mapapi/map/HeatMap;->o:Lcom/baidu/mapapi/map/HeatMapAnimation;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/HeatMapAnimation;->getIsAnimation()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "point_size_is_meter"

    .line 1657
    iget-boolean v2, p0, Lcom/baidu/mapapi/map/HeatMap;->g:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "init_animation_duration"

    .line 1658
    iget-object v2, p0, Lcom/baidu/mapapi/map/HeatMap;->p:Lcom/baidu/mapapi/map/HeatMapAnimation;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/HeatMapAnimation;->getDuration()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "init_animation_type"

    .line 1659
    iget-object v2, p0, Lcom/baidu/mapapi/map/HeatMap;->p:Lcom/baidu/mapapi/map/HeatMapAnimation;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/HeatMapAnimation;->getAnimationType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "frame_animation_duration"

    .line 1660
    iget-object v2, p0, Lcom/baidu/mapapi/map/HeatMap;->o:Lcom/baidu/mapapi/map/HeatMapAnimation;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/HeatMapAnimation;->getDuration()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "frame_animation_type"

    .line 1661
    iget-object v2, p0, Lcom/baidu/mapapi/map/HeatMap;->o:Lcom/baidu/mapapi/map/HeatMapAnimation;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/HeatMapAnimation;->getAnimationType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "max_intentity"

    .line 1662
    iget v2, p0, Lcom/baidu/mapapi/map/HeatMap;->m:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "min_intentity"

    .line 1663
    iget v2, p0, Lcom/baidu/mapapi/map/HeatMap;->n:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "max_show_level"

    .line 1664
    iget v2, p0, Lcom/baidu/mapapi/map/HeatMap;->h:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "min_show_level"

    .line 1665
    iget v2, p0, Lcom/baidu/mapapi/map/HeatMap;->i:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public updateData(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 771
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 774
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: input points can not contain null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 777
    :cond_1
    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap;->c(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/HeatMap;->updateWeightedData(Ljava/util/Collection;)V

    return-void

    .line 772
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: No input points."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateDatas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 785
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 788
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: input points can not contain null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 791
    :cond_1
    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/HeatMap;->updateWeightedDatas(Ljava/util/List;)V

    return-void

    .line 786
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: No input datas."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateFrameAnimation(Lcom/baidu/mapapi/map/HeatMapAnimation;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/baidu/mapapi/map/HeatMap;->o:Lcom/baidu/mapapi/map/HeatMapAnimation;

    return-void
.end method

.method public updateGradient(Lcom/baidu/mapapi/map/Gradient;)V
    .locals 1

    if-nez p1, :cond_0

    .line 698
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: gradient can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 700
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/HeatMap;->s:Lcom/baidu/mapapi/map/Gradient;

    .line 701
    iget-object p1, p0, Lcom/baidu/mapapi/map/HeatMap;->s:Lcom/baidu/mapapi/map/Gradient;

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/HeatMap;->a(Lcom/baidu/mapapi/map/Gradient;)V

    return-void
.end method

.method public updateIsRadiusMeter(Z)V
    .locals 0

    .line 687
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/HeatMap;->g:Z

    return-void
.end method

.method public updateMaxHigh(I)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xc8

    if-le p1, v0, :cond_1

    .line 675
    iput v0, p0, Lcom/baidu/mapapi/map/HeatMap;->f:I

    return-void

    .line 679
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/map/HeatMap;->f:I

    return-void
.end method

.method public updateMaxIntensity(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 592
    iget v0, p0, Lcom/baidu/mapapi/map/HeatMap;->n:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 595
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/HeatMap;->m:F

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public updateMaxShowLevel(I)V
    .locals 1

    .line 734
    iget v0, p0, Lcom/baidu/mapapi/map/HeatMap;->i:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x16

    if-le p1, v0, :cond_1

    .line 738
    iput v0, p0, Lcom/baidu/mapapi/map/HeatMap;->h:I

    return-void

    .line 741
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/map/HeatMap;->h:I

    return-void
.end method

.method public updateMinIntensity(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 605
    iput v0, p0, Lcom/baidu/mapapi/map/HeatMap;->n:F

    return-void

    .line 609
    :cond_0
    iget v0, p0, Lcom/baidu/mapapi/map/HeatMap;->m:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    return-void

    .line 612
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/map/HeatMap;->n:F

    return-void
.end method

.method public updateMinShowLevel(I)V
    .locals 1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 754
    iput v0, p0, Lcom/baidu/mapapi/map/HeatMap;->i:I

    return-void

    .line 757
    :cond_0
    iget v0, p0, Lcom/baidu/mapapi/map/HeatMap;->h:I

    if-le p1, v0, :cond_1

    return-void

    .line 761
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/map/HeatMap;->i:I

    return-void
.end method

.method public updateOpacity(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    .line 713
    iput-wide v0, p0, Lcom/baidu/mapapi/map/HeatMap;->t:D

    return-void

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    .line 718
    iput-wide v0, p0, Lcom/baidu/mapapi/map/HeatMap;->t:D

    return-void

    .line 722
    :cond_1
    iput-wide p1, p0, Lcom/baidu/mapapi/map/HeatMap;->t:D

    return-void
.end method

.method public updateRadius(I)V
    .locals 1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 632
    iput v0, p0, Lcom/baidu/mapapi/map/HeatMap;->q:I

    return-void

    :cond_0
    const/16 v0, 0x32

    if-le p1, v0, :cond_1

    .line 636
    iput v0, p0, Lcom/baidu/mapapi/map/HeatMap;->q:I

    return-void

    .line 640
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/map/HeatMap;->q:I

    return-void
.end method

.method public updateRadiusMeter(I)V
    .locals 1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 652
    iput v0, p0, Lcom/baidu/mapapi/map/HeatMap;->r:I

    return-void

    :cond_0
    const/16 v0, 0x32

    if-le p1, v0, :cond_1

    .line 656
    iput v0, p0, Lcom/baidu/mapapi/map/HeatMap;->r:I

    return-void

    .line 660
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/map/HeatMap;->r:I

    return-void
.end method

.method public updateWeightedData(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 802
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 805
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 806
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: input points can not contain null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 808
    :cond_1
    iput-object p1, p0, Lcom/baidu/mapapi/map/HeatMap;->k:Ljava/util/Collection;

    return-void

    .line 803
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: No input points."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateWeightedDatas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 817
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 820
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: input points can not contain null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 824
    :cond_1
    iput-object p1, p0, Lcom/baidu/mapapi/map/HeatMap;->l:Ljava/util/List;

    return-void

    .line 818
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: No input points."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
