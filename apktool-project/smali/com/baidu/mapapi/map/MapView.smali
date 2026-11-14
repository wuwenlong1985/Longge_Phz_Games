.class public final Lcom/baidu/mapapi/map/MapView;
.super Landroid/view/ViewGroup;
.source "MapView.java"


# static fields
.field private static final a:Ljava/lang/String; = "MapView"

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:I

.field private static final r:Landroid/util/SparseIntArray;


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

.field private f:Lcom/baidu/mapapi/map/BaiduMap;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/graphics/Bitmap;

.field private i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

.field private j:Landroid/graphics/Point;

.field private k:Landroid/graphics/Point;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/content/Context;

.field private q:Lcom/baidu/mapsdkplatform/comapi/c;

.field private s:I

.field private t:Z

.field private u:Z

.field private v:F

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 104
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    .line 107
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const v2, 0x1e8480

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 108
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const v2, 0xf4240

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 109
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x7a120

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 110
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    const v3, 0x30d40

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 111
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    const v3, 0x186a0

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 112
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    const v3, 0xc350

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 113
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    const/16 v3, 0x61a8

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 114
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    const/16 v3, 0x4e20

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 115
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/16 v3, 0xb

    const/16 v4, 0x2710

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 116
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/16 v3, 0xc

    const/16 v4, 0x1388

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 117
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/16 v3, 0xd

    const/16 v4, 0x7d0

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 118
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/16 v3, 0xe

    const/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 119
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/16 v3, 0xf

    const/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 120
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/16 v3, 0x10

    const/16 v4, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 121
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/16 v3, 0x11

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 122
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/16 v3, 0x12

    const/16 v4, 0x32

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 123
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/16 v3, 0x14

    const/16 v4, 0x13

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 124
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 125
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 126
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 127
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 128
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 129
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 130
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 159
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Lcom/baidu/mapapi/map/aa;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/aa;-><init>(Lcom/baidu/mapapi/map/MapView;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->q:Lcom/baidu/mapsdkplatform/comapi/c;

    .line 133
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftBottom:Lcom/baidu/mapapi/map/LogoPosition;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/LogoPosition;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/MapView;->s:I

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->t:Z

    .line 135
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->u:Z

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->C:Z

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    new-instance p2, Lcom/baidu/mapapi/map/aa;

    invoke-direct {p2, p0}, Lcom/baidu/mapapi/map/aa;-><init>(Lcom/baidu/mapapi/map/MapView;)V

    iput-object p2, p0, Lcom/baidu/mapapi/map/MapView;->q:Lcom/baidu/mapsdkplatform/comapi/c;

    .line 133
    sget-object p2, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftBottom:Lcom/baidu/mapapi/map/LogoPosition;

    invoke-virtual {p2}, Lcom/baidu/mapapi/map/LogoPosition;->ordinal()I

    move-result p2

    iput p2, p0, Lcom/baidu/mapapi/map/MapView;->s:I

    const/4 p2, 0x1

    .line 134
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/MapView;->t:Z

    .line 135
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/MapView;->u:Z

    const/4 p2, 0x0

    .line 151
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/MapView;->C:Z

    const/4 p2, 0x0

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 179
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    new-instance p2, Lcom/baidu/mapapi/map/aa;

    invoke-direct {p2, p0}, Lcom/baidu/mapapi/map/aa;-><init>(Lcom/baidu/mapapi/map/MapView;)V

    iput-object p2, p0, Lcom/baidu/mapapi/map/MapView;->q:Lcom/baidu/mapsdkplatform/comapi/c;

    .line 133
    sget-object p2, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftBottom:Lcom/baidu/mapapi/map/LogoPosition;

    invoke-virtual {p2}, Lcom/baidu/mapapi/map/LogoPosition;->ordinal()I

    move-result p2

    iput p2, p0, Lcom/baidu/mapapi/map/MapView;->s:I

    const/4 p2, 0x1

    .line 134
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/MapView;->t:Z

    .line 135
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/MapView;->u:Z

    const/4 p2, 0x0

    .line 151
    iput-boolean p2, p0, Lcom/baidu/mapapi/map/MapView;->C:Z

    const/4 p2, 0x0

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V
    .locals 1

    .line 190
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Lcom/baidu/mapapi/map/aa;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/aa;-><init>(Lcom/baidu/mapapi/map/MapView;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->q:Lcom/baidu/mapsdkplatform/comapi/c;

    .line 133
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftBottom:Lcom/baidu/mapapi/map/LogoPosition;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/LogoPosition;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/MapView;->s:I

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->t:Z

    .line 135
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->u:Z

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->C:Z

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/MapView;F)F
    .locals 0

    .line 65
    iput p1, p0, Lcom/baidu/mapapi/map/MapView;->v:F

    return p1
.end method

.method static synthetic a()Landroid/util/SparseIntArray;
    .locals 1

    .line 65
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 9

    const-string v0, "logo_h.png"

    .line 736
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v1

    const/16 v2, 0xb4

    if-ge v1, v2, :cond_0

    const-string v0, "logo_l.png"

    .line 740
    :cond_0
    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x1e0

    if-le v1, v0, :cond_2

    .line 747
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 748
    invoke-virtual {v7, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 749
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    const/16 v0, 0x140

    if-le v1, v0, :cond_3

    .line 751
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 752
    invoke-virtual {v7, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 753
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 755
    :cond_3
    iput-object v2, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    .line 757
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 758
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    .line 759
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 760
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/MapView;->addView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V
    .locals 2

    .line 446
    iput-object p1, p0, Lcom/baidu/mapapi/map/MapView;->p:Landroid/content/Context;

    .line 447
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/i;->a()V

    .line 448
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    .line 451
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 452
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/platform/comapi/util/i;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 455
    :cond_0
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/a;->a()Lcom/baidu/mapsdkplatform/comapi/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->q:Lcom/baidu/mapsdkplatform/comapi/c;

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/a;->a(Lcom/baidu/mapsdkplatform/comapi/c;)V

    .line 456
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->permissionCheck()I

    .line 459
    :goto_0
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->b:Ljava/lang/String;

    sget v1, Lcom/baidu/mapapi/map/MapView;->c:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;Ljava/lang/String;I)V

    .line 461
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/content/Context;)V

    .line 463
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/MapView;->b(Landroid/content/Context;)V

    const/4 v0, 0x4

    if-eqz p2, :cond_1

    .line 465
    iget-boolean v1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->h:Z

    if-nez v1, :cond_1

    .line 466
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->setVisibility(I)V

    .line 469
    :cond_1
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/MapView;->c(Landroid/content/Context;)V

    if-eqz p2, :cond_2

    .line 471
    iget-boolean p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->i:Z

    if-nez p1, :cond_2

    .line 472
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    if-eqz p2, :cond_3

    .line 474
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->j:Lcom/baidu/mapapi/map/LogoPosition;

    if-eqz p1, :cond_3

    .line 475
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->j:Lcom/baidu/mapapi/map/LogoPosition;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/LogoPosition;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/MapView;->s:I

    :cond_3
    if-eqz p2, :cond_4

    .line 477
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->l:Landroid/graphics/Point;

    if-eqz p1, :cond_4

    .line 478
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->l:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/graphics/Point;

    :cond_4
    if-eqz p2, :cond_5

    .line 480
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->k:Landroid/graphics/Point;

    if-eqz p1, :cond_5

    .line 481
    iget-object p1, p2, Lcom/baidu/mapapi/map/BaiduMapOptions;->k:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/baidu/mapapi/map/MapView;->j:Landroid/graphics/Point;

    .line 484
    :cond_5
    invoke-direct {p0}, Lcom/baidu/mapapi/map/MapView;->b()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;Ljava/lang/String;I)V
    .locals 0

    .line 517
    new-instance p3, Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-direct {p3, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz p2, :cond_0

    .line 520
    new-instance p3, Lcom/baidu/mapapi/map/BaiduMap;

    iget-object p4, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p2}, Lcom/baidu/mapapi/map/BaiduMapOptions;->a()Lcom/baidu/mapsdkplatform/comapi/map/v;

    move-result-object p2

    invoke-direct {p3, p1, p4, p2}, Lcom/baidu/mapapi/map/BaiduMap;-><init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapSurfaceView;Lcom/baidu/mapsdkplatform/comapi/map/v;)V

    iput-object p3, p0, Lcom/baidu/mapapi/map/MapView;->f:Lcom/baidu/mapapi/map/BaiduMap;

    goto :goto_0

    .line 522
    :cond_0
    new-instance p2, Lcom/baidu/mapapi/map/BaiduMap;

    iget-object p3, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    const/4 p4, 0x0

    invoke-direct {p2, p1, p3, p4}, Lcom/baidu/mapapi/map/BaiduMap;-><init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapSurfaceView;Lcom/baidu/mapsdkplatform/comapi/map/v;)V

    iput-object p2, p0, Lcom/baidu/mapapi/map/MapView;->f:Lcom/baidu/mapapi/map/BaiduMap;

    .line 525
    :goto_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/MapView;->addView(Landroid/view/View;)V

    .line 527
    new-instance p1, Lcom/baidu/mapapi/map/ac;

    invoke-direct {p1, p0}, Lcom/baidu/mapapi/map/ac;-><init>(Lcom/baidu/mapapi/map/MapView;)V

    .line 728
    iget-object p2, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/c;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 729
    iget-object p2, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/platform/comapi/map/ak;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .line 1170
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1172
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1174
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 1177
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    .line 1179
    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1181
    :goto_0
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_2

    .line 1184
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1

    .line 1186
    :cond_2
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1188
    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/MapView;Ljava/lang/String;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/MapView;->a(Ljava/lang/String;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/MapView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/MapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V
    .locals 2

    .line 415
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p2, ""

    .line 416
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/MapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0, v1}, Lcom/baidu/mapapi/map/MapView;->setMapCustomStyleEnable(Z)V

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/MapCustomStyleOptions;->getLocalCustomStyleFilePath()Ljava/lang/String;

    move-result-object p1

    .line 420
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, ""

    .line 421
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/MapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0, v1}, Lcom/baidu/mapapi/map/MapView;->setMapCustomStyleEnable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1456
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1461
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1462
    sget-object p1, Lcom/baidu/mapapi/map/MapView;->a:Ljava/lang/String;

    const-string p2, "customStyleFilePath is empty or null, please check!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, ".sty"

    .line 1466
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1467
    sget-object p1, Lcom/baidu/mapapi/map/MapView;->a:Ljava/lang/String;

    const-string p2, "customStyleFile format is incorrect , please check!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1471
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1472
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1473
    sget-object p1, Lcom/baidu/mapapi/map/MapView;->a:Ljava/lang/String;

    const-string p2, "customStyleFile does not exist , please check!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1478
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/MapView;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/baidu/mapapi/map/MapView;->C:Z

    return p0
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/MapView;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MapView;->C:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/mapapi/map/MapView;)Lcom/baidu/platform/comapi/map/MapSurfaceView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    return-object p0
.end method

