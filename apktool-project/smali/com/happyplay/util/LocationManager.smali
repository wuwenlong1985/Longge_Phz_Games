.class public Lcom/happyplay/util/LocationManager;
.super Lcom/baidu/location/BDAbstractLocationListener;
.source "LocationManager.java"


# static fields
.field private static AddressInfo:Ljava/lang/String; = ""

.field private static ccActivity:Lorg/cocos2dx/javascript/AppActivity; = null

.field private static mapRegeocode:Ljava/lang/String; = ""


# instance fields
.field public latitudePos:D

.field public longitudePos:D

.field private mBDLocationClient:Lcom/baidu/location/LocationClient;

.field public radius:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/javascript/AppActivity;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/baidu/location/BDAbstractLocationListener;-><init>()V

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/happyplay/util/LocationManager;->latitudePos:D

    .line 34
    iput-wide v0, p0, Lcom/happyplay/util/LocationManager;->longitudePos:D

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/happyplay/util/LocationManager;->radius:F

    .line 40
    sput-object p1, Lcom/happyplay/util/LocationManager;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    const/4 p1, 0x1

    .line 41
    invoke-static {p1}, Lcom/baidu/location/LocationClient;->setAgreePrivacy(Z)V

    .line 42
    sget-object p1, Lcom/happyplay/util/LocationManager;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {p1}, Lorg/cocos2dx/javascript/AppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 44
    :try_start_0
    new-instance v0, Lcom/baidu/location/LocationClient;

    invoke-direct {v0, p1}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/happyplay/util/LocationManager;->mBDLocationClient:Lcom/baidu/location/LocationClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    :goto_0
    iget-object p1, p0, Lcom/happyplay/util/LocationManager;->mBDLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {p1, p0}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDAbstractLocationListener;)V

    .line 50
    invoke-direct {p0}, Lcom/happyplay/util/LocationManager;->initOption()V

    return-void
.end method

.method public static getCurAddressInfo()Ljava/lang/String;
    .locals 1

    .line 186
    sget-object v0, Lcom/happyplay/util/LocationManager;->AddressInfo:Ljava/lang/String;

    return-object v0
.end method

.method private initOption()V
    .locals 2

    .line 54
    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    .line 55
    sget-object v1, Lcom/baidu/location/LocationClientOption$LocationMode;->Hight_Accuracy:Lcom/baidu/location/LocationClientOption$LocationMode;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setLocationMode(Lcom/baidu/location/LocationClientOption$LocationMode;)V

    const-string v1, "bd09ll"

    .line 56
    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 58
    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setIsNeedAddress(Z)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setOpenGnss(Z)V

    .line 61
    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setLocationNotify(Z)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setIsNeedLocationDescribe(Z)V

    .line 63
    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setIsNeedLocationPoiList(Z)V

    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setIgnoreKillProcess(Z)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->SetIgnoreCacheException(Z)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setEnableSimulateGnss(Z)V

    const v1, 0x493e0

    .line 67
    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setWifiCacheTimeOut(I)V

    .line 68
    iget-object v1, p0, Lcom/happyplay/util/LocationManager;->mBDLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    return-void
.end method

.method public static isUserOpen()Z
    .locals 3

    .line 118
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 120
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "network"

    .line 122
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public clearCurLocation()V
    .locals 2

    const-string v0, ""

    .line 193
    sput-object v0, Lcom/happyplay/util/LocationManager;->AddressInfo:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 194
    iput-wide v0, p0, Lcom/happyplay/util/LocationManager;->latitudePos:D

    .line 195
    iput-wide v0, p0, Lcom/happyplay/util/LocationManager;->longitudePos:D

    const-string v0, ""

    .line 196
    sput-object v0, Lcom/happyplay/util/LocationManager;->mapRegeocode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 197
    iput v0, p0, Lcom/happyplay/util/LocationManager;->radius:F

    return-void
.end method

.method public getCurLocation()Ljava/lang/String;
    .locals 3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/happyplay/util/LocationManager;->longitudePos:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/happyplay/util/LocationManager;->latitudePos:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/happyplay/util/LocationManager;->latitudePos:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/happyplay/util/LocationManager;->longitudePos:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMapRegeocode()Ljava/lang/String;
    .locals 1

    .line 175
    sget-object v0, Lcom/happyplay/util/LocationManager;->mapRegeocode:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()Ljava/lang/String;
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/happyplay/util/LocationManager;->radius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 4

    .line 75
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v1, 0xa1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 96
    sput-object p1, Lcom/happyplay/util/LocationManager;->AddressInfo:Ljava/lang/String;

    goto/16 :goto_1

    .line 77
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/happyplay/util/LocationManager;->AddressInfo:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/happyplay/util/LocationManager;->latitudePos:D

    .line 79
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/happyplay/util/LocationManager;->longitudePos:D

    .line 80
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v0

    iput v0, p0, Lcom/happyplay/util/LocationManager;->radius:F

    const-string v0, "onReceiveLocation == "

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/happyplay/util/LocationManager;->latitudePos:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/happyplay/util/LocationManager;->longitudePos:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/happyplay/util/LocationManager;->radius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"formattedAddress\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddress()Lcom/baidu/location/Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"country\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"province\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"city\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"district\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getDistrict()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"street\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getStreet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"streetNum\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getStreetNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"citycode\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCityCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"adcode\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAdCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/happyplay/util/LocationManager;->mapRegeocode:Ljava/lang/String;

    .line 99
    :goto_1
    iget-object p1, p0, Lcom/happyplay/util/LocationManager;->mBDLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {p1}, Lcom/baidu/location/LocationClient;->stop()V

    const-string p1, "{\"errCode\":\"0\"}"

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 105
    sget-object v1, Lcom/happyplay/util/LocationManager;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v1}, Lorg/cocos2dx/javascript/AppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    sget-object v1, Lcom/happyplay/util/LocationManager;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v1}, Lorg/cocos2dx/javascript/AppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 109
    sget-object v0, Lcom/happyplay/util/LocationManager;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    const-string v1, "UPDATE_PLAYER_LOCATION"

    invoke-virtual {v0, v1, p1}, Lorg/cocos2dx/javascript/AppActivity;->RunJS(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestLocation()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/happyplay/util/LocationManager;->mBDLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/happyplay/util/LocationManager;->mBDLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->requestLocation()I

    :cond_0
    return-void
.end method

.method public startLocation()V
    .locals 2

    :try_start_0
    const-string v0, "\u8c03\u7528\u5b9a\u4f4d"

    const-string v1, "startLocation"

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/happyplay/util/LocationManager;->mBDLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "startlocationError"

    .line 134
    invoke-static {v0}, Lcom/happyplay/util/PermissionUtils;->setPermissionError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopLocation()V
    .locals 1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/happyplay/util/LocationManager;->mBDLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "stoplocationError"

    .line 142
    invoke-static {v0}, Lcom/happyplay/util/PermissionUtils;->setPermissionError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
