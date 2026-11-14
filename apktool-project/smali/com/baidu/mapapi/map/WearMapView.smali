.class public Lcom/baidu/mapapi/map/WearMapView;
.super Landroid/view/ViewGroup;
.source "WearMapView.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/WearMapView$a;,
        Lcom/baidu/mapapi/map/WearMapView$AnimationTask;,
        Lcom/baidu/mapapi/map/WearMapView$ScreenShape;,
        Lcom/baidu/mapapi/map/WearMapView$OnDismissCallback;
    }
.end annotation


# static fields
.field public static final BT_INVIEW:I = 0x1

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/lang/String; = null

.field private static d:I = 0x0

.field private static e:I = 0x0

.field private static s:I = 0x0

.field private static t:I = 0x0

.field private static u:I = 0xa

.field private static final x:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:F

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:Z

.field a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

.field private f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

.field private g:Lcom/baidu/mapapi/map/BaiduMap;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/graphics/Bitmap;

.field private j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

.field private k:Z

.field private l:Landroid/graphics/Point;

.field private m:Landroid/graphics/Point;

.field public mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

.field public mTimer:Ljava/util/Timer;

.field public mTimerHandler:Lcom/baidu/mapapi/map/WearMapView$a;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Lcom/baidu/mapapi/map/SwipeDismissView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/ImageView;

.field private v:Z

.field private w:Landroid/content/Context;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 69
    const-class v0, Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/map/WearMapView;->b:Ljava/lang/String;

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    .line 182
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    const v1, 0x1e8480

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 183
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    const v1, 0xf4240

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 184
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    const v1, 0x7a120

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 185
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    const v1, 0x30d40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 186
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    const v1, 0x186a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 187
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    const v1, 0xc350

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 188
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    const/16 v1, 0x61a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 189
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    const/16 v1, 0x4e20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 190
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    const/16 v1, 0x2710

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0xb

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 191
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    const/16 v1, 0x1388

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0xc

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 192
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0xd

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 193
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0xe

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 194
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0xf

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 195
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x10

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 196
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x11

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 197
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x12

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 198
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x13

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 199
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 200
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 201
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 229
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Z

    .line 106
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->v:Z

    .line 179
    sget-object v1, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    .line 203
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->y:Z

    .line 204
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->z:Z

    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->H:Z

    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 241
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 85
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Z

    .line 106
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/WearMapView;->v:Z

    .line 179
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    .line 203
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/WearMapView;->y:Z

    .line 204
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/WearMapView;->z:Z

    const/4 p2, 0x0

    .line 220
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/WearMapView;->H:Z

    const/4 p2, 0x0

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 254
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 85
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Z

    .line 106
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/WearMapView;->v:Z

    .line 179
    sget-object p3, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-object p3, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    .line 203
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/WearMapView;->y:Z

    .line 204
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/WearMapView;->z:Z

    const/4 p2, 0x0

    .line 220
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/WearMapView;->H:Z

    const/4 p2, 0x0

    .line 255
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V
    .locals 2

    .line 267
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Z

    .line 106
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->v:Z

    .line 179
    sget-object v1, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    .line 203
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->y:Z

    .line 204
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->z:Z

    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->H:Z

    .line 268
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/WearMapView;F)F
    .locals 0

    .line 66
    iput p1, p0, Lcom/baidu/mapapi/map/WearMapView;->A:F

    return p1
.end method

.method private a(II)I
    .locals 6

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 162
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    int-to-double v4, p2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p2, v0

    sub-int/2addr p1, p2

    return p1
.end method

.method static synthetic a()Landroid/util/SparseArray;
    .locals 1

    .line 66
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    return-object v0
.end method

