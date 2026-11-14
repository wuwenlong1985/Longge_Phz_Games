.class public Lcom/baidu/platform/comapi/map/MapSurfaceView;
.super Lcom/baidu/platform/comapi/map/ai;
.source "MapSurfaceView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/baidu/platform/comapi/map/MapRenderModeChangeListener;
.implements Lcom/baidu/platform/comapi/map/MapViewInterface;
.implements Lcom/baidu/platform/comapi/map/aj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platform/comapi/map/MapSurfaceView$b;,
        Lcom/baidu/platform/comapi/map/MapSurfaceView$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/util/concurrent/ExecutorService;

.field private static s:I


# instance fields
.field private B:I

.field private C:I

.field private D:I

.field protected a:Lcom/baidu/platform/comapi/map/MapController;

.field protected b:Lcom/baidu/platform/comapi/map/ae;

.field protected c:Lcom/baidu/platform/comapi/map/k;

.field protected d:Lcom/baidu/platform/comapi/map/o;

.field protected volatile e:Z

.field protected f:Z

.field protected g:Lcom/baidu/platform/comapi/map/am;

.field protected h:Landroid/view/GestureDetector;

.field protected i:Lcom/baidu/platform/comapi/map/ab;

.field protected j:Lcom/baidu/mapsdkplatform/comapi/map/c;

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Z

.field private volatile o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/baidu/platform/comapi/map/LocationOverlay;

.field private t:Z

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/bmsdk/BmLayer;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private w:I

.field private x:I

.field private y:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/baidu/platform/comapi/map/aa;",
            ">;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->A:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 116
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/ai;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->l:Z

    .line 65
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->m:Z

    .line 66
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->n:Z

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->o:Z

    .line 69
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->p:Z

    .line 70
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->q:Z

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 73
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/ae;

    .line 74
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->c:Lcom/baidu/platform/comapi/map/k;

    .line 81
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->e:Z

    .line 83
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->t:Z

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->u:Ljava/util/List;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    .line 90
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    .line 91
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    .line 93
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->y:Ljava/util/HashSet;

    .line 95
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->f:Z

    .line 106
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->z:Z

    .line 970
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->B:I

    .line 971
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->C:I

    .line 972
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->D:I

    .line 117
    sget p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->s:I

    add-int/2addr p1, v0

    sput p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->s:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/comapi/map/ai;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->l:Z

    .line 65
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->m:Z

    .line 66
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->n:Z

    const/4 p2, 0x1

    .line 67
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->o:Z

    .line 69
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->p:Z

    .line 70
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->q:Z

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 73
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/ae;

    .line 74
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->c:Lcom/baidu/platform/comapi/map/k;

    .line 81
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->e:Z

    .line 83
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->t:Z

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->u:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    .line 90
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    .line 91
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->y:Ljava/util/HashSet;

    .line 95
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->f:Z

    .line 106
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->z:Z

    .line 970
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->B:I

    .line 971
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->C:I

    .line 972
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->D:I

    .line 122
    sget p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->s:I

    add-int/2addr p1, p2

    sput p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->s:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/ah$a;)V
    .locals 1

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/comapi/map/ai;-><init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/ah$a;)V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->l:Z

    .line 65
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->m:Z

    .line 66
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->n:Z

    const/4 p2, 0x1

    .line 67
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->o:Z

    .line 69
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->p:Z

    .line 70
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->q:Z

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 73
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/ae;

    .line 74
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->c:Lcom/baidu/platform/comapi/map/k;

    .line 81
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->e:Z

    .line 83
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->t:Z

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->u:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    .line 90
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    .line 91
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->y:Ljava/util/HashSet;

    .line 95
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->f:Z

    .line 106
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->z:Z

    .line 970
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->B:I

    .line 971
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->C:I

    .line 972
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->D:I

    .line 127
    sget p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->s:I

    add-int/2addr p1, p2

    sput p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->s:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/ah$a;Z)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/platform/comapi/map/ai;-><init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/ah$a;Z)V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->l:Z

    .line 65
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->m:Z

    .line 66
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->n:Z

    const/4 p2, 0x1

    .line 67
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->o:Z

    .line 69
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->p:Z

    .line 70
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->q:Z

    const/4 p3, 0x0

    .line 72
    iput-object p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 73
    iput-object p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/ae;

    .line 74
    iput-object p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->c:Lcom/baidu/platform/comapi/map/k;

    .line 81
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->e:Z

    .line 83
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->t:Z

    .line 86
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->u:Ljava/util/List;

    .line 89
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    .line 90
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    .line 91
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    .line 93
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->y:Ljava/util/HashSet;

    .line 95
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->f:Z

    .line 106
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->z:Z

    .line 970
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->B:I

    .line 971
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->C:I

    .line 972
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->D:I

    .line 132
    sget p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->s:I

    add-int/2addr p1, p2

    sput p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->s:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/comapi/map/ai;-><init>(Landroid/content/Context;Z)V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->l:Z

    .line 65
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->m:Z

    .line 66
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->n:Z

    const/4 p2, 0x1

    .line 67
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->o:Z

    .line 69
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->p:Z

    .line 70
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->q:Z

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 73
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/ae;

    .line 74
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->c:Lcom/baidu/platform/comapi/map/k;

    .line 81
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->e:Z

    .line 83
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->t:Z

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->u:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    .line 90
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    .line 91
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->y:Ljava/util/HashSet;

    .line 95
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->f:Z

    .line 106
    iput-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->z:Z

    .line 970
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->B:I

    .line 971
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->C:I

    .line 972
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->D:I

    .line 137
    sget p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->s:I

    add-int/2addr p1, p2

    sput p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->s:I

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/comapi/map/MapSurfaceView;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->m:Z

    return p0
.end method

