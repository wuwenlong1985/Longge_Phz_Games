.class public final Lcom/baidu/mapapi/map/PolylineOptions;
.super Lcom/baidu/mapapi/map/OverlayOptions;
.source "PolylineOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;,
        Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;,
        Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;,
        Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;
    }
.end annotation


# instance fields
.field a:I

.field b:Z

.field c:Landroid/os/Bundle;

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

.field private q:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

.field private v:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

.field private w:F

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Lcom/baidu/mapapi/map/OverlayOptions;-><init>()V

    const/high16 v0, -0x1000000

    .line 78
    iput v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->d:I

    const/4 v0, 0x5

    .line 82
    iput v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->h:I

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->k:Z

    const/4 v1, 0x0

    .line 86
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->l:Z

    .line 88
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->b:Z

    .line 89
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->m:Z

    .line 90
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->n:Z

    .line 92
    iput v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->o:I

    .line 93
    sget-object v2, Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;->LineJoinRound:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    iput-object v2, p0, Lcom/baidu/mapapi/map/PolylineOptions;->p:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    .line 94
    sget-object v2, Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;->LineCapButt:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    iput-object v2, p0, Lcom/baidu/mapapi/map/PolylineOptions;->q:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    .line 95
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->r:Z

    .line 96
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->s:Z

    .line 97
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->t:Z

    .line 98
    sget-object v1, Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;->NONE:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    iput-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->u:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    .line 100
    sget-object v1, Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;->NONE:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    iput-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->v:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    const/high16 v1, 0x40a00000    # 5.0f

    .line 101
    iput v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->w:F

    .line 102
    iput v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->x:I

    return-void
.end method