.method private a(I)V
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1016
    :pswitch_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->onResume()V

    .line 1017
    invoke-direct {p0}, Lcom/baidu/mapapi/map/WearMapView;->c()V

    goto :goto_0

    .line 1012
    :pswitch_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->onPause()V

    .line 1013
    invoke-direct {p0}, Lcom/baidu/mapapi/map/WearMapView;->b()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "window"

    .line 122
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 123
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V
    .locals 4

    .line 490
    invoke-static {p1}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;)V

    .line 491
    invoke-virtual {p0, p0}, Lcom/baidu/mapapi/map/WearMapView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 492
    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/content/Context;

    .line 493
    new-instance v0, Lcom/baidu/mapapi/map/WearMapView$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/mapapi/map/WearMapView$a;-><init>(Lcom/baidu/mapapi/map/WearMapView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimerHandler:Lcom/baidu/mapapi/map/WearMapView$a;

    .line 494
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    .line 495
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;->cancel()Z

    .line 500
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;-><init>(Lcom/baidu/mapapi/map/WearMapView;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    .line 501
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 502
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/i;->a()V

    .line 503
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    .line 505
    sget-object v0, Lcom/baidu/mapapi/map/WearMapView;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/MapController;->set3DGestureEnable(Z)V

    .line 508
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getController()Lcom/baidu/platform/comapi/map/MapController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/MapController;->setOverlookGestureEnable(Z)V

    .line 509
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->c(Landroid/content/Context;)V

    .line 510
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->d(Landroid/content/Context;)V

    .line 511
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->b(Landroid/content/Context;)V

    const/4 v0, 0x4

    if-eqz p2, :cond_1

    .line 512
    iget-boolean v1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->h:Z

    if-nez v1, :cond_1

    .line 513
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->setVisibility(I)V

    .line 515
    :cond_1
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->e(Landroid/content/Context;)V

    if-eqz p2, :cond_2

    .line 516
    iget-boolean p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->i:Z

    if-nez p1, :cond_2

    .line 517
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    if-eqz p2, :cond_3

    .line 519
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->l:Landroid/graphics/Point;

    if-eqz p1, :cond_3

    .line 520
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->l:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/graphics/Point;

    :cond_3
    if-eqz p2, :cond_4

    .line 522
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->k:Landroid/graphics/Point;

    if-eqz p1, :cond_4

    .line 523
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->k:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    :cond_4
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;Ljava/lang/String;)V
    .locals 1

    .line 539
    new-instance p3, Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-direct {p3, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz p2, :cond_0

    .line 542
    new-instance p3, Lcom/baidu/mapapi/map/BaiduMap;

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p2}, Lcom/baidu/mapapi/map/BaiduMapOptions;->a()Lcom/baidu/mapsdkplatform/comapi/map/v;

    move-result-object p2

    invoke-direct {p3, p1, v0, p2}, Lcom/baidu/mapapi/map/BaiduMap;-><init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapSurfaceView;Lcom/baidu/mapsdkplatform/comapi/map/v;)V

    iput-object p3, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Lcom/baidu/mapapi/map/BaiduMap;

    goto :goto_0

    .line 544
    :cond_0
    new-instance p2, Lcom/baidu/mapapi/map/BaiduMap;

    iget-object p3, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p3, v0}, Lcom/baidu/mapapi/map/BaiduMap;-><init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapSurfaceView;Lcom/baidu/mapsdkplatform/comapi/map/v;)V

    iput-object p2, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Lcom/baidu/mapapi/map/BaiduMap;

    .line 547
    :goto_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->addView(Landroid/view/View;)V

    .line 549
    new-instance p1, Lcom/baidu/mapapi/map/ax;

    invoke-direct {p1, p0}, Lcom/baidu/mapapi/map/ax;-><init>(Lcom/baidu/mapapi/map/WearMapView;)V

    .line 714
    iget-object p2, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/platform/comapi/map/ak;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .line 1219
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1221
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1224
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 1227
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    .line 1230
    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1233
    :goto_0
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_2

    .line 1236
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1

    .line 1239
    :cond_2
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1242
    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 8

    const-wide/16 v0, 0x4b0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p2, :cond_0

    .line 1372
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const-string v5, "TranslationY"

    .line 1373
    new-array v6, v4, [F

    fill-array-data v6, :array_0

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-string v6, "alpha"

    .line 1374
    new-array v7, v4, [F

    fill-array-data v7, :array_1

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1375
    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v5, v4, v3

    aput-object v6, v4, v2

    invoke-virtual {p2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1376
    new-instance v2, Lcom/baidu/mapapi/map/ba;

    invoke-direct {v2, p0, p1}, Lcom/baidu/mapapi/map/ba;-><init>(Lcom/baidu/mapapi/map/WearMapView;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1384
    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1385
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1387
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1388
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const-string v5, "TranslationY"

    .line 1389
    new-array v6, v4, [F

    fill-array-data v6, :array_2

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-string v6, "alpha"

    .line 1390
    new-array v7, v4, [F

    fill-array-data v7, :array_3

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1391
    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v5, v4, v3

    aput-object p1, v4, v2

    invoke-virtual {p2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1392
    invoke-virtual {p2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1393
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        -0x3db80000    # -50.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        -0x3db80000    # -50.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/WearMapView;Ljava/lang/String;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/WearMapView;->a(Ljava/lang/String;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/WearMapView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/WearMapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V
    .locals 2

    .line 461
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p2, ""

    .line 462
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/WearMapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0, v1}, Lcom/baidu/mapapi/map/WearMapView;->setMapCustomStyleEnable(Z)V

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/MapCustomStyleOptions;->getLocalCustomStyleFilePath()Ljava/lang/String;

    move-result-object p1

    .line 466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, ""

    .line 467
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/WearMapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {p0, v1}, Lcom/baidu/mapapi/map/WearMapView;->setMapCustomStyleEnable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1404
    iget-object p2, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/c;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1409
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1410
    sget-object p1, Lcom/baidu/mapapi/map/WearMapView;->b:Ljava/lang/String;

    const-string p2, "customStyleFilePath is empty or null, please check!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p2, ".sty"

    .line 1414
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1415
    sget-object p1, Lcom/baidu/mapapi/map/WearMapView;->b:Ljava/lang/String;

    const-string p2, "customStyleFile format is incorrect , please check!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1419
    :cond_2
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1420
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1421
    sget-object p1, Lcom/baidu/mapapi/map/WearMapView;->b:Ljava/lang/String;

    const-string p2, "customStyleFile does not exist , please check!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1425
    :cond_3
    iget-object p2, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/c;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 800
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-direct {p0, v0, p1}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/WearMapView;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/baidu/mapapi/map/WearMapView;->H:Z

    return p0
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/WearMapView;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/WearMapView;->H:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/mapapi/map/WearMapView;)Lcom/baidu/platform/comapi/map/MapSurfaceView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 972
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-nez v0, :cond_0

    return-void

    .line 975
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->v:Z

    if-nez v0, :cond_1

    .line 976
    invoke-direct {p0}, Lcom/baidu/mapapi/map/WearMapView;->d()V

    const/4 v0, 0x1

    .line 977
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->v:Z

    :cond_1
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 529
    new-instance v0, Lcom/baidu/mapapi/map/SwipeDismissView;

    invoke-direct {v0, p1, p0}, Lcom/baidu/mapapi/map/SwipeDismissView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Lcom/baidu/mapapi/map/SwipeDismissView;

    .line 530
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42080000    # 34.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 531
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    sget v1, Lcom/baidu/mapapi/map/WearMapView;->t:I

    invoke-direct {v0, p1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 533
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Lcom/baidu/mapapi/map/SwipeDismissView;

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/baidu/mapapi/map/SwipeDismissView;->setBackgroundColor(I)V

    .line 534
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Lcom/baidu/mapapi/map/SwipeDismissView;

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/SwipeDismissView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Lcom/baidu/mapapi/map/SwipeDismissView;

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/mapapi/map/WearMapView;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/mapapi/map/WearMapView;)F
    .locals 0

    .line 66
    iget p0, p0, Lcom/baidu/mapapi/map/WearMapView;->A:F

    return p0
.end method

.method private c()V
    .locals 1

    .line 982
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-nez v0, :cond_0

    return-void

    .line 985
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->v:Z

    if-eqz v0, :cond_1

    .line 986
    invoke-direct {p0}, Lcom/baidu/mapapi/map/WearMapView;->e()V

    const/4 v0, 0x0

    .line 987
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/WearMapView;->v:Z

    :cond_1
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 9

    const-string v0, "logo_h.png"

    .line 817
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v1

    const/16 v2, 0xb4

    if-ge v1, v2, :cond_0

    const-string v0, "logo_l.png"

    .line 821
    :cond_0
    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v0, 0x1e0

    if-le v1, v0, :cond_1

    .line 824
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 825
    invoke-virtual {v7, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 826
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    const/16 v3, 0x140

    if-le v1, v3, :cond_2

    if-gt v1, v0, :cond_2

    .line 829
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 830
    invoke-virtual {v7, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 831
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 834
    :cond_2
    iput-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Landroid/graphics/Bitmap;

    .line 836
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 837
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/widget/ImageView;

    .line 838
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 839
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method static synthetic d(Lcom/baidu/mapapi/map/WearMapView;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/baidu/mapapi/map/WearMapView;->r:Landroid/widget/ImageView;

    return-object p0
.end method

.method private d()V
    .locals 1

    .line 992
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-nez v0, :cond_0

    return-void

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->onBackground()V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .line 844
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/ad;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    .line 845
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 848
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    new-instance v0, Lcom/baidu/mapapi/map/ay;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/ay;-><init>(Lcom/baidu/mapapi/map/WearMapView;)V

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b(Landroid/view/View$OnClickListener;)V

    .line 855
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    new-instance v0, Lcom/baidu/mapapi/map/az;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/az;-><init>(Lcom/baidu/mapapi/map/WearMapView;)V

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Landroid/view/View$OnClickListener;)V

    .line 862
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lcom/baidu/mapapi/map/WearMapView;)Landroid/widget/TextView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    return-object p0
.end method

.method private e()V
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-nez v0, :cond_0

    return-void

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->onForeground()V

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 8

    .line 867
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    .line 868
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 871
    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    .line 874
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    .line 877
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 878
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    const-string v4, "#FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 879
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    const/high16 v4, 0x41300000    # 11.0f

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 880
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 882
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 883
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    .line 884
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 886
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->q:Landroid/widget/TextView;

    .line 887
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 890
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 891
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 892
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 893
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->q:Landroid/widget/TextView;

    const-string v6, "#000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 894
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->q:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 895
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->q:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 896
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 898
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->r:Landroid/widget/ImageView;

    .line 899
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 902
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 903
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 904
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 905
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 906
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "icon_scale.9.png"

    .line 908
    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 909
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 910
    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    .line 911
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v0, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 913
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 914
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->r:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 915
    iget-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic f(Lcom/baidu/mapapi/map/WearMapView;)Landroid/widget/TextView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/baidu/mapapi/map/WearMapView;->q:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/baidu/mapapi/map/WearMapView;)Lcom/baidu/mapsdkplatform/comapi/map/ad;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    return-object p0
.end method

.method public static setCustomMapStylePath(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_2

    .line 282
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "BDMapSDKException: please check whether the customMapStylePath file exits"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 289
    :cond_1
    sput-object p0, Lcom/baidu/mapapi/map/WearMapView;->c:Ljava/lang/String;

    return-void

    .line 283
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "BDMapSDKException: customMapStylePath String is illegal"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setIconCustom(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    sput p0, Lcom/baidu/mapapi/map/WearMapView;->e:I

    return-void
.end method

.method public static setLoadCustomMapStyleFileMode(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    sput p0, Lcom/baidu/mapapi/map/WearMapView;->d:I

    return-void
.end method

.method public static setMapCustomEnable(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1039
    instance-of v0, p2, Lcom/baidu/mapapi/map/MapViewLayoutParams;

    if-eqz v0, :cond_0

    .line 1040
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final getMap()Lcom/baidu/mapapi/map/BaiduMap;
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Lcom/baidu/mapapi/map/BaiduMap;

    iput-object p0, v0, Lcom/baidu/mapapi/map/BaiduMap;->c:Lcom/baidu/mapapi/map/WearMapView;

    .line 925
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Lcom/baidu/mapapi/map/BaiduMap;

    return-object v0
.end method

.method public final getMapLevel()I
    .locals 2

    .line 1029
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getZoomLevel()F

    move-result v0

    .line 1030
    sget-object v1, Lcom/baidu/mapapi/map/WearMapView;->x:Landroid/util/SparseArray;

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getScaleControlViewHeight()I
    .locals 1

    .line 1298
    iget v0, p0, Lcom/baidu/mapapi/map/WearMapView;->F:I

    return v0
.end method

.method public getScaleControlViewWidth()I
    .locals 1

    .line 1290
    iget v0, p0, Lcom/baidu/mapapi/map/WearMapView;->G:I

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 113
    invoke-virtual {p2}, Landroid/view/WindowInsets;->isRound()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    sget-object p1, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    goto :goto_0

    .line 116
    :cond_0
    sget-object p1, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->RECTANGLE:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    :goto_0
    return-object p2
.end method

.method public onCreate(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "mapstatus"

    .line 1355
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/MapStatus;

    .line 1356
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    if-eqz v1, :cond_1

    const-string v1, "scalePosition"

    .line 1357
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    .line 1359
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/graphics/Point;

    if-eqz v1, :cond_2

    const-string v1, "zoomPosition"

    .line 1360
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/graphics/Point;

    :cond_2
    const-string v1, "mZoomControlEnabled"

    .line 1362
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->y:Z

    const-string v1, "mScaleControlEnabled"

    .line 1363
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->z:Z

    const-string v1, "paddingLeft"

    .line 1364
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "paddingTop"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "paddingRight"

    .line 1365
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "paddingBottom"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 1364
    invoke-virtual {p0, v1, v2, v3, p2}, Lcom/baidu/mapapi/map/WearMapView;->setPadding(IIII)V

    .line 1366
    new-instance p2, Lcom/baidu/mapapi/map/BaiduMapOptions;

    invoke-direct {p2}, Lcom/baidu/mapapi/map/BaiduMapOptions;-><init>()V

    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/map/BaiduMapOptions;->mapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/BaiduMapOptions;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 932
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->unInit()V

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 936
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 937
    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->i:Landroid/graphics/Bitmap;

    .line 939
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b()V

    .line 940
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    .line 941
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/i;->b()V

    .line 942
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    if-eqz v0, :cond_2

    .line 943
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;->cancel()Z

    .line 945
    :cond_2
    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/content/Context;

    return-void
.end method

.method public final onDismiss()V
    .locals 0

    .line 952
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->removeAllViews()V

    return-void
.end method

.method public final onEnterAmbient(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x0

    .line 961
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/WearMapView;->a(I)V

    return-void
.end method

.method public onExitAmbient()V
    .locals 1

    const/4 v0, 0x1

    .line 968
    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 720
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 746
    :pswitch_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    .line 747
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;->cancel()Z

    .line 752
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;-><init>(Lcom/baidu/mapapi/map/WearMapView;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    .line 753
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 722
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 723
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_5

    .line 724
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    if-eqz v0, :cond_1

    .line 725
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 726
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;->cancel()Z

    .line 728
    :cond_1
    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    .line 729
    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    goto :goto_0

    .line 731
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getVisibility()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 732
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_4

    .line 733
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    if-eqz v0, :cond_3

    .line 734
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;->cancel()Z

    .line 736
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 737
    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->mTask:Lcom/baidu/mapapi/map/WearMapView$AnimationTask;

    .line 738
    iput-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->mTimer:Ljava/util/Timer;

    :cond_4
    const/4 v0, 0x0

    .line 741
    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Z)V

    .line 756
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final onLayout(ZIIII)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .line 1067
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getChildCount()I

    move-result p1

    .line 1070
    iget-object p2, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;)V

    .line 1071
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getWidth()I

    move-result p2

    iget p3, p0, Lcom/baidu/mapapi/map/WearMapView;->B:I

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/baidu/mapapi/map/WearMapView;->C:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 p4, 0x0

    if-lez p2, :cond_0

    .line 1072
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getHeight()I

    move-result p2

    iget p5, p0, Lcom/baidu/mapapi/map/WearMapView;->D:I

    sub-int/2addr p2, p5

    iget p5, p0, Lcom/baidu/mapapi/map/WearMapView;->E:I

    sub-int/2addr p2, p5

    iget-object p5, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/widget/ImageView;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p5

    if-lez p2, :cond_0

    .line 1073
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getWidth()I

    move-result p2

    iget p3, p0, Lcom/baidu/mapapi/map/WearMapView;->B:I

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/baidu/mapapi/map/WearMapView;->C:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float p3, p2, p3

    .line 1074
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getHeight()I

    move-result p2

    iget p5, p0, Lcom/baidu/mapapi/map/WearMapView;->D:I

    sub-int/2addr p2, p5

    iget p5, p0, Lcom/baidu/mapapi/map/WearMapView;->E:I

    sub-int/2addr p2, p5

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getHeight()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p2, p5

    goto :goto_0

    .line 1076
    :cond_0
    iput p4, p0, Lcom/baidu/mapapi/map/WearMapView;->B:I

    .line 1077
    iput p4, p0, Lcom/baidu/mapapi/map/WearMapView;->C:I

    .line 1078
    iput p4, p0, Lcom/baidu/mapapi/map/WearMapView;->E:I

    .line 1079
    iput p4, p0, Lcom/baidu/mapapi/map/WearMapView;->D:I

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    const/4 p5, 0x0

    :goto_1
    if-ge p5, p1, :cond_f

    .line 1083
    invoke-virtual {p0, p5}, Lcom/baidu/mapapi/map/WearMapView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1084
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-ne v0, v1, :cond_1

    .line 1085
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getHeight()I

    move-result v2

    invoke-virtual {v0, p4, p4, v1, v2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->layout(IIII)V

    goto/16 :goto_6

    .line 1087
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/widget/ImageView;

    const/high16 v2, 0x41400000    # 12.0f

    if-ne v0, v1, :cond_3

    .line 1092
    iget v0, p0, Lcom/baidu/mapapi/map/WearMapView;->E:I

    int-to-float v0, v0

    mul-float v2, v2, p2

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 1098
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    sget-object v2, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    if-ne v1, v2, :cond_2

    .line 1099
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-direct {p0, v1}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;)V

    .line 1101
    sget v1, Lcom/baidu/mapapi/map/WearMapView;->s:I

    div-int/lit8 v1, v1, 0x2

    .line 1102
    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v2}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/baidu/mapapi/map/WearMapView;->a(II)I

    move-result v2

    .line 1103
    sget v3, Lcom/baidu/mapapi/map/WearMapView;->s:I

    div-int/lit8 v3, v3, 0x2

    sub-int v4, v1, v2

    invoke-direct {p0, v1, v4}, Lcom/baidu/mapapi/map/WearMapView;->a(II)I

    move-result v1

    sub-int/2addr v3, v1

    sget v1, Lcom/baidu/mapapi/map/WearMapView;->u:I

    add-int/2addr v1, v3

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1108
    :goto_2
    sget v3, Lcom/baidu/mapapi/map/WearMapView;->t:I

    sub-int/2addr v3, v2

    sub-int/2addr v3, v0

    .line 1109
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v3, v0

    .line 1110
    sget v2, Lcom/baidu/mapapi/map/WearMapView;->s:I

    sub-int/2addr v2, v1

    .line 1111
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v2, v1

    .line 1112
    iget-object v4, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/widget/ImageView;

    invoke-virtual {v4, v1, v0, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_6

    .line 1115
    :cond_3
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    if-ne v0, v1, :cond_7

    .line 1116
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_6

    .line 1119
    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;)V

    .line 1120
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/graphics/Point;

    if-nez v0, :cond_6

    .line 1123
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    sget-object v1, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    if-ne v0, v1, :cond_5

    .line 1124
    sget v0, Lcom/baidu/mapapi/map/WearMapView;->t:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    .line 1125
    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1124
    invoke-direct {p0, v0, v1}, Lcom/baidu/mapapi/map/WearMapView;->a(II)I

    move-result v0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    mul-float v2, v2, p2

    .line 1127
    iget v1, p0, Lcom/baidu/mapapi/map/WearMapView;->D:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    int-to-float v0, v0

    add-float/2addr v2, v0

    float-to-int v0, v2

    .line 1128
    sget v1, Lcom/baidu/mapapi/map/WearMapView;->s:I

    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v2}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1129
    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v2}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    .line 1130
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v3}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 1131
    iget-object v4, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v4, v1, v0, v2, v3}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->layout(IIII)V

    goto/16 :goto_6

    .line 1134
    :cond_6
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    .line 1135
    invoke-virtual {v4}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    .line 1136
    invoke-virtual {v5}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1134
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->layout(IIII)V

    goto/16 :goto_6

    .line 1140
    :cond_7
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    if-ne v0, v1, :cond_a

    .line 1144
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    sget-object v1, Lcom/baidu/mapapi/map/WearMapView$ScreenShape;->ROUND:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    if-ne v0, v1, :cond_8

    .line 1145
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;)V

    .line 1146
    sget v0, Lcom/baidu/mapapi/map/WearMapView;->s:I

    div-int/lit8 v0, v0, 0x2

    .line 1147
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/baidu/mapapi/map/WearMapView;->a(II)I

    move-result v1

    .line 1148
    sget v3, Lcom/baidu/mapapi/map/WearMapView;->s:I

    div-int/lit8 v3, v3, 0x2

    sub-int v4, v0, v1

    invoke-direct {p0, v0, v4}, Lcom/baidu/mapapi/map/WearMapView;->a(II)I

    move-result v0

    sub-int/2addr v3, v0

    sget v0, Lcom/baidu/mapapi/map/WearMapView;->u:I

    add-int/2addr v0, v3

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1150
    :goto_4
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;)V

    .line 1151
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    if-nez v3, :cond_9

    .line 1152
    iget v3, p0, Lcom/baidu/mapapi/map/WearMapView;->E:I

    int-to-float v3, v3

    mul-float v2, v2, p2

    add-float/2addr v3, v2

    float-to-int v2, v3

    .line 1153
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lcom/baidu/mapapi/map/WearMapView;->G:I

    .line 1154
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/baidu/mapapi/map/WearMapView;->F:I

    .line 1155
    iget v3, p0, Lcom/baidu/mapapi/map/WearMapView;->B:I

    int-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float v4, v4, p3

    add-float/2addr v3, v4

    int-to-float v0, v0

    add-float/2addr v3, v0

    float-to-int v0, v3

    .line 1156
    sget v3, Lcom/baidu/mapapi/map/WearMapView;->t:I

    sub-int/2addr v3, v2

    sub-int/2addr v3, v1

    .line 1158
    iget v1, p0, Lcom/baidu/mapapi/map/WearMapView;->G:I

    add-int/2addr v1, v0

    .line 1159
    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v3, v2

    .line 1161
    iget-object v4, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto/16 :goto_6

    .line 1165
    :cond_9
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    .line 1169
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    .line 1171
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1165
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto :goto_6

    .line 1174
    :cond_a
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Lcom/baidu/mapapi/map/SwipeDismissView;

    if-ne v0, v1, :cond_b

    .line 1175
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Lcom/baidu/mapapi/map/SwipeDismissView;

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;)V

    .line 1177
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Lcom/baidu/mapapi/map/SwipeDismissView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/SwipeDismissView;->getMeasuredWidth()I

    move-result v0

    .line 1178
    sget v1, Lcom/baidu/mapapi/map/WearMapView;->t:I

    .line 1179
    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Lcom/baidu/mapapi/map/SwipeDismissView;

    invoke-virtual {v2, p4, p4, v0, v1}, Lcom/baidu/mapapi/map/SwipeDismissView;->layout(IIII)V

    goto :goto_6

    .line 1183
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1184
    instance-of v2, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;

    if-eqz v2, :cond_e

    .line 1185
    check-cast v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;

    .line 1186
    iget-object v2, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->c:Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;

    .line 1188
    sget-object v3, Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;->absoluteMode:Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;

    if-ne v2, v3, :cond_c

    .line 1189
    iget-object v2, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->b:Landroid/graphics/Point;

    goto :goto_5

    .line 1191
    :cond_c
    iget-object v2, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 1192
    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    .line 1193
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/c;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1194
    iget-object v3, p0, Lcom/baidu/mapapi/map/WearMapView;->f:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Landroid/graphics/Point;

    move-result-object v2

    goto :goto_5

    .line 1196
    :cond_d
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1199
    :goto_5
    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Landroid/view/View;)V

    .line 1200
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1201
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1202
    iget v5, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->d:F

    .line 1203
    iget v6, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->e:F

    .line 1204
    iget v7, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    int-to-float v8, v3

    mul-float v5, v5, v8

    sub-float/2addr v7, v5

    float-to-int v5, v7

    .line 1205
    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    int-to-float v7, v4

    mul-float v6, v6, v7

    sub-float/2addr v2, v6

    float-to-int v2, v2

    iget v1, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->f:I

    add-int/2addr v2, v1

    add-int/2addr v3, v5

    add-int/2addr v4, v2

    .line 1206
    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_e
    :goto_6
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_1

    :cond_f
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1324
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->g:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    const-string v1, "mapstatus"

    .line 1328
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1329
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    if-eqz v0, :cond_1

    const-string v0, "scalePosition"

    .line 1330
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1332
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/graphics/Point;

    if-eqz v0, :cond_2

    const-string v0, "zoomPosition"

    .line 1333
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    const-string v0, "mZoomControlEnabled"

    .line 1335
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->y:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "mScaleControlEnabled"

    .line 1336
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/WearMapView;->z:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "paddingLeft"

    .line 1337
    iget v1, p0, Lcom/baidu/mapapi/map/WearMapView;->B:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "paddingTop"

    .line 1338
    iget v1, p0, Lcom/baidu/mapapi/map/WearMapView;->D:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "paddingRight"

    .line 1339
    iget v1, p0, Lcom/baidu/mapapi/map/WearMapView;->C:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "paddingBottom"

    .line 1340
    iget v1, p0, Lcom/baidu/mapapi/map/WearMapView;->E:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->h:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    return-void

    .line 1052
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomStyleFilePathAndMode(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public setMapCustomStyle(Lcom/baidu/mapapi/map/MapCustomStyleOptions;Lcom/baidu/mapapi/map/CustomMapStyleCallBack;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 389
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapCustomStyleOptions;->getCustomMapStyleId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 390
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 398
    :cond_1
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a()Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mapapi/map/WearMapView;->w:Landroid/content/Context;

    new-instance v3, Lcom/baidu/mapapi/map/aw;

    invoke-direct {v3, p0, p2, p1}, Lcom/baidu/mapapi/map/aw;-><init>(Lcom/baidu/mapapi/map/WearMapView;Lcom/baidu/mapapi/map/CustomMapStyleCallBack;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/map/e$a;)V

    return-void

    .line 391
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapCustomStyleOptions;->getLocalCustomStyleFilePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 392
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, ""

    .line 393
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/WearMapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setMapCustomStyleEnable(Z)V
    .locals 0

    return-void
.end method

.method public setMapCustomStylePath(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 359
    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/WearMapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOnDismissCallbackListener(Lcom/baidu/mapapi/map/WearMapView$OnDismissCallback;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Lcom/baidu/mapapi/map/SwipeDismissView;

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->o:Lcom/baidu/mapapi/map/SwipeDismissView;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/SwipeDismissView;->setCallback(Lcom/baidu/mapapi/map/WearMapView$OnDismissCallback;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 1057
    iput p1, p0, Lcom/baidu/mapapi/map/WearMapView;->B:I

    .line 1058
    iput p2, p0, Lcom/baidu/mapapi/map/WearMapView;->D:I

    .line 1059
    iput p3, p0, Lcom/baidu/mapapi/map/WearMapView;->C:I

    .line 1060
    iput p4, p0, Lcom/baidu/mapapi/map/WearMapView;->E:I

    return-void
.end method

.method public setScaleControlPosition(Landroid/graphics/Point;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1311
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1312
    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->l:Landroid/graphics/Point;

    .line 1313
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setShape(Lcom/baidu/mapapi/map/WearMapView$ScreenShape;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->a:Lcom/baidu/mapapi/map/WearMapView$ScreenShape;

    return-void
.end method

.method public setViewAnimitionEnable(Z)V
    .locals 0

    .line 812
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/WearMapView;->k:Z

    return-void
.end method

.method public setZoomControlsPosition(Landroid/graphics/Point;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1268
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1269
    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView;->m:Landroid/graphics/Point;

    .line 1270
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/WearMapView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public showScaleControl(Z)V
    .locals 2

    .line 1281
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->n:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1282
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/WearMapView;->z:Z

    return-void
.end method

.method public showZoomControls(Z)V
    .locals 2

    .line 1252
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1253
    iget-object v0, p0, Lcom/baidu/mapapi/map/WearMapView;->j:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->setVisibility(I)V

    .line 1254
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/WearMapView;->y:Z

    :cond_1
    return-void
.end method
