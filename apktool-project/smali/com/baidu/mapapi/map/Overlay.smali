.class public abstract Lcom/baidu/mapapi/map/Overlay;
.super Ljava/lang/Object;
.source "Overlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/Overlay$a;
    }
.end annotation


# static fields
.field protected static mcLocation:Lcom/baidu/platform/comapi/basestruct/GeoPoint;


# instance fields
.field K:Ljava/lang/String;

.field L:Lcom/baidu/mapapi/map/EncodePointType;

.field M:I

.field N:Z

.field O:Landroid/os/Bundle;

.field P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

.field protected listener:Lcom/baidu/mapapi/map/Overlay$a;

.field protected mDrawItem:Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

.field public type:Lcom/baidu/mapsdkplatform/comapi/map/h;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->K:Ljava/lang/String;

    return-void
.end method

.method static a(ILandroid/os/Bundle;)V
    .locals 6

    .line 245
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    ushr-int/lit8 v1, p0, 0x18

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 p0, p0, 0xff

    const-string v4, "red"

    int-to-float v2, v2

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v2, v5

    .line 250
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "green"

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 251
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "blue"

    int-to-float p0, p0

    div-float/2addr p0, v5

    .line 252
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "alpha"

    int-to-float v1, v1

    div-float/2addr v1, v5

    .line 253
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "color"

    .line 254
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static a(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 258
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 259
    new-array v1, v0, [D

    .line 260
    new-array v2, v0, [D

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 262
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v4}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v4

    .line 263
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    aput-wide v5, v1, v3

    .line 264
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "x_array"

    .line 266
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string p0, "y_array"

    .line 267
    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-void
.end method

.method static b(ILandroid/os/Bundle;)V
    .locals 6

    .line 485
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    ushr-int/lit8 v1, p0, 0x18

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 p0, p0, 0xff

    const-string v4, "red"

    int-to-float v2, v2

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v2, v5

    .line 490
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "green"

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 491
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "blue"

    int-to-float p0, p0

    div-float/2addr p0, v5

    .line 492
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "alpha"

    int-to-float v1, v1

    div-float/2addr v1, v5

    .line 493
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "m_floorColor"

    .line 494
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static b(Ljava/util/List;Landroid/os/Bundle;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/HoleOptions;",
            ">;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 271
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 275
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 276
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 278
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/map/HoleOptions;

    .line 279
    instance-of v4, v3, Lcom/baidu/mapapi/map/CircleHoleOptions;

    if-eqz v4, :cond_2

    .line 280
    check-cast v3, Lcom/baidu/mapapi/map/CircleHoleOptions;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_2
    instance-of v4, v3, Lcom/baidu/mapapi/map/PolygonHoleOptions;

    if-eqz v4, :cond_1

    .line 282
    check-cast v3, Lcom/baidu/mapapi/map/PolygonHoleOptions;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_4

    .line 287
    invoke-static {v1, p1}, Lcom/baidu/mapapi/map/Overlay;->c(Ljava/util/List;Landroid/os/Bundle;)Z

    move-result p0

    const-string v1, "has_circle_hole"

    .line 288
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    const-string p0, "has_circle_hole"

    .line 290
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p0, 0x0

    .line 294
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 295
    invoke-static {v2, p1}, Lcom/baidu/mapapi/map/Overlay;->d(Ljava/util/List;Landroid/os/Bundle;)Z

    move-result v1

    const-string v2, "has_polygon_hole"

    .line 296
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    const-string v1, "has_polygon_hole"

    .line 298
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    :goto_2
    if-nez p0, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    return v0

    :cond_8
    :goto_3
    return v0
.end method

.method static c(ILandroid/os/Bundle;)V
    .locals 6

    .line 498
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    ushr-int/lit8 v1, p0, 0x18

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 p0, p0, 0xff

    const-string v4, "red"

    int-to-float v2, v2

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v2, v5

    .line 503
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "green"

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 504
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "blue"

    int-to-float p0, p0

    div-float/2addr p0, v5

    .line 505
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "alpha"

    int-to-float v1, v1

    div-float/2addr v1, v5

    .line 506
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "m_topFaceColor"

    .line 507
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static c(Ljava/util/List;Landroid/os/Bundle;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/CircleHoleOptions;",
            ">;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .line 305
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 306
    new-array v1, v0, [D

    .line 307
    new-array v2, v0, [D

    .line 308
    new-array v3, v0, [I

    .line 309
    new-array v4, v0, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_2

    .line 311
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/mapapi/map/CircleHoleOptions;

    invoke-virtual {v7}, Lcom/baidu/mapapi/map/CircleHoleOptions;->getHoleCenter()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v7

    .line 312
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/mapapi/map/CircleHoleOptions;

    invoke-virtual {v8}, Lcom/baidu/mapapi/map/CircleHoleOptions;->getHoleRadius()I

    move-result v8

    if-eqz v7, :cond_1

    if-gtz v8, :cond_0

    goto :goto_1

    .line 316
    :cond_0
    invoke-static {v7}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v7

    .line 317
    invoke-virtual {v7}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v9

    aput-wide v9, v1, v6

    .line 318
    invoke-virtual {v7}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v9

    aput-wide v9, v2, v6

    .line 319
    aput v8, v3, v6

    .line 320
    aput v6, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v5

    :cond_2
    const-string p0, "circle_hole_x_array"

    .line 322
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string p0, "circle_hole_y_array"

    .line 323
    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string p0, "circle_hole_radius_array"

    .line 324
    invoke-virtual {p1, p0, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p0, "circle_hole_index_array"

    .line 325
    invoke-virtual {p1, p0, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static circleHoleInfo2BmGeo(Ljava/util/List;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/CircleHoleOptions;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/bmsdk/b;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 357
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    .line 358
    new-array v2, v1, [D

    .line 359
    new-array v3, v1, [D

    .line 360
    new-array v4, v1, [I

    .line 361
    new-array v5, v1, [I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_2

    .line 363
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/mapapi/map/CircleHoleOptions;

    invoke-virtual {v8}, Lcom/baidu/mapapi/map/CircleHoleOptions;->getHoleCenter()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v8

    .line 364
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/mapapi/map/CircleHoleOptions;

    invoke-virtual {v9}, Lcom/baidu/mapapi/map/CircleHoleOptions;->getHoleRadius()I

    move-result v9

    if-eqz v8, :cond_1

    if-gtz v9, :cond_0

    goto :goto_1

    .line 368
    :cond_0
    invoke-static {v8}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v8

    .line 369
    invoke-virtual {v8}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v10

    aput-wide v10, v2, v7

    .line 370
    invoke-virtual {v8}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v10

    aput-wide v10, v3, v7

    .line 371
    aput v9, v4, v7

    .line 372
    aput v7, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 375
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 376
    :goto_2
    array-length v7, v4

    if-ge v1, v7, :cond_4

    .line 377
    aget-wide v7, v2, v1

    .line 378
    aget-wide v9, v3, v1

    const/16 v11, 0x168

    .line 383
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v11, :cond_3

    int-to-double v14, v13

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v16

    move-wide/from16 v18, v7

    int-to-double v6, v11

    div-double/2addr v14, v6

    .line 387
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    aget v8, v4, v1

    move-object/from16 v20, v12

    int-to-double v11, v8

    mul-double v6, v6, v11

    sget-object v8, Lcom/baidu/mapapi/map/Overlay;->mcLocation:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    .line 388
    invoke-virtual {v8}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v11

    sub-double v11, v18, v11

    add-double/2addr v6, v11

    .line 389
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    aget v8, v4, v1

    int-to-double v14, v8

    mul-double v11, v11, v14

    sget-object v8, Lcom/baidu/mapapi/map/Overlay;->mcLocation:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    .line 390
    invoke-virtual {v8}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v14

    sub-double v14, v9, v14

    add-double/2addr v11, v14

    .line 392
    new-instance v8, Lcom/baidu/platform/comapi/bmsdk/b;

    sget-object v14, Lcom/baidu/mapapi/map/Overlay;->mcLocation:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v14}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v14

    add-double/2addr v6, v14

    sget-object v14, Lcom/baidu/mapapi/map/Overlay;->mcLocation:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v14}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v14

    add-double/2addr v11, v14

    invoke-direct {v8, v6, v7, v11, v12}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    move-object/from16 v6, v20

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object v12, v6

    move-wide/from16 v7, v18

    const/16 v11, 0x168

    goto :goto_3

    :cond_3
    move-object v6, v12

    .line 396
    aget v7, v5, v1

    .line 397
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method static d(ILandroid/os/Bundle;)V
    .locals 6

    .line 511
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    ushr-int/lit8 v1, p0, 0x18

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 p0, p0, 0xff

    const-string v4, "red"

    int-to-float v2, v2

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v2, v5

    .line 516
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "green"

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 517
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "blue"

    int-to-float p0, p0

    div-float/2addr p0, v5

    .line 518
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "alpha"

    int-to-float v1, v1

    div-float/2addr v1, v5

    .line 519
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "m_sideFaceColor"

    .line 520
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static d(Ljava/util/List;Landroid/os/Bundle;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/PolygonHoleOptions;",
            ">;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .line 449
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 450
    new-array v1, v0, [I

    .line 451
    new-array v2, v0, [I

    .line 452
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    .line 454
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/mapapi/map/PolygonHoleOptions;

    invoke-virtual {v6}, Lcom/baidu/mapapi/map/PolygonHoleOptions;->getHolePoints()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_0

    return v4

    .line 458
    :cond_0
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 459
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    aput v6, v1, v5

    .line 460
    aput v5, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 463
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_2

    return v4

    :cond_2
    const-string v0, "polygon_hole_count_array"

    .line 468
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "polygon_hole_index_array"

    .line 469
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 470
    new-array v0, p0, [D

    .line 471
    new-array v1, p0, [D

    :goto_1
    if-ge v4, p0, :cond_3

    .line 474
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    .line 475
    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    aput-wide v5, v0, v4

    .line 476
    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v5

    aput-wide v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "polygon_hole_x_array"

    .line 478
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string p0, "polygon_hole_y_array"

    .line 479
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const/4 p0, 0x1

    return p0
.end method

.method static e(ILandroid/os/Bundle;)V
    .locals 6

    .line 524
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    ushr-int/lit8 v1, p0, 0x18

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 p0, p0, 0xff

    const-string v4, "red"

    int-to-float v2, v2

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v2, v5

    .line 529
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "green"

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 530
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "blue"

    int-to-float p0, p0

    div-float/2addr p0, v5

    .line 531
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "alpha"

    int-to-float v1, v1

    div-float/2addr v1, v5

    .line 532
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "m_center_color"

    .line 533
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static f(ILandroid/os/Bundle;)V
    .locals 6

    .line 537
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    ushr-int/lit8 v1, p0, 0x18

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 p0, p0, 0xff

    const-string v4, "red"

    int-to-float v2, v2

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v2, v5

    .line 542
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "green"

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 543
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "blue"

    int-to-float p0, p0

    div-float/2addr p0, v5

    .line 544
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "alpha"

    int-to-float v1, v1

    div-float/2addr v1, v5

    .line 545
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "m_side_color"

    .line 546
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static holeInfo2BmGeo(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/HoleOptions;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/bmsdk/b;",
            ">;>;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 330
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 334
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 336
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 338
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/map/HoleOptions;

    .line 339
    instance-of v4, v3, Lcom/baidu/mapapi/map/CircleHoleOptions;

    if-eqz v4, :cond_2

    .line 340
    check-cast v3, Lcom/baidu/mapapi/map/CircleHoleOptions;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    :cond_2
    instance-of v4, v3, Lcom/baidu/mapapi/map/PolygonHoleOptions;

    if-eqz v4, :cond_1

    .line 342
    check-cast v3, Lcom/baidu/mapapi/map/PolygonHoleOptions;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_4

    .line 347
    invoke-static {v1}, Lcom/baidu/mapapi/map/Overlay;->circleHoleInfo2BmGeo(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 350
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_5

    .line 351
    invoke-static {v2}, Lcom/baidu/mapapi/map/Overlay;->polygonHoleInfo2BmGeo(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-object v0

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static polygonHoleInfo2BmGeo(Ljava/util/List;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/PolygonHoleOptions;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/bmsdk/b;",
            ">;>;"
        }
    .end annotation

    .line 423
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 424
    new-array v1, v0, [I

    .line 425
    new-array v2, v0, [I

    .line 426
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 427
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    .line 429
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/mapapi/map/PolygonHoleOptions;

    invoke-virtual {v6}, Lcom/baidu/mapapi/map/PolygonHoleOptions;->getHolePoints()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 434
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 435
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/mapapi/model/LatLng;

    .line 436
    invoke-static {v9}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v9

    .line 437
    new-instance v10, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {v9}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v11

    invoke-virtual {v9}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v13

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 439
    :cond_1
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 440
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    aput v6, v1, v5

    .line 441
    aput v5, v2, v5

    .line 442
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method


# virtual methods
.method a()Landroid/os/Bundle;
    .locals 3

    .line 165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    .line 166
    iget-object v2, p0, Lcom/baidu/mapapi/map/Overlay;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    .line 167
    iget-object v2, p0, Lcom/baidu/mapapi/map/Overlay;->type:Lcom/baidu/mapsdkplatform/comapi/map/h;

    invoke-virtual {v2}, Lcom/baidu/mapsdkplatform/comapi/map/h;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "id"

    .line 157
    iget-object v1, p0, Lcom/baidu/mapapi/map/Overlay;->K:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    .line 158
    iget-object v1, p0, Lcom/baidu/mapapi/map/Overlay;->type:Lcom/baidu/mapsdkplatform/comapi/map/h;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/h;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "visibility"

    .line 159
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Overlay;->N:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "z_index"

    .line 160
    iget v1, p0, Lcom/baidu/mapapi/map/Overlay;->M:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method b()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->mDrawItem:Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->mDrawItem:Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Overlay;->N:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->i(I)Z

    .line 174
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->mDrawItem:Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    iget v1, p0, Lcom/baidu/mapapi/map/Overlay;->M:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->a(S)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->mDrawItem:Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    return-object v0
.end method

.method public getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    return-object v0
.end method

.method public getDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->mDrawItem:Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    return-object v0
.end method

.method public getExtraInfo()Landroid/os/Bundle;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->O:Landroid/os/Bundle;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->K:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayLatLngBounds()Lcom/baidu/mapapi/model/LatLngBounds;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->a(Lcom/baidu/mapapi/map/Overlay;)Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v0

    return-object v0
.end method

.method public getZIndex()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/baidu/mapapi/map/Overlay;->M:I

    return v0
.end method

.method public isRemoved()Z
    .locals 3

    .line 226
    instance-of v0, p0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->d(Lcom/baidu/mapapi/map/Overlay;)Z

    move-result v0

    return v0

    .line 230
    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/Overlay;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a(Ljava/lang/String;)Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    return v1

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->d(Lcom/baidu/mapapi/map/Overlay;)Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Overlay;->N:Z

    return v0
.end method

.method public remove()V
    .locals 2

    .line 201
    instance-of v0, p0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 207
    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->mDrawItem:Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Overlay;->mDrawItem:Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)Z

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->mDrawItem:Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    .line 211
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setBmLayer(Lcom/baidu/platform/comapi/bmsdk/BmLayer;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/baidu/mapapi/map/Overlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    return-void
.end method

.method protected setDottedBitmapResource(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "lineDashTexture.png"

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const-string v0, "CircleDashTexture.png"

    const/4 v1, 0x2

    .line 414
    :cond_1
    invoke-virtual {p1, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->d(I)Z

    .line 416
    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 418
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    invoke-virtual {p2}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;)Z

    :cond_2
    return-void
.end method

.method public setDrawItem(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/baidu/mapapi/map/Overlay;->mDrawItem:Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    return-void
.end method

.method public setExtraInfo(Landroid/os/Bundle;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/baidu/mapapi/map/Overlay;->O:Landroid/os/Bundle;

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 100
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Overlay;->N:Z

    .line 102
    instance-of v0, p0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_0

    .line 103
    iget-object p1, p0, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 106
    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->mDrawItem:Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->mDrawItem:Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->i(I)Z

    .line 109
    iget-object p1, p0, Lcom/baidu/mapapi/map/Overlay;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setZIndex(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/baidu/mapapi/map/Overlay;->M:I

    .line 133
    iget-object p1, p0, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->mDrawItem:Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->mDrawItem:Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/Overlay;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->setName(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->mDrawItem:Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Overlay;->N:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->i(I)Z

    .line 185
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->mDrawItem:Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    iget v1, p0, Lcom/baidu/mapapi/map/Overlay;->M:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->a(S)V

    .line 186
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->mDrawItem:Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    return-object v0
.end method