.method private a(Lcom/baidu/mapapi/map/Polyline;)Lcom/baidu/mapapi/map/Polyline;
    .locals 4

    .line 519
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->b:Z

    iput-boolean v0, p1, Lcom/baidu/mapapi/map/Polyline;->N:Z

    .line 520
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->u:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    iput-object v0, p1, Lcom/baidu/mapapi/map/Polyline;->w:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    .line 521
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->e:Ljava/util/List;

    iput-object v0, p1, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    .line 522
    iget v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->h:I

    iput v0, p1, Lcom/baidu/mapapi/map/Polyline;->f:I

    .line 523
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->t:Z

    iput-boolean v0, p1, Lcom/baidu/mapapi/map/Polyline;->p:Z

    .line 525
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 534
    iget-object v2, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 535
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    :cond_2
    iput-object v0, p1, Lcom/baidu/mapapi/map/Polyline;->d:[I

    return-object p1

    .line 530
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: mPoints array can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 526
    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: colors array can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a()Lcom/baidu/mapapi/map/Overlay;
    .locals 6

    .line 444
    new-instance v0, Lcom/baidu/mapapi/map/Polyline;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/Polyline;-><init>()V

    .line 445
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->e:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_2

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->v:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polyline;->x:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    .line 449
    iget v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->y:I

    iput v1, v0, Lcom/baidu/mapapi/map/Polyline;->q:I

    .line 450
    iget v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->z:I

    iput v1, v0, Lcom/baidu/mapapi/map/Polyline;->r:I

    .line 451
    iget v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->w:F

    iput v1, v0, Lcom/baidu/mapapi/map/Polyline;->s:F

    .line 452
    iget v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->x:I

    iput v1, v0, Lcom/baidu/mapapi/map/Polyline;->t:I

    .line 454
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->t:Z

    if-eqz v1, :cond_1

    .line 455
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/h;->n:Lcom/baidu/mapsdkplatform/comapi/map/h;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polyline;->type:Lcom/baidu/mapsdkplatform/comapi/map/h;

    .line 456
    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/PolylineOptions;->a(Lcom/baidu/mapapi/map/Polyline;)Lcom/baidu/mapapi/map/Polyline;

    move-result-object v0

    return-object v0

    .line 459
    :cond_1
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->b:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Polyline;->N:Z

    .line 460
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->m:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Polyline;->g:Z

    .line 461
    iget v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->a:I

    iput v1, v0, Lcom/baidu/mapapi/map/Polyline;->M:I

    .line 462
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->c:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polyline;->O:Landroid/os/Bundle;

    .line 463
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->e:Ljava/util/List;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    .line 464
    iget v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->d:I

    iput v1, v0, Lcom/baidu/mapapi/map/Polyline;->a:I

    .line 465
    iget v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->h:I

    iput v1, v0, Lcom/baidu/mapapi/map/Polyline;->f:I

    .line 466
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->i:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polyline;->k:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 467
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->j:Ljava/util/List;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polyline;->l:Ljava/util/List;

    .line 468
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->k:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Polyline;->h:Z

    .line 469
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->l:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Polyline;->i:Z

    .line 470
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->n:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Polyline;->j:Z

    .line 471
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->r:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Polyline;->n:Z

    .line 472
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->s:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Polyline;->o:Z

    .line 473
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->t:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Polyline;->p:Z

    .line 474
    iget v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->o:I

    iput v1, v0, Lcom/baidu/mapapi/map/Polyline;->m:I

    .line 475
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->p:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polyline;->v:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    .line 476
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->q:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polyline;->u:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    .line 477
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->u:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polyline;->w:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    .line 478
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->f:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mapapi/map/PolylineOptions;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 480
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/baidu/mapapi/map/PolylineOptions;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/baidu/mapapi/map/PolylineOptions;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 481
    iget-object v2, p0, Lcom/baidu/mapapi/map/PolylineOptions;->f:Ljava/util/List;

    iget-object v3, p0, Lcom/baidu/mapapi/map/PolylineOptions;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 484
    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->f:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 485
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 487
    iget-object v3, p0, Lcom/baidu/mapapi/map/PolylineOptions;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 488
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 491
    :cond_3
    iput-object v1, v0, Lcom/baidu/mapapi/map/Polyline;->c:[I

    .line 493
    :cond_4
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p0, Lcom/baidu/mapapi/map/PolylineOptions;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_5

    .line 495
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/baidu/mapapi/map/PolylineOptions;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 496
    iget-object v3, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    iget-object v4, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v4, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 499
    :cond_5
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 500
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 502
    iget-object v3, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 503
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 506
    :cond_6
    iput-object v1, v0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    :cond_7
    return-object v0

    .line 446
    :cond_8
    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BDMapSDKException: when you add polyline, you must at least supply 2 points"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bloomAlpha(I)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/16 p1, 0xff

    .line 364
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->z:I

    return-object p0
.end method

.method public bloomType(Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->v:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    return-object p0
.end method

.method public bloomWidth(I)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 351
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->y:I

    return-object p0
.end method

.method public clickable(Z)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 296
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->n:Z

    return-object p0
.end method

.method public color(I)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 148
    iput p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->d:I

    return-object p0
.end method

.method public colorsValues(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/baidu/mapapi/map/PolylineOptions;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 242
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: colors list can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    .line 244
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: colors list can not contains null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :cond_1
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    return-object p0
.end method

.method public customTexture(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->i:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object p0
.end method

.method public customTextureList(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;)",
            "Lcom/baidu/mapapi/map/PolylineOptions;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 179
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: customTexture list can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "baidumapsdk"

    const-string v1, "custom texture list is empty,the texture will not work"

    .line 182
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-nez v1, :cond_2

    const-string v1, "baidumapsdk"

    const-string v2, "the custom texture item is null,it will be discard"

    .line 186
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    :cond_3
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->j:Ljava/util/List;

    return-object p0
.end method

.method public dottedLine(Z)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 565
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->m:Z

    return-object p0
.end method

.method public dottedLineType(Lcom/baidu/mapapi/map/PolylineDottedLineType;)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 375
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/PolylineDottedLineType;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->o:I

    return-object p0
.end method

.method public extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public focus(Z)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 554
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->k:Z

    return-object p0
.end method

.method public getColor()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->d:I

    return v0
.end method

.method public getCustomTexture()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->i:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getCustomTextureList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->j:Ljava/util/List;

    return-object v0
.end method

.method public getExtraInfo()Landroid/os/Bundle;
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->c:Landroid/os/Bundle;

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

    .line 121
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->e:Ljava/util/List;

    return-object v0
.end method

.method public getTextureIndexs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->f:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->h:I

    return v0
.end method

.method public getZIndex()I
    .locals 1

    .line 608
    iget v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->a:I

    return v0
.end method

.method public isDottedLine()Z
    .locals 1

    .line 575
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->m:Z

    return v0
.end method

.method public isFocus()Z
    .locals 1

    .line 588
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->k:Z

    return v0
.end method

.method public isGeodesic(Z)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 428
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->s:Z

    return-object p0
.end method

.method public isGradient(Z)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 438
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->t:Z

    return-object p0
.end method

.method public isThined(Z)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 408
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->r:Z

    return-object p0
.end method

.method public isVisible()Z
    .locals 1

    .line 584
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->b:Z

    return v0
.end method

.method public keepScale(Z)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->l:Z

    return-object p0
.end method

.method public lineCapType(Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->q:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    return-object p0
.end method

.method public lineDirectionCross180(Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->u:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    return-object p0
.end method

.method public lineJoinType(Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->p:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    return-object p0
.end method

.method public points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)",
            "Lcom/baidu/mapapi/map/PolylineOptions;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 219
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 221
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 222
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points count can not less than 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 224
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not contains null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :cond_2
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->e:Ljava/util/List;

    return-object p0
.end method

.method public setBloomBlurTimes(I)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    const/16 p1, 0xa

    .line 338
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->x:I

    return-object p0
.end method

.method public setBloomGradientASpeed(F)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x41200000    # 10.0f

    .line 322
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->w:F

    return-object p0
.end method

.method public textureIndex(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/baidu/mapapi/map/PolylineOptions;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 265
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: indexs list can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    .line 267
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: index list can not contains null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 271
    :cond_1
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->f:Ljava/util/List;

    return-object p0
.end method

.method public visible(Z)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 549
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->b:Z

    return-object p0
.end method

.method public width(I)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    if-lez p1, :cond_0

    .line 284
    iput p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->h:I

    :cond_0
    return-object p0
.end method

.method public zIndex(I)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 598
    iput p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->a:I

    return-object p0
.end method
