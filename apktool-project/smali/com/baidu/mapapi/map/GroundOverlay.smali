.class public final Lcom/baidu/mapapi/map/GroundOverlay;
.super Lcom/baidu/mapapi/map/Overlay;
.source "GroundOverlay.java"


# static fields
.field private static final k:Ljava/lang/String; = "GroundOverlay"


# instance fields
.field a:I

.field b:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field c:Lcom/baidu/mapapi/model/LatLng;

.field d:D

.field e:D

.field f:F

.field g:F

.field h:Lcom/baidu/mapapi/model/LatLngBounds;

.field i:F

.field j:Z

.field private l:Lcom/baidu/platform/comapi/bmsdk/BmGround;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->j:Z

    .line 37
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/h;->d:Lcom/baidu/mapsdkplatform/comapi/map/h;

    iput-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->type:Lcom/baidu/mapsdkplatform/comapi/map/h;

    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    .line 407
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string v0, "image_info"

    .line 408
    iget-object v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 409
    iget v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->h:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v0, v0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v1

    .line 412
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v3

    .line 413
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->h:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v0, v0, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    .line 415
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v7

    sub-double/2addr v5, v1

    .line 418
    iput-wide v5, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    sub-double/2addr v7, v3

    .line 419
    iput-wide v7, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    .line 420
    new-instance v0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget-wide v5, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    div-double/2addr v5, v7

    add-double/2addr v1, v5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(DD)V

    .line 422
    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->c:Lcom/baidu/mapapi/model/LatLng;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 423
    iput v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->f:F

    .line 424
    iput v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->g:F

    .line 426
    :cond_0
    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_3

    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "x_distance"

    .line 430
    iget-wide v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 431
    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    .line 432
    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    iget-object v2, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iget-object v2, v2, Lcom/baidu/mapapi/map/BitmapDescriptor;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double v0, v0, v2

    iget-object v2, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iget-object v2, v2, Lcom/baidu/mapapi/map/BitmapDescriptor;->a:Landroid/graphics/Bitmap;

    .line 433
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    :cond_2
    const-string v0, "y_distance"

    .line 435
    iget-wide v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 436
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->c:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    const-string v1, "location_x"

    .line 437
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "location_y"

    .line 438
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "anchor_x"

    .line 439
    iget v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->f:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "anchor_y"

    .line 440
    iget v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->g:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "transparency"

    .line 441
    iget v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->i:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "isClickable"

    .line 442
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    .line 427
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: when you add ground overlay, the width and height must greater than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAnchorX()F
    .locals 1

    .line 259
    iget v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->f:F

    return v0
.end method

.method public getAnchorY()F
    .locals 1

    .line 268
    iget v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->g:F

    return v0
.end method

.method public getBounds()Lcom/baidu/mapapi/model/LatLngBounds;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->h:Lcom/baidu/mapapi/model/LatLngBounds;

    return-object v0
.end method

.method public getHeight()D
    .locals 2

    .line 196
    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    return-wide v0
.end method

.method public getImage()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getPosition()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->c:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getTransparency()F
    .locals 1

    .line 402
    iget v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->i:F

    return v0
.end method

.method public getWidth()D
    .locals 2

    .line 187
    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    return-wide v0
.end method

.method public isClickable()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->j:Z

    return v0
.end method

