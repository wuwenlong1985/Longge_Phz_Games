.class public final Lcom/baidu/mapapi/map/Arc;
.super Lcom/baidu/mapapi/map/Overlay;
.source "Arc.java"


# static fields
.field private static final n:Ljava/lang/String; = "Arc"


# instance fields
.field a:I

.field b:I

.field c:Lcom/baidu/mapapi/model/LatLng;

.field d:Lcom/baidu/mapapi/model/LatLng;

.field e:Lcom/baidu/mapapi/model/LatLng;

.field f:Z

.field g:D

.field h:D

.field i:D

.field j:Z

.field k:Lcom/baidu/platform/comapi/bmsdk/b;

.field l:Lcom/baidu/mapapi/model/LatLng;

.field m:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

.field private o:Lcom/baidu/platform/comapi/bmsdk/BmArc;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Arc;->f:Z

    .line 43
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/h;->f:Lcom/baidu/mapsdkplatform/comapi/map/h;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Arc;->type:Lcom/baidu/mapsdkplatform/comapi/map/h;

    return-void
.end method

.method private a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Lcom/baidu/platform/comapi/basestruct/GeoPoint;)D
    .locals 6

    .line 321
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v0

    .line 322
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v2

    .line 323
    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    .line 324
    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide p1

    sub-double/2addr v0, v4

    mul-double v0, v0, v0

    sub-double/2addr v2, p1

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    .line 325
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private a(DDDDDD)Lcom/baidu/platform/comapi/basestruct/GeoPoint;
    .locals 21

    add-double v7, p1, p5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    add-double v11, p3, p7

    div-double/2addr v11, v9

    add-double v13, p5, p9

    div-double/2addr v13, v9

    add-double v15, p7, p11

    div-double/2addr v15, v9

    sub-double v2, p7, p3

    const-wide/16 v9, 0x0

    cmpl-double v17, v2, v9

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    const/16 v20, 0x0

    if-nez v17, :cond_1

    sub-double v0, p11, p7

    cmpl-double v2, v0, v9

    if-nez v2, :cond_0

    return-object v20

    :cond_0
    const/4 v2, 0x0

    sub-double v2, p9, p5

    mul-double v2, v2, v18

    div-double/2addr v2, v0

    sub-double v0, v7, v13

    mul-double v2, v2, v0

    add-double/2addr v2, v15

    goto :goto_0

    :cond_1
    const/16 v17, 0x0

    sub-double v0, p5, p1

    mul-double v0, v0, v18

    div-double/2addr v0, v2

    sub-double v2, p11, p7

    cmpl-double v6, v2, v9

    if-nez v6, :cond_2

    sub-double v2, v13, v7

    mul-double v0, v0, v2

    add-double v2, v0, v11

    move-wide v7, v13

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    sub-double v4, p9, p5

    mul-double v4, v4, v18

    div-double/2addr v4, v2

    cmpl-double v2, v0, v4

    if-nez v2, :cond_3

    return-object v20

    :cond_3
    const/4 v2, 0x0

    sub-double/2addr v15, v11

    mul-double v2, v0, v7

    add-double/2addr v15, v2

    mul-double v13, v13, v4

    sub-double/2addr v15, v13

    sub-double v2, v0, v4

    div-double v2, v15, v2

    sub-double v4, v2, v7

    mul-double v0, v0, v4

    add-double/2addr v0, v11

    move-wide v7, v2

    move-wide v2, v0

    .line 391
    :goto_0
    new-instance v0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-direct {v0, v2, v3, v7, v8}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(DD)V

    return-object v0
.end method

