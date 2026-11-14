.class public Lcom/baidu/geofence/model/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/baidu/geofence/model/DPoint;Ljava/util/List;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/geofence/model/DPoint;",
            "Ljava/util/List<",
            "Lcom/baidu/geofence/model/DPoint;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/geofence/model/DPoint;

    const/4 v3, 0x1

    move-object v4, v2

    const/4 v2, 0x1

    const/4 v5, 0x0

    :goto_0
    if-gt v2, v0, :cond_9

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    return v3

    :cond_0
    rem-int v6, v2, v0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/geofence/model/DPoint;

    invoke-virtual {p0}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v4}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v6}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    cmpg-double v11, v7, v9

    if-ltz v11, :cond_8

    invoke-virtual {p0}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v4}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v6}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    cmpl-double v11, v7, v9

    if-lez v11, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v4}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v6}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    cmpl-double v11, v7, v9

    if-lez v11, :cond_6

    invoke-virtual {p0}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v4}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v6}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    cmpg-double v11, v7, v9

    if-gez v11, :cond_6

    invoke-virtual {p0}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v4}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v6}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    cmpg-double v11, v7, v9

    if-gtz v11, :cond_8

    invoke-virtual {v4}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v6}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v9

    cmpl-double v11, v7, v9

    if-nez v11, :cond_2

    invoke-virtual {p0}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v4}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v6}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    cmpl-double v11, v7, v9

    if-ltz v11, :cond_2

    return v3

    :cond_2
    invoke-virtual {v4}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v6}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v9

    cmpl-double v11, v7, v9

    if-nez v11, :cond_3

    invoke-virtual {v4}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v7

    invoke-virtual {p0}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v9

    cmpl-double v4, v7, v9

    if-nez v4, :cond_5

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v4}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-virtual {v6}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v4}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v11

    sub-double/2addr v9, v11

    mul-double v7, v7, v9

    invoke-virtual {v6}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v4}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v11

    sub-double/2addr v9, v11

    div-double/2addr v7, v9

    invoke-virtual {v4}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-virtual {p0}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v9

    sub-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x3deb7cdfd9d7bdbbL    # 2.0E-10

    cmpg-double v4, v9, v11

    if-gez v4, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v9

    cmpg-double v4, v9, v7

    if-gez v4, :cond_8

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v6}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v9

    cmpl-double v11, v7, v9

    if-nez v11, :cond_8

    invoke-virtual {p0}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v6}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v9

    cmpg-double v11, v7, v9

    if-gtz v11, :cond_8

    add-int/lit8 v7, v2, 0x1

    rem-int/2addr v7, v0

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/geofence/model/DPoint;

    invoke-virtual {p0}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v4}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v7}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    cmpl-double v12, v8, v10

    if-ltz v12, :cond_7

    invoke-virtual {p0}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v4}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v7}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    cmpg-double v4, v8, v10

    if-gtz v4, :cond_7

    goto :goto_1

    :cond_7
    add-int/lit8 v5, v5, 0x2

    :cond_8
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object v4, v6

    goto/16 :goto_0

    :cond_9
    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_a

    return v1

    :cond_a
    return v3
.end method

.method public static a(Lcom/baidu/location/BDLocation;Ljava/util/ArrayList;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/location/BDLocation;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/geofence/model/DPoint;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    move-wide v7, v5

    const/4 v4, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/geofence/model/DPoint;

    invoke-virtual {v9}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v9

    add-double/2addr v5, v9

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/geofence/model/DPoint;

    invoke-virtual {v9}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v9

    add-double/2addr v7, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/baidu/geofence/model/DPoint;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v5, v9

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v7, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/baidu/geofence/model/DPoint;-><init>(DD)V

    move-wide v5, v1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/geofence/model/DPoint;

    invoke-virtual {v2}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/geofence/model/DPoint;

    invoke-virtual {v2}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v4}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v4}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v13

    invoke-static/range {v7 .. v14}, Lcom/baidu/location/indoor/u;->a(DDDD)D

    move-result-wide v7

    cmpl-double v2, v7, v5

    if-lez v2, :cond_1

    move-wide v5, v7

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v4}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v4}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v13

    move-object v15, v0

    invoke-static/range {v7 .. v15}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v0, v3

    float-to-double v0, v0

    const-wide v7, 0x407f400000000000L    # 500.0

    add-double/2addr v5, v7

    cmpg-double v2, v0, v5

    if-gez v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3
.end method
