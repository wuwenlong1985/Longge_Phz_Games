.class public final Lcom/baidu/mapapi/map/BM3DModelOptions;
.super Lcom/baidu/mapapi/map/OverlayOptions;
.source "BM3DModelOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/BM3DModelOptions$ModelYawAxis;,
        Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/mapapi/model/LatLng;

.field private d:F

.field private e:Z

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:Z

.field private m:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

.field private n:Z

.field private o:I

.field private p:I

.field private q:F

.field public yawAxis:Lcom/baidu/mapapi/map/BM3DModelOptions$ModelYawAxis;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 10
    invoke-direct {p0}, Lcom/baidu/mapapi/map/OverlayOptions;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    iput v0, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->d:F

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->e:Z

    const/4 v2, 0x1

    .line 37
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->l:Z

    .line 38
    sget-object v2, Lcom/baidu/mapapi/map/BM3DModelOptions$ModelYawAxis;->Z:Lcom/baidu/mapapi/map/BM3DModelOptions$ModelYawAxis;

    iput-object v2, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->yawAxis:Lcom/baidu/mapapi/map/BM3DModelOptions$ModelYawAxis;

    .line 39
    sget-object v2, Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;->BM3DModelTypeObj:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    iput-object v2, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->m:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    .line 43
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->n:Z

    .line 45
    iput v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->o:I

    .line 49
    iput v0, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->q:F

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/mapapi/map/Overlay;
    .locals 2

    .line 355
    new-instance v0, Lcom/baidu/mapapi/map/BM3DModel;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/BM3DModel;-><init>()V

    .line 356
    iget-object v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BDMapSDKException: BM3DModel modelPath can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mapapi/map/BM3DModel;->a:Ljava/lang/String;

    .line 360
    iget-object v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BDMapSDKException: BM3DModel mModelName can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mapapi/map/BM3DModel;->b:Ljava/lang/String;

    .line 364
    iget-object v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->c:Lcom/baidu/mapapi/model/LatLng;

    if-nez v1, :cond_2

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BDMapSDKException: BM3DModel mPosition can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->c:Lcom/baidu/mapapi/model/LatLng;

    iput-object v1, v0, Lcom/baidu/mapapi/map/BM3DModel;->c:Lcom/baidu/mapapi/model/LatLng;

    .line 368
    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->d:F

    iput v1, v0, Lcom/baidu/mapapi/map/BM3DModel;->d:F

    .line 369
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->e:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/BM3DModel;->e:Z

    .line 370
    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->f:F

    iput v1, v0, Lcom/baidu/mapapi/map/BM3DModel;->f:F

    .line 371
    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->g:F

    iput v1, v0, Lcom/baidu/mapapi/map/BM3DModel;->g:F

    .line 372
    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->h:F

    iput v1, v0, Lcom/baidu/mapapi/map/BM3DModel;->h:F

    .line 373
    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->i:F

    iput v1, v0, Lcom/baidu/mapapi/map/BM3DModel;->i:F

    .line 374
    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->j:F

    iput v1, v0, Lcom/baidu/mapapi/map/BM3DModel;->j:F

    .line 375
    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->k:F

    iput v1, v0, Lcom/baidu/mapapi/map/BM3DModel;->k:F

    .line 376
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->l:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/BM3DModel;->N:Z

    .line 377
    iget-object v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->m:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    iput-object v1, v0, Lcom/baidu/mapapi/map/BM3DModel;->l:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    .line 378
    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->p:I

    iput v1, v0, Lcom/baidu/mapapi/map/BM3DModel;->o:I

    .line 379
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->n:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/BM3DModel;->m:Z

    .line 380
    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->o:I

    iput v1, v0, Lcom/baidu/mapapi/map/BM3DModel;->n:I

    .line 381
    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->q:F

    iput v1, v0, Lcom/baidu/mapapi/map/BM3DModel;->p:F

    return-object v0
.end method

