.class public final Lcom/baidu/mapapi/map/MarkerOptions;
.super Lcom/baidu/mapapi/map/OverlayOptions;
.source "MarkerOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Z

.field private C:I

.field private D:I

.field private E:Z

.field private F:Z

.field a:I

.field b:Z

.field c:Landroid/os/Bundle;

.field private d:Lcom/baidu/mapapi/model/LatLng;

.field private e:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private f:F

.field private g:F

.field private h:Z

.field private i:Z

.field private j:F

.field private k:Lcom/baidu/mapapi/map/TitleOptions;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Z

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:F

.field private s:F

.field private t:F

.field private u:I

.field private v:I

.field private w:Z

.field private x:Landroid/graphics/Point;

.field private y:Z

.field private z:Lcom/baidu/mapapi/map/InfoWindow;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 9
    invoke-direct {p0}, Lcom/baidu/mapapi/map/OverlayOptions;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 37
    iput v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->f:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    iput v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->g:F

    const/4 v1, 0x1

    .line 39
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->h:Z

    const/4 v2, 0x0

    .line 40
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/MarkerOptions;->i:Z

    .line 46
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/MarkerOptions;->o:Z

    const/16 v3, 0x14

    .line 48
    iput v3, p0, Lcom/baidu/mapapi/map/MarkerOptions;->q:I

    .line 49
    iput v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->r:F

    .line 50
    iput v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->s:F

    .line 51
    iput v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->t:F

    .line 53
    iput v2, p0, Lcom/baidu/mapapi/map/MarkerOptions;->u:I

    .line 54
    sget-object v0, Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;->none:Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->v:I

    .line 56
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/MarkerOptions;->w:Z

    .line 59
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->y:Z

    const v0, 0x7fffffff

    .line 62
    iput v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->A:I

    .line 63
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/MarkerOptions;->B:Z

    const/4 v0, 0x4

    .line 64
    iput v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->C:I

    const/16 v0, 0x16

    .line 65
    iput v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->D:I

    .line 66
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/MarkerOptions;->E:Z

    .line 67
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/MarkerOptions;->F:Z

    .line 652
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->b:Z

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/mapapi/map/Overlay;
    .locals 2

    .line 605
    new-instance v0, Lcom/baidu/mapapi/map/Marker;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/Marker;-><init>()V

    .line 607
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->b:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Marker;->N:Z

    .line 608
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->a:I

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->M:I

    .line 609
    iget-object v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->c:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Marker;->O:Landroid/os/Bundle;

    .line 610
    iget-object v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->d:Lcom/baidu/mapapi/model/LatLng;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->x:Landroid/graphics/Point;

    if-nez v1, :cond_0

    .line 611
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BDMapSDKException: marker\'s position or fixedScreenPosition can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->d:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v1, :cond_1

    .line 614
    iget-object v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->d:Lcom/baidu/mapapi/model/LatLng;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Marker;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 616
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->e:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->p:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 617
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BDMapSDKException: when you add marker, you must set the icon or icons"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->e:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Marker;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 620
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->f:F

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->c:F

    .line 621
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->g:F

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->d:F

    .line 622
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->h:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Marker;->e:Z

    .line 623
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->i:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Marker;->f:Z

    .line 624
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->j:F

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->g:F

    .line 625
    iget-object v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->k:Lcom/baidu/mapapi/map/TitleOptions;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Marker;->i:Lcom/baidu/mapapi/map/TitleOptions;

    .line 626
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->m:I

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->j:I

    .line 627
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->n:I

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->k:I

    .line 628
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->o:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Marker;->l:Z

    .line 629
    iget-object v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->p:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Marker;->v:Ljava/util/ArrayList;

    .line 630
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->q:I

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->w:I

    .line 631
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->t:F

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->n:F

    .line 632
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->u:I

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->u:I

    .line 633
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->r:F

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->y:F

    .line 634
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->s:F

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->z:F

    .line 635
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->v:I

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->o:I

    .line 636
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->w:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Marker;->p:Z

    .line 637
    iget-object v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->z:Lcom/baidu/mapapi/map/InfoWindow;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    .line 638
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->y:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Marker;->q:Z

    .line 639
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->A:I

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->F:I

    .line 640
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->B:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Marker;->t:Z

    .line 641
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->C:I

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->G:I

    .line 642
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->D:I

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->H:I

    .line 643
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->E:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Marker;->r:Z

    .line 644
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->F:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Marker;->s:Z

    .line 645
    iget-object v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->x:Landroid/graphics/Point;

    if-eqz v1, :cond_3

    .line 646
    iget-object v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->x:Landroid/graphics/Point;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Marker;->B:Landroid/graphics/Point;

    :cond_3
    return-object v0
.end method

.method public alpha(F)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ltz v0, :cond_1

    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->t:F

    return-object p0

    .line 126
    :cond_1
    :goto_0
    iput v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->t:F

    return-object p0
.end method

