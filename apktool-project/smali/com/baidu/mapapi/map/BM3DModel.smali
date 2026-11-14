.class public final Lcom/baidu/mapapi/map/BM3DModel;
.super Lcom/baidu/mapapi/map/Overlay;
.source "BM3DModel.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/baidu/mapapi/model/LatLng;

.field d:F

.field e:Z

.field f:F

.field g:F

.field h:F

.field i:F

.field j:F

.field k:F

.field l:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

.field m:Z

.field n:I

.field o:I

.field p:F

.field private q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    iput v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->d:F

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->e:Z

    .line 32
    sget-object v0, Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;->BM3DModelTypeObj:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    iput-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->l:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    .line 47
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/h;->m:Lcom/baidu/mapsdkplatform/comapi/map/h;

    iput-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->type:Lcom/baidu/mapsdkplatform/comapi/map/h;

    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 418
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 419
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: BM3DModel modelPath can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string v0, "modelPath"

    .line 422
    iget-object v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: BM3DModel mModelName can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "modelName"

    .line 426
    iget-object v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->c:Lcom/baidu/mapapi/model/LatLng;

    if-nez v0, :cond_2

    .line 428
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: BM3DModel mPosition can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 430
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->c:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    const-string v1, "location_x"

    .line 431
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "location_y"

    .line 432
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "modelType"

    .line 433
    iget-object v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->l:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "scale"

    .line 434
    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->d:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "zoomFixed"

    .line 435
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "rotateX"

    .line 436
    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->f:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "rotateY"

    .line 437
    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->g:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "rotateZ"

    .line 438
    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->h:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "offsetX"

    .line 439
    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->i:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "offsetY"

    .line 440
    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->j:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "offsetZ"

    .line 441
    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->k:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "animationIndex"

    .line 442
    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->o:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "animationIsEnable"

    .line 443
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->m:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "animationRepeatCount"

    .line 444
    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->n:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "animationSpeed"

    .line 445
    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->p:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p1
.end method

.method public getAnimationIndex()I
    .locals 1

    .line 282
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->o:I

    return v0
.end method

.method public getAnimationRepeatCount()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->n:I

    return v0
.end method

.method public getAnimationSpeed()F
    .locals 1

    .line 262
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->p:F

    return v0
.end method

.method public getBM3DModelType()Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->l:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getModelPath()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOffsetX()F
    .locals 1

    .line 363
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->i:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .line 372
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->j:F

    return v0
.end method

.method public getOffsetZ()F
    .locals 1

    .line 381
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->k:F

    return v0
.end method

.method public getPosition()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->c:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getRotateX()F
    .locals 1

    .line 336
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->f:F

    return v0
.end method

.method public getRotateY()F
    .locals 1

    .line 345
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->g:F

    return v0
.end method

.method public getRotateZ()F
    .locals 1

    .line 354
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->h:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 318
    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->d:F

    return v0
.end method

.method public isSkeletonAnimationEnable()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->m:Z

    return v0
.end method

.method public isZoomFixed()Z
    .locals 1

    .line 327
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->e:Z

    return v0
.end method