.method public animationIndex(I)Lcom/baidu/mapapi/map/BM3DModelOptions;
    .locals 0

    .line 217
    iput p1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->p:I

    return-object p0
.end method

.method public animationRepeatCount(I)Lcom/baidu/mapapi/map/BM3DModelOptions;
    .locals 0

    .line 190
    iput p1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->o:I

    return-object p0
.end method

.method public animationSpeed(F)Lcom/baidu/mapapi/map/BM3DModelOptions;
    .locals 0

    .line 204
    iput p1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->q:F

    return-object p0
.end method

.method public getAnimationIndex()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->p:I

    return v0
.end method

.method public getAnimationRepeatCount()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->o:I

    return v0
.end method

.method public getAnimationSpeed()F
    .locals 1

    .line 209
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->q:F

    return v0
.end method

.method public getBM3DModelType()Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->m:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getModelPath()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOffsetX()F
    .locals 1

    .line 303
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->i:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .line 312
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->j:F

    return v0
.end method

.method public getOffsetZ()F
    .locals 1

    .line 321
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->k:F

    return v0
.end method

.method public getPosition()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->c:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getRotateX()F
    .locals 1

    .line 276
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->f:F

    return v0
.end method

.method public getRotateY()F
    .locals 1

    .line 285
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->g:F

    return v0
.end method

.method public getRotateZ()F
    .locals 1

    .line 294
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->h:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 258
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->d:F

    return v0
.end method

.method public getYawAxis()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->yawAxis:Lcom/baidu/mapapi/map/BM3DModelOptions$ModelYawAxis;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BM3DModelOptions$ModelYawAxis;->ordinal()I

    move-result v0

    return v0
.end method

.method public isSkeletonAnimationEnable()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->n:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->l:Z

    return v0
.end method

.method public isZoomFixed()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->e:Z

    return v0
.end method

.method public setBM3DModelType(Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;)Lcom/baidu/mapapi/map/BM3DModelOptions;
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->m:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    return-object p0
.end method

.method public setModelName(Ljava/lang/String;)Lcom/baidu/mapapi/map/BM3DModelOptions;
    .locals 1

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: BM3DModel modelName can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setModelPath(Ljava/lang/String;)Lcom/baidu/mapapi/map/BM3DModelOptions;
    .locals 1

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: BM3DModel modelPath can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setOffset(FFF)Lcom/baidu/mapapi/map/BM3DModelOptions;
    .locals 0

    .line 153
    iput p1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->i:F

    .line 154
    iput p2, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->j:F

    .line 155
    iput p3, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->k:F

    return-object p0
.end method

.method public setPosition(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/BM3DModelOptions;
    .locals 1

    if-nez p1, :cond_0

    .line 87
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: BM3DModel position can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->c:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method

.method public setRotate(FFF)Lcom/baidu/mapapi/map/BM3DModelOptions;
    .locals 0

    .line 124
    iput p1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->f:F

    .line 125
    iput p2, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->g:F

    .line 126
    iput p3, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->h:F

    return-object p0
.end method

.method public setScale(F)Lcom/baidu/mapapi/map/BM3DModelOptions;
    .locals 0

    .line 100
    iput p1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->d:F

    return-object p0
.end method

.method public setSkeletonAnimationEnable(Z)Lcom/baidu/mapapi/map/BM3DModelOptions;
    .locals 0

    .line 176
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->n:Z

    return-object p0
.end method

.method public setYawAxis(Lcom/baidu/mapapi/map/BM3DModelOptions$ModelYawAxis;)Lcom/baidu/mapapi/map/BM3DModelOptions;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->yawAxis:Lcom/baidu/mapapi/map/BM3DModelOptions$ModelYawAxis;

    return-object p0
.end method

.method public setZoomFixed(Z)Lcom/baidu/mapapi/map/BM3DModelOptions;
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->e:Z

    return-object p0
.end method

.method public visible(Z)Lcom/baidu/mapapi/map/BM3DModelOptions;
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BM3DModelOptions;->l:Z

    return-object p0
.end method