.method private a(DDD)V
    .locals 4

    cmpg-double v0, p1, p3

    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    const/4 v3, 0x0

    if-gez v0, :cond_3

    cmpg-double v0, p1, p5

    if-gez v0, :cond_1

    cmpg-double v0, p3, p5

    if-gez v0, :cond_0

    .line 273
    iput-wide p1, p0, Lcom/baidu/mapapi/map/Arc;->h:D

    .line 274
    iput-wide p5, p0, Lcom/baidu/mapapi/map/Arc;->i:D

    .line 275
    iput-boolean v3, p0, Lcom/baidu/mapapi/map/Arc;->j:Z

    goto :goto_0

    :cond_0
    cmpl-double v0, p3, p5

    if-lez v0, :cond_7

    .line 278
    iput-wide p5, p0, Lcom/baidu/mapapi/map/Arc;->h:D

    add-double/2addr p1, v1

    .line 279
    iput-wide p1, p0, Lcom/baidu/mapapi/map/Arc;->i:D

    .line 280
    iput-boolean v3, p0, Lcom/baidu/mapapi/map/Arc;->j:Z

    goto :goto_0

    :cond_1
    cmpl-double v0, p1, p5

    if-lez v0, :cond_7

    cmpg-double v0, p3, p5

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    cmpl-double v0, p3, p5

    if-lez v0, :cond_7

    .line 288
    iput-wide p1, p0, Lcom/baidu/mapapi/map/Arc;->h:D

    add-double/2addr p5, v1

    .line 289
    iput-wide p5, p0, Lcom/baidu/mapapi/map/Arc;->i:D

    .line 290
    iput-boolean v3, p0, Lcom/baidu/mapapi/map/Arc;->j:Z

    goto :goto_0

    :cond_3
    cmpl-double v0, p1, p3

    if-lez v0, :cond_7

    cmpg-double v0, p1, p5

    if-gez v0, :cond_5

    cmpg-double v0, p3, p5

    if-gez v0, :cond_4

    .line 297
    iput-wide p5, p0, Lcom/baidu/mapapi/map/Arc;->h:D

    add-double/2addr p1, v1

    .line 298
    iput-wide p1, p0, Lcom/baidu/mapapi/map/Arc;->i:D

    .line 299
    iput-boolean v3, p0, Lcom/baidu/mapapi/map/Arc;->j:Z

    goto :goto_0

    :cond_4
    cmpl-double p1, p3, p5

    goto :goto_0

    :cond_5
    cmpl-double v0, p1, p5

    if-lez v0, :cond_7

    cmpg-double v0, p3, p5

    if-gez v0, :cond_6

    .line 306
    iput-wide p1, p0, Lcom/baidu/mapapi/map/Arc;->h:D

    add-double/2addr p5, v1

    .line 307
    iput-wide p5, p0, Lcom/baidu/mapapi/map/Arc;->i:D

    .line 308
    iput-boolean v3, p0, Lcom/baidu/mapapi/map/Arc;->j:Z

    goto :goto_0

    :cond_6
    cmpl-double v0, p3, p5

    if-lez v0, :cond_7

    .line 312
    iput-wide p5, p0, Lcom/baidu/mapapi/map/Arc;->h:D

    .line 313
    iput-wide p1, p0, Lcom/baidu/mapapi/map/Arc;->i:D

    .line 314
    iput-boolean v3, p0, Lcom/baidu/mapapi/map/Arc;->j:Z

    :cond_7
    :goto_0
    return-void
.end method

.method private b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Lcom/baidu/platform/comapi/basestruct/GeoPoint;)D
    .locals 9

    .line 332
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 333
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide p1

    sub-double/2addr v2, p1

    const-wide/16 p1, 0x0

    cmpl-double v4, v2, p1

    const-wide v5, 0x3ee4f8b588e368f1L    # 1.0E-5

    if-nez v4, :cond_0

    move-wide v2, v5

    :cond_0
    cmpl-double v4, v0, p1

    if-nez v4, :cond_1

    move-wide v0, v5

    :cond_1
    div-double v4, v0, v2

    .line 341
    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    cmpl-double v6, v2, p1

    if-lez v6, :cond_2

    cmpl-double v6, v0, p1

    if-lez v6, :cond_2

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    mul-double v4, v4, p1

    goto :goto_0

    :cond_2
    cmpg-double v6, v2, p1

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    if-gez v6, :cond_3

    cmpl-double v6, v0, p1

    if-lez v6, :cond_3

    add-double/2addr v4, v7

    goto :goto_0

    :cond_3
    cmpg-double v6, v2, p1

    if-gez v6, :cond_4

    cmpg-double v2, v0, p1

    if-gez v2, :cond_4

    add-double/2addr v4, v7

    goto :goto_0

    :cond_4
    const-wide p1, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v4, p1

    :goto_0
    return-wide v4
.end method