.method public anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    cmpg-float v0, p2, v0

    if-ltz v0, :cond_2

    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    goto :goto_0

    .line 418
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->f:F

    .line 419
    iput p2, p0, Lcom/baidu/mapapi/map/MarkerOptions;->g:F

    return-object p0

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public animateType(Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    if-nez p1, :cond_0

    .line 93
    sget-object p1, Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;->none:Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;

    .line 95
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->v:I

    return-object p0
.end method

.method public clickable(Z)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 395
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->y:Z

    return-object p0
.end method

.method public draggable(Z)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->i:Z

    return-object p0
.end method

.method public endLevel(I)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 564
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->D:I

    return-object p0
.end method

.method public extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public fixedScreenPosition(Landroid/graphics/Point;)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->x:Landroid/graphics/Point;

    const/4 p1, 0x1

    .line 590
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->w:Z

    return-object p0
.end method

.method public flat(Z)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 375
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->o:Z

    return-object p0
.end method

.method public getAlpha()F
    .locals 1

    .line 182
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->t:F

    return v0
.end method

.method public getAnchorX()F
    .locals 1

    .line 429
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->f:F

    return v0
.end method

.method public getAnchorY()F
    .locals 1

    .line 438
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->g:F

    return v0
.end method

.method public getAnimateType()Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;
    .locals 1

    .line 105
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->v:I

    packed-switch v0, :pswitch_data_0

    .line 113
    sget-object v0, Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;->none:Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;

    return-object v0

    .line 111
    :pswitch_0
    sget-object v0, Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;->jump:Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;

    return-object v0

    .line 109
    :pswitch_1
    sget-object v0, Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;->grow:Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;

    return-object v0

    .line 107
    :pswitch_2
    sget-object v0, Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;->drop:Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEndLevel()I
    .locals 1

    .line 560
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->D:I

    return v0
.end method

.method public getExtraInfo()Landroid/os/Bundle;
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public getForceDisPlay()Z
    .locals 1

    .line 537
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->B:Z

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->u:I

    return v0
.end method

.method public getIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->e:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getIcons()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIsClickable()Z
    .locals 1

    .line 400
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->y:Z

    return v0
.end method

.method public getJoinCollision()Z
    .locals 1

    .line 573
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->E:Z

    return v0
.end method

.method public getPeriod()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->q:I

    return v0
.end method

.method public getPosition()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->d:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 531
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->A:I

    return v0
.end method

.method public getRotate()F
    .locals 1

    .line 463
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->j:F

    return v0
.end method

.method public getStartLevel()I
    .locals 1

    .line 551
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->C:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleOptions()Lcom/baidu/mapapi/map/TitleOptions;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->k:Lcom/baidu/mapapi/map/TitleOptions;

    return-object v0
.end method

.method public getZIndex()I
    .locals 1

    .line 694
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->a:I

    return v0
.end method

.method public height(I)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 139
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->u:I

    return-object p0

    .line 142
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->u:I

    return-object p0
.end method

.method public icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 1

    if-nez p1, :cond_0

    .line 78
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: marker\'s icon can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->e:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object p0
.end method

.method public icons(Ljava/util/ArrayList;)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;)",
            "Lcom/baidu/mapapi/map/MarkerOptions;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 211
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: marker\'s icons can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 213
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    .line 216
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 217
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/BitmapDescriptor;

    iget-object v1, v1, Lcom/baidu/mapapi/map/BitmapDescriptor;->a:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object p0

    .line 221
    :cond_4
    iput-object p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->p:Ljava/util/ArrayList;

    return-object p0
.end method

.method public infoWindow(Lcom/baidu/mapapi/map/InfoWindow;)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->z:Lcom/baidu/mapapi/map/InfoWindow;

    return-object p0
.end method

.method public isDraggable()Z
    .locals 1

    .line 385
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->i:Z

    return v0
.end method

.method public isFlat()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->o:Z

    return v0
.end method

.method public isForceDisPlay(Z)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 541
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->B:Z

    return-object p0
.end method

.method public isJoinCollision(Z)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 577
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->E:Z

    return-object p0
.end method

.method public isPerspective()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->h:Z

    return v0
.end method

.method public isPoiCollided()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->F:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 673
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->b:Z

    return v0
.end method

.method public period(I)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 1

    if-gtz p1, :cond_0

    .line 243
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: marker\'s period must be greater than zero "

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 245
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->q:I

    return-object p0
.end method

.method public perspective(Z)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 287
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->h:Z

    return-object p0
.end method

.method public poiCollided(Z)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 342
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->F:Z

    return-object p0
.end method

.method public position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->d:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method

.method public priority(I)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 524
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->A:I

    return-object p0
.end method

.method public rotate(F)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 2

    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    if-gez v0, :cond_0

    add-float/2addr p1, v1

    goto :goto_0

    :cond_0
    rem-float/2addr p1, v1

    .line 453
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->j:F

    return-object p0
.end method

.method public scaleX(F)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return-object p0

    .line 157
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->r:F

    return-object p0
.end method

.method public scaleY(F)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return-object p0

    .line 172
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->s:F

    return-object p0
.end method

.method public startLevel(I)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 555
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->C:I

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->l:Ljava/lang/String;

    return-object p0
.end method

.method public titleOptions(Lcom/baidu/mapapi/map/TitleOptions;)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 476
    iput v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->f:F

    const/4 v0, 0x0

    .line 477
    iput v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->g:F

    .line 478
    iput-object p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->k:Lcom/baidu/mapapi/map/TitleOptions;

    return-object p0
.end method

.method public visible(Z)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 663
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->b:Z

    return-object p0
.end method

.method public xOffset(I)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 308
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->n:I

    return-object p0
.end method

.method public yOffset(I)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 320
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->m:I

    return-object p0
.end method

.method public zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 684
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->a:I

    return-object p0
.end method