.method static synthetic b(Lcom/baidu/platform/comapi/map/MapSurfaceView;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->l:Z

    return p0
.end method

.method static synthetic c(Lcom/baidu/platform/comapi/map/MapSurfaceView;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->n:Z

    return p0
.end method

.method static synthetic d(Lcom/baidu/platform/comapi/map/MapSurfaceView;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->u:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/baidu/platform/comapi/map/ah$a;ZLandroid/content/Context;)Lcom/baidu/platform/comapi/map/ag;
    .locals 1

    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/platform/comapi/map/ai;->a(Lcom/baidu/platform/comapi/map/ah$a;ZLandroid/content/Context;)Lcom/baidu/platform/comapi/map/ag;

    move-result-object p1

    .line 146
    instance-of p2, p1, Lcom/baidu/platform/comapi/map/f;

    if-eqz p2, :cond_0

    .line 147
    move-object p2, p1

    check-cast p2, Lcom/baidu/platform/comapi/map/f;

    .line 148
    iget-boolean p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->z:Z

    if-eqz p3, :cond_0

    .line 149
    new-instance p3, Lcom/baidu/platform/comapi/map/MapSurfaceView$a;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView$a;-><init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;Lcom/baidu/platform/comapi/map/s;)V

    invoke-virtual {p2, p3}, Lcom/baidu/platform/comapi/map/f;->a(Lcom/baidu/platform/comapi/map/f$f;)V

    :cond_0
    return-object p1
.end method

.method protected a()V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/ae;

    if-nez v0, :cond_2

    return-void

    .line 536
    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 537
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/ae;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/ae;->a()V

    return-void
.end method

.method protected a(Landroid/content/Context;Lcom/baidu/platform/comapi/map/ah$a;Z)V
    .locals 1

    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/baidu/platform/comapi/map/ai;->a(Landroid/content/Context;Lcom/baidu/platform/comapi/map/ah$a;Z)V

    const/16 p2, 0xf4

    const/16 p3, 0xf2

    const/16 v0, 0xf0

    .line 168
    invoke-static {p2, p3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setBackgroundColor(I)V

    const/4 p2, 0x0

    .line 170
    invoke-virtual {p0, p2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setPixelFormatTransparent(Z)V

    .line 171
    new-instance p2, Lcom/baidu/platform/comapi/map/am;

    invoke-direct {p2}, Lcom/baidu/platform/comapi/map/am;-><init>()V

    iput-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->g:Lcom/baidu/platform/comapi/map/am;

    .line 172
    new-instance p2, Landroid/view/GestureDetector;

    iget-object p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->g:Lcom/baidu/platform/comapi/map/am;

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->h:Landroid/view/GestureDetector;

    .line 173
    new-instance p1, Lcom/baidu/platform/comapi/map/o;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, p2, p0}, Lcom/baidu/platform/comapi/map/o;-><init>(Ljava/lang/ref/WeakReference;Lcom/baidu/platform/comapi/map/aj;)V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/o;

    .line 175
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/o;

    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setRenderer(Lcom/baidu/platform/comapi/map/SurfaceRenderer;)V

    const/4 p1, 0x1

    .line 176
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setRenderMode(I)V

    .line 179
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->g:Lcom/baidu/platform/comapi/map/am;

    new-instance p2, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/baidu/platform/comapi/map/MapSurfaceView$b;-><init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;Lcom/baidu/platform/comapi/map/s;)V

    invoke-virtual {p1, p2}, Lcom/baidu/platform/comapi/map/am;->a(Landroid/view/GestureDetector$SimpleOnGestureListener;)V

    .line 180
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 181
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object p1

    const-string p2, "BasicMap surfaceView initView"

    .line 182
    invoke-virtual {p1, p2}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addBmLayer(Lcom/baidu/platform/comapi/bmsdk/BmLayer;)Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 564
    invoke-virtual {p0, v0, v1, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->addBmLayerBelow(JLcom/baidu/platform/comapi/bmsdk/BmLayer;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized addBmLayerBelow(JLcom/baidu/platform/comapi/bmsdk/BmLayer;)Z
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 584
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v1, :cond_0

    goto :goto_0

    .line 587
    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 589
    monitor-exit p0

    return v0

    .line 591
    :cond_1
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 592
    :try_start_2
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->u:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 593
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    .line 595
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->u:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 598
    :try_start_4
    invoke-virtual {p3}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->getNativeInstance()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-wide v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->addBmLayerBelow(JJII)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 596
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    .line 583
    monitor-exit p0

    throw p1

    .line 585
    :cond_3
    :goto_0
    monitor-exit p0

    return v0
.end method

.method public addBmLayerBelow(Lcom/baidu/platform/comapi/map/Overlay;Lcom/baidu/platform/comapi/bmsdk/BmLayer;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 577
    iget-wide v0, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {p0, v0, v1, p2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->addBmLayerBelow(JLcom/baidu/platform/comapi/bmsdk/BmLayer;)Z

    move-result p1

    return p1

    :cond_0
    const-wide/16 v0, 0x0

    .line 579
    invoke-virtual {p0, v0, v1, p2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->addBmLayerBelow(JLcom/baidu/platform/comapi/bmsdk/BmLayer;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized addOverlay(Lcom/baidu/platform/comapi/map/Overlay;)Z
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 633
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 636
    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_1

    .line 638
    monitor-exit p0

    return v0

    .line 641
    :cond_1
    :try_start_1
    instance-of v2, p1, Lcom/baidu/platform/comapi/map/ao;

    if-eqz v2, :cond_2

    .line 642
    check-cast p1, Lcom/baidu/platform/comapi/map/InnerOverlay;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/InnerOverlay;->addedToMapView()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p0

    return p1

    .line 643
    :cond_2
    :try_start_2
    instance-of v2, p1, Lcom/baidu/platform/comapi/map/InnerOverlay;

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 645
    move-object v1, p1

    check-cast v1, Lcom/baidu/platform/comapi/map/InnerOverlay;

    iget-object v1, v1, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v1, :cond_3

    .line 646
    move-object v1, p1

    check-cast v1, Lcom/baidu/platform/comapi/map/InnerOverlay;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    .line 648
    :cond_3
    move-object v1, p1

    check-cast v1, Lcom/baidu/platform/comapi/map/InnerOverlay;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/InnerOverlay;->addedToMapView()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 649
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 650
    :try_start_3
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/ae;

    check-cast p1, Lcom/baidu/platform/comapi/map/InnerOverlay;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/ae;->a(Lcom/baidu/platform/comapi/map/InnerOverlay;)V

    .line 652
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 653
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    .line 652
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 655
    :cond_4
    monitor-exit p0

    return v0

    .line 657
    :cond_5
    :try_start_6
    instance-of v2, p1, Lcom/baidu/platform/comapi/map/ItemizedOverlay;

    if-eqz v2, :cond_7

    .line 658
    move-object v2, p1

    check-cast v2, Lcom/baidu/platform/comapi/map/ItemizedOverlay;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/ItemizedOverlay;->getUpdateType()I

    move-result v2

    const-string v4, "item"

    invoke-virtual {v1, v2, v0, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->AddLayer(IILjava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    .line 660
    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_6

    .line 661
    monitor-exit p0

    return v0

    .line 663
    :cond_6
    :try_start_7
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 664
    :try_start_8
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 666
    :try_start_9
    move-object v0, p1

    check-cast v0, Lcom/baidu/platform/comapi/map/ItemizedOverlay;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/ItemizedOverlay;->a()V

    .line 668
    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v4, v5, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetLayersClickable(JZ)V

    .line 669
    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v4, v5, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    .line 670
    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v4, v5}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 671
    monitor-exit p0

    return v3

    :catchall_1
    move-exception p1

    .line 665
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 673
    :cond_7
    monitor-exit p0

    return v0

    :catchall_2
    move-exception p1

    .line 632
    monitor-exit p0

    throw p1

    .line 634
    :cond_8
    :goto_0
    monitor-exit p0

    return v0
.end method

.method public addSimpleOnGestureListener(Landroid/view/GestureDetector$SimpleOnGestureListener;)V
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->g:Lcom/baidu/platform/comapi/map/am;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/am;->a(Landroid/view/GestureDetector$SimpleOnGestureListener;)V

    return-void
.end method

.method public addStateListener(Lcom/baidu/platform/comapi/map/aa;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->y:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public animateTo(Lcom/baidu/platform/comapi/map/MapStatus;I)V
    .locals 1

    .line 1003
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatusWithAnimation(Lcom/baidu/platform/comapi/map/MapStatus;I)V

    :cond_0
    return-void
.end method

.method public animateTo(Lcom/baidu/platform/comapi/map/MapStatus;II)V
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatusWithAnimation(Lcom/baidu/platform/comapi/map/MapStatus;II)V

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 553
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a()V

    return-void
.end method

.method public beginLocationLayerAnimation()V
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->r:Lcom/baidu/platform/comapi/map/LocationOverlay;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->r:Lcom/baidu/platform/comapi/map/LocationOverlay;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/LocationOverlay;->beginLocationLayerAnimation()V

    :cond_0
    return-void
.end method

.method public bridge synthetic captureImageFromSurface(IIIILjava/lang/Object;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0

    .line 58
    invoke-super/range {p0 .. p6}, Lcom/baidu/platform/comapi/map/ai;->captureImageFromSurface(IIIILjava/lang/Object;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public clearDefaultLocationLayerData(Landroid/os/Bundle;)V
    .locals 1

    .line 1040
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->r:Lcom/baidu/platform/comapi/map/LocationOverlay;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/LocationOverlay;->clearLocationLayerData(Landroid/os/Bundle;)V

    return-void
.end method

.method public doCaptureMapView(Lcom/baidu/platform/comapi/map/c;II)V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/o;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comapi/map/o;->a(Lcom/baidu/platform/comapi/map/c;II)V

    return-void
.end method

.method public doCaptureMapView(Lcom/baidu/platform/comapi/map/c;IILandroid/graphics/Bitmap$Config;)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/o;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/platform/comapi/map/o;->a(Lcom/baidu/platform/comapi/map/c;IILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public doCaptureMapView(Lcom/baidu/platform/comapi/map/c;Landroid/graphics/Rect;Landroid/graphics/Bitmap$Config;)V
    .locals 7

    if-eqz p2, :cond_7

    .line 478
    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 479
    iget v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_0

    .line 482
    :cond_0
    iget v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    move v3, v0

    .line 484
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 485
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ltz v2, :cond_6

    if-ltz v3, :cond_6

    if-lez v0, :cond_6

    if-gtz v1, :cond_1

    goto :goto_3

    .line 490
    :cond_1
    iget v4, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    if-le v0, v4, :cond_2

    .line 491
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    sub-int/2addr v4, v5

    sub-int/2addr v0, v4

    :cond_2
    move v4, v0

    .line 493
    iget v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    if-le v1, v0, :cond_3

    .line 494
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    sub-int/2addr p2, v1

    sub-int/2addr v0, p2

    move v5, v0

    goto :goto_1

    :cond_3
    move v5, v1

    .line 497
    :goto_1
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getScreenSizeX()I

    move-result p2

    if-gt v2, p2, :cond_5

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getScreenSizeY()I

    move-result p2

    if-le v3, p2, :cond_4

    goto :goto_2

    .line 500
    :cond_4
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/o;

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/platform/comapi/map/o;->a(Lcom/baidu/platform/comapi/map/c;IIIILandroid/graphics/Bitmap$Config;)V

    .line 501
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->requestRender()V

    goto :goto_4

    :cond_5
    :goto_2
    return-void

    :cond_6
    :goto_3
    return-void

    :cond_7
    :goto_4
    return-void
.end method

.method public enable3D()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public forceSetTraffic(Z)V
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 934
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->l:Z

    .line 936
    :cond_0
    sget-object p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->A:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/baidu/platform/comapi/map/t;

    invoke-direct {v0, p0}, Lcom/baidu/platform/comapi/map/t;-><init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/c;
    .locals 1

    .line 1512
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    return-object v0
.end method

.method public getBmlayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/bmsdk/BmLayer;",
            ">;"
        }
    .end annotation

    .line 628
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->u:Ljava/util/List;

    return-object v0
.end method

.method public getController()Lcom/baidu/platform/comapi/map/MapController;
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    return-object v0
.end method

.method public getCurrentMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;
    .locals 1

    .line 1206
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getCurrentMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentZoomLevel()F
    .locals 1

    .line 1121
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getCurrentZoomLevel()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic getDebugFlags()I
    .locals 1

    .line 58
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/ai;->getDebugFlags()I

    move-result v0

    return v0
.end method

.method public getDefaultLocationLay()Lcom/baidu/platform/comapi/map/LocationOverlay;
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->r:Lcom/baidu/platform/comapi/map/LocationOverlay;

    return-object v0
.end method

.method public getFPS()I
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->k:Lcom/baidu/platform/comapi/map/ag;

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/ag;->e()I

    move-result v0

    return v0
.end method

.method public getFZoomToBoundF(Lcom/baidu/platform/comapi/basestruct/MapBound;Lcom/baidu/platform/comapi/basestruct/MapBound;)F
    .locals 3

    .line 1253
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1256
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "left"

    .line 1257
    iget-object v2, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->leftBottomPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "bottom"

    .line 1258
    iget-object v2, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->leftBottomPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "right"

    .line 1259
    iget-object v2, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->rightTopPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "top"

    .line 1260
    iget-object p1, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->rightTopPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1262
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "left"

    .line 1263
    iget-object v2, p2, Lcom/baidu/platform/comapi/basestruct/MapBound;->leftBottomPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "bottom"

    .line 1264
    iget-object v2, p2, Lcom/baidu/platform/comapi/basestruct/MapBound;->leftBottomPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "right"

    .line 1265
    iget-object v2, p2, Lcom/baidu/platform/comapi/basestruct/MapBound;->rightTopPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "top"

    .line 1266
    iget-object p2, p2, Lcom/baidu/platform/comapi/basestruct/MapBound;->rightTopPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1267
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p2, v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->GetFZoomToBoundF(Landroid/os/Bundle;Landroid/os/Bundle;)F

    move-result p1

    return p1
.end method

.method public getGeoRound()Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;
    .locals 1

    .line 1185
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 1189
    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    return-object v0
.end method

.method public getLatitudeSpan()I
    .locals 5

    .line 842
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 843
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/k;

    .line 844
    iget-object v2, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v2, v2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    iget-object v3, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v3, v3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comapi/map/k;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    .line 845
    iget-object v3, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v3, v3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    add-int/lit8 v3, v3, -0x1

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v0, v0, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v3, v0}, Lcom/baidu/platform/comapi/map/k;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 847
    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getLongitudeSpan()I
    .locals 4

    .line 852
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 853
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/k;

    .line 854
    iget-object v2, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v2, v2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    iget-object v3, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v3, v3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comapi/map/k;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    .line 855
    iget-object v3, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v3, v3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    add-int/lit8 v3, v3, -0x1

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v0, v0, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v3, v0}, Lcom/baidu/platform/comapi/map/k;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 857
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getMapCenter()Lcom/baidu/platform/comapi/basestruct/GeoPoint;
    .locals 6

    .line 1077
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 1081
    new-instance v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget-wide v2, v0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    iget-wide v4, v0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(DD)V

    return-object v1
.end method

.method public getMapRotation()I
    .locals 1

    .line 1135
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 1139
    iget v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    return v0
.end method

.method public getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;
    .locals 1

    .line 1201
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewListener()Lcom/baidu/platform/comapi/map/MapViewListener;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOnLongPressListener()Lcom/baidu/platform/comapi/map/OnLongPressListener;
    .locals 1

    .line 1373
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->g:Lcom/baidu/platform/comapi/map/am;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/am;->a()Lcom/baidu/platform/comapi/map/OnLongPressListener;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getOverlay(I)Lcom/baidu/platform/comapi/map/Overlay;
    .locals 4

    monitor-enter p0

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 867
    monitor-exit p0

    return-object v1

    .line 870
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/Overlay;

    .line 871
    iget v3, v2, Lcom/baidu/platform/comapi/map/Overlay;->mType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_1

    .line 872
    monitor-exit p0

    return-object v2

    .line 876
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 865
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getOverlay(Ljava/lang/Class;)Lcom/baidu/platform/comapi/map/Overlay;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/baidu/platform/comapi/map/Overlay;"
        }
    .end annotation

    monitor-enter p0

    .line 880
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/Overlay;

    .line 881
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 882
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 886
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 879
    monitor-exit p0

    throw p1
.end method

.method public getOverlays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/Overlay;",
            ">;"
        }
    .end annotation

    .line 862
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    return-object v0
.end method

.method public getOverlooking()D
    .locals 2

    .line 1153
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 1157
    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:D

    return-wide v0
.end method

.method public getProjection()Lcom/baidu/platform/comapi/map/Projection;
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->c:Lcom/baidu/platform/comapi/map/k;

    return-object v0
.end method

.method public bridge synthetic getRenderControl()Lcom/baidu/platform/comapi/map/ag;
    .locals 1

    .line 58
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/ai;->getRenderControl()Lcom/baidu/platform/comapi/map/ag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRenderMode()I
    .locals 1

    .line 58
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/ai;->getRenderMode()I

    move-result v0

    return v0
.end method

.method public getSingleThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 188
    sget-object v0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->A:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public bridge synthetic getViewType()Lcom/baidu/platform/comapi/map/ah$a;
    .locals 1

    .line 58
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/ai;->getViewType()Lcom/baidu/platform/comapi/map/ah$a;

    move-result-object v0

    return-object v0
.end method

.method public getWinRound()Lcom/baidu/platform/comapi/map/MapStatus$WinRound;
    .locals 1

    .line 1171
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 1175
    iget-object v0, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    return-object v0
.end method

.method public getZoomLevel()F
    .locals 1

    .line 1116
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getZoomLevel()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getZoomToBound(Lcom/baidu/platform/comapi/basestruct/MapBound;)F
    .locals 2

    .line 1218
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v0

    .line 1219
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getScreenWidth()I

    move-result v1

    .line 1220
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getScreenHeight()I

    move-result v0

    .line 1221
    invoke-virtual {p0, p1, v1, v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getZoomToBound(Lcom/baidu/platform/comapi/basestruct/MapBound;II)F

    move-result p1

    return p1
.end method

.method public getZoomToBound(Lcom/baidu/platform/comapi/basestruct/MapBound;II)F
    .locals 3

    .line 1226
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1230
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "left"

    .line 1231
    iget-object v2, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->leftBottomPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "bottom"

    .line 1232
    iget-object v2, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->leftBottomPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "right"

    .line 1233
    iget-object v2, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->rightTopPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "top"

    .line 1234
    iget-object p1, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->rightTopPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1236
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, v0, p2, p3}, Lcom/baidu/platform/comapi/map/MapController;->getZoomToBound(Landroid/os/Bundle;II)F

    move-result p1

    return p1
.end method

.method public getZoomToBoundF(Lcom/baidu/platform/comapi/basestruct/MapBound;)F
    .locals 2

    .line 1272
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v0

    .line 1273
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getScreenWidth()I

    move-result v1

    .line 1274
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getScreenHeight()I

    move-result v0

    .line 1275
    invoke-virtual {p0, p1, v1, v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getZoomToBoundF(Lcom/baidu/platform/comapi/basestruct/MapBound;II)F

    move-result p1

    return p1
.end method

.method public getZoomToBoundF(Lcom/baidu/platform/comapi/basestruct/MapBound;II)F
    .locals 1

    .line 1241
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1244
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "left"

    .line 1245
    iget-object v0, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->leftBottomPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "bottom"

    .line 1246
    iget-object v0, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->leftBottomPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "right"

    .line 1247
    iget-object v0, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->rightTopPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "top"

    .line 1248
    iget-object p1, p1, Lcom/baidu/platform/comapi/basestruct/MapBound;->rightTopPt:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1249
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, p2}, Lcom/baidu/platform/comapi/map/MapController;->getZoomToBoundF(Landroid/os/Bundle;)F

    move-result p1

    return p1
.end method

.method public inRangeOfView(FF)Z
    .locals 3

    const/4 v0, 0x0

    int-to-float v1, v0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_1

    .line 1518
    iget v2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-gtz p1, :cond_1

    cmpg-float p1, p2, v1

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public declared-synchronized insertOverlay(Lcom/baidu/platform/comapi/map/Overlay;I)Z
    .locals 1

    monitor-enter p0

    .line 684
    :try_start_0
    instance-of p2, p1, Lcom/baidu/platform/comapi/map/InnerOverlay;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz p2, :cond_1

    .line 685
    move-object p2, p1

    check-cast p2, Lcom/baidu/platform/comapi/map/InnerOverlay;

    iget-object p2, p2, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez p2, :cond_0

    .line 686
    move-object p2, p1

    check-cast p2, Lcom/baidu/platform/comapi/map/InnerOverlay;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    iput-object v0, p2, Lcom/baidu/platform/comapi/map/InnerOverlay;->mBaseMap:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    .line 696
    :cond_0
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/ae;

    check-cast p1, Lcom/baidu/platform/comapi/map/InnerOverlay;

    invoke-virtual {p2, p1}, Lcom/baidu/platform/comapi/map/ae;->a(Lcom/baidu/platform/comapi/map/InnerOverlay;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 p1, 0x0

    .line 699
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 683
    monitor-exit p0

    throw p1
.end method

.method public isBaseIndoorMap()Z
    .locals 1

    .line 1303
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->o:Z

    return v0
.end method

.method public isPredictTraffic()Z
    .locals 1

    .line 992
    iget v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->B:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->C:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->D:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSatellite()Z
    .locals 1

    .line 905
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->m:Z

    return v0
.end method

.method public isSetBackgroundDraw()Z
    .locals 1

    .line 1677
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1681
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->isSetBackgroundDraw()Z

    move-result v0

    return v0
.end method

.method public isStreetRoad()Z
    .locals 1

    .line 1298
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->n:Z

    return v0
.end method

.method public isTraffic()Z
    .locals 1

    .line 910
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->l:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 238
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/ai;->onAttachedToWindow()V

    .line 240
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->updateDrawFPS()V

    .line 244
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->f:Z

    :cond_1
    return-void
.end method

.method public onBackground()V
    .locals 1

    const/4 v0, 0x0

    .line 1384
    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->onBackground(Z)V

    return-void
.end method

.method public onBackground(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1388
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->q:Z

    if-eqz p1, :cond_0

    return-void

    .line 1394
    :cond_0
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1395
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnBackground()V

    :cond_1
    const/4 p1, 0x1

    .line 1397
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->q:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->updateDrawFPS()V

    .line 258
    :cond_0
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/ai;->onDetachedFromWindow()V

    .line 259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->f:Z

    :cond_1
    return-void
.end method

.method public onForeground()V
    .locals 1

    const/4 v0, 0x0

    .line 1404
    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->onForeground(Z)V

    return-void
.end method

.method public onForeground(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1408
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->q:Z

    if-eqz p1, :cond_3

    .line 1412
    :cond_0
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1413
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnForeground()V

    :cond_1
    const/4 p1, 0x0

    .line 1415
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->q:Z

    .line 1418
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->k:Lcom/baidu/platform/comapi/map/ag;

    invoke-interface {p1}, Lcom/baidu/platform/comapi/map/ag;->b()Lcom/baidu/platform/comapi/map/ah$a;

    move-result-object p1

    sget-object v0, Lcom/baidu/platform/comapi/map/ah$a;->b:Lcom/baidu/platform/comapi/map/ah$a;

    if-ne p1, v0, :cond_3

    .line 1419
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/o;

    if-eqz p1, :cond_2

    .line 1420
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/o;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/o;->a()V

    .line 1422
    :cond_2
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/ai;->onResume()V

    :cond_3
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    .line 772
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/16 p1, -0x32

    const/16 p3, 0x32

    packed-switch p2, :pswitch_data_0

    return v0

    .line 780
    :pswitch_0
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, p3, v0}, Lcom/baidu/platform/comapi/map/MapController;->scrollBy(II)V

    goto :goto_0

    .line 777
    :pswitch_1
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p2, p1, v0}, Lcom/baidu/platform/comapi/map/MapController;->scrollBy(II)V

    goto :goto_0

    .line 786
    :pswitch_2
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, v0, p3}, Lcom/baidu/platform/comapi/map/MapController;->scrollBy(II)V

    goto :goto_0

    .line 783
    :pswitch_3
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p2, v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->scrollBy(II)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMapRenderModeChange(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->requestRender()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 440
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getRenderMode()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 441
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setRenderMode(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 444
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->i:Lcom/baidu/platform/comapi/map/ab;

    if-eqz p1, :cond_2

    .line 445
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->i:Lcom/baidu/platform/comapi/map/ab;

    invoke-interface {p1}, Lcom/baidu/platform/comapi/map/ab;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 400
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->p:Z

    if-eqz v0, :cond_0

    return-void

    .line 404
    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    const-string v1, "BasicMap onPause"

    .line 406
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/o;

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/o;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/o;->b()V

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_3

    .line 418
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->onPause()V

    .line 420
    :cond_3
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->y:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/aa;

    .line 421
    invoke-interface {v1, p0}, Lcom/baidu/platform/comapi/map/aa;->a(Lcom/baidu/platform/comapi/map/MapSurfaceView;)V

    goto :goto_0

    .line 424
    :cond_4
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/ai;->onPause()V

    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->p:Z

    return-void
.end method

.method public onRecycle()V
    .locals 1

    .line 1329
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ResetImageRes()V

    :cond_0
    return-void
.end method

.method public onRequestRender()V
    .locals 0

    .line 452
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->requestRender()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 366
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->p:Z

    if-eqz v0, :cond_5

    .line 367
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BasicMap onResume isInited = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    .line 377
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->e:Z

    if-nez v0, :cond_1

    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/o;

    if-eqz v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/o;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/o;->a()V

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_3

    .line 386
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->onResume()V

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->y:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/aa;

    .line 389
    invoke-interface {v1, p0}, Lcom/baidu/platform/comapi/map/aa;->b(Lcom/baidu/platform/comapi/map/MapSurfaceView;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    .line 391
    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setRenderMode(I)V

    .line 393
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/ai;->onResume()V

    const/4 v0, 0x0

    .line 394
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->p:Z

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 809
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 810
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 812
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    .line 813
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    if-eqz v0, :cond_1

    .line 814
    iget-object v6, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v6, v6, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    if-lt v4, v6, :cond_1

    iget-object v6, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v6, v6, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    if-gt v4, v6, :cond_1

    iget-object v4, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v4, v4, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    if-lt v5, v4, :cond_1

    iget-object v4, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v4, v4, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    if-le v5, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2

    .line 821
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->h:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->h:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 825
    :cond_3
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    return v1

    .line 832
    :cond_4
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/ai;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 829
    :catch_0
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/ai;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic queueEvent(Ljava/lang/Runnable;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/ai;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refresh(Lcom/baidu/platform/comapi/map/Overlay;)V
    .locals 6

    if-eqz p1, :cond_4

    .line 1339
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1342
    :cond_0
    instance-of v0, p1, Lcom/baidu/platform/comapi/map/ItemizedOverlay;

    if-eqz v0, :cond_2

    .line 1343
    move-object v0, p1

    check-cast v0, Lcom/baidu/platform/comapi/map/ItemizedOverlay;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/ItemizedOverlay;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1344
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/ItemizedOverlay;->getAllItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    .line 1345
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    iget-wide v3, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v3, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ClearLayer(J)V

    .line 1346
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    iget-wide v3, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v3, v4, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    .line 1347
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    iget-wide v3, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v3, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    goto :goto_0

    .line 1349
    :cond_1
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    iget-wide v3, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    .line 1350
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    iget-wide v3, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v3, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    .line 1352
    :goto_0
    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/map/ItemizedOverlay;->a(Z)V

    .line 1355
    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1356
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public declared-synchronized removeBmLayer(Lcom/baidu/platform/comapi/bmsdk/BmLayer;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 610
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v1, :cond_0

    goto :goto_0

    .line 613
    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 615
    monitor-exit p0

    return v0

    .line 618
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->getNativeInstance()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->removeBmLayer(J)V

    .line 619
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 620
    :try_start_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 621
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    .line 623
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 621
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 609
    monitor-exit p0

    throw p1

    .line 611
    :cond_2
    :goto_0
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized removeOverlay(Lcom/baidu/platform/comapi/map/Overlay;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 704
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v1, :cond_0

    goto :goto_1

    .line 707
    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 709
    monitor-exit p0

    return v0

    .line 712
    :cond_1
    :try_start_1
    iget-wide v2, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ClearLayer(J)V

    .line 713
    iget-wide v2, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    .line 714
    iget-wide v2, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    .line 715
    iget-wide v2, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->RemoveLayer(J)V

    .line 716
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 717
    :try_start_2
    instance-of v0, p1, Lcom/baidu/platform/comapi/map/ItemizedOverlay;

    if-eqz v0, :cond_2

    .line 718
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 719
    :cond_2
    instance-of v0, p1, Lcom/baidu/platform/comapi/map/InnerOverlay;

    if-eqz v0, :cond_3

    .line 720
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 721
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/ae;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/ae;->a(Lcom/baidu/platform/comapi/map/Overlay;)V

    .line 723
    :cond_3
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v0, 0x0

    .line 724
    :try_start_3
    iput-wide v0, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p1, 0x1

    .line 726
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 723
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 703
    monitor-exit p0

    throw p1

    .line 705
    :cond_4
    :goto_1
    monitor-exit p0

    return v0
.end method

.method public removeSimpleOnGestureListener(Landroid/view/GestureDetector$SimpleOnGestureListener;)V
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->g:Lcom/baidu/platform/comapi/map/am;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/am;->b(Landroid/view/GestureDetector$SimpleOnGestureListener;)V

    return-void
.end method

.method public removeStateListener(Lcom/baidu/platform/comapi/map/aa;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->y:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic requestRender()V
    .locals 0

    .line 58
    invoke-super {p0}, Lcom/baidu/platform/comapi/map/ai;->requestRender()V

    return-void
.end method

.method public saveScreenToLocal(Ljava/lang/String;)V
    .locals 1

    .line 1211
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->saveScreenToLocal(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public saveScreenToLocal(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 7

    .line 1604
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_9

    .line 1613
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 1614
    iget v2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 1617
    :cond_1
    iget v2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 1619
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1620
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ltz v1, :cond_8

    if-ltz v2, :cond_8

    if-lez v3, :cond_8

    if-gtz v4, :cond_2

    goto :goto_2

    .line 1625
    :cond_2
    iget v5, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    if-le v3, v5, :cond_3

    .line 1626
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    sub-int/2addr v5, v6

    sub-int/2addr v3, v5

    .line 1628
    :cond_3
    iget v5, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    if-le v4, v5, :cond_4

    .line 1629
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    sub-int/2addr p2, v5

    sub-int/2addr v4, p2

    .line 1632
    :cond_4
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getScreenSizeX()I

    move-result p2

    if-gt v1, p2, :cond_7

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getScreenSizeY()I

    move-result p2

    if-le v2, p2, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 1640
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "x"

    .line 1642
    invoke-virtual {p2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "y"

    .line 1643
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "width"

    .line 1644
    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "height"

    .line 1645
    invoke-virtual {p2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1646
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p2

    .line 1651
    :catch_0
    :cond_6
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {p2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SaveScreenToLocal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1633
    :cond_7
    :goto_1
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {p2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SaveScreenToLocal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_2
    return-void

    .line 1654
    :cond_9
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {p2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SaveScreenToLocal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_a
    :goto_4
    return-void
.end method

.method public setBaseIndoorMap(Z)V
    .locals 2

    .line 1308
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 1309
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->o:Z

    .line 1311
    :cond_0
    sget-object v0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->A:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/baidu/platform/comapi/map/w;

    invoke-direct {v1, p0, p1}, Lcom/baidu/platform/comapi/map/w;-><init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setBaseMap(Lcom/baidu/mapsdkplatform/comapi/map/c;)V
    .locals 0

    .line 1508
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    return-void
.end method

.method public bridge synthetic setDebugFlags(I)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/ai;->setDebugFlags(I)V

    return-void
.end method

.method public setDefaultLocationLayerData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/OverlayLocationData;",
            ">;)V"
        }
    .end annotation

    .line 1031
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->r:Lcom/baidu/platform/comapi/map/LocationOverlay;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/LocationOverlay;->setLocationLayerData(Ljava/util/List;)V

    return-void
.end method

.method public setFPS(I)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->k:Lcom/baidu/platform/comapi/map/ag;

    invoke-interface {v0, p1}, Lcom/baidu/platform/comapi/map/ag;->a(I)V

    return-void
.end method

.method public setFirstFrameListener(Lcom/baidu/platform/comapi/map/e;)V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/o;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/o;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/o;->a(Lcom/baidu/platform/comapi/map/e;)V

    :cond_0
    return-void
.end method

.method public setGeoRound(Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;)V
    .locals 0

    return-void
.end method

.method public setItsPreTime(III)Z
    .locals 1

    .line 975
    iget v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->B:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->C:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->D:I

    if-ne v0, p3, :cond_0

    const/4 p1, 0x1

    return p1

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_1

    .line 980
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 982
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->B:I

    .line 983
    iput p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->C:I

    .line 984
    iput p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->D:I

    .line 985
    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetItsPreTime(III)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setMapCenter(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)V
    .locals 3

    .line 1067
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 1069
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    .line 1070
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    .line 1071
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V

    :cond_0
    return-void
.end method

.method public setMapController(Lcom/baidu/platform/comapi/map/MapController;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    return-void

    .line 195
    :cond_0
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 196
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/o;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/o;->a(Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V

    .line 197
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/o;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/o;->a(Z)V

    .line 199
    new-instance p1, Lcom/baidu/platform/comapi/map/ae;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/baidu/platform/comapi/map/ae;-><init>(Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/ae;

    .line 201
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/ae;

    invoke-virtual {p1, v1}, Lcom/baidu/platform/comapi/map/MapController;->setOverlayMapCallBack(Lcom/baidu/platform/comapi/map/ae;)V

    .line 203
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, p0}, Lcom/baidu/platform/comapi/map/MapController;->setMapViewInterface(Lcom/baidu/platform/comapi/map/MapViewInterface;)V

    .line 204
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b()V

    .line 206
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, p0}, Lcom/baidu/platform/comapi/map/MapController;->setMapRenderModeChangeListener(Lcom/baidu/platform/comapi/map/MapRenderModeChangeListener;)V

    .line 208
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->e:Z

    .line 210
    new-instance p1, Lcom/baidu/platform/comapi/map/k;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-direct {p1, v0}, Lcom/baidu/platform/comapi/map/k;-><init>(Lcom/baidu/platform/comapi/map/MapController;)V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->c:Lcom/baidu/platform/comapi/map/k;

    .line 212
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->g:Lcom/baidu/platform/comapi/map/am;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/am;->a(Lcom/baidu/platform/comapi/map/MapController;)V

    return-void
.end method

.method public setMapRenderStableListener(Lcom/baidu/platform/comapi/map/ab;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->i:Lcom/baidu/platform/comapi/map/ab;

    return-void
.end method

.method public setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V
    .locals 1

    .line 1194
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V

    :cond_0
    return-void
.end method

.method public setMapTo2D(Z)V
    .locals 0

    return-void
.end method

.method public setOnLongPressListener(Lcom/baidu/platform/comapi/map/OnLongPressListener;)V
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->g:Lcom/baidu/platform/comapi/map/am;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/am;->a(Lcom/baidu/platform/comapi/map/OnLongPressListener;)V

    return-void
.end method

.method public setOverlooking(I)V
    .locals 3

    .line 1144
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    int-to-double v1, p1

    .line 1146
    iput-wide v1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:D

    .line 1147
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V

    :cond_0
    return-void
.end method

.method public setPixelFormatTransparent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, -0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic setRenderMode(I)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/ai;->setRenderMode(I)V

    return-void
.end method

.method public bridge synthetic setRenderer(Lcom/baidu/platform/comapi/map/SurfaceRenderer;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/ai;->setRenderer(Lcom/baidu/platform/comapi/map/SurfaceRenderer;)V

    return-void
.end method

.method public setRotation(I)V
    .locals 1

    .line 1126
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 1128
    iput p1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    .line 1129
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V

    :cond_0
    return-void
.end method

.method public setSatellite(Z)V
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 916
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->m:Z

    .line 918
    :cond_0
    sget-object p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->A:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/baidu/platform/comapi/map/s;

    invoke-direct {v0, p0}, Lcom/baidu/platform/comapi/map/s;-><init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setStreetRoad(Z)V
    .locals 1

    .line 1280
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 1281
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->n:Z

    .line 1283
    :cond_0
    sget-object p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->A:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/baidu/platform/comapi/map/v;

    invoke-direct {v0, p0}, Lcom/baidu/platform/comapi/map/v;-><init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setSupBackgroundDraw(Z)V
    .locals 1

    .line 1666
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1670
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setSupBackgroundDraw(Z)V

    return-void
.end method

.method public setTraffic(Z)V
    .locals 1

    .line 951
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->l:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_1

    .line 955
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->l:Z

    .line 957
    :cond_1
    sget-object p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;->A:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/baidu/platform/comapi/map/u;

    invoke-direct {v0, p0}, Lcom/baidu/platform/comapi/map/u;-><init>(Lcom/baidu/platform/comapi/map/MapSurfaceView;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setWinRound(Lcom/baidu/platform/comapi/map/MapStatus$WinRound;)V
    .locals 1

    .line 1162
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    .line 1164
    iput-object p1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    .line 1165
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V

    :cond_0
    return-void
.end method

.method public setZoomLevel(F)V
    .locals 3

    .line 1087
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1092
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getFocusedBaseIndoorMapInfo()Lcom/baidu/platform/comapi/map/IndoorMapInfo;

    move-result-object v0

    const/16 v0, 0x16

    const/high16 v1, 0x40800000    # 4.0f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    const/high16 p1, 0x40800000    # 4.0f

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    move p1, v0

    .line 1102
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1104
    iput p1, v0, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    const/16 p1, 0x12c

    .line 1105
    invoke-virtual {p0, v0, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->animateTo(Lcom/baidu/platform/comapi/map/MapStatus;I)V

    :cond_3
    return-void
.end method

.method public setZoomLevel(I)V
    .locals 0

    int-to-float p1, p1

    .line 1111
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setZoomLevel(F)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->updateDrawFPS()V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/o;

    iput p3, v0, Lcom/baidu/platform/comapi/map/o;->a:I

    .line 276
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/o;

    iput p4, v0, Lcom/baidu/platform/comapi/map/o;->b:I

    .line 277
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/o;

    iput v1, v0, Lcom/baidu/platform/comapi/map/o;->c:I

    .line 279
    :cond_1
    iput p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    .line 280
    iput p4, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    .line 283
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/platform/comapi/map/ai;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 284
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz p1, :cond_6

    .line 285
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 287
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iput v1, p2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    .line 288
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iput v1, p2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    .line 289
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iput p4, p2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    .line 290
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iput p3, p2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    .line 291
    iget-boolean p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->t:Z

    if-nez p2, :cond_2

    .line 292
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p2, p1, v1}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;Z)V

    goto :goto_0

    .line 294
    :cond_2
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->t:Z

    .line 295
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    const/4 v0, 0x4

    invoke-virtual {p2, p1, v0, v1}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatusWithAnimation(Lcom/baidu/platform/comapi/map/MapStatus;II)V

    .line 297
    :goto_0
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewSurfaceListener()Lcom/baidu/platform/comapi/map/MapViewSurfaceListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 298
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getMapViewSurfaceListener()Lcom/baidu/platform/comapi/map/MapViewSurfaceListener;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lcom/baidu/platform/comapi/map/MapViewSurfaceListener;->onSurfaceChanged(II)V

    .line 302
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object p1

    .line 303
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget p2, p2, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->right:I

    iget-object v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v0, v0, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 304
    iget-object v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v0, v0, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->bottom:I

    iget-object p1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget p1, p1, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 305
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 306
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MapSurfaceView winRoundWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";winRoundHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";mWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_4
    if-lez p2, :cond_5

    if-lez p1, :cond_5

    .line 312
    iput p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    .line 313
    iput p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    .line 315
    :cond_5
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    iget p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    iget v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    invoke-virtual {p1, p2, v0}, Lcom/baidu/platform/comapi/map/MapController;->setScreenSize(II)V

    .line 317
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->isNaviMode()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 318
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getNaviMapViewListener()Lcom/baidu/platform/comapi/map/NaviMapViewListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 319
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getNaviMapViewListener()Lcom/baidu/platform/comapi/map/NaviMapViewListener;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lcom/baidu/platform/comapi/map/NaviMapViewListener;->resizeScreen(II)V

    .line 323
    :cond_6
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    if-eqz p1, :cond_7

    .line 324
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    iget p2, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->w:I

    iget p3, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->x:I

    invoke-virtual {p1, p2, p3}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(II)V

    :cond_7
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->updateDrawFPS()V

    .line 336
    :cond_0
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/ai;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    if-eqz p1, :cond_1

    .line 347
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->updateDrawFPS()V

    .line 358
    :cond_0
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/ai;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public bridge synthetic surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    invoke-super {p0, p1}, Lcom/baidu/platform/comapi/map/ai;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public bridge synthetic surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 58
    invoke-super {p0, p1, p2}, Lcom/baidu/platform/comapi/map/ai;->surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V

    return-void
.end method

.method public switchOverlay(Lcom/baidu/platform/comapi/map/Overlay;Lcom/baidu/platform/comapi/map/Overlay;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 731
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v1, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 738
    :cond_1
    iget-wide v2, p1, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    iget-wide p1, p2, Lcom/baidu/platform/comapi/map/Overlay;->mLayerID:J

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SwitchLayer(JJ)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public unInit()V
    .locals 3

    .line 742
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 744
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/c;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/ak;

    if-eqz v2, :cond_0

    .line 748
    invoke-interface {v2}, Lcom/baidu/platform/comapi/map/ak;->d()V

    goto :goto_0

    .line 752
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->O()V

    .line 753
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->j:Lcom/baidu/mapsdkplatform/comapi/map/c;

    .line 755
    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_3

    .line 756
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->unInit()V

    .line 758
    :cond_3
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 759
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/ae;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/ae;->a()V

    .line 760
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->b:Lcom/baidu/platform/comapi/map/ae;

    .line 761
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->c:Lcom/baidu/platform/comapi/map/k;

    .line 762
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/MapSurfaceView;->d:Lcom/baidu/platform/comapi/map/o;

    .line 763
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 764
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    const-string v1, "BasicMap surfaceView unInit"

    .line 765
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
