.class public Lcom/baidu/mapapi/map/Building;
.super Lcom/baidu/mapapi/map/Prism;
.source "Building.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/Building$AnimateType;
    }
.end annotation


# instance fields
.field a:Lcom/baidu/mapapi/search/core/BuildingInfo;

.field b:F

.field c:F

.field d:I

.field e:I

.field f:Z

.field g:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field h:Lcom/baidu/mapapi/map/Prism$AnimateType;

.field i:I

.field j:Z

.field k:Z

.field l:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Prism;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/baidu/mapapi/map/Building;->b:F

    .line 32
    iput v0, p0, Lcom/baidu/mapapi/map/Building;->c:F

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/baidu/mapapi/map/Building;->e:I

    .line 36
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Building;->f:Z

    .line 40
    sget-object v1, Lcom/baidu/mapapi/map/Prism$AnimateType;->AnimateNormal:Lcom/baidu/mapapi/map/Prism$AnimateType;

    iput-object v1, p0, Lcom/baidu/mapapi/map/Building;->h:Lcom/baidu/mapapi/map/Prism$AnimateType;

    .line 44
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Building;->k:Z

    const/high16 v0, 0x40a00000    # 5.0f

    .line 46
    iput v0, p0, Lcom/baidu/mapapi/map/Building;->l:F

    .line 59
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/h;->l:Lcom/baidu/mapsdkplatform/comapi/map/h;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Building;->type:Lcom/baidu/mapsdkplatform/comapi/map/h;

    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 443
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Prism;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 444
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->a:Lcom/baidu/mapapi/search/core/BuildingInfo;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->a:Lcom/baidu/mapapi/search/core/BuildingInfo;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/core/BuildingInfo;->getHeight()F

    move-result v0

    float-to-double v0, v0

    const-string v2, "m_height"

    .line 446
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "encodedPoints"

    .line 447
    iget-object v1, p0, Lcom/baidu/mapapi/map/Building;->a:Lcom/baidu/mapapi/search/core/BuildingInfo;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/BuildingInfo;->getGeom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "encodePointType"

    .line 448
    sget-object v1, Lcom/baidu/mapapi/map/EncodePointType;->BUILDINGINFO:Lcom/baidu/mapapi/map/EncodePointType;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/EncodePointType;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "m_showLevel"

    .line 449
    iget v1, p0, Lcom/baidu/mapapi/map/Building;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "m_isAnimation"

    .line 450
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Building;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "m_has_floor"

    .line 451
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Building;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "m_floor_height"

    .line 452
    iget v1, p0, Lcom/baidu/mapapi/map/Building;->b:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "m_last_floor_height"

    .line 453
    iget v1, p0, Lcom/baidu/mapapi/map/Building;->c:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 454
    iget v0, p0, Lcom/baidu/mapapi/map/Building;->e:I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->b(ILandroid/os/Bundle;)V

    .line 455
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->g:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v0, :cond_0

    .line 456
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "image_info"

    .line 457
    iget-object v2, p0, Lcom/baidu/mapapi/map/Building;->g:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "m_floor_image"

    .line 458
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    const-string v0, "m_buildingFloorAnimateType"

    .line 460
    iget-object v1, p0, Lcom/baidu/mapapi/map/Building;->h:Lcom/baidu/mapapi/map/Prism$AnimateType;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/Prism$AnimateType;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "m_isRoundedCorner"

    .line 461
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Building;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "m_roundedCornerRadius"

    .line 462
    iget v1, p0, Lcom/baidu/mapapi/map/Building;->l:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_1
    const-string v0, "m_isBuilding"

    .line 464
    iget-object v1, p0, Lcom/baidu/mapapi/map/Building;->a:Lcom/baidu/mapapi/search/core/BuildingInfo;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 465
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/Building;->d:I

    const-string v0, "buildingId"

    .line 466
    iget v1, p0, Lcom/baidu/mapapi/map/Building;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public getBuildingFloorAnimateType()Lcom/baidu/mapapi/map/Prism$AnimateType;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->h:Lcom/baidu/mapapi/map/Prism$AnimateType;

    return-object v0
.end method

.method public getBuildingId()I
    .locals 1

    .line 253
    iget v0, p0, Lcom/baidu/mapapi/map/Building;->d:I

    return v0
.end method

.method public getBuildingInfo()Lcom/baidu/mapapi/search/core/BuildingInfo;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->a:Lcom/baidu/mapapi/search/core/BuildingInfo;

    return-object v0
.end method

.method public getFloorColor()I
    .locals 1

    .line 262
    iget v0, p0, Lcom/baidu/mapapi/map/Building;->e:I

    return v0
.end method

.method public getFloorHeight()F
    .locals 1

    .line 155
    iget v0, p0, Lcom/baidu/mapapi/map/Building;->b:F

    return v0
.end method