.method public setAnchor(FF)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    goto :goto_2

    :cond_0
    cmpg-float v0, p2, v0

    if-ltz v0, :cond_4

    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    goto :goto_1

    .line 214
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->f:F

    .line 215
    iput p2, p0, Lcom/baidu/mapapi/map/GroundOverlay;->g:F

    .line 216
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 217
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_3

    .line 218
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    iget p2, p0, Lcom/baidu/mapapi/map/GroundOverlay;->f:F

    invoke-virtual {p1, p2}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->a(F)Z

    .line 219
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    iget p2, p0, Lcom/baidu/mapapi/map/GroundOverlay;->g:F

    invoke-virtual {p1, p2}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->b(F)Z

    .line 220
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 223
    :cond_2
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    .line 233
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->j:Z

    .line 234
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_1

    .line 236
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->j:Z

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->c(Z)Z

    .line 237
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 240
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDimensions(I)V
    .locals 4

    if-gtz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 131
    iput-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    .line 132
    iput-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    goto :goto_0

    :cond_0
    int-to-double v0, p1

    .line 134
    iput-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    .line 135
    iput-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    .line 136
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iget-object p1, p1, Lcom/baidu/mapapi/map/BitmapDescriptor;->a:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 137
    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iget-object p1, p1, Lcom/baidu/mapapi/map/BitmapDescriptor;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-double v2, p1

    mul-double v0, v0, v2

    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iget-object p1, p1, Lcom/baidu/mapapi/map/BitmapDescriptor;->a:Landroid/graphics/Bitmap;

    .line 138
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    float-to-double v2, p1

    div-double/2addr v0, v2

    double-to-int p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 142
    :goto_1
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->b(D)Z

    .line 145
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->a(D)Z

    .line 146
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_2

    .line 149
    :cond_2
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public setDimensions(II)V
    .locals 2

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v0, p1

    .line 166
    iput-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    int-to-double p1, p2

    .line 167
    iput-wide p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 p1, 0x0

    .line 163
    iput-wide p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    .line 164
    iput-wide p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    .line 170
    :goto_1
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 171
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_3

    .line 172
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->b(D)Z

    .line 173
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->a(D)Z

    .line 174
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_2

    .line 177
    :cond_2
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public setImage(Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .locals 4

    if-nez p1, :cond_0

    .line 59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: image can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 63
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 64
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 66
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iget-object v0, v0, Lcom/baidu/mapapi/map/BitmapDescriptor;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 67
    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iget-object p1, p1, Lcom/baidu/mapapi/map/BitmapDescriptor;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-double v2, p1

    mul-double v0, v0, v2

    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iget-object p1, p1, Lcom/baidu/mapapi/map/BitmapDescriptor;->a:Landroid/graphics/Bitmap;

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    float-to-double v2, p1

    div-double/2addr v0, v2

    double-to-int p1, v0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->b(D)Z

    .line 71
    new-instance p1, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;)Z

    .line 73
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setPosition(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 6

    if-nez p1, :cond_0

    .line 97
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: position can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x2

    .line 99
    iput v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->a:I

    .line 100
    iput-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->c:Lcom/baidu/mapapi/model/LatLng;

    .line 102
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 103
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_2

    .line 104
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->c:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    new-instance v1, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->a(Lcom/baidu/platform/comapi/bmsdk/b;)Z

    .line 106
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setPositionFromBounds(Lcom/baidu/mapapi/model/LatLngBounds;)V
    .locals 8

    if-nez p1, :cond_0

    .line 279
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: bounds can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x1

    .line 281
    iput v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->a:I

    .line 282
    iput-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->h:Lcom/baidu/mapapi/model/LatLngBounds;

    .line 284
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 285
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_2

    .line 286
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->h:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object p1, p1, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    .line 287
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v0

    .line 288
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v2

    .line 289
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->h:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object p1, p1, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    .line 290
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    .line 291
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v6

    sub-double/2addr v4, v0

    .line 294
    iput-wide v4, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    sub-double/2addr v6, v2

    .line 295
    iput-wide v6, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    .line 296
    new-instance p1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget-wide v4, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    div-double/2addr v4, v6

    add-double/2addr v0, v4

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(DD)V

    .line 298
    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->c:Lcom/baidu/mapapi/model/LatLng;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 299
    iput v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->f:F

    .line 300
    iput v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->g:F

    .line 302
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    new-instance v1, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->a(Lcom/baidu/platform/comapi/bmsdk/b;)Z

    .line 303
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->a(D)Z

    .line 304
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->b(D)Z

    .line 305
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    iget v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->f:F

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->a(F)Z

    .line 306
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    iget v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->g:F

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->b(F)Z

    goto :goto_0

    .line 309
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setTransparency(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_1

    .line 333
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->i:F

    .line 334
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 335
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_2

    .line 336
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    iget v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->i:F

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->e(F)Z

    .line 337
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 340
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
    .locals 9

    .line 347
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/BmGround;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/BmGround;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    .line 348
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->a(Lcom/baidu/mapapi/map/GroundOverlay;)V

    .line 349
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/GroundOverlay;->setDrawItem(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)V

    .line 351
    invoke-super {p0}, Lcom/baidu/mapapi/map/Overlay;->toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    .line 352
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    return-object v0

    .line 356
    :cond_0
    iget v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 357
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->h:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v0, v0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v1

    .line 359
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v3

    .line 360
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->h:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v0, v0, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    .line 362
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v7

    sub-double/2addr v5, v1

    .line 365
    iput-wide v5, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    sub-double/2addr v7, v3

    .line 366
    iput-wide v7, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    .line 367
    new-instance v0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget-wide v5, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    div-double/2addr v5, v7

    add-double/2addr v1, v5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(DD)V

    .line 369
    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->c:Lcom/baidu/mapapi/model/LatLng;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 370
    iput v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->f:F

    .line 371
    iput v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->g:F

    .line 376
    :cond_1
    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iget-object v0, v0, Lcom/baidu/mapapi/map/BitmapDescriptor;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 377
    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    iget-object v2, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iget-object v2, v2, Lcom/baidu/mapapi/map/BitmapDescriptor;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double v0, v0, v2

    iget-object v2, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iget-object v2, v2, Lcom/baidu/mapapi/map/BitmapDescriptor;->a:Landroid/graphics/Bitmap;

    .line 378
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    .line 381
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->c:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_3

    .line 382
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->c:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    new-instance v2, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->a(Lcom/baidu/platform/comapi/bmsdk/b;)Z

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    iget-wide v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->a(D)Z

    .line 386
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    iget-wide v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->b(D)Z

    .line 387
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    iget v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->f:F

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->a(F)Z

    .line 388
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    iget v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->g:F

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->b(F)Z

    .line 389
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->j:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->c(Z)Z

    .line 390
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    iget v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->i:F

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->e(F)Z

    .line 391
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    iget-object v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    .line 392
    iget-object v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmGround;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;)Z

    .line 393
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->l:Lcom/baidu/platform/comapi/bmsdk/BmGround;

    return-object v0
.end method
