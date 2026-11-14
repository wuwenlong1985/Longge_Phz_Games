.class public Lcom/baidu/mapapi/map/Prism;
.super Lcom/baidu/mapapi/map/Overlay;
.source "Prism.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/Prism$AnimateType;
    }
.end annotation


# instance fields
.field m:F

.field n:Ljava/lang/String;

.field o:I

.field p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field q:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

.field r:I

.field s:I

.field t:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    const/high16 v0, -0x1000000

    .line 35
    iput v0, p0, Lcom/baidu/mapapi/map/Prism;->r:I

    const v0, -0xff0100

    .line 36
    iput v0, p0, Lcom/baidu/mapapi/map/Prism;->s:I

    .line 51
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/h;->l:Lcom/baidu/mapsdkplatform/comapi/map/h;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Prism;->type:Lcom/baidu/mapsdkplatform/comapi/map/h;

    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 275
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 276
    iget v0, p0, Lcom/baidu/mapapi/map/Prism;->r:I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->c(ILandroid/os/Bundle;)V

    .line 277
    iget v0, p0, Lcom/baidu/mapapi/map/Prism;->s:I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->d(ILandroid/os/Bundle;)V

    .line 278
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->t:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v0, :cond_0

    const-string v0, "image_info"

    .line 279
    iget-object v1, p0, Lcom/baidu/mapapi/map/Prism;->t:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->p:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->p:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    const-string v1, "location_x"

    .line 283
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "location_y"

    .line 284
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 285
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->p:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Ljava/util/List;Landroid/os/Bundle;)V

    .line 286
    iget v0, p0, Lcom/baidu/mapapi/map/Prism;->m:F

    float-to-double v0, v0

    const-string v2, "m_height"

    .line 287
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_1
    return-object p1
.end method

.method public getCustomSideImage()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->t:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 61
    iget v0, p0, Lcom/baidu/mapapi/map/Prism;->m:F

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

    .line 70
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->p:Ljava/util/List;

    return-object v0
.end method

.method public getSideFaceColor()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/baidu/mapapi/map/Prism;->s:I

    return v0
.end method

.method public getTopFaceColor()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/baidu/mapapi/map/Prism;->r:I

    return v0
.end method

