.class Lcom/tencent/mid/util/Env$BasicEnv;
.super Ljava/lang/Object;
.source "Env.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mid/util/Env;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BasicEnv"
.end annotation


# instance fields
.field private allSensors:Ljava/lang/String;

.field appVersion:Ljava/lang/String;

.field channel:Ljava/lang/String;

.field private cpuInfo:Ljava/lang/String;

.field ctx:Landroid/content/Context;

.field display:Landroid/util/DisplayMetrics;

.field private ip:Ljava/lang/String;

.field jb:I

.field language:Ljava/lang/String;

.field manufacture:Ljava/lang/String;

.field model:Ljava/lang/String;

.field operator:Ljava/lang/String;

.field osVersion:I

.field packageName:Ljava/lang/String;

.field private ramInfo:Ljava/lang/String;

.field private romInfo:Ljava/lang/String;

.field sd:Ljava/lang/String;

.field sdkVersion:Ljava/lang/String;

.field timezone:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x40823d71    # 4.07f

    .line 36
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->sdkVersion:Ljava/lang/String;

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->osVersion:I

    .line 48
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->model:Ljava/lang/String;

    .line 52
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->manufacture:Ljava/lang/String;

    .line 56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->language:Ljava/lang/String;

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->jb:I

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->packageName:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->ctx:Landroid/content/Context;

    .line 81
    iput-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->allSensors:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->cpuInfo:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->ramInfo:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->romInfo:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->ip:Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/tencent/mid/util/Env$BasicEnv;->ctx:Landroid/content/Context;

    .line 89
    invoke-static {p1}, Lcom/tencent/bigdata/dataacquisition/DeviceInfos;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->display:Landroid/util/DisplayMetrics;

    .line 90
    invoke-static {p1}, Lcom/tencent/mid/util/StatCommonHelper;->getCurAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->appVersion:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->getSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->operator:Ljava/lang/String;

    .line 92
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->timezone:Ljava/lang/String;

    .line 93
    invoke-static {p1}, Lcom/tencent/bigdata/dataacquisition/DeviceInfos;->hasRootAccess(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->jb:I

    .line 94
    invoke-static {p1}, Lcom/tencent/bigdata/dataacquisition/DeviceInfos;->getExternalStorageInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->sd:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->packageName:Ljava/lang/String;

    .line 98
    iget v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->osVersion:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 99
    invoke-static {p1}, Lcom/tencent/bigdata/dataacquisition/DeviceInfos;->getSensorsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->allSensors:Ljava/lang/String;

    .line 101
    :cond_0
    invoke-static {p1}, Lcom/tencent/bigdata/dataacquisition/DeviceInfos;->getCpuInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->cpuInfo:Ljava/lang/String;

    .line 102
    invoke-static {p1}, Lcom/tencent/bigdata/dataacquisition/DeviceInfos;->getSystemMemory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->ramInfo:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/tencent/bigdata/dataacquisition/DeviceInfos;->getRomMemory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->romInfo:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->getIp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mid/util/Env$BasicEnv;->ip:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/tencent/mid/util/Env$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/tencent/mid/util/Env$BasicEnv;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method encode(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "sr"

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/mid/util/Env$BasicEnv;->display:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/mid/util/Env$BasicEnv;->display:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "av"

    .line 110
    iget-object v1, p0, Lcom/tencent/mid/util/Env$BasicEnv;->appVersion:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ch"

    .line 111
    iget-object v1, p0, Lcom/tencent/mid/util/Env$BasicEnv;->channel:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mf"

    .line 112
    iget-object v1, p0, Lcom/tencent/mid/util/Env$BasicEnv;->manufacture:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sv"

    .line 113
    iget-object v1, p0, Lcom/tencent/mid/util/Env$BasicEnv;->sdkVersion:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ov"

    .line 114
    iget v1, p0, Lcom/tencent/mid/util/Env$BasicEnv;->osVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "os"

    const/4 v1, 0x1

    .line 116
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "op"

    .line 117
    iget-object v1, p0, Lcom/tencent/mid/util/Env$BasicEnv;->operator:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lg"

    .line 118
    iget-object v1, p0, Lcom/tencent/mid/util/Env$BasicEnv;->language:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "md"

    .line 119
    iget-object v1, p0, Lcom/tencent/mid/util/Env$BasicEnv;->model:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tz"

    .line 120
    iget-object v1, p0, Lcom/tencent/mid/util/Env$BasicEnv;->timezone:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->jb:I

    if-eqz v0, :cond_0

    const-string v0, "jb"

    .line 122
    iget v1, p0, Lcom/tencent/mid/util/Env$BasicEnv;->jb:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    const-string v0, "sd"

    .line 124
    iget-object v1, p0, Lcom/tencent/mid/util/Env$BasicEnv;->sd:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "apn"

    .line 125
    iget-object v1, p0, Lcom/tencent/mid/util/Env$BasicEnv;->packageName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bigdata/dataacquisition/DeviceInfos;->isWifiNet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "bs"

    .line 129
    iget-object v2, p0, Lcom/tencent/mid/util/Env$BasicEnv;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->getWiFiBBSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ss"

    .line 130
    iget-object v2, p0, Lcom/tencent/mid/util/Env$BasicEnv;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->getWiFiSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "wf"

    .line 133
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->ctx:Landroid/content/Context;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->getWifiTopN(Landroid/content/Context;I)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "wflist"

    .line 139
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/tencent/mid/util/Env$BasicEnv;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bigdata/dataacquisition/DeviceInfos;->getSensorsJson(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 143
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "sslist"

    .line 144
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "sen"

    .line 146
    iget-object v1, p0, Lcom/tencent/mid/util/Env$BasicEnv;->allSensors:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cpu"

    .line 147
    iget-object v1, p0, Lcom/tencent/mid/util/Env$BasicEnv;->cpuInfo:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ram"

    .line 148
    iget-object v1, p0, Lcom/tencent/mid/util/Env$BasicEnv;->ramInfo:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rom"

    .line 149
    iget-object v1, p0, Lcom/tencent/mid/util/Env$BasicEnv;->romInfo:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ciip"

    .line 150
    iget-object v1, p0, Lcom/tencent/mid/util/Env$BasicEnv;->ip:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
