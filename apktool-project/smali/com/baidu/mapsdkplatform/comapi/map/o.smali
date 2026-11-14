.class public Lcom/baidu/mapsdkplatform/comapi/map/o;
.super Ljava/lang/Object;
.source "LocalMap.java"


# static fields
.field private static final a:Ljava/lang/String; = "o"

.field private static c:Lcom/baidu/mapsdkplatform/comapi/map/o;

.field private static e:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

.field private d:Lcom/baidu/mapsdkplatform/comapi/map/t;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/mapsdkplatform/comapi/map/o;
    .locals 1

    .line 46
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/o;->c:Lcom/baidu/mapsdkplatform/comapi/map/o;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/o;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/o;-><init>()V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/map/o;->c:Lcom/baidu/mapsdkplatform/comapi/map/o;

    .line 48
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/o;->c:Lcom/baidu/mapsdkplatform/comapi/map/o;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/o;->g()V

    .line 50
    :cond_0
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/o;->c:Lcom/baidu/mapsdkplatform/comapi/map/o;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/map/o;)Lcom/baidu/mapsdkplatform/comapi/map/t;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->d:Lcom/baidu/mapsdkplatform/comapi/map/t;

    return-object p0
.end method

.method static synthetic f()Lcom/baidu/mapsdkplatform/comapi/map/o;
    .locals 1

    .line 27
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/o;->c:Lcom/baidu/mapsdkplatform/comapi/map/o;

    return-object v0
.end method