.method public setCustomSideImage(Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/Prism;->t:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 127
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_2

    .line 129
    new-instance p1, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    invoke-direct {p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;-><init>()V

    .line 130
    iget v0, p0, Lcom/baidu/mapapi/map/Prism;->s:I

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->a(I)Z

    .line 131
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Prism;->t:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    .line 132
    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;)Z

    .line 133
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->b(Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;)V

    .line 134
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setHeight(F)V
    .locals 1

    .line 106
    iput p1, p0, Lcom/baidu/mapapi/map/Prism;->m:F

    .line 107
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_1

    .line 109
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    iget v0, p0, Lcom/baidu/mapapi/map/Prism;->m:F

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->a(F)Z

    .line 110
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 148
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 151
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points count can not less than four"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 153
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not contains null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 156
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    .line 157
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 158
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/model/LatLng;

    .line 159
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/model/LatLng;

    if-ne v4, v5, :cond_3

    .line 161
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not has same points"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0

    .line 165
    :cond_5
    iput-object p1, p0, Lcom/baidu/mapapi/map/Prism;->p:Ljava/util/List;

    .line 167
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 168
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_8

    .line 169
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->a()Z

    .line 170
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    :goto_2
    iget-object v1, p0, Lcom/baidu/mapapi/map/Prism;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 172
    iget-object v1, p0, Lcom/baidu/mapapi/map/Prism;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    .line 173
    invoke-static {v1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    .line 175
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    .line 176
    new-instance v1, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    .line 177
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 179
    :cond_6
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->q:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 180
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->q:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    .line 182
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_3

    .line 185
    :cond_7
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public setSideFaceColor(I)V
    .locals 1

    .line 214
    iput p1, p0, Lcom/baidu/mapapi/map/Prism;->s:I

    .line 215
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_1

    .line 217
    new-instance p1, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    invoke-direct {p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;-><init>()V

    .line 218
    iget v0, p0, Lcom/baidu/mapapi/map/Prism;->s:I

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->a(I)Z

    .line 219
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->b(Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;)V

    .line 220
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTopFaceColor(I)V
    .locals 1

    .line 195
    iput p1, p0, Lcom/baidu/mapapi/map/Prism;->r:I

    .line 196
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_1

    .line 198
    new-instance p1, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    invoke-direct {p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;-><init>()V

    .line 199
    iget v0, p0, Lcom/baidu/mapapi/map/Prism;->r:I

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->a(I)Z

    .line 200
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;)V

    .line 201
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 204
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
    .locals 9

    .line 229
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Prism;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    .line 231
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->a(Lcom/baidu/mapapi/map/Prism;)V

    .line 232
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/Prism;->setDrawItem(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)V

    .line 235
    :cond_0
    invoke-super {p0}, Lcom/baidu/mapapi/map/Overlay;->toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    .line 238
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;-><init>()V

    .line 239
    new-instance v1, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;-><init>()V

    .line 240
    iget v2, p0, Lcom/baidu/mapapi/map/Prism;->r:I

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->a(I)Z

    .line 241
    iget v2, p0, Lcom/baidu/mapapi/map/Prism;->s:I

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->a(I)Z

    .line 242
    iget-object v2, p0, Lcom/baidu/mapapi/map/Prism;->t:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v2, :cond_1

    .line 243
    new-instance v2, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    iget-object v3, p0, Lcom/baidu/mapapi/map/Prism;->t:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v3}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    .line 244
    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;)Z

    .line 247
    :cond_1
    new-instance v2, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;-><init>()V

    iput-object v2, p0, Lcom/baidu/mapapi/map/Prism;->q:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    .line 248
    iget-object v2, p0, Lcom/baidu/mapapi/map/Prism;->n:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/baidu/mapapi/map/Prism;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 249
    iget-object v2, p0, Lcom/baidu/mapapi/map/Prism;->q:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    iget-object v3, p0, Lcom/baidu/mapapi/map/Prism;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/lang/String;)V

    .line 250
    iget-object v2, p0, Lcom/baidu/mapapi/map/Prism;->q:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    iget v3, p0, Lcom/baidu/mapapi/map/Prism;->o:I

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(I)V

    goto :goto_1

    .line 251
    :cond_2
    iget-object v2, p0, Lcom/baidu/mapapi/map/Prism;->p:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 252
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 253
    :goto_0
    iget-object v4, p0, Lcom/baidu/mapapi/map/Prism;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 254
    iget-object v4, p0, Lcom/baidu/mapapi/map/Prism;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/model/LatLng;

    .line 255
    invoke-static {v4}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v4

    .line 256
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    .line 257
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v7

    .line 258
    new-instance v4, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    .line 259
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 261
    :cond_3
    iget-object v3, p0, Lcom/baidu/mapapi/map/Prism;->q:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v3, v2}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 262
    iget-object v2, p0, Lcom/baidu/mapapi/map/Prism;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    iget-object v3, p0, Lcom/baidu/mapapi/map/Prism;->q:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    .line 264
    :cond_4
    :goto_1
    iget v2, p0, Lcom/baidu/mapapi/map/Prism;->m:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 265
    iget-object v2, p0, Lcom/baidu/mapapi/map/Prism;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    iget v3, p0, Lcom/baidu/mapapi/map/Prism;->m:F

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->a(F)Z

    .line 268
    :cond_5
    iget-object v2, p0, Lcom/baidu/mapapi/map/Prism;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {v2, v0}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;)V

    .line 269
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmPrism;->b(Lcom/baidu/platform/comapi/bmsdk/style/BmSurfaceStyle;)V

    .line 270
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->u:Lcom/baidu/platform/comapi/bmsdk/BmPrism;

    return-object v0
.end method