.method public setAnimationIndex(I)V
    .locals 1

    .line 270
    iput p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->o:I

    .line 271
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->b(I)Z

    .line 274
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAnimationRepeatCount(I)V
    .locals 1

    .line 229
    iput p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->n:I

    .line 230
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->a(I)Z

    .line 233
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAnimationSpeed(F)V
    .locals 1

    .line 250
    iput p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->p:F

    .line 251
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->b(F)Z

    .line 254
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBM3DModelType(Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;)V
    .locals 3

    .line 192
    iput-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->l:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    .line 193
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_1

    .line 195
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mapapi/map/BM3DModel;->l:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;->ordinal()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 196
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .locals 3

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: BM3DModel modelName can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->b:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 81
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_2

    .line 82
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mapapi/map/BM3DModel;->l:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;->ordinal()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 83
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setModelPath(Ljava/lang/String;)V
    .locals 3

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: BM3DModel modelPath can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->a:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_2

    .line 62
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mapapi/map/BM3DModel;->l:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;->ordinal()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 63
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setOffset(FFF)V
    .locals 7

    .line 174
    iput p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->i:F

    .line 175
    iput p2, p0, Lcom/baidu/mapapi/map/BM3DModel;->j:F

    .line 176
    iput p3, p0, Lcom/baidu/mapapi/map/BM3DModel;->k:F

    .line 177
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 178
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_1

    .line 179
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    iget p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->i:F

    float-to-double v1, p1

    iget p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->j:F

    float-to-double v3, p1

    iget p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->k:F

    float-to-double v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->a(DDD)Z

    .line 180
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPosition(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 6

    if-nez p1, :cond_0

    .line 97
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: BM3DModel position can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->c:Lcom/baidu/mapapi/model/LatLng;

    .line 100
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 101
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_2

    .line 102
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->c:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    new-instance v1, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->a(Lcom/baidu/platform/comapi/bmsdk/b;)Z

    .line 104
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setRotate(FFF)V
    .locals 1

    .line 153
    iput p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->f:F

    .line 154
    iput p2, p0, Lcom/baidu/mapapi/map/BM3DModel;->g:F

    .line 155
    iput p3, p0, Lcom/baidu/mapapi/map/BM3DModel;->h:F

    .line 156
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    iget p2, p0, Lcom/baidu/mapapi/map/BM3DModel;->f:F

    iget p3, p0, Lcom/baidu/mapapi/map/BM3DModel;->g:F

    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->h:F

    invoke-virtual {p1, p2, p3, v0}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->a(FFF)Z

    .line 159
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 117
    iput p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->d:F

    .line 118
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->d:F

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->a(F)Z

    .line 121
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSkeletonAnimationEnable(Z)V
    .locals 1

    .line 208
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->m:Z

    .line 209
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->m:Z

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->b(Z)Z

    .line 212
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 215
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setZoomFixed(Z)V
    .locals 1

    .line 134
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->e:Z

    .line 135
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_1

    .line 137
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->e:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->a(Z)Z

    .line 138
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/BM3DModel;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
    .locals 11

    .line 395
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    .line 396
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->a(Lcom/baidu/mapapi/map/BM3DModel;)V

    .line 397
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/BM3DModel;->setDrawItem(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)V

    .line 399
    invoke-super {p0}, Lcom/baidu/mapapi/map/Overlay;->toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    .line 401
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    iget-object v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mapapi/map/BM3DModel;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/mapapi/map/BM3DModel;->l:Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;

    invoke-virtual {v3}, Lcom/baidu/mapapi/map/BM3DModelOptions$BM3DModelType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 402
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->c:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 403
    iget-object v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    new-instance v2, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->a(Lcom/baidu/platform/comapi/bmsdk/b;)Z

    .line 404
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->e:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->a(Z)Z

    .line 405
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->d:F

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->a(F)Z

    .line 406
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->f:F

    iget v2, p0, Lcom/baidu/mapapi/map/BM3DModel;->g:F

    iget v3, p0, Lcom/baidu/mapapi/map/BM3DModel;->h:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->a(FFF)Z

    .line 407
    iget-object v4, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->i:F

    float-to-double v5, v0

    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->j:F

    float-to-double v7, v0

    iget v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->k:F

    float-to-double v9, v0

    invoke-virtual/range {v4 .. v10}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->a(DDD)Z

    .line 408
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->m:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->b(Z)Z

    .line 409
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->p:F

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->b(F)Z

    .line 410
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->n:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->a(I)Z

    .line 411
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    iget v1, p0, Lcom/baidu/mapapi/map/BM3DModel;->o:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->b(I)Z

    .line 413
    iget-object v0, p0, Lcom/baidu/mapapi/map/BM3DModel;->q:Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    return-object v0
.end method