.method private c()V
    .locals 19

    move-object/from16 v13, p0

    .line 248
    iget-object v0, v13, Lcom/baidu/mapapi/map/Arc;->c:Lcom/baidu/mapapi/model/LatLng;

    if-nez v0, :cond_0

    iget-object v0, v13, Lcom/baidu/mapapi/map/Arc;->d:Lcom/baidu/mapapi/model/LatLng;

    if-nez v0, :cond_0

    iget-object v0, v13, Lcom/baidu/mapapi/map/Arc;->e:Lcom/baidu/mapapi/model/LatLng;

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v0, v13, Lcom/baidu/mapapi/map/Arc;->c:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v14

    .line 253
    iget-object v0, v13, Lcom/baidu/mapapi/map/Arc;->d:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v15

    .line 254
    iget-object v0, v13, Lcom/baidu/mapapi/map/Arc;->e:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v11

    .line 256
    invoke-virtual {v14}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v1

    invoke-virtual {v14}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v3

    .line 257
    invoke-virtual {v15}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    invoke-virtual {v15}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v7

    .line 258
    invoke-virtual {v11}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v9

    invoke-virtual {v11}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v16

    move-object v0, v13

    move-object/from16 v18, v11

    move-wide/from16 v11, v16

    .line 256
    invoke-direct/range {v0 .. v12}, Lcom/baidu/mapapi/map/Arc;->a(DDDDDD)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 259
    new-instance v1, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    iput-object v1, v13, Lcom/baidu/mapapi/map/Arc;->k:Lcom/baidu/platform/comapi/bmsdk/b;

    .line 260
    invoke-direct {v13, v14, v0}, Lcom/baidu/mapapi/map/Arc;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Lcom/baidu/platform/comapi/basestruct/GeoPoint;)D

    move-result-wide v1

    iput-wide v1, v13, Lcom/baidu/mapapi/map/Arc;->g:D

    .line 261
    invoke-direct {v13, v14, v0}, Lcom/baidu/mapapi/map/Arc;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Lcom/baidu/platform/comapi/basestruct/GeoPoint;)D

    move-result-wide v1

    .line 262
    invoke-direct {v13, v15, v0}, Lcom/baidu/mapapi/map/Arc;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Lcom/baidu/platform/comapi/basestruct/GeoPoint;)D

    move-result-wide v3

    move-object/from16 v5, v18

    .line 263
    invoke-direct {v13, v5, v0}, Lcom/baidu/mapapi/map/Arc;->b(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Lcom/baidu/platform/comapi/basestruct/GeoPoint;)D

    move-result-wide v5

    move-object v0, v13

    .line 265
    invoke-direct/range {v0 .. v6}, Lcom/baidu/mapapi/map/Arc;->a(DDD)V

    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 397
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 400
    iget-object v1, p0, Lcom/baidu/mapapi/map/Arc;->c:Lcom/baidu/mapapi/model/LatLng;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v1, p0, Lcom/baidu/mapapi/map/Arc;->d:Lcom/baidu/mapapi/model/LatLng;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v1, p0, Lcom/baidu/mapapi/map/Arc;->e:Lcom/baidu/mapapi/model/LatLng;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 403
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    const-string v2, "location_x"

    .line 404
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v2, "location_y"

    .line 405
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "width"

    .line 406
    iget v2, p0, Lcom/baidu/mapapi/map/Arc;->b:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 407
    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Ljava/util/List;Landroid/os/Bundle;)V

    .line 408
    iget v0, p0, Lcom/baidu/mapapi/map/Arc;->a:I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(ILandroid/os/Bundle;)V

    const-string v0, "isClickable"

    .line 409
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Arc;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public getBmArc()Lcom/baidu/platform/comapi/bmsdk/BmArc;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/baidu/mapapi/map/Arc;->a:I

    return v0
.end method

.method public getEndPoint()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->e:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getMiddlePoint()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->d:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getStartPoint()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->c:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/baidu/mapapi/map/Arc;->b:I

    return v0
.end method

.method public isClickable()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Arc;->f:Z

    return v0
.end method

