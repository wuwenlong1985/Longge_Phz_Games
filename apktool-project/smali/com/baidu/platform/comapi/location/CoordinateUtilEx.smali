.class public Lcom/baidu/platform/comapi/location/CoordinateUtilEx;
.super Ljava/lang/Object;
.source "CoordinateUtilEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Coordinate_encryptEx(FFLjava/lang/String;)Lcom/baidu/platform/comapi/basestruct/Point;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const-string v1, ""

    .line 76
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p2, "bd09ll"

    :cond_1
    const/4 v1, -0x1

    .line 80
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x532d2f75

    if-eq v2, v3, :cond_5

    const v3, -0x532d2f5f

    if-eq v2, v3, :cond_4

    const v3, 0x5da0990

    if-eq v2, v3, :cond_3

    const v3, 0x6bd75df

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "wgs84"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const-string v2, "gcj02"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const-string v2, "bd09mc"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 v1, 0x3

    goto :goto_0

    :cond_5
    const-string v2, "bd09ll"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 v1, 0x2

    :cond_6
    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    .line 88
    :pswitch_0
    new-instance p2, Lcom/baidu/platform/comapi/basestruct/Point;

    float-to-double v0, p0

    float-to-double p0, p1

    invoke-direct {p2, v0, v1, p0, p1}, Lcom/baidu/platform/comapi/basestruct/Point;-><init>(DD)V

    return-object p2

    :pswitch_1
    float-to-double v0, p0

    float-to-double p0, p1

    .line 86
    invoke-static {v0, v1, p0, p1}, Lcom/baidu/platform/comapi/location/CoordinateUtil;->bd09llTobd09mc(DD)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object p0

    return-object p0

    :pswitch_2
    float-to-double v0, p0

    float-to-double p0, p1

    .line 84
    invoke-static {v0, v1, p0, p1}, Lcom/baidu/platform/comapi/location/CoordinateUtil;->gcj02Tobd09mc(DD)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object p0

    return-object p0

    :pswitch_3
    float-to-double v0, p0

    float-to-double p0, p1

    .line 82
    invoke-static {v0, v1, p0, p1}, Lcom/baidu/platform/comapi/location/CoordinateUtil;->wgs84Tobd09mc(DD)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static Coordinate_encryptExArray(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/platform/comapi/basestruct/Point;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/platform/comapi/basestruct/Point;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, ""

    .line 111
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "bd09ll"

    :cond_1
    const-string v1, "bd09ll"

    .line 114
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "bd09mc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "gcj02"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "wgs84"

    .line 115
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 119
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [F

    .line 120
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 121
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 122
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x47c35000    # 100000.0f

    div-float/2addr v5, v6

    aput v5, v1, v4

    .line 123
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 127
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_a

    const/4 v5, -0x1

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x532d2f75

    if-eq v6, v7, :cond_7

    const v7, -0x532d2f5f

    if-eq v6, v7, :cond_6

    const v7, 0x5da0990

    if-eq v6, v7, :cond_5

    const v7, 0x6bd75df

    if-eq v6, v7, :cond_4

    goto :goto_2

    :cond_4
    const-string v6, "wgs84"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    const-string v6, "gcj02"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v5, 0x1

    goto :goto_2

    :cond_6
    const-string v6, "bd09mc"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v5, 0x3

    goto :goto_2

    :cond_7
    const-string v6, "bd09ll"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v5, 0x2

    :cond_8
    :goto_2
    packed-switch v5, :pswitch_data_0

    move-object v5, v0

    goto :goto_3

    .line 143
    :pswitch_0
    new-instance v5, Lcom/baidu/platform/comapi/basestruct/Point;

    aget v6, v1, v4

    float-to-double v6, v6

    aget v8, v2, v4

    float-to-double v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/baidu/platform/comapi/basestruct/Point;-><init>(DD)V

    goto :goto_3

    .line 139
    :pswitch_1
    aget v5, v1, v4

    float-to-double v5, v5

    aget v7, v2, v4

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Lcom/baidu/platform/comapi/location/CoordinateUtil;->bd09llTobd09mc(DD)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object v5

    goto :goto_3

    .line 135
    :pswitch_2
    aget v5, v1, v4

    float-to-double v5, v5

    aget v7, v2, v4

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Lcom/baidu/platform/comapi/location/CoordinateUtil;->gcj02Tobd09mc(DD)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object v5

    goto :goto_3

    .line 131
    :pswitch_3
    aget v5, v1, v4

    float-to-double v5, v5

    aget v7, v2, v4

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Lcom/baidu/platform/comapi/location/CoordinateUtil;->wgs84Tobd09mc(DD)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_9

    .line 150
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_a
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDistanceByMc(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Lcom/baidu/platform/comapi/basestruct/GeoPoint;)D
    .locals 8

    .line 49
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v4

    .line 50
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v6

    .line 49
    invoke-static/range {v0 .. v7}, Lcom/baidu/platform/comapi/location/CoordinateUtil;->getDistanceByMc(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getDistanceByMc(Lcom/baidu/platform/comapi/basestruct/Point;Lcom/baidu/platform/comapi/basestruct/Point;)D
    .locals 8

    .line 42
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/Point;->getDoubleX()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/Point;->getDoubleY()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/Point;->getDoubleX()D

    move-result-wide v4

    .line 43
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/Point;->getDoubleY()D

    move-result-wide v6

    .line 42
    invoke-static/range {v0 .. v7}, Lcom/baidu/platform/comapi/location/CoordinateUtil;->getDistanceByMc(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getGeoComplexPointFromString(Ljava/lang/String;)Lcom/baidu/platform/comapi/basestruct/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_1

    const-string v0, ""

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p0}, Lcom/baidu/platform/comapi/location/CoordinateUtil;->geoStringToComplexPt(Ljava/lang/String;)Lcom/baidu/platform/comapi/basestruct/a;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getGeoComplexPtBoundFromString(Ljava/lang/String;)Lcom/baidu/platform/comapi/basestruct/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_1

    const-string v0, ""

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p0}, Lcom/baidu/platform/comapi/location/CoordinateUtil;->geoStringToComplexPtBound(Ljava/lang/String;)Lcom/baidu/platform/comapi/basestruct/a;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getGeoPointFromString(Ljava/lang/String;)Lcom/baidu/platform/comapi/basestruct/Point;
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, ""

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p0}, Lcom/baidu/platform/comapi/location/CoordinateUtil;->geoStringToPoint(Ljava/lang/String;)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIntermediatePointByMC(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Lcom/baidu/platform/comapi/basestruct/GeoPoint;D)Lcom/baidu/platform/comapi/basestruct/Point;
    .locals 10

    .line 59
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v4

    .line 60
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v6

    move-wide v8, p2

    .line 59
    invoke-static/range {v0 .. v9}, Lcom/baidu/platform/comapi/location/CoordinateUtil;->getIntermediatePointByMC(DDDDD)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object p0

    return-object p0
.end method

.method public static getIntermediatePointByMC(Lcom/baidu/platform/comapi/basestruct/Point;Lcom/baidu/platform/comapi/basestruct/Point;D)Lcom/baidu/platform/comapi/basestruct/Point;
    .locals 10

    .line 54
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/Point;->getDoubleX()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/Point;->getDoubleY()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/Point;->getDoubleX()D

    move-result-wide v4

    .line 55
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/Point;->getDoubleY()D

    move-result-wide v6

    move-wide v8, p2

    .line 54
    invoke-static/range {v0 .. v9}, Lcom/baidu/platform/comapi/location/CoordinateUtil;->getIntermediatePointByMC(DDDDD)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object p0

    return-object p0
.end method

.method public static getStringFromGeoPoint(Lcom/baidu/platform/comapi/basestruct/Point;)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/baidu/platform/comapi/location/CoordinateUtil;->pointToGeoString(Lcom/baidu/platform/comapi/basestruct/Point;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