.method private b()V
    .locals 5

    .line 488
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 489
    invoke-direct {p0}, Lcom/baidu/mapapi/map/MapView;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "T"

    const-string v2, "1"

    .line 490
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "T"

    const-string v2, "0"

    .line 493
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :goto_0
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/SDKLogFactory;->getLogUsrActStatistics()Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;

    move-result-object v1

    const-string v2, "B"

    const-string v3, "M"

    const-string v4, "0"

    .line 498
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;->addLogWithLowLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 765
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/ad;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    .line 766
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 770
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    new-instance v0, Lcom/baidu/mapapi/map/ad;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/ad;-><init>(Lcom/baidu/mapapi/map/MapView;)V

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b(Landroid/view/View$OnClickListener;)V

    .line 791
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    new-instance v0, Lcom/baidu/mapapi/map/ae;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/ae;-><init>(Lcom/baidu/mapapi/map/MapView;)V

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Landroid/view/View$OnClickListener;)V

    .line 811
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/MapView;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/mapapi/map/MapView;)F
    .locals 0

    .line 65
    iget p0, p0, Lcom/baidu/mapapi/map/MapView;->v:F

    return p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 8

    .line 827
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    .line 828
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 830
    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 832
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->m:Landroid/widget/TextView;

    .line 833
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    .line 835
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 836
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->m:Landroid/widget/TextView;

    const-string v4, "#FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 837
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->m:Landroid/widget/TextView;

    const/high16 v4, 0x41300000    # 11.0f

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 838
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->m:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/baidu/mapapi/map/MapView;->m:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 839
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->m:Landroid/widget/TextView;

    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    .line 841
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 843
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->n:Landroid/widget/TextView;

    .line 844
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 846
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 847
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 848
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 849
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->n:Landroid/widget/TextView;

    const-string v6, "#000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 850
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 851
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 852
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 854
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapView;->o:Landroid/widget/ImageView;

    .line 855
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 857
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 858
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 859
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 860
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->m:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 861
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->o:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 862
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->o:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "icon_scale.9.png"

    .line 863
    invoke-static {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 865
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 866
    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 868
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v0, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 869
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 872
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 875
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/MapView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private c()Z
    .locals 1

    :try_start_0
    const-string v0, "com.baidu.bmfmap.map.FlutterMapView"

    .line 507
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic d(Lcom/baidu/mapapi/map/MapView;)Landroid/widget/ImageView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/baidu/mapapi/map/MapView;->o:Landroid/widget/ImageView;

    return-object p0
.end method

.method private d()V
    .locals 5

    .line 815
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    .line 816
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->G()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v0

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:F

    .line 821
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/c;

    move-result-object v2

    iget v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/c;->b:F

    cmpl-float v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b(Z)V

    .line 822
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/c;

    move-result-object v2

    iget v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/c;->a:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v1, v3}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a(Z)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic e(Lcom/baidu/mapapi/map/MapView;)Landroid/widget/TextView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/baidu/mapapi/map/MapView;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method private e()Z
    .locals 2

    .line 992
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic f(Lcom/baidu/mapapi/map/MapView;)Landroid/widget/TextView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/baidu/mapapi/map/MapView;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/baidu/mapapi/map/MapView;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/baidu/mapapi/map/MapView;->d()V

    return-void
