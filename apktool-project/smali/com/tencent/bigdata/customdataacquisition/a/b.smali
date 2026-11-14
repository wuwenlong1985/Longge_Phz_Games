.class public Lcom/tencent/bigdata/customdataacquisition/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bigdata/customdataacquisition/a/b$b;,
        Lcom/tencent/bigdata/customdataacquisition/a/b$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 2

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "getCellInfo Require the permissionandroid.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->b(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "getCellInfo begin"

    invoke-static {v0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->b(Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/a/b;->c(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bigdata/customdataacquisition/a/b$a;

    invoke-virtual {v1}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "getCellInfo"

    invoke-static {v1, p0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method private static a(Landroid/location/Location;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "lat"

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "lng"

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "alt"

    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "bear"

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "acc"

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "time"

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "sp"

    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "pvd"

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[loactionToJson]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->d(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static a(Landroid/location/LocationManager;)Z
    .locals 1

    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v0, "network"

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/a/b;->a(Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastLocation:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->d(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method public static c(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bigdata/customdataacquisition/a/b$a;",
            ">;"
        }
    .end annotation

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_1

    const-string p0, "getCellIDInfo: get TelephonyManager return null"

    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->a(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/bigdata/customdataacquisition/a/b$a;

    invoke-direct {v2, v1}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;-><init>(Lcom/tencent/bigdata/customdataacquisition/a/b$1;)V

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCellIDInfo--> \t\tphoneType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/bigdata/customdataacquisition/b/a;->b(Ljava/lang/Object;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-ne v4, v5, :cond_6

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    check-cast v4, Landroid/telephony/cdma/CdmaCellLocation;

    if-nez v4, :cond_2

    const-string p0, "CdmaCellLocation is null!!!"

    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->d(Ljava/lang/Object;)V

    return-object v1

    :cond_2
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v5

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v4

    invoke-static {v2, v4}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->a(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->b(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->c(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-static {v2, v5}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->d(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    const-string v4, "cdma"

    invoke-static {v2, v4}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->a(Lcom/tencent/bigdata/customdataacquisition/a/b$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->e(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v6, v2, :cond_b

    if-lt v6, v7, :cond_3

    return-object v0

    :cond_3
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellInfo;

    instance-of v10, v4, Landroid/telephony/CellInfoCdma;

    if-eqz v10, :cond_4

    check-cast v4, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v4}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v4

    new-instance v10, Lcom/tencent/bigdata/customdataacquisition/a/b$a;

    invoke-direct {v10, v1}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;-><init>(Lcom/tencent/bigdata/customdataacquisition/a/b$1;)V

    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v11

    invoke-static {v10, v11}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->a(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v10, v11}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->b(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v10, v11}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->c(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-static {v10, v5}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->d(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v11

    int-to-double v11, v11

    invoke-static {v10, v11, v12}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->a(Lcom/tencent/bigdata/customdataacquisition/a/b$a;D)D

    invoke-virtual {v4}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v4

    int-to-double v11, v4

    invoke-static {v10, v11, v12}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->b(Lcom/tencent/bigdata/customdataacquisition/a/b$a;D)D

    invoke-static {v10, v3}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->e(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    const-string v4, "cdma"

    invoke-static {v10, v4}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->a(Lcom/tencent/bigdata/customdataacquisition/a/b$a;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    instance-of v10, v4, Landroid/telephony/CellInfoWcdma;

    if-eqz v10, :cond_5

    check-cast v4, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v4}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v4

    new-instance v10, Lcom/tencent/bigdata/customdataacquisition/a/b$a;

    invoke-direct {v10, v1}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;-><init>(Lcom/tencent/bigdata/customdataacquisition/a/b$1;)V

    invoke-virtual {v4}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v11

    invoke-static {v10, v11}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->a(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v11

    invoke-static {v10, v11}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->b(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v11

    invoke-static {v10, v11}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->c(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v4

    invoke-static {v10, v4}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->d(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-static {v10, v5}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->d(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    const-string v4, "wcdma"

    invoke-static {v10, v4}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->a(Lcom/tencent/bigdata/customdataacquisition/a/b$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v10, v3}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->e(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    if-nez v4, :cond_7

    const-string p0, "GsmCellLocation is null!!!"

    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->d(Ljava/lang/Object;)V

    return-object v1

    :cond_7
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v5

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    invoke-static {v2, v4}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->a(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->b(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->c(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-static {v2, v5}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->d(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-static {v2, v3}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->e(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    const-string v4, "gsm"

    invoke-static {v2, v4}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->a(Lcom/tencent/bigdata/customdataacquisition/a/b$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_3
    if-ge v6, v2, :cond_b

    if-lt v6, v7, :cond_8

    return-object v0

    :cond_8
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellInfo;

    instance-of v5, v4, Landroid/telephony/CellInfoGsm;

    if-eqz v5, :cond_9

    check-cast v4, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v4}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v4

    new-instance v5, Lcom/tencent/bigdata/customdataacquisition/a/b$a;

    invoke-direct {v5, v1}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;-><init>(Lcom/tencent/bigdata/customdataacquisition/a/b$1;)V

    invoke-virtual {v4}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v8

    invoke-static {v5, v8}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->a(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v8

    invoke-static {v5, v8}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->b(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v8

    invoke-static {v5, v8}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->c(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v4

    invoke-static {v5, v4}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->d(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    const-string v4, "gsm"

    :goto_4
    invoke-static {v5, v4}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->a(Lcom/tencent/bigdata/customdataacquisition/a/b$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->e(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    instance-of v5, v4, Landroid/telephony/CellInfoLte;

    if-eqz v5, :cond_a

    check-cast v4, Landroid/telephony/CellInfoLte;

    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v4

    new-instance v5, Lcom/tencent/bigdata/customdataacquisition/a/b$a;

    invoke-direct {v5, v1}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;-><init>(Lcom/tencent/bigdata/customdataacquisition/a/b$1;)V

    invoke-virtual {v4}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v8

    invoke-static {v5, v8}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->a(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v8

    invoke-static {v5, v8}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->b(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v8

    invoke-static {v5, v8}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->c(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    invoke-virtual {v4}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v4

    invoke-static {v5, v4}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->d(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I

    const-string v4, "lte"

    goto :goto_4

    :cond_a
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_b
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "getGps Require the permissionandroid.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->b(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/a/b;->a(Landroid/location/LocationManager;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    invoke-virtual {p0, v0, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/a/b;->a(Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getGps]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->d(Ljava/lang/Object;)V

    :cond_3
    return-object v1
.end method

.method public static e(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 2

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "getWifiTowers Require the permissionandroid.permission.ACCESS_WIFI_STATE"

    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->b(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/a/b;->h(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bigdata/customdataacquisition/a/b$b;

    invoke-virtual {v1}, Lcom/tencent/bigdata/customdataacquisition/a/b$b;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, ""

    invoke-static {v1, p0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/a/b;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/bigdata/customdataacquisition/b/a;->a(Lorg/json/JSONArray;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "cell"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/a/b;->e(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/bigdata/customdataacquisition/b/a;->a(Lorg/json/JSONArray;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "wflist"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/a/b;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/bigdata/customdataacquisition/b/a;->a(Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string p0, "cgps"

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/a/b;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->a(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "lasgps"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/tencent/bigdata/customdataacquisition/b/a;->a(Lorg/json/JSONObject;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "No location info, return.."

    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->d(Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const-string p0, "fun"

    const-string v2, "xg"

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    const-string v1, "getReportLocationJson: "

    invoke-static {v1, p0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static g(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    const-string v1, "Wifi Error"

    invoke-static {v1, p0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private static h(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/tencent/bigdata/customdataacquisition/a/b$b;",
            ">;"
        }
    .end annotation

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "dump Require the permissionandroid.permission.ACCESS_WIFI_STATE"

    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->b(Ljava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/tencent/bigdata/customdataacquisition/a/b;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-nez p0, :cond_2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/tencent/bigdata/customdataacquisition/a/b$b;

    invoke-direct {v3, v1, v2, v0}, Lcom/tencent/bigdata/customdataacquisition/a/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v1, v3

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0xa

    if-lt v2, v4, :cond_6

    return-object v0

    :cond_6
    new-instance v4, Lcom/tencent/bigdata/customdataacquisition/a/b$b;

    invoke-direct {v4, v3}, Lcom/tencent/bigdata/customdataacquisition/a/b$b;-><init>(Landroid/net/wifi/ScanResult;)V

    if-eqz v1, :cond_7

    iget-object v3, v4, Lcom/tencent/bigdata/customdataacquisition/a/b$b;->c:Ljava/lang/String;

    iget-object v5, v1, Lcom/tencent/bigdata/customdataacquisition/a/b$b;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_7
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    return-object v0
.end method
