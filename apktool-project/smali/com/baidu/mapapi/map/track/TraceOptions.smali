.class public Lcom/baidu/mapapi/map/track/TraceOptions;
.super Ljava/lang/Object;
.source "TraceOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/track/TraceOptions$TraceAnimateType;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private d:[I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private n:Z

.field private o:Z

.field private p:Lcom/baidu/mapapi/map/BM3DModelOptions;

.field private q:Z

.field private r:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xf1006a

    .line 30
    iput v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->a:I

    const/16 v0, 0xe

    .line 35
    iput v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->b:I

    const/16 v0, 0x12c

    .line 50
    iput v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->e:I

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->f:Z

    .line 66
    sget-object v1, Lcom/baidu/mapapi/map/track/TraceOptions$TraceAnimateType;->TraceOverlayAnimationEasingCurveLinear:Lcom/baidu/mapapi/map/track/TraceOptions$TraceAnimateType;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/track/TraceOptions$TraceAnimateType;->ordinal()I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->i:I

    .line 71
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->j:Z

    const/4 v1, 0x1

    .line 76
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->k:Z

    .line 81
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->l:Z

    .line 91
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->n:Z

    .line 96
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->o:Z

    .line 106
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->q:Z

    const/high16 v0, 0x40a00000    # 5.0f

    .line 108
    iput v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->r:F

    return-void
.end method


# virtual methods
.method public animate(Z)Lcom/baidu/mapapi/map/track/TraceOptions;
    .locals 0

    .line 246
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->f:Z

    return-object p0
.end method

.method public animationDuration(I)Lcom/baidu/mapapi/map/track/TraceOptions;
    .locals 0

    .line 257
    iput p1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->h:I

    return-object p0
.end method

.method public animationTime(I)Lcom/baidu/mapapi/map/track/TraceOptions;
    .locals 1

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    .line 234
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: Not less than 300 milliseconds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 236
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->e:I

    return-object p0
.end method

.method public animationType(Lcom/baidu/mapapi/map/track/TraceOptions$TraceAnimateType;)Lcom/baidu/mapapi/map/track/TraceOptions;
    .locals 0

    if-nez p1, :cond_0

    .line 268
    sget-object p1, Lcom/baidu/mapapi/map/track/TraceOptions$TraceAnimateType;->TraceOverlayAnimationEasingCurveLinear:Lcom/baidu/mapapi/map/track/TraceOptions$TraceAnimateType;

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/track/TraceOptions$TraceAnimateType;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->i:I

    return-object p0
.end method

.method public color(I)Lcom/baidu/mapapi/map/track/TraceOptions;
    .locals 0

    .line 184
    iput p1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->a:I

    return-object p0
.end method

