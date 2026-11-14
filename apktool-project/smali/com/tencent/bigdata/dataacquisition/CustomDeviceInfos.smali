.class public Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;
.super Ljava/lang/Object;


# static fields
.field private static final DEVICEINFOS_REAL_CLASSNAME:Ljava/lang/String; = "com.tencent.bigdata.customdataacquisition.intf.CustomDeviceInfos"

.field private static isWarned:Z = false

.field private static ismportImplClassFlag:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "com.tencent.bigdata.customdataacquisition.intf.CustomDeviceInfos"

    invoke-static {v0}, Lcom/tencent/bigdata/reflecttools/Reflect;->on(Ljava/lang/String;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object v0

    const-string v1, "getAndroidId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bigdata/reflecttools/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bigdata/reflecttools/Reflect;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/tencent/bigdata/reflecttools/ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->showWarnMessage(Lcom/tencent/bigdata/reflecttools/ReflectException;)V

    const-string p0, ""

    return-object p0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "com.tencent.bigdata.customdataacquisition.intf.CustomDeviceInfos"

    invoke-static {v0}, Lcom/tencent/bigdata/reflecttools/Reflect;->on(Ljava/lang/String;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object v0

    const-string v1, "getDeviceId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bigdata/reflecttools/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bigdata/reflecttools/Reflect;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/tencent/bigdata/reflecttools/ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->showWarnMessage(Lcom/tencent/bigdata/reflecttools/ReflectException;)V

    const-string p0, ""

    return-object p0
.end method

.method public static getImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "com.tencent.bigdata.customdataacquisition.intf.CustomDeviceInfos"

    invoke-static {v0}, Lcom/tencent/bigdata/reflecttools/Reflect;->on(Ljava/lang/String;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object v0

    const-string v1, "getImsi"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bigdata/reflecttools/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bigdata/reflecttools/Reflect;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/tencent/bigdata/reflecttools/ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->showWarnMessage(Lcom/tencent/bigdata/reflecttools/ReflectException;)V

    const-string p0, ""

    return-object p0
.end method

.method public static getInstalledPackages(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.tencent.bigdata.customdataacquisition.intf.CustomDeviceInfos"

    invoke-static {v0}, Lcom/tencent/bigdata/reflecttools/Reflect;->on(Ljava/lang/String;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object v0

    const-string v1, "getInstalledPackages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bigdata/reflecttools/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bigdata/reflecttools/Reflect;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Lcom/tencent/bigdata/reflecttools/ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->showWarnMessage(Lcom/tencent/bigdata/reflecttools/ReflectException;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static getIp(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "com.tencent.bigdata.customdataacquisition.intf.CustomDeviceInfos"

    invoke-static {v0}, Lcom/tencent/bigdata/reflecttools/Reflect;->on(Ljava/lang/String;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object v0

    const-string v1, "getIp"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bigdata/reflecttools/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bigdata/reflecttools/Reflect;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/tencent/bigdata/reflecttools/ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->showWarnMessage(Lcom/tencent/bigdata/reflecttools/ReflectException;)V

    const-string p0, ""

    return-object p0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "com.tencent.bigdata.customdataacquisition.intf.CustomDeviceInfos"

    invoke-static {v0}, Lcom/tencent/bigdata/reflecttools/Reflect;->on(Ljava/lang/String;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object v0

    const-string v1, "getMacAddress"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bigdata/reflecttools/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bigdata/reflecttools/Reflect;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/tencent/bigdata/reflecttools/ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->showWarnMessage(Lcom/tencent/bigdata/reflecttools/ReflectException;)V

    const-string p0, ""

    return-object p0
.end method

.method public static getRecentTasks(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.tencent.bigdata.customdataacquisition.intf.CustomDeviceInfos"

    invoke-static {v0}, Lcom/tencent/bigdata/reflecttools/Reflect;->on(Ljava/lang/String;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object v0

    const-string v1, "getRecentTasks"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bigdata/reflecttools/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bigdata/reflecttools/Reflect;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_0
    .catch Lcom/tencent/bigdata/reflecttools/ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->showWarnMessage(Lcom/tencent/bigdata/reflecttools/ReflectException;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public static getReportLocationJson(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    const-string v0, "com.tencent.bigdata.customdataacquisition.intf.CustomDeviceInfos"

    invoke-static {v0}, Lcom/tencent/bigdata/reflecttools/Reflect;->on(Ljava/lang/String;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object v0

    const-string v1, "getReportLocationJson"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bigdata/reflecttools/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bigdata/reflecttools/Reflect;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/tencent/bigdata/reflecttools/ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->showWarnMessage(Lcom/tencent/bigdata/reflecttools/ReflectException;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRunningAppProces(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.tencent.bigdata.customdataacquisition.intf.CustomDeviceInfos"

    invoke-static {v0}, Lcom/tencent/bigdata/reflecttools/Reflect;->on(Ljava/lang/String;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object v0

    const-string v1, "getRunningAppProces"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bigdata/reflecttools/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bigdata/reflecttools/Reflect;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_0
    .catch Lcom/tencent/bigdata/reflecttools/ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->showWarnMessage(Lcom/tencent/bigdata/reflecttools/ReflectException;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public static getRunningProcess(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.tencent.bigdata.customdataacquisition.intf.CustomDeviceInfos"

    invoke-static {v0}, Lcom/tencent/bigdata/reflecttools/Reflect;->on(Ljava/lang/String;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object v0

    const-string v1, "getRunningProcess"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bigdata/reflecttools/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bigdata/reflecttools/Reflect;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_0
    .catch Lcom/tencent/bigdata/reflecttools/ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->showWarnMessage(Lcom/tencent/bigdata/reflecttools/ReflectException;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public static getSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "com.tencent.bigdata.customdataacquisition.intf.CustomDeviceInfos"

    invoke-static {v0}, Lcom/tencent/bigdata/reflecttools/Reflect;->on(Ljava/lang/String;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object v0

    const-string v1, "getSimOperator"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bigdata/reflecttools/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bigdata/reflecttools/Reflect;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/tencent/bigdata/reflecttools/ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->showWarnMessage(Lcom/tencent/bigdata/reflecttools/ReflectException;)V

    const-string p0, ""

    return-object p0
.end method

.method public static getWiFiBBSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "com.tencent.bigdata.customdataacquisition.intf.CustomDeviceInfos"

    invoke-static {v0}, Lcom/tencent/bigdata/reflecttools/Reflect;->on(Ljava/lang/String;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object v0

    const-string v1, "getWiFiBBSID"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bigdata/reflecttools/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bigdata/reflecttools/Reflect;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/tencent/bigdata/reflecttools/ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->showWarnMessage(Lcom/tencent/bigdata/reflecttools/ReflectException;)V

    const-string p0, ""

    return-object p0
.end method

.method public static getWiFiSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "com.tencent.bigdata.customdataacquisition.intf.CustomDeviceInfos"

    invoke-static {v0}, Lcom/tencent/bigdata/reflecttools/Reflect;->on(Ljava/lang/String;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object v0

    const-string v1, "getWiFiSSID"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bigdata/reflecttools/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bigdata/reflecttools/Reflect;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/tencent/bigdata/reflecttools/ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->showWarnMessage(Lcom/tencent/bigdata/reflecttools/ReflectException;)V

    const-string p0, ""

    return-object p0
.end method

.method public static getWifiInfo(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;
    .locals 4

    :try_start_0
    const-string v0, "com.tencent.bigdata.customdataacquisition.intf.CustomDeviceInfos"

    invoke-static {v0}, Lcom/tencent/bigdata/reflecttools/Reflect;->on(Ljava/lang/String;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object v0

    const-string v1, "getWifiInfo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bigdata/reflecttools/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bigdata/reflecttools/Reflect;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Lcom/tencent/bigdata/reflecttools/ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->showWarnMessage(Lcom/tencent/bigdata/reflecttools/ReflectException;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWifiTopN(Landroid/content/Context;I)Lorg/json/JSONArray;
    .locals 4

    :try_start_0
    const-string v0, "com.tencent.bigdata.customdataacquisition.intf.CustomDeviceInfos"

    invoke-static {v0}, Lcom/tencent/bigdata/reflecttools/Reflect;->on(Ljava/lang/String;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object v0

    const-string v1, "getWifiTopN"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bigdata/reflecttools/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/tencent/bigdata/reflecttools/Reflect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/bigdata/reflecttools/Reflect;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONArray;
    :try_end_0
    .catch Lcom/tencent/bigdata/reflecttools/ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->showWarnMessage(Lcom/tencent/bigdata/reflecttools/ReflectException;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isImportImplClass()Z
    .locals 2

    sget-object v0, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->ismportImplClassFlag:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->ismportImplClassFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    :try_start_0
    const-string v0, "com.tencent.bigdata.customdataacquisition.intf.CustomDeviceInfos"

    invoke-static {v0}, Lcom/tencent/bigdata/reflecttools/Reflect;->on(Ljava/lang/String;)Lcom/tencent/bigdata/reflecttools/Reflect;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->ismportImplClassFlag:Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/tencent/bigdata/reflecttools/ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "DataAcq"

    const-string v1, "isImportImplClass false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->ismportImplClassFlag:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private static showWarnMessage(Lcom/tencent/bigdata/reflecttools/ReflectException;)V
    .locals 3

    sget-boolean v0, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->isWarned:Z

    if-nez v0, :cond_0

    const-string v0, "DataAcq"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allow get DeviceInfos ? ReflectException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/bigdata/reflecttools/ReflectException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    sput-boolean p0, Lcom/tencent/bigdata/dataacquisition/CustomDeviceInfos;->isWarned:Z

    :cond_0
    return-void
.end method