.method public setClickable(Z)V
    .locals 1

    .line 183
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Arc;->f:Z

    .line 184
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->m:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmArc;->c(Z)Z

    .line 187
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 98
    iput p1, p0, Lcom/baidu/mapapi/map/Arc;->a:I

    .line 99
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->m:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    if-eqz p1, :cond_1

    .line 101
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->m:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    iget v0, p0, Lcom/baidu/mapapi/map/Arc;->a:I

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->a(I)Z

    .line 102
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->m:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmArc;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;)V

    .line 103
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPoints(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)V
    .locals 0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    if-eq p1, p2, :cond_4

    if-eq p1, p3, :cond_4

    if-ne p2, p3, :cond_1

    goto :goto_1

    .line 129
    :cond_1
    iput-object p1, p0, Lcom/baidu/mapapi/map/Arc;->c:Lcom/baidu/mapapi/model/LatLng;

    .line 130
    iput-object p2, p0, Lcom/baidu/mapapi/map/Arc;->d:Lcom/baidu/mapapi/model/LatLng;

    .line 131
    iput-object p3, p0, Lcom/baidu/mapapi/map/Arc;->e:Lcom/baidu/mapapi/model/LatLng;

    .line 133
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 134
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->m:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    if-eqz p1, :cond_3

    .line 135
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->m:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    iget p2, p0, Lcom/baidu/mapapi/map/Arc;->a:I

    invoke-virtual {p1, p2}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->a(I)Z

    .line 137
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Arc;->c()V

    .line 139
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    iget-object p2, p0, Lcom/baidu/mapapi/map/Arc;->k:Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {p1, p2}, Lcom/baidu/platform/comapi/bmsdk/BmArc;->a(Lcom/baidu/platform/comapi/bmsdk/b;)Z

    .line 141
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    iget-boolean p2, p0, Lcom/baidu/mapapi/map/Arc;->j:Z

    invoke-virtual {p1, p2}, Lcom/baidu/platform/comapi/bmsdk/BmArc;->a(Z)Z

    .line 143
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    iget-wide p2, p0, Lcom/baidu/mapapi/map/Arc;->i:D

    invoke-virtual {p1, p2, p3}, Lcom/baidu/platform/comapi/bmsdk/BmArc;->c(D)Z

    .line 145
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    iget-wide p2, p0, Lcom/baidu/mapapi/map/Arc;->h:D

    invoke-virtual {p1, p2, p3}, Lcom/baidu/platform/comapi/bmsdk/BmArc;->b(D)Z

    .line 147
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    iget-wide p2, p0, Lcom/baidu/mapapi/map/Arc;->g:D

    invoke-virtual {p1, p2, p3}, Lcom/baidu/platform/comapi/bmsdk/BmArc;->a(D)Z

    .line 148
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 152
    :cond_2
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_3
    :goto_0
    return-void

    .line 126
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BDMapSDKException: start and middle and end points can not be same"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BDMapSDKException:start and middle and end points can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWidth(I)V
    .locals 1

    if-lez p1, :cond_1

    .line 164
    iput p1, p0, Lcom/baidu/mapapi/map/Arc;->b:I

    .line 165
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->m:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->m:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->b(I)Z

    .line 168
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->m:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmArc;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;)V

    .line 169
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
    .locals 6

    .line 209
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/BmArc;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/BmArc;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    .line 210
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/bmsdk/BmArc;->a(Lcom/baidu/mapapi/map/Arc;)V

    .line 211
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/Arc;->setDrawItem(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)V

    .line 213
    invoke-super {p0}, Lcom/baidu/mapapi/map/Overlay;->toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    .line 215
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Arc;->m:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    .line 216
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->m:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    iget v1, p0, Lcom/baidu/mapapi/map/Arc;->b:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->b(I)Z

    .line 217
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->m:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    iget v1, p0, Lcom/baidu/mapapi/map/Arc;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->a(I)Z

    .line 219
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Arc;->m:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmArc;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;)V

    .line 221
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->c:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->d:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->e:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Arc;->c()V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->l:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 226
    new-instance v1, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    iput-object v1, p0, Lcom/baidu/mapapi/map/Arc;->k:Lcom/baidu/platform/comapi/bmsdk/b;

    .line 230
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Arc;->k:Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmArc;->a(Lcom/baidu/platform/comapi/bmsdk/b;)Z

    .line 232
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Arc;->j:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmArc;->a(Z)Z

    .line 234
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    iget-wide v1, p0, Lcom/baidu/mapapi/map/Arc;->i:D

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmArc;->c(D)Z

    .line 236
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    iget-wide v1, p0, Lcom/baidu/mapapi/map/Arc;->h:D

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmArc;->b(D)Z

    .line 238
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    iget-wide v1, p0, Lcom/baidu/mapapi/map/Arc;->g:D

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmArc;->a(D)Z

    .line 239
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Arc;->f:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmArc;->c(Z)Z

    .line 240
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->o:Lcom/baidu/platform/comapi/bmsdk/BmArc;

    return-object v0
.end method