.end method

.method public static setCustomMapStylePath(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_2

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "BDMapSDKException: please check whether the customMapStylePath file exits"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 212
    :cond_1
    sput-object p0, Lcom/baidu/mapapi/map/MapView;->b:Ljava/lang/String;

    return-void

    .line 205
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

    .line 222
    sput p0, Lcom/baidu/mapapi/map/MapView;->d:I

    return-void
.end method

.method public static setLoadCustomMapStyleFileMode(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    sput p0, Lcom/baidu/mapapi/map/MapView;->c:I

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

    .line 977
    instance-of v0, p2, Lcom/baidu/mapapi/map/MapViewLayoutParams;

    if-eqz v0, :cond_1

    .line 979
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 980
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 982
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public cancelRenderMap()V
    .locals 0

    return-void
.end method

.method public final getLogoPosition()Lcom/baidu/mapapi/map/LogoPosition;
    .locals 1

    .line 932
    iget v0, p0, Lcom/baidu/mapapi/map/MapView;->s:I

    packed-switch v0, :pswitch_data_0

    .line 944
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftBottom:Lcom/baidu/mapapi/map/LogoPosition;

    return-object v0

    .line 942
    :pswitch_0
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionRightTop:Lcom/baidu/mapapi/map/LogoPosition;

    return-object v0

    .line 940
    :pswitch_1
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionRightBottom:Lcom/baidu/mapapi/map/LogoPosition;

    return-object v0

    .line 938
    :pswitch_2
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionCenterTop:Lcom/baidu/mapapi/map/LogoPosition;

    return-object v0

    .line 936
    :pswitch_3
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionCenterBottom:Lcom/baidu/mapapi/map/LogoPosition;

    return-object v0

    .line 934
    :pswitch_4
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftTop:Lcom/baidu/mapapi/map/LogoPosition;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getMap()Lcom/baidu/mapapi/map/BaiduMap;
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->f:Lcom/baidu/mapapi/map/BaiduMap;

    iput-object p0, v0, Lcom/baidu/mapapi/map/BaiduMap;->a:Lcom/baidu/mapapi/map/MapView;

    .line 883
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->f:Lcom/baidu/mapapi/map/BaiduMap;

    return-object v0
.end method

.method public final getMapLevel()I
    .locals 2

    .line 954
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getZoomLevel()F

    move-result v0

    .line 955
    sget-object v1, Lcom/baidu/mapapi/map/MapView;->r:Landroid/util/SparseIntArray;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public getScaleControlPosition()Landroid/graphics/Point;
    .locals 1

    .line 1285
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->j:Landroid/graphics/Point;

    return-object v0
.end method

.method public getScaleControlViewHeight()I
    .locals 1

    .line 1261
    iget v0, p0, Lcom/baidu/mapapi/map/MapView;->A:I

    return v0
.end method

.method public getScaleControlViewWidth()I
    .locals 1

    .line 1252
    iget v0, p0, Lcom/baidu/mapapi/map/MapView;->B:I

    return v0
.end method

.method public getZoomControlsPosition()Landroid/graphics/Point;
    .locals 1

    .line 1224
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/graphics/Point;

    return-object v0
.end method

.method public handleMultiTouch(FFFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public handleTouchDown(FF)V
    .locals 0

    .line 1373
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public handleTouchMove(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public handleTouchUp(FF)Z
    .locals 0

    .line 1387
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    return p2
.end method

.method public inRangeOfView(FF)Z
    .locals 1

    .line 1402
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->inRangeOfView(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSetBackgroundDraw()Z
    .locals 1

    .line 1498
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1502
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->isSetBackgroundDraw()Z

    move-result v0

    return v0
.end method

.method public isShowScaleControl()Z
    .locals 1

    .line 1243
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MapView;->u:Z

    return v0
.end method

.method public onCreate(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "mapstatus"

    .line 1328
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/map/MapStatus;

    .line 1329
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->j:Landroid/graphics/Point;

    if-eqz p1, :cond_1

    const-string p1, "scalePosition"

    .line 1330
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    iput-object p1, p0, Lcom/baidu/mapapi/map/MapView;->j:Landroid/graphics/Point;

    .line 1332
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/graphics/Point;

    if-eqz p1, :cond_2

    const-string p1, "zoomPosition"

    .line 1333
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    iput-object p1, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/graphics/Point;

    :cond_2
    const-string p1, "mZoomControlEnabled"

    .line 1335
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MapView;->t:Z

    const-string p1, "mScaleControlEnabled"

    .line 1336
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MapView;->u:Z

    const-string p1, "logoPosition"

    .line 1337
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/MapView;->s:I

    const-string p1, "paddingLeft"

    .line 1338
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "paddingTop"

    .line 1339
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "paddingRight"

    .line 1340
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "paddingBottom"

    .line 1341
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 1338
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/baidu/mapapi/map/MapView;->setPadding(IIII)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 891
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->f:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->f:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->c()V

    .line 894
    :cond_0
    invoke-static {}, Lcom/baidu/platform/comapi/util/i;->a()Z

    .line 895
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz v0, :cond_1

    .line 896
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->unInit()V

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 899
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 900
    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->h:Landroid/graphics/Bitmap;

    .line 904
    :cond_2
    sget-object v0, Lcom/baidu/mapapi/map/MapView;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 905
    sput-object v1, Lcom/baidu/mapapi/map/MapView;->b:Ljava/lang/String;

    .line 907
    :cond_3
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/a;->a()Lcom/baidu/mapsdkplatform/comapi/a;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->q:Lcom/baidu/mapsdkplatform/comapi/c;

    invoke-virtual {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/a;->b(Lcom/baidu/mapsdkplatform/comapi/c;)V

    .line 908
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->b()V

    .line 909
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    .line 910
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/i;->b()V

    .line 911
    iput-object v1, p0, Lcom/baidu/mapapi/map/MapView;->p:Landroid/content/Context;

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 10

    .line 1028
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getChildCount()I

    move-result p1

    .line 1031
    iget-object p2, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/view/View;)V

    .line 1032
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result p2

    iget p3, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/baidu/mapapi/map/MapView;->x:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 p4, 0x0

    if-lez p2, :cond_0

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result p2

    iget p5, p0, Lcom/baidu/mapapi/map/MapView;->y:I

    sub-int/2addr p2, p5

    iget p5, p0, Lcom/baidu/mapapi/map/MapView;->z:I

    sub-int/2addr p2, p5

    iget-object p5, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p5

    if-lez p2, :cond_0

    .line 1033
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result p2

    iget p3, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/baidu/mapapi/map/MapView;->x:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float p3, p2, p3

    .line 1034
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result p2

    iget p5, p0, Lcom/baidu/mapapi/map/MapView;->y:I

    sub-int/2addr p2, p5

    iget p5, p0, Lcom/baidu/mapapi/map/MapView;->z:I

    sub-int/2addr p2, p5

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p2, p5

    goto :goto_0

    .line 1036
    :cond_0
    iput p4, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    .line 1037
    iput p4, p0, Lcom/baidu/mapapi/map/MapView;->x:I

    .line 1038
    iput p4, p0, Lcom/baidu/mapapi/map/MapView;->z:I

    .line 1039
    iput p4, p0, Lcom/baidu/mapapi/map/MapView;->y:I

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    const/4 p5, 0x0

    :goto_1
    if-ge p5, p1, :cond_d

    .line 1043
    invoke-virtual {p0, p5}, Lcom/baidu/mapapi/map/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 1047
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-ne v0, v1, :cond_2

    .line 1048
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result v2

    invoke-virtual {v0, p4, p4, v1, v2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->layout(IIII)V

    goto/16 :goto_5

    .line 1050
    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    const/high16 v2, 0x40a00000    # 5.0f

    if-ne v0, v1, :cond_3

    .line 1055
    iget v0, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    int-to-float v0, v0

    mul-float v1, p3, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1056
    iget v3, p0, Lcom/baidu/mapapi/map/MapView;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v1, v3

    .line 1057
    iget v3, p0, Lcom/baidu/mapapi/map/MapView;->y:I

    int-to-float v3, v3

    mul-float v2, v2, p2

    add-float/2addr v3, v2

    float-to-int v3, v3

    .line 1058
    iget v4, p0, Lcom/baidu/mapapi/map/MapView;->z:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    float-to-int v2, v4

    .line 1059
    iget v4, p0, Lcom/baidu/mapapi/map/MapView;->s:I

    packed-switch v4, :pswitch_data_0

    .line 1092
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    .line 1093
    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 1094
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v1, v3

    :goto_2
    move v9, v1

    move v1, v0

    move v0, v9

    goto/16 :goto_3

    .line 1086
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v3

    .line 1087
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    .line 1088
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v2, v1

    goto/16 :goto_3

    .line 1079
    :pswitch_1
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    .line 1080
    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    sub-int v3, v0, v2

    .line 1081
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    .line 1082
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v2, v1

    goto :goto_3

    .line 1074
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v3

    .line 1075
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/baidu/mapapi/map/MapView;->x:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1076
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/baidu/mapapi/map/MapView;->x:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 1067
    :pswitch_3
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    .line 1068
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int v3, v0, v1

    .line 1069
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/baidu/mapapi/map/MapView;->x:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1070
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/baidu/mapapi/map/MapView;->x:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 1063
    :pswitch_4
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v3

    .line 1064
    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    goto/16 :goto_2

    .line 1097
    :goto_3
    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_5

    .line 1099
    :cond_3
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    if-ne v0, v1, :cond_7

    .line 1100
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_5

    .line 1103
    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/view/View;)V

    .line 1104
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/graphics/Point;

    if-nez v0, :cond_6

    .line 1105
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0xf

    int-to-float v0, v0

    mul-float v0, v0, p2

    iget v1, p0, Lcom/baidu/mapapi/map/MapView;->y:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1106
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0xf

    int-to-float v1, v1

    mul-float v1, v1, p3

    iget v2, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1107
    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v2}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v1, v2

    .line 1108
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v3}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v0, v3

    .line 1109
    iget v4, p0, Lcom/baidu/mapapi/map/MapView;->s:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 1110
    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v0, v4

    .line 1111
    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1113
    :cond_5
    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v4, v2, v3, v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->layout(IIII)V

    goto/16 :goto_5

    .line 1115
    :cond_6
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v4}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    .line 1116
    invoke-virtual {v5}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1115
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->layout(IIII)V

    goto/16 :goto_5

    .line 1119
    :cond_7
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    if-ne v0, v1, :cond_9

    .line 1120
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/view/View;)V

    .line 1121
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->j:Landroid/graphics/Point;

    if-nez v0, :cond_8

    .line 1122
    iget v0, p0, Lcom/baidu/mapapi/map/MapView;->z:I

    int-to-float v0, v0

    mul-float v1, p2, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x42600000    # 56.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1123
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/map/MapView;->B:I

    .line 1124
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/map/MapView;->A:I

    .line 1125
    iget v1, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    int-to-float v1, v1

    mul-float v2, v2, p3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1126
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v2, v0

    .line 1127
    iget v0, p0, Lcom/baidu/mapapi/map/MapView;->B:I

    add-int/2addr v0, v1

    .line 1128
    iget v3, p0, Lcom/baidu/mapapi/map/MapView;->A:I

    add-int/2addr v3, v2

    .line 1130
    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto/16 :goto_5

    .line 1132
    :cond_8
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/baidu/mapapi/map/MapView;->j:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->j:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->j:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    .line 1133
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/baidu/mapapi/map/MapView;->j:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    .line 1134
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1132
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto :goto_5

    .line 1138
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1139
    instance-of v2, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;

    if-eqz v2, :cond_c

    .line 1140
    check-cast v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;

    .line 1141
    iget-object v2, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->c:Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;

    .line 1143
    sget-object v3, Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;->absoluteMode:Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;

    if-ne v2, v3, :cond_a

    .line 1144
    iget-object v2, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->b:Landroid/graphics/Point;

    goto :goto_4

    .line 1146
    :cond_a
    iget-object v2, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 1147
    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    .line 1148
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/c;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1149
    iget-object v3, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Landroid/graphics/Point;

    move-result-object v2

    goto :goto_4

    .line 1151
    :cond_b
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1154
    :goto_4
    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/MapView;->a(Landroid/view/View;)V

    .line 1155
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1156
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1157
    iget v5, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->d:F

    .line 1158
    iget v6, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->e:F

    .line 1159
    iget v7, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    int-to-float v8, v3

    mul-float v5, v5, v8

    sub-float/2addr v7, v5

    float-to-int v5, v7

    iget v7, v1, Lcom/baidu/mapapi/map/MapViewLayoutParams;->g:I

    add-int/2addr v5, v7

    .line 1160
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

    .line 1161
    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_c
    :goto_5
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_1

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPause()V
    .locals 1

    .line 962
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1293
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->f:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->f:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    const-string v1, "mapstatus"

    .line 1298
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1300
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->j:Landroid/graphics/Point;

    .line 1304
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/graphics/Point;

    const-string v0, "mZoomControlEnabled"

    .line 1308
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MapView;->t:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "mScaleControlEnabled"

    .line 1309
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MapView;->u:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "logoPosition"

    .line 1310
    iget v1, p0, Lcom/baidu/mapapi/map/MapView;->s:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "paddingLeft"

    .line 1311
    iget v1, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "paddingTop"

    .line 1312
    iget v1, p0, Lcom/baidu/mapapi/map/MapView;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "paddingRight"

    .line 1313
    iget v1, p0, Lcom/baidu/mapapi/map/MapView;->x:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "paddingBottom"

    .line 1314
    iget v1, p0, Lcom/baidu/mapapi/map/MapView;->z:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 3

    .line 1000
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->g:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    return-void

    .line 1004
    :cond_0
    invoke-direct {p0}, Lcom/baidu/mapapi/map/MapView;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1005
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 1007
    :cond_1
    new-instance v0, Lcom/baidu/mapapi/map/af;

    invoke-direct {v0, p0, p1}, Lcom/baidu/mapapi/map/af;-><init>(Lcom/baidu/mapapi/map/MapView;Landroid/view/View;)V

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/baidu/platform/comapi/util/k;->a(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method public renderMap()V
    .locals 0

    return-void
.end method

.method public setCustomStyleFilePathAndMode(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public final setLogoPosition(Lcom/baidu/mapapi/map/LogoPosition;)V
    .locals 0

    if-nez p1, :cond_0

    .line 921
    sget-object p1, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftBottom:Lcom/baidu/mapapi/map/LogoPosition;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/LogoPosition;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/MapView;->s:I

    goto :goto_0

    .line 923
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/LogoPosition;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/MapView;->s:I

    .line 925
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->requestLayout()V

    return-void
.end method

.method public setMapCustomStyle(Lcom/baidu/mapapi/map/MapCustomStyleOptions;Lcom/baidu/mapapi/map/CustomMapStyleCallBack;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 322
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapCustomStyleOptions;->getCustomMapStyleId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 332
    :cond_1
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a()Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mapapi/map/MapView;->p:Landroid/content/Context;

    new-instance v3, Lcom/baidu/mapapi/map/ab;

    invoke-direct {v3, p0, p2, p1}, Lcom/baidu/mapapi/map/ab;-><init>(Lcom/baidu/mapapi/map/MapView;Lcom/baidu/mapapi/map/CustomMapStyleCallBack;Lcom/baidu/mapapi/map/MapCustomStyleOptions;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/mapsdkplatform/comapi/map/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/map/e$a;)V

    return-void

    .line 324
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapCustomStyleOptions;->getLocalCustomStyleFilePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 325
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, ""

    .line 326
    invoke-direct {p0, p1, p2}, Lcom/baidu/mapapi/map/MapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 327
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/MapView;->setMapCustomStyleEnable(Z)V

    :cond_3
    return-void
.end method

.method public setMapCustomStyleEnable(Z)V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->q(Z)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setMapCustomStylePath(Ljava/lang/String;)V
    .locals 5

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "O"

    const-string v2, "local"

    .line 279
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "E"

    const-string v2, "1"

    .line 280
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-static {}, Lcom/baidu/platform/comapi/logstatistics/SDKLogFactory;->getLogUsrActStatistics()Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;

    move-result-object v1

    const-string v2, "B"

    const-string v3, "CS"

    const-string v4, "0"

    .line 282
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/baidu/platform/comapi/logstatistics/LogUsrActStatistics;->addLogWithLowLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, ""

    .line 286
    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/MapView;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 1020
    iput p1, p0, Lcom/baidu/mapapi/map/MapView;->w:I

    .line 1021
    iput p2, p0, Lcom/baidu/mapapi/map/MapView;->y:I

    .line 1022
    iput p3, p0, Lcom/baidu/mapapi/map/MapView;->x:I

    .line 1023
    iput p4, p0, Lcom/baidu/mapapi/map/MapView;->z:I

    return-void
.end method

.method public setScaleControlPosition(Landroid/graphics/Point;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1273
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1274
    iput-object p1, p0, Lcom/baidu/mapapi/map/MapView;->j:Landroid/graphics/Point;

    .line 1275
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setSupBackgroundDraw(Z)V
    .locals 1

    .line 1487
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-nez v0, :cond_0

    return-void

    .line 1491
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setSupBackgroundDraw(Z)V

    return-void
.end method

.method public setUpViewEventToMapView(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1362
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final setZOrderMediaOverlay(Z)V
    .locals 1

    .line 1351
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-nez v0, :cond_0

    return-void

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->e:Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setZOrderMediaOverlay(Z)V

    return-void
.end method

.method public setZoomControlsPosition(Landroid/graphics/Point;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1212
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 1213
    iput-object p1, p0, Lcom/baidu/mapapi/map/MapView;->k:Landroid/graphics/Point;

    .line 1214
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public showScaleControl(Z)V
    .locals 2

    .line 1233
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->l:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1234
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MapView;->u:Z

    return-void
.end method

.method public showZoomControls(Z)V
    .locals 2

    .line 1197
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1198
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapView;->i:Lcom/baidu/mapsdkplatform/comapi/map/ad;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/ad;->setVisibility(I)V

    .line 1199
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MapView;->t:Z

    :cond_1
    return-void
.end method