.method public colors([I)Lcom/baidu/mapapi/map/track/TraceOptions;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->d:[I

    return-object p0
.end method

.method public getAnimateType()Lcom/baidu/mapapi/map/track/TraceOptions$TraceAnimateType;
    .locals 1

    .line 348
    iget v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->i:I

    packed-switch v0, :pswitch_data_0

    .line 356
    sget-object v0, Lcom/baidu/mapapi/map/track/TraceOptions$TraceAnimateType;->TraceOverlayAnimationEasingCurveLinear:Lcom/baidu/mapapi/map/track/TraceOptions$TraceAnimateType;

    return-object v0

    .line 354
    :pswitch_0
    sget-object v0, Lcom/baidu/mapapi/map/track/TraceOptions$TraceAnimateType;->TraceOverlayAnimationEasingCurveEaseInOut:Lcom/baidu/mapapi/map/track/TraceOptions$TraceAnimateType;

    return-object v0

    .line 352
    :pswitch_1
    sget-object v0, Lcom/baidu/mapapi/map/track/TraceOptions$TraceAnimateType;->TraceOverlayAnimationEasingCurveEaseOut:Lcom/baidu/mapapi/map/track/TraceOptions$TraceAnimateType;

    return-object v0

    .line 350
    :pswitch_2
    sget-object v0, Lcom/baidu/mapapi/map/track/TraceOptions$TraceAnimateType;->TraceOverlayAnimationEasingCurveEaseIn:Lcom/baidu/mapapi/map/track/TraceOptions$TraceAnimateType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAnimationDuration()I
    .locals 1

    .line 378
    iget v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->h:I

    return v0
.end method

.method public getAnimationTime()I
    .locals 1

    .line 419
    iget v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->e:I

    return v0
.end method

.method public getBloomSpeed()F
    .locals 1

    .line 314
    iget v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->r:F

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 386
    iget v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->a:I

    return v0
.end method

.method public getColors()[I
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->d:[I

    return-object v0
.end method

.method public getIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->m:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getOverlay()Lcom/baidu/mapapi/map/track/TraceOverlay;
    .locals 2

    .line 423
    new-instance v0, Lcom/baidu/mapapi/map/track/TraceOverlay;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/track/TraceOverlay;-><init>()V

    .line 424
    iget v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->a:I

    iput v1, v0, Lcom/baidu/mapapi/map/track/TraceOverlay;->a:I

    .line 425
    iget v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->b:I

    iput v1, v0, Lcom/baidu/mapapi/map/track/TraceOverlay;->b:I

    .line 426
    iget-object v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->c:Ljava/util/List;

    iput-object v1, v0, Lcom/baidu/mapapi/map/track/TraceOverlay;->c:Ljava/util/List;

    .line 428
    iget v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->e:I

    iput v1, v0, Lcom/baidu/mapapi/map/track/TraceOverlay;->e:I

    .line 429
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->f:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/track/TraceOverlay;->h:Z

    .line 430
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->g:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/track/TraceOverlay;->g:Z

    .line 431
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->g:Z

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->d:[I

    iput-object v1, v0, Lcom/baidu/mapapi/map/track/TraceOverlay;->d:[I

    .line 434
    :cond_0
    iget v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->h:I

    iput v1, v0, Lcom/baidu/mapapi/map/track/TraceOverlay;->f:I

    .line 435
    iget v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->i:I

    iput v1, v0, Lcom/baidu/mapapi/map/track/TraceOverlay;->i:I

    .line 436
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->j:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/track/TraceOverlay;->j:Z

    .line 437
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->k:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/track/TraceOverlay;->k:Z

    .line 438
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->l:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/track/TraceOverlay;->l:Z

    .line 439
    iget-object v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->m:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iput-object v1, v0, Lcom/baidu/mapapi/map/track/TraceOverlay;->o:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 440
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->n:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/track/TraceOverlay;->m:Z

    .line 441
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->o:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/track/TraceOverlay;->n:Z

    .line 442
    iget-object v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->p:Lcom/baidu/mapapi/map/BM3DModelOptions;

    iput-object v1, v0, Lcom/baidu/mapapi/map/track/TraceOverlay;->p:Lcom/baidu/mapapi/map/BM3DModelOptions;

    .line 443
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->q:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/track/TraceOverlay;->q:Z

    .line 444
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->q:Z

    if-eqz v1, :cond_1

    .line 445
    iget v1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->r:F

    iput v1, v0, Lcom/baidu/mapapi/map/track/TraceOverlay;->r:F

    :cond_1
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

    .line 410
    iget-object v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->c:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 402
    iget v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->b:I

    return v0
.end method

.method public icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/track/TraceOptions;
    .locals 1

    if-nez p1, :cond_0

    .line 125
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: trace\'s icon can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->m:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object p0
.end method

.method public icon3D(Lcom/baidu/mapapi/map/BM3DModelOptions;)Lcom/baidu/mapapi/map/track/TraceOptions;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->p:Lcom/baidu/mapapi/map/BM3DModelOptions;

    return-object p0
.end method

.method public isAnimation()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->f:Z

    return v0
.end method

.method public isPointMove()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->l:Z

    return v0
.end method

.method public isRotateWhenTrack()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->k:Z

    return v0
.end method

.method public isTrackMove()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->j:Z

    return v0
.end method

.method public isUseColorarray()Z
    .locals 1

    .line 369
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->g:Z

    return v0
.end method

.method public points(Ljava/util/List;)Lcom/baidu/mapapi/map/track/TraceOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)",
            "Lcom/baidu/mapapi/map/track/TraceOptions;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 215
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 218
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points count can not less than 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 220
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not contains null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :cond_2
    iput-object p1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->c:Ljava/util/List;

    return-object p0
.end method

.method public setBloomSpeed(F)Lcom/baidu/mapapi/map/track/TraceOptions;
    .locals 0

    .line 309
    iput p1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->r:F

    return-object p0
.end method

.method public setDataReduction(Z)Lcom/baidu/mapapi/map/track/TraceOptions;
    .locals 0

    .line 289
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->n:Z

    return-object p0
.end method

.method public setDataSmooth(Z)Lcom/baidu/mapapi/map/track/TraceOptions;
    .locals 0

    .line 322
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->o:Z

    return-object p0
.end method

.method public setPointMove(Z)Lcom/baidu/mapapi/map/track/TraceOptions;
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->l:Z

    return-object p0
.end method

.method public setRotateWhenTrack(Z)Lcom/baidu/mapapi/map/track/TraceOptions;
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->k:Z

    return-object p0
.end method

.method public setTrackBloom(Z)Lcom/baidu/mapapi/map/track/TraceOptions;
    .locals 0

    .line 299
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->q:Z

    return-object p0
.end method

.method public setTrackMove(Z)Lcom/baidu/mapapi/map/track/TraceOptions;
    .locals 0

    .line 280
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->j:Z

    return-object p0
.end method

.method public useColorArray(Z)Lcom/baidu/mapapi/map/track/TraceOptions;
    .locals 0

    .line 332
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->g:Z

    return-object p0
.end method

.method public width(I)Lcom/baidu/mapapi/map/track/TraceOptions;
    .locals 0

    .line 204
    iput p1, p0, Lcom/baidu/mapapi/map/track/TraceOptions;->b:I

    return-object p0
.end method
