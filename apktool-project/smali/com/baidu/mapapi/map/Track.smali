.class public Lcom/baidu/mapapi/map/Track;
.super Lcom/baidu/mapapi/map/Overlay;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/Track$a;
    }
.end annotation


# instance fields
.field a:Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field c:[I

.field d:[I

.field e:I

.field f:I

.field g:I

.field h:F

.field i:I

.field j:F

.field k:F

.field l:Z

.field m:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field n:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field o:Lcom/baidu/mapapi/map/track/TraceAnimationListener;

.field private p:Lcom/baidu/platform/comapi/bmsdk/BmTrack;

.field private q:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

.field private r:Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;

.field private s:Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation$a;

.field private t:Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation$a;

.field private u:Lcom/baidu/mapapi/map/Track$a;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 157
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    .line 41
    new-instance v0, Lcom/baidu/mapapi/map/au;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/au;-><init>(Lcom/baidu/mapapi/map/Track;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Track;->s:Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation$a;

    .line 52
    new-instance v0, Lcom/baidu/mapapi/map/av;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/av;-><init>(Lcom/baidu/mapapi/map/Track;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Track;->t:Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation$a;

    .line 70
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Track;->a:Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;

    const/16 v0, 0x12c

    .line 86
    iput v0, p0, Lcom/baidu/mapapi/map/Track;->f:I

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/baidu/mapapi/map/Track;->g:I

    const/4 v1, 0x0

    .line 97
    iput v1, p0, Lcom/baidu/mapapi/map/Track;->h:F

    const/4 v2, 0x5

    .line 102
    iput v2, p0, Lcom/baidu/mapapi/map/Track;->i:I

    .line 105
    iput v1, p0, Lcom/baidu/mapapi/map/Track;->j:F

    .line 107
    iput v1, p0, Lcom/baidu/mapapi/map/Track;->k:F

    .line 108
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Track;->l:Z

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/baidu/mapapi/map/Track;->m:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 115
    iput-object v0, p0, Lcom/baidu/mapapi/map/Track;->n:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 153
    new-instance v0, Lcom/baidu/mapapi/map/Track$a;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/Track$a;-><init>(Lcom/baidu/mapapi/map/Track;)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Track;->u:Lcom/baidu/mapapi/map/Track$a;

    .line 158
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/h;->o:Lcom/baidu/mapsdkplatform/comapi/map/h;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Track;->type:Lcom/baidu/mapsdkplatform/comapi/map/h;

    .line 159
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->u:Lcom/baidu/mapapi/map/Track$a;

    const v1, 0xff16

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->registerMessageHandler(ILandroid/os/Handler;)V

    .line 161
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->u:Lcom/baidu/mapapi/map/Track$a;

    const v1, 0xff17

    invoke-static {v1, v0}, Lcom/baidu/platform/comjni/engine/MessageProxy;->registerMessageHandler(ILandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    .line 196
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 198
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->b:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_1

    .line 204
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 207
    iget-object v1, p0, Lcom/baidu/mapapi/map/Track;->m:Lcom/baidu/mapapi/map/BitmapDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/baidu/mapapi/map/Track;->m:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "texture_%d"

    .line 210
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 211
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 214
    :goto_0
    iget-object v4, p0, Lcom/baidu/mapapi/map/Track;->n:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v4, :cond_2

    .line 215
    iget-object v4, p0, Lcom/baidu/mapapi/map/Track;->n:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v4}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "texture_%d"

    .line 216
    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 217
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    :cond_2
    const-string v4, "total"

    .line 220
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "image_info_list"

    .line 221
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "opacity"

    .line 224
    iget v1, p0, Lcom/baidu/mapapi/map/Track;->j:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "paletteOpacity"

    .line 225
    iget v1, p0, Lcom/baidu/mapapi/map/Track;->k:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 226
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    const-string v1, "location_x"

    .line 227
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "location_y"

    .line 228
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "track_type"

    .line 229
    iget v1, p0, Lcom/baidu/mapapi/map/Track;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "animation_start_value"

    .line 230
    iget v1, p0, Lcom/baidu/mapapi/map/Track;->h:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "onPause"

    .line 231
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Track;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "width"

    .line 232
    iget v1, p0, Lcom/baidu/mapapi/map/Track;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->b:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Ljava/util/List;Landroid/os/Bundle;)V

    .line 234
    iget v0, p0, Lcom/baidu/mapapi/map/Track;->e:I

    if-ne v0, v3, :cond_3

    const-string v0, "color_array"

    .line 235
    iget-object v1, p0, Lcom/baidu/mapapi/map/Track;->d:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_3
    const-string v0, "height_array"

    .line 237
    iget-object v1, p0, Lcom/baidu/mapapi/map/Track;->c:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "animation_time"

    .line 238
    iget v1, p0, Lcom/baidu/mapapi/map/Track;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "animation_type"

    .line 239
    iget v1, p0, Lcom/baidu/mapapi/map/Track;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    .line 199
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: when you add Track, you must at least supply 2 points"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTraceAnimationListener(Lcom/baidu/mapapi/map/track/TraceAnimationListener;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/baidu/mapapi/map/Track;->o:Lcom/baidu/mapapi/map/track/TraceAnimationListener;

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Track;->l:Z

    .line 171
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    .line 172
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->a:Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;->pause()Z

    .line 173
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Track;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Track;->l:Z

    .line 181
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    .line 182
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->a:Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;->resume()Z

    .line 183
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    :cond_0
    return-void
.end method

.method public setAnimationListener(Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation$a;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/baidu/mapapi/map/Track;->t:Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation$a;

    return-void
.end method

.method toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
    .locals 12

    .line 245
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/BmTrack;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/BmTrack;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Track;->p:Lcom/baidu/platform/comapi/bmsdk/BmTrack;

    .line 246
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->p:Lcom/baidu/platform/comapi/bmsdk/BmTrack;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/bmsdk/BmTrack;->a(Lcom/baidu/mapapi/map/Track;)V

    .line 247
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->p:Lcom/baidu/platform/comapi/bmsdk/BmTrack;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/Track;->setDrawItem(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)V

    .line 248
    invoke-super {p0}, Lcom/baidu/mapapi/map/Overlay;->toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 253
    :goto_0
    iget-object v3, p0, Lcom/baidu/mapapi/map/Track;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 254
    iget-object v3, p0, Lcom/baidu/mapapi/map/Track;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v3}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v3

    .line 255
    new-instance v11, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v7

    iget-object v3, p0, Lcom/baidu/mapapi/map/Track;->c:[I

    aget v3, v3, v2

    int-to-double v9, v3

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DDD)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    :cond_0
    new-instance v2, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-direct {v2, v1}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;-><init>(I)V

    iput-object v2, p0, Lcom/baidu/mapapi/map/Track;->q:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    .line 260
    iget-object v2, p0, Lcom/baidu/mapapi/map/Track;->q:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v2, v0}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->b(Ljava/util/List;)Z

    .line 262
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Track;->r:Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;

    .line 263
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->r:Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;

    iget v2, p0, Lcom/baidu/mapapi/map/Track;->e:I

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->b(I)Z

    .line 264
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->r:Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;

    iget v2, p0, Lcom/baidu/mapapi/map/Track;->i:I

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->a(I)Z

    .line 265
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->n:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->r:Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;

    new-instance v2, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    iget-object v3, p0, Lcom/baidu/mapapi/map/Track;->n:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 267
    invoke-virtual {v3}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    .line 266
    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;)Z

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->r:Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;

    iget v2, p0, Lcom/baidu/mapapi/map/Track;->j:F

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->a(F)Z

    .line 270
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->r:Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;

    iget v2, p0, Lcom/baidu/mapapi/map/Track;->k:F

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->b(F)Z

    .line 271
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->m:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->r:Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;

    new-instance v2, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    iget-object v3, p0, Lcom/baidu/mapapi/map/Track;->m:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 273
    invoke-virtual {v3}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    .line 272
    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;->b(Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;)Z

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->q:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Track;->r:Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmTrackStyle;)Z

    .line 277
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->p:Lcom/baidu/platform/comapi/bmsdk/BmTrack;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Track;->q:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmTrack;->a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    .line 279
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->a:Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;->setTrackPosRadio(FF)Z

    .line 280
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->a:Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;

    iget v2, p0, Lcom/baidu/mapapi/map/Track;->f:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;->setDuration(J)Z

    .line 282
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->a:Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;->setStartDelay(J)Z

    .line 283
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->a:Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;->setRepeatCount(I)Z

    .line 284
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->a:Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;->setRepeatMode(I)Z

    .line 286
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->a:Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Track;->s:Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation$a;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;->setTrackUpdateListener(Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation$a;)Z

    .line 287
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->a:Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Track;->t:Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation$a;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;->setAnimationListener(Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation$a;)Z

    .line 289
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->a:Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;->start()Z

    .line 290
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->a:Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Track;->p:Lcom/baidu/platform/comapi/bmsdk/BmTrack;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;->setSdkTrack(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)Z

    .line 291
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->p:Lcom/baidu/platform/comapi/bmsdk/BmTrack;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Track;->a:Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmTrack;->a(Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;)Z

    .line 292
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track;->p:Lcom/baidu/platform/comapi/bmsdk/BmTrack;

    return-object v0
.end method
