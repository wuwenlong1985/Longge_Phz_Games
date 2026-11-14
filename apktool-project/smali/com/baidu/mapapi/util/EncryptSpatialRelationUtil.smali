.class public Lcom/baidu/mapapi/util/EncryptSpatialRelationUtil;
.super Ljava/lang/Object;
.source "EncryptSpatialRelationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;Lcom/baidu/mapapi/map/EncodePointType;)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 38
    :cond_0
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/EncodePointType;->ordinal()I

    move-result p2

    .line 39
    invoke-static {}, Lcom/baidu/platform/comapi/util/h;->a()Lcom/baidu/platform/comapi/util/h;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/baidu/platform/comapi/util/h;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 40
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz p2, :cond_b

    if-nez p0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 p2, 0x0

    .line 43
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge p2, v1, :cond_3

    .line 44
    iget-wide v3, p0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v5, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v5, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    const/4 v3, 0x0

    :cond_4
    :goto_1
    if-ge v1, p2, :cond_9

    .line 56
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/model/LatLng;

    add-int/lit8 v1, v1, 0x1

    .line 57
    rem-int v5, v1, p2

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/model/LatLng;

    .line 60
    iget-wide v6, v4, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v8, v5, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    cmpl-double v10, v6, v8

    if-nez v10, :cond_5

    goto :goto_1

    .line 63
    :cond_5
    iget-wide v6, p0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v8, v4, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v10, v5, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    cmpg-double v10, v6, v8

    if-gez v10, :cond_6

    goto :goto_1

    .line 66
    :cond_6
    iget-wide v6, p0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v8, v4, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v10, v5, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    cmpl-double v10, v6, v8

    if-ltz v10, :cond_7

    goto :goto_1

    .line 70
    :cond_7
    iget-wide v6, p0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v8, v4, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v6, v8

    iget-wide v8, v5, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v10, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v8, v10

    mul-double v6, v6, v8

    iget-wide v8, v5, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v10, v4, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v8, v10

    div-double/2addr v6, v8

    iget-wide v4, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    add-double/2addr v6, v4

    .line 72
    iget-wide v4, p0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpl-double v8, v6, v4

    if-nez v8, :cond_8

    return v2

    .line 75
    :cond_8
    iget-wide v4, p0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpg-double v8, v6, v4

    if-gez v8, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 79
    :cond_9
    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v2, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    :cond_b
    :goto_2
    return v0
.end method

.method public static isEncodedGeoPointsContainsPoint(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;Lcom/baidu/mapapi/map/EncodePointType;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/baidu/mapapi/util/EncryptSpatialRelationUtil;->a(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;Lcom/baidu/mapapi/map/EncodePointType;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