.method public getFloorSideTextureImage()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->g:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 110
    iget v0, p0, Lcom/baidu/mapapi/map/Building;->m:F

    return v0
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

    .line 119
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->p:Ljava/util/List;

    return-object v0
.end method

.method public getRoundedCornerRadius()F
    .locals 1

    .line 173
    iget v0, p0, Lcom/baidu/mapapi/map/Building;->l:F

    return v0
.end method

.method public getShowLevel()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/baidu/mapapi/map/Building;->i:I

    return v0
.end method

.method public getSideFaceColor()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/baidu/mapapi/map/Building;->s:I

    return v0
.end method

.method public getTopFaceColor()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/baidu/mapapi/map/Building;->r:I

    return v0
.end method

.method public isAnimation()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Building;->j:Z

    return v0
.end method

.method public isRoundedCorner()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Building;->k:Z

    return v0
.end method

.method public setAnimation(Z)V
    .locals 1

    .line 95
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Building;->j:Z

    .line 96
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->a(Z)Z

    .line 99
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    :cond_0
    return-void
.end method

.method public setBuildingFloorAnimateType(Lcom/baidu/mapapi/map/Prism$AnimateType;)V
    .locals 1

    .line 342
    iput-object p1, p0, Lcom/baidu/mapapi/map/Building;->h:Lcom/baidu/mapapi/map/Prism$AnimateType;

    .line 343
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 344
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_1

    .line 345
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->h:Lcom/baidu/mapapi/map/Prism$AnimateType;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Prism$AnimateType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->b(I)Z

    .line 346
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 349
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBuildingInfo(Lcom/baidu/mapapi/search/core/BuildingInfo;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 362
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/Building;->a:Lcom/baidu/mapapi/search/core/BuildingInfo;

    .line 364
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 365
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_3

    .line 366
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->a()Z

    .line 367
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->a:Lcom/baidu/mapapi/search/core/BuildingInfo;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/core/BuildingInfo;->getHeight()F

    move-result p1

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/map/y;

    invoke-direct {v1}, Lcom/baidu/mapsdkplatform/comapi/map/y;-><init>()V

    .line 371
    iget-object v2, p0, Lcom/baidu/mapapi/map/Building;->a:Lcom/baidu/mapapi/search/core/BuildingInfo;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/core/BuildingInfo;->getGeom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/map/y;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 372
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    .line 373
    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    .line 374
    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v3

    .line 375
    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v5

    .line 376
    new-instance v2, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    .line 377
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/Building;->q:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 380
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Building;->q:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    .line 381
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->a(F)Z

    .line 382
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_1

    .line 385
    :cond_2
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setFloorColor(I)V
    .locals 3

    const/4 v0, 0x1

    .line 271
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Building;->f:Z

    .line 272
    iput p1, p0, Lcom/baidu/mapapi/map/Building;->e:I

    .line 273
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 274
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_2

    .line 275
    new-instance p1, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    invoke-direct {p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;-><init>()V

    .line 276
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;-><init>()V

    .line 277
    iget v1, p0, Lcom/baidu/mapapi/map/Building;->e:I

    invoke-virtual {p1, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->a(I)Z

    .line 278
    iget v1, p0, Lcom/baidu/mapapi/map/Building;->e:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->a(I)Z

    .line 279
    iget-object v1, p0, Lcom/baidu/mapapi/map/Building;->g:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v1, :cond_0

    .line 280
    new-instance v1, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Building;->g:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    .line 281
    invoke-virtual {p1, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;)Z

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    iget-boolean v2, p0, Lcom/baidu/mapapi/map/Building;->f:Z

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->b(Z)Z

    .line 284
    iget-object v1, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->c(Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;)V

    .line 285
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->d(Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;)V

    .line 286
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 289
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setFloorHeight(F)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->a:Lcom/baidu/mapapi/search/core/BuildingInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 224
    iget p1, p0, Lcom/baidu/mapapi/map/Building;->b:F

    iput p1, p0, Lcom/baidu/mapapi/map/Building;->c:F

    .line 225
    iput v0, p0, Lcom/baidu/mapapi/map/Building;->b:F

    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->a:Lcom/baidu/mapapi/search/core/BuildingInfo;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/core/BuildingInfo;->getHeight()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 229
    iget p1, p0, Lcom/baidu/mapapi/map/Building;->b:F

    iput p1, p0, Lcom/baidu/mapapi/map/Building;->c:F

    .line 230
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->a:Lcom/baidu/mapapi/search/core/BuildingInfo;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/core/BuildingInfo;->getHeight()F

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/Building;->b:F

    return-void

    .line 233
    :cond_2
    iget v0, p0, Lcom/baidu/mapapi/map/Building;->b:F

    iput v0, p0, Lcom/baidu/mapapi/map/Building;->c:F

    .line 234
    iput p1, p0, Lcom/baidu/mapapi/map/Building;->b:F

    .line 236
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 237
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_4

    .line 238
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    iget v0, p0, Lcom/baidu/mapapi/map/Building;->b:F

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->c(F)Z

    .line 239
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    iget v0, p0, Lcom/baidu/mapapi/map/Building;->c:F

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->b(F)Z

    .line 240
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 243
    :cond_3
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setFloorSideTextureImage(Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .locals 2

    .line 308
    iput-object p1, p0, Lcom/baidu/mapapi/map/Building;->g:Lcom/baidu/mapapi/map/BitmapDescriptor;

    const/4 p1, 0x1

    .line 309
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Building;->f:Z

    .line 310
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 311
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_2

    .line 312
    new-instance p1, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    invoke-direct {p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;-><init>()V

    .line 313
    iget v0, p0, Lcom/baidu/mapapi/map/Building;->e:I

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->a(I)Z

    .line 314
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->g:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v0, :cond_0

    .line 315
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Building;->g:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    .line 316
    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;)Z

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->d(Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;)V

    .line 319
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Building;->f:Z

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->b(Z)Z

    .line 320
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 323
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setRoundedCornerEnable(Z)V
    .locals 1

    .line 183
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Building;->k:Z

    .line 184
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->f(Z)Z

    .line 187
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRoundedCornerRadius(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 202
    :goto_0
    iput v0, p0, Lcom/baidu/mapapi/map/Building;->l:F

    .line 203
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->d(F)Z

    .line 206
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_1

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/Building;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setShowLevel(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/baidu/mapapi/map/Building;->i:I

    return-void
.end method

.method toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
    .locals 7

    .line 391
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    .line 392
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->a(Lcom/baidu/mapapi/map/Prism;)V

    .line 393
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/Building;->setDrawItem(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)V

    .line 395
    invoke-super {p0}, Lcom/baidu/mapapi/map/Prism;->toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    .line 396
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Building;->q:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    .line 397
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->a:Lcom/baidu/mapapi/search/core/BuildingInfo;

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->a:Lcom/baidu/mapapi/search/core/BuildingInfo;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/core/BuildingInfo;->getHeight()F

    move-result v0

    .line 399
    iget-object v1, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->a(F)Z

    .line 400
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->e(Z)Z

    .line 401
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    iget-boolean v2, p0, Lcom/baidu/mapapi/map/Building;->j:Z

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->a(Z)Z

    .line 402
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    iget v2, p0, Lcom/baidu/mapapi/map/Building;->i:I

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->j(I)Z

    .line 404
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;-><init>()V

    .line 405
    new-instance v2, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;-><init>()V

    .line 406
    iget-object v3, p0, Lcom/baidu/mapapi/map/Building;->g:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v3, :cond_0

    .line 407
    new-instance v3, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    iget-object v4, p0, Lcom/baidu/mapapi/map/Building;->g:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v4}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    .line 408
    invoke-virtual {v0, v3}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;)Z

    .line 411
    :cond_0
    iget v3, p0, Lcom/baidu/mapapi/map/Building;->e:I

    invoke-virtual {v0, v3}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->a(I)Z

    .line 412
    iget v3, p0, Lcom/baidu/mapapi/map/Building;->e:I

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->a(I)Z

    .line 413
    iget-object v3, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    iget-boolean v4, p0, Lcom/baidu/mapapi/map/Building;->f:Z

    invoke-virtual {v3, v4}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->b(Z)Z

    .line 414
    iget-object v3, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    iget v4, p0, Lcom/baidu/mapapi/map/Building;->c:F

    invoke-virtual {v3, v4}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->b(F)Z

    .line 415
    iget-object v3, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {v3, v0}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->d(Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;)V

    .line 416
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->c(Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;)V

    .line 417
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    iget v2, p0, Lcom/baidu/mapapi/map/Building;->b:F

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->c(F)Z

    .line 418
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Building;->h:Lcom/baidu/mapapi/map/Prism$AnimateType;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/Prism$AnimateType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->b(I)Z

    .line 419
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->a(I)Z

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/map/y;

    invoke-direct {v1}, Lcom/baidu/mapsdkplatform/comapi/map/y;-><init>()V

    .line 423
    iget-object v2, p0, Lcom/baidu/mapapi/map/Building;->a:Lcom/baidu/mapapi/search/core/BuildingInfo;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/core/BuildingInfo;->getGeom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/map/y;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 424
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    .line 425
    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    .line 426
    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v3

    .line 427
    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v5

    .line 428
    new-instance v2, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    .line 429
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/Building;->q:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 432
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Building;->q:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    .line 433
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Building;->k:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->f(Z)Z

    .line 434
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    iget v1, p0, Lcom/baidu/mapapi/map/Building;->l:F

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->d(F)Z

    .line 436
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/Building;->d:I

    .line 437
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    iget v1, p0, Lcom/baidu/mapapi/map/Building;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->a(Ljava/lang/String;)Z

    .line 438
    iget-object v0, p0, Lcom/baidu/mapapi/map/Building;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    return-object v0
.end method
