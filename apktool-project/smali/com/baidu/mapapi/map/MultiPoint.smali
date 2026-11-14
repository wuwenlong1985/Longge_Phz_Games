.class public final Lcom/baidu/mapapi/map/MultiPoint;
.super Lcom/baidu/mapapi/map/Overlay;
.source "MultiPoint.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/MultiPointItem;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field c:I

.field d:I

.field e:F

.field f:F

.field g:Z

.field private h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->g:Z

    .line 34
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/h;->k:Lcom/baidu/mapsdkplatform/comapi/map/h;

    iput-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->type:Lcom/baidu/mapsdkplatform/comapi/map/h;

    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 282
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 283
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/MultiPointItem;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MultiPointItem;->getPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    const-string v2, "location_x"

    .line 285
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v2, "location_y"

    .line 286
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    :goto_0
    iget-object v2, p0, Lcom/baidu/mapapi/map/MultiPoint;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 289
    iget-object v2, p0, Lcom/baidu/mapapi/map/MultiPoint;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/map/MultiPointItem;

    if-eqz v2, :cond_0

    .line 291
    invoke-virtual {v2}, Lcom/baidu/mapapi/map/MultiPointItem;->getPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    .line 292
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_1
    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Ljava/util/List;Landroid/os/Bundle;)V

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v0, :cond_3

    const-string v0, "image_info"

    .line 299
    iget-object v1, p0, Lcom/baidu/mapapi/map/MultiPoint;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    const-string v0, "isClickable"

    .line 301
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MultiPoint;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "anchor_x"

    .line 302
    iget v1, p0, Lcom/baidu/mapapi/map/MultiPoint;->e:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "anchor_y"

    .line 303
    iget v1, p0, Lcom/baidu/mapapi/map/MultiPoint;->f:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "pointsize_x"

    .line 304
    iget v1, p0, Lcom/baidu/mapapi/map/MultiPoint;->c:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "pointsize_y"

    .line 305
    iget v1, p0, Lcom/baidu/mapapi/map/MultiPoint;->d:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p1
.end method

.method public anchor(FF)V
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

    .line 140
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->e:F

    .line 141
    iput p2, p0, Lcom/baidu/mapapi/map/MultiPoint;->f:F

    .line 142
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 143
    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_3

    .line 144
    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    iget p2, p0, Lcom/baidu/mapapi/map/MultiPoint;->e:F

    invoke-virtual {p1, p2}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->a(F)Z

    .line 145
    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    iget p2, p0, Lcom/baidu/mapapi/map/MultiPoint;->f:F

    invoke-virtual {p1, p2}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->b(F)Z

    .line 146
    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 149
    :cond_2
    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->listener:Lcom/baidu/mapapi/map/Overlay$a;

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

.method public getAnchorX()F
    .locals 1

    .line 184
    iget v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->e:F

    return v0
.end method

.method public getAnchorY()F
    .locals 1

    .line 193
    iget v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->f:F

    return v0
.end method

.method public getIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getMultiPointItem(I)Lcom/baidu/mapapi/map/MultiPointItem;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/map/MultiPointItem;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMultiPointItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/MultiPointItem;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->a:Ljava/util/List;

    return-object v0
.end method

.method public getPointSizeHeight()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->d:I

    return v0
.end method

.method public getPointSizeWidth()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->c:I

    return v0
.end method

.method public isClickable()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->g:Z

    return v0
.end method

.method public setClickable(Z)V
    .locals 1

    .line 211
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->g:Z

    .line 212
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->c(Z)Z

    .line 215
    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 218
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIcon(Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .locals 1

    if-nez p1, :cond_0

    .line 84
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: marker\'s icon can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 87
    iget v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->c:I

    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->c:I

    .line 90
    :cond_1
    iget v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->d:I

    if-nez v0, :cond_2

    .line 91
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->d:I

    .line 93
    :cond_2
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 94
    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_4

    .line 95
    new-instance p1, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    .line 96
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;)Z

    .line 97
    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 100
    :cond_3
    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setMultiPointItems(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/MultiPointItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: multiPointItems list can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, 0x0

    .line 46
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: multiPointItems list can not contains null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_1
    iput-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->a:Ljava/util/List;

    .line 50
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 51
    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_5

    .line 52
    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->b()Z

    .line 54
    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/map/MultiPointItem;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MultiPointItem;->getPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    .line 55
    iget-object v1, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    new-instance v2, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->a(Lcom/baidu/platform/comapi/bmsdk/b;)Z

    .line 57
    new-instance p1, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-direct {p1}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;-><init>()V

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    :goto_0
    iget-object v2, p0, Lcom/baidu/mapapi/map/MultiPoint;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 60
    iget-object v2, p0, Lcom/baidu/mapapi/map/MultiPoint;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/map/MultiPointItem;

    if-eqz v2, :cond_2

    .line 62
    invoke-virtual {v2}, Lcom/baidu/mapapi/map/MultiPointItem;->getPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    .line 63
    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    .line 64
    new-instance v3, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    .line 65
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {p1, v1}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 69
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    .line 70
    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_1

    .line 73
    :cond_4
    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setPointSize(II)V
    .locals 2

    .line 111
    iget v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->c:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->d:I

    if-gtz v0, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->c:I

    .line 115
    iput p2, p0, Lcom/baidu/mapapi/map/MultiPoint;->d:I

    .line 116
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_2

    .line 118
    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    iget p2, p0, Lcom/baidu/mapapi/map/MultiPoint;->c:I

    int-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->a(D)Z

    .line 119
    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    iget p2, p0, Lcom/baidu/mapapi/map/MultiPoint;->d:I

    int-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->b(D)Z

    .line 120
    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/MultiPoint;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_2
    :goto_0
    return-void

    .line 112
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BDMapSDKException: MultiPoint setPointSize can not be 0 Or can\'t less than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
    .locals 9

    .line 243
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    .line 244
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->a(Lcom/baidu/mapapi/map/MultiPoint;)V

    .line 245
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MultiPoint;->setDrawItem(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)V

    .line 247
    invoke-super {p0}, Lcom/baidu/mapapi/map/Overlay;->getDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    .line 249
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    iget v1, p0, Lcom/baidu/mapapi/map/MultiPoint;->e:F

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->a(F)Z

    .line 250
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    iget v1, p0, Lcom/baidu/mapapi/map/MultiPoint;->f:F

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->b(F)Z

    .line 251
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    iget v1, p0, Lcom/baidu/mapapi/map/MultiPoint;->c:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->a(D)Z

    .line 252
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    iget v1, p0, Lcom/baidu/mapapi/map/MultiPoint;->d:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->b(D)Z

    .line 253
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MultiPoint;->g:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->c(Z)Z

    .line 254
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/MultiPointItem;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MultiPointItem;->getPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 256
    iget-object v2, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    new-instance v3, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->a(Lcom/baidu/platform/comapi/bmsdk/b;)Z

    .line 258
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;-><init>()V

    .line 259
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 260
    :goto_0
    iget-object v3, p0, Lcom/baidu/mapapi/map/MultiPoint;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 261
    iget-object v3, p0, Lcom/baidu/mapapi/map/MultiPoint;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/map/MultiPointItem;

    if-eqz v3, :cond_0

    .line 263
    invoke-virtual {v3}, Lcom/baidu/mapapi/map/MultiPointItem;->getPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    .line 264
    invoke-static {v3}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v3

    .line 265
    new-instance v4, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    .line 266
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 270
    iget-object v1, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    new-instance v1, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    iget-object v2, p0, Lcom/baidu/mapapi/map/MultiPoint;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;)Z

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPoint;->h:Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    return-object v0
.end method