.method private g()V
    .locals 2

    .line 62
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/o;->h()V

    .line 63
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/t;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/t;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->d:Lcom/baidu/mapsdkplatform/comapi/map/t;

    .line 67
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/p;

    invoke-direct {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/map/p;-><init>(Lcom/baidu/mapsdkplatform/comapi/map/o;)V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/map/o;->e:Landroid/os/Handler;

    .line 78
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/o;->e:Landroid/os/Handler;

    const v1, 0xff09

    invoke-static {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/MessageCenter;->registMessage(ILandroid/os/Handler;)V

    return-void
.end method

.method private h()V
    .locals 22

    move-object/from16 v0, p0

    .line 83
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 84
    invoke-static {v1}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->initAppDirectory(Landroid/content/Context;)V

    .line 85
    new-instance v1, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-direct {v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;-><init>()V

    iput-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    .line 86
    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->Create()Z

    .line 87
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getAppSDCardPath()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getAppCachePath()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getAppSecondCachePath()Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getMapTmpStgMax()I

    move-result v16

    .line 93
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getDomTmpStgMax()I

    move-result v17

    .line 94
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getItsTmpStgMax()I

    move-result v18

    .line 95
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getSsgTmpStgMax()I

    move-result v19

    .line 97
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getDensityDPI()I

    move-result v5

    const/16 v6, 0xb4

    if-lt v5, v6, :cond_0

    const-string v5, "/h/"

    goto :goto_0

    :cond_0
    const-string v5, "/l/"

    .line 98
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/cfg"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/vmp"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/a/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/a/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/idrres/"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/tmp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/tmp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 112
    iget-object v5, v0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    .line 114
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getScreenWidth()I

    move-result v13

    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getScreenHeight()I

    move-result v14

    .line 115
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getDensityDPI()I

    move-result v15

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 112
    invoke-virtual/range {v5 .. v21}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)Z

    .line 119
    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnResume()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapsdkplatform/comapi/map/n;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 444
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnSchcityGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    const-string v0, ""

    .line 449
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 453
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 456
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_b

    .line 457
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string p1, "dataset"

    .line 460
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 461
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_3

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 465
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 466
    new-instance v4, Lcom/baidu/mapsdkplatform/comapi/map/n;

    invoke-direct {v4}, Lcom/baidu/mapsdkplatform/comapi/map/n;-><init>()V

    .line 467
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "id"

    .line 471
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x7d0

    if-le v6, v7, :cond_4

    const/16 v7, 0xb60

    if-eq v6, v7, :cond_4

    const/16 v7, 0xb5f

    if-eq v6, v7, :cond_4

    const/16 v7, 0x2328

    if-eq v6, v7, :cond_4

    goto :goto_2

    .line 477
    :cond_4
    iput v6, v4, Lcom/baidu/mapsdkplatform/comapi/map/n;->a:I

    const-string v6, "name"

    .line 478
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/baidu/mapsdkplatform/comapi/map/n;->b:Ljava/lang/String;

    const-string v6, "mapsize"

    .line 479
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/baidu/mapsdkplatform/comapi/map/n;->c:I

    const-string v6, "cty"

    .line 480
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/baidu/mapsdkplatform/comapi/map/n;->d:I

    const-string v6, "child"

    .line 482
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "child"

    .line 483
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 484
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    .line 488
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 489
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 490
    new-instance v8, Lcom/baidu/mapsdkplatform/comapi/map/n;

    invoke-direct {v8}, Lcom/baidu/mapsdkplatform/comapi/map/n;-><init>()V

    .line 491
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "id"

    .line 492
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/baidu/mapsdkplatform/comapi/map/n;->a:I

    const-string v10, "name"

    .line 493
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/baidu/mapsdkplatform/comapi/map/n;->b:Ljava/lang/String;

    const-string v10, "mapsize"

    .line 494
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/baidu/mapsdkplatform/comapi/map/n;->c:I

    const-string v10, "cty"

    .line 495
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/baidu/mapsdkplatform/comapi/map/n;->d:I

    .line 496
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 498
    :cond_6
    invoke-virtual {v4, v6}, Lcom/baidu/mapsdkplatform/comapi/map/n;->a(Ljava/util/ArrayList;)V

    .line 500
    :cond_7
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    return-object v0

    :cond_a
    :goto_3
    return-object v1

    :cond_b
    :goto_4
    return-object v1

    :catch_0
    move-exception p1

    .line 503
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1

    :cond_c
    :goto_5
    return-object v1

    :cond_d
    :goto_6
    return-object v1
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/map/s;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->d:Lcom/baidu/mapsdkplatform/comapi/map/t;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->d:Lcom/baidu/mapsdkplatform/comapi/map/t;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/t;->a(Lcom/baidu/mapsdkplatform/comapi/map/s;)V

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d0

    if-le p1, v0, :cond_1

    const/16 v0, 0xb60

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb5f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2328

    if-eq p1, v0, :cond_1

    return v1

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnRecordAdd(I)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public a(ZZ)Z
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnRecordImport(ZZ)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    .line 126
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/o;->e:Landroid/os/Handler;

    const v1, 0xff09

    invoke-static {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/MessageCenter;->unregistMessage(ILandroid/os/Handler;)V

    .line 128
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->releaseFromOfflineMap()Z

    const/4 v0, 0x0

    .line 129
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/map/o;->c:Lcom/baidu/mapsdkplatform/comapi/map/o;

    return-void
.end method

.method public b(Lcom/baidu/mapsdkplatform/comapi/map/s;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->d:Lcom/baidu/mapsdkplatform/comapi/map/t;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->d:Lcom/baidu/mapsdkplatform/comapi/map/t;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/t;->b(Lcom/baidu/mapsdkplatform/comapi/map/s;)V

    :cond_0
    return-void
.end method

.method public b(I)Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d0

    if-le p1, v0, :cond_1

    const/16 v0, 0xb60

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb5f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2328

    if-eq p1, v0, :cond_1

    return v1

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1, v1, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnRecordStart(IZI)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public c()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapsdkplatform/comapi/map/n;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnHotcityGet()Ljava/lang/String;

    move-result-object v0

    .line 330
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 333
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    const-string v0, "dataset"

    .line 337
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 338
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 341
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 342
    new-instance v5, Lcom/baidu/mapsdkplatform/comapi/map/n;

    invoke-direct {v5}, Lcom/baidu/mapsdkplatform/comapi/map/n;-><init>()V

    .line 343
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "id"

    .line 344
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/baidu/mapsdkplatform/comapi/map/n;->a:I

    const-string v7, "name"

    .line 345
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/mapsdkplatform/comapi/map/n;->b:Ljava/lang/String;

    const-string v7, "mapsize"

    .line 346
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/baidu/mapsdkplatform/comapi/map/n;->c:I

    const-string v7, "cty"

    .line 347
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/baidu/mapsdkplatform/comapi/map/n;->d:I

    const-string v7, "child"

    .line 349
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "child"

    .line 350
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 351
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    .line 355
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 356
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 357
    new-instance v9, Lcom/baidu/mapsdkplatform/comapi/map/n;

    invoke-direct {v9}, Lcom/baidu/mapsdkplatform/comapi/map/n;-><init>()V

    .line 358
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "id"

    .line 359
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/baidu/mapsdkplatform/comapi/map/n;->a:I

    const-string v11, "name"

    .line 360
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/baidu/mapsdkplatform/comapi/map/n;->b:Ljava/lang/String;

    const-string v11, "mapsize"

    .line 361
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/baidu/mapsdkplatform/comapi/map/n;->c:I

    const-string v11, "cty"

    .line 362
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/baidu/mapsdkplatform/comapi/map/n;->d:I

    .line 363
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 365
    :cond_4
    invoke-virtual {v5, v7}, Lcom/baidu/mapsdkplatform/comapi/map/n;->a(Ljava/util/ArrayList;)V

    .line 367
    :cond_5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v2

    :cond_8
    :goto_3
    return-object v1

    :catch_0
    move-exception v0

    .line 370
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method public c(I)Z
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1, v1, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnRecordSuspend(IZI)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public d()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapsdkplatform/comapi/map/n;",
            ">;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnSchcityGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 389
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "dataset"

    .line 390
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 391
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 394
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 395
    new-instance v5, Lcom/baidu/mapsdkplatform/comapi/map/n;

    invoke-direct {v5}, Lcom/baidu/mapsdkplatform/comapi/map/n;-><init>()V

    .line 396
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "id"

    .line 399
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x7d0

    if-le v7, v8, :cond_2

    const/16 v8, 0xb60

    if-eq v7, v8, :cond_2

    const/16 v8, 0xb5f

    if-eq v7, v8, :cond_2

    const/16 v8, 0x2328

    if-eq v7, v8, :cond_2

    goto :goto_2

    .line 405
    :cond_2
    iput v7, v5, Lcom/baidu/mapsdkplatform/comapi/map/n;->a:I

    const-string v7, "name"

    .line 406
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/baidu/mapsdkplatform/comapi/map/n;->b:Ljava/lang/String;

    const-string v7, "mapsize"

    .line 407
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/baidu/mapsdkplatform/comapi/map/n;->c:I

    const-string v7, "cty"

    .line 408
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/baidu/mapsdkplatform/comapi/map/n;->d:I

    const-string v7, "child"

    .line 409
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "child"

    .line 410
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 411
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    .line 415
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 416
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 417
    new-instance v9, Lcom/baidu/mapsdkplatform/comapi/map/n;

    invoke-direct {v9}, Lcom/baidu/mapsdkplatform/comapi/map/n;-><init>()V

    .line 418
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "id"

    .line 419
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/baidu/mapsdkplatform/comapi/map/n;->a:I

    const-string v11, "name"

    .line 420
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/baidu/mapsdkplatform/comapi/map/n;->b:Ljava/lang/String;

    const-string v11, "mapsize"

    .line 421
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/baidu/mapsdkplatform/comapi/map/n;->c:I

    const-string v11, "cty"

    .line 422
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/baidu/mapsdkplatform/comapi/map/n;->d:I

    .line 423
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 425
    :cond_4
    invoke-virtual {v5, v7}, Lcom/baidu/mapsdkplatform/comapi/map/n;->a(Ljava/util/ArrayList;)V

    .line 427
    :cond_5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v2

    :cond_8
    :goto_3
    return-object v1

    :catch_0
    return-object v1

    :catch_1
    return-object v1
.end method

.method public d(I)Z
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnRecordSuspend(IZI)Z

    move-result p1

    return p1
.end method

.method public e()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapsdkplatform/comapi/map/r;",
            ">;"
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnRecordGetAll()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v2, ""

    .line 581
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_4

    .line 586
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 589
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    const-string v0, "dataset"

    .line 593
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 594
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_3

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 597
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 598
    new-instance v5, Lcom/baidu/mapsdkplatform/comapi/map/r;

    invoke-direct {v5}, Lcom/baidu/mapsdkplatform/comapi/map/r;-><init>()V

    .line 599
    new-instance v6, Lcom/baidu/mapsdkplatform/comapi/map/q;

    invoke-direct {v6}, Lcom/baidu/mapsdkplatform/comapi/map/q;-><init>()V

    .line 600
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "id"

    .line 601
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->a:I

    const-string v8, "name"

    .line 602
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->b:Ljava/lang/String;

    const-string v8, "pinyin"

    .line 603
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->c:Ljava/lang/String;

    const-string v8, "mapoldsize"

    .line 604
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->h:I

    const-string v8, "ratio"

    .line 605
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->i:I

    const-string v8, "status"

    .line 606
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->l:I

    .line 607
    new-instance v8, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    const-string v9, "y"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "x"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    iput-object v8, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->g:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    const-string v8, "up"

    .line 610
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    iput-boolean v9, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->j:Z

    const-string v8, "lev"

    .line 611
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->e:I

    .line 613
    iget-boolean v8, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->j:Z

    if-eqz v8, :cond_5

    const-string v8, "mapsize"

    .line 614
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->k:I

    goto :goto_2

    .line 616
    :cond_5
    iput v3, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->k:I

    .line 619
    :goto_2
    invoke-virtual {v5, v6}, Lcom/baidu/mapsdkplatform/comapi/map/r;->a(Lcom/baidu/mapsdkplatform/comapi/map/q;)V

    .line 620
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    return-object v2

    :cond_7
    :goto_3
    return-object v1

    :catch_0
    move-exception v0

    .line 623
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1

    :cond_8
    :goto_4
    return-object v1
.end method

.method public e(I)Z
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnRecordRemove(IZ)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public f(I)Z
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d0

    if-le p1, v0, :cond_1

    const/16 v0, 0xb60

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb5f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2328

    if-eq p1, v0, :cond_1

    return v1

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnRecordReload(IZ)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public g(I)Lcom/baidu/mapsdkplatform/comapi/map/r;
    .locals 6

    .line 516
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-gez p1, :cond_0

    goto/16 :goto_4

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnRecordGetAt(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v0, ""

    .line 520
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 525
    :cond_1
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/r;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/r;-><init>()V

    .line 526
    new-instance v2, Lcom/baidu/mapsdkplatform/comapi/map/q;

    invoke-direct {v2}, Lcom/baidu/mapsdkplatform/comapi/map/q;-><init>()V

    .line 529
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_6

    .line 530
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string p1, "id"

    .line 534
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v4, 0x7d0

    if-le p1, v4, :cond_3

    const/16 v4, 0xb60

    if-eq p1, v4, :cond_3

    const/16 v4, 0xb5f

    if-eq p1, v4, :cond_3

    const/16 v4, 0x2328

    if-eq p1, v4, :cond_3

    return-object v1

    .line 540
    :cond_3
    iput p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->a:I

    const-string p1, "name"

    .line 541
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->b:Ljava/lang/String;

    const-string p1, "pinyin"

    .line 542
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->c:Ljava/lang/String;

    const-string p1, "headchar"

    .line 543
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->d:Ljava/lang/String;

    const-string p1, "mapoldsize"

    .line 544
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->h:I

    const-string p1, "ratio"

    .line 545
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->i:I

    const-string p1, "status"

    .line 546
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->l:I

    .line 547
    new-instance p1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    const-string v4, "y"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "x"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p1, v4, v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    iput-object p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->g:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    const-string p1, "up"

    .line 551
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->j:Z

    const-string p1, "lev"

    .line 552
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->e:I

    .line 554
    iget-boolean p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->j:Z

    if-eqz p1, :cond_5

    const-string p1, "mapsize"

    .line 555
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->k:I

    goto :goto_1

    .line 557
    :cond_5
    iput v4, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->k:I

    :goto_1
    const-string p1, "ver"

    .line 560
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->f:I

    .line 561
    invoke-virtual {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/r;->a(Lcom/baidu/mapsdkplatform/comapi/map/q;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_6
    :goto_2
    return-object v1

    :catch_0
    move-exception p1

    .line 563
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1

    :cond_7
    :goto_3
    return-object v1

    :cond_8
    :goto_4
    return-object v1
.end method
