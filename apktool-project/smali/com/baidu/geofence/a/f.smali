.class public Lcom/baidu/geofence/a/f;
.super Lcom/baidu/location/h/h;

# interfaces
.implements Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/geofence/a/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/baidu/geofence/model/DPoint;

.field private g:F

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Lcom/baidu/geofence/GeoFenceListener;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/geofence/GeoFence;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/content/Context;

.field private o:Lcom/baidu/geofence/a/f$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/baidu/geofence/GeoFenceListener;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/baidu/geofence/GeoFenceListener;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/geofence/GeoFence;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/baidu/location/h/h;-><init>()V

    const-string v0, "https://api.map.baidu.com/sdkproxy/v2/lbs_locsdk/place/v2/search"

    iput-object v0, p0, Lcom/baidu/geofence/a/f;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/geofence/a/f;->j:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/geofence/a/f;->el:Ljava/util/Map;

    iput-boolean p2, p0, Lcom/baidu/geofence/a/f;->e:Z

    iput-object p4, p0, Lcom/baidu/geofence/a/f;->m:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/baidu/geofence/a/f;->k:Lcom/baidu/geofence/GeoFenceListener;

    iput-object p1, p0, Lcom/baidu/geofence/a/f;->n:Landroid/content/Context;

    invoke-static {p1}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/LBSAuthManager;

    move-result-object p1

    const-string p2, "lbs_locsdk"

    const/4 p3, 0x0

    invoke-virtual {p1, v0, p2, p3, p0}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->authenticate(ZLjava/lang/String;Ljava/util/Hashtable;Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;)I

    return-void
.end method

.method static synthetic a(Lcom/baidu/geofence/a/f;)Lcom/baidu/geofence/GeoFenceListener;
    .locals 0

    iget-object p0, p0, Lcom/baidu/geofence/a/f;->k:Lcom/baidu/geofence/GeoFenceListener;

    return-object p0
.end method

.method private a()V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/geofence/a/f;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/geofence/a/f;->j:Z

    invoke-static {}, Lcom/baidu/location/b/al;->a()Lcom/baidu/location/b/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/al;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/baidu/geofence/a/f;->a(Ljava/util/concurrent/ExecutorService;)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/baidu/geofence/a/f;->c(Z)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/geofence/a/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/baidu/geofence/a/f;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/baidu/geofence/a/f;)Lcom/baidu/geofence/a/f$a;
    .locals 0

    iget-object p0, p0, Lcom/baidu/geofence/a/f;->o:Lcom/baidu/geofence/a/f$a;

    return-object p0
.end method


# virtual methods
.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/baidu/geofence/a/f;->g:F

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/geofence/a/f;->h:I

    return-void
.end method

.method public a(Lcom/baidu/geofence/a/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/geofence/a/f;->o:Lcom/baidu/geofence/a/f$a;

    return-void
.end method

.method public a(Lcom/baidu/geofence/model/DPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/geofence/a/f;->f:Lcom/baidu/geofence/model/DPoint;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/geofence/a/f;->l:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 20

    move-object/from16 v1, p0

    if-eqz p1, :cond_0

    iget-object v3, v1, Lcom/baidu/geofence/a/f;->ej:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/baidu/geofence/GeoFenceClient;->getHandlerInstance()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/baidu/geofence/a/g;

    invoke-direct {v4, v1}, Lcom/baidu/geofence/a/g;-><init>(Lcom/baidu/geofence/a/f;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/baidu/geofence/GeoFenceClient;->getHandlerInstance()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/baidu/geofence/a/h;

    invoke-direct {v4, v1}, Lcom/baidu/geofence/a/h;-><init>(Lcom/baidu/geofence/a/f;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    if-eqz p1, :cond_c

    iget-object v2, v1, Lcom/baidu/geofence/a/f;->ej:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/baidu/geofence/a/f;->ej:Ljava/lang/String;

    iget-boolean v4, v1, Lcom/baidu/geofence/a/f;->eq:Z

    if-eqz v4, :cond_2

    iget-object v2, v1, Lcom/baidu/geofence/a/f;->n:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/LBSAuthManager;

    move-result-object v2

    iget-object v4, v1, Lcom/baidu/geofence/a/f;->ej:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->decodeAESMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "status"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v7, "results"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "results"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_9

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v8, v10, :cond_8

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "location"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_6

    const-string v12, "lat"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-string v14, "lng"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    iget-object v3, v1, Lcom/baidu/geofence/a/f;->m:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/baidu/geofence/a/f;->m:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v1, Lcom/baidu/geofence/a/f;->m:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lcom/baidu/geofence/GeoFence;

    invoke-virtual {v4}, Lcom/baidu/geofence/GeoFence;->getType()I

    move-result v5

    move-object/from16 v17, v3

    const/16 v3, 0x16

    if-ne v5, v3, :cond_3

    invoke-virtual {v4}, Lcom/baidu/geofence/GeoFence;->getPoiItem()Lcom/baidu/geofence/PoiItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/geofence/PoiItem;->getLatitude()D

    move-result-wide v18

    cmpl-double v3, v18, v12

    if-nez v3, :cond_3

    invoke-virtual {v4}, Lcom/baidu/geofence/GeoFence;->getPoiItem()Lcom/baidu/geofence/PoiItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/geofence/PoiItem;->getLongitude()D

    move-result-wide v3

    cmpl-double v5, v3, v14

    if-nez v5, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v3, v17

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_6

    new-instance v3, Lcom/baidu/geofence/PoiItem;

    invoke-direct {v3}, Lcom/baidu/geofence/PoiItem;-><init>()V

    const-string v4, "lat"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/baidu/geofence/PoiItem;->setLatitude(D)V

    const-string v4, "lng"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/baidu/geofence/PoiItem;->setLongitude(D)V

    const-string v4, "city"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/geofence/PoiItem;->setCity(Ljava/lang/String;)V

    const-string v4, "province"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/geofence/PoiItem;->setProvince(Ljava/lang/String;)V

    const-string v4, "name"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/geofence/PoiItem;->setPoiName(Ljava/lang/String;)V

    const-string v4, "area"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/geofence/PoiItem;->setAdName(Ljava/lang/String;)V

    const-string v4, "address"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/geofence/PoiItem;->setAddress(Ljava/lang/String;)V

    const-string v4, "uid"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/geofence/PoiItem;->setPoiId(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/baidu/geofence/a/f;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/baidu/geofence/PoiItem;->setPoiType(Ljava/lang/String;)V

    const-string v4, "telephone"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/geofence/PoiItem;->setTel(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    new-instance v3, Lcom/baidu/geofence/PoiItem;

    invoke-direct {v3}, Lcom/baidu/geofence/PoiItem;-><init>()V

    invoke-virtual {v3, v12, v13}, Lcom/baidu/geofence/PoiItem;->setLatitude(D)V

    invoke-virtual {v3, v14, v15}, Lcom/baidu/geofence/PoiItem;->setLongitude(D)V

    const-string v4, "city"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/geofence/PoiItem;->setCity(Ljava/lang/String;)V

    const-string v4, "province"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/geofence/PoiItem;->setProvince(Ljava/lang/String;)V

    const-string v4, "name"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/geofence/PoiItem;->setPoiName(Ljava/lang/String;)V

    const-string v4, "area"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/geofence/PoiItem;->setAdName(Ljava/lang/String;)V

    const-string v4, "address"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/geofence/PoiItem;->setAddress(Ljava/lang/String;)V

    const-string v4, "uid"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/geofence/PoiItem;->setPoiId(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/baidu/geofence/a/f;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/baidu/geofence/PoiItem;->setPoiType(Ljava/lang/String;)V

    const-string v4, "telephone"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/geofence/PoiItem;->setTel(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    :cond_6
    iget v3, v1, Lcom/baidu/geofence/a/f;->h:I

    if-ne v9, v3, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_4
    invoke-static {}, Lcom/baidu/geofence/GeoFenceClient;->getHandlerInstance()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/baidu/geofence/a/i;

    invoke-direct {v4, v1, v2, v7}, Lcom/baidu/geofence/a/i;-><init>(Lcom/baidu/geofence/a/f;ILjava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_9
    iget-object v2, v1, Lcom/baidu/geofence/a/f;->k:Lcom/baidu/geofence/GeoFenceListener;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/baidu/geofence/a/f;->k:Lcom/baidu/geofence/GeoFenceListener;

    iget-object v3, v1, Lcom/baidu/geofence/a/f;->l:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-interface {v2, v4, v5, v3}, Lcom/baidu/geofence/GeoFenceListener;->onGeoFenceCreateFinished(Ljava/util/List;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    iget-object v3, v1, Lcom/baidu/geofence/a/f;->k:Lcom/baidu/geofence/GeoFenceListener;

    if-eqz v3, :cond_b

    iget-object v3, v1, Lcom/baidu/geofence/a/f;->k:Lcom/baidu/geofence/GeoFenceListener;

    iget-object v4, v1, Lcom/baidu/geofence/a/f;->l:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-interface {v3, v5, v6, v4}, Lcom/baidu/geofence/GeoFenceListener;->onGeoFenceCreateFinished(Ljava/util/List;ILjava/lang/String;)V

    :cond_b
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_c
    :goto_5
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/baidu/geofence/a/f;->j:Z

    return-void
.end method

.method public b()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "query"

    iget-object v3, p0, Lcom/baidu/geofence/a/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "token"

    iget-object v3, p0, Lcom/baidu/geofence/a/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tag"

    iget-object v3, p0, Lcom/baidu/geofence/a/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "output"

    const-string v3, "json"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "page_size"

    const-string v3, "20"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ret_coordtype"

    const-string v3, "gcj02ll"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v2, "query="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/geofence/a/f;->b:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&output="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "json"

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&ret_coordtype="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "gcj02ll"

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/geofence/a/f;->c:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&tag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/geofence/a/f;->d:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&page_size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "20"

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    iget-boolean v2, p0, Lcom/baidu/geofence/a/f;->e:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    :try_start_1
    const-string v3, "&location="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/baidu/geofence/a/f;->f:Lcom/baidu/geofence/model/DPoint;

    invoke-virtual {v4}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/baidu/geofence/a/f;->f:Lcom/baidu/geofence/model/DPoint;

    invoke-virtual {v4}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "&coord_type="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "&radius="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/baidu/geofence/a/f;->g:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_1
    const-string v3, "location"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/baidu/geofence/a/f;->f:Lcom/baidu/geofence/model/DPoint;

    invoke-virtual {v5}, Lcom/baidu/geofence/model/DPoint;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/baidu/geofence/a/f;->f:Lcom/baidu/geofence/model/DPoint;

    invoke-virtual {v5}, Lcom/baidu/geofence/model/DPoint;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "coord_type"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "radius"

    iget v3, p0, Lcom/baidu/geofence/a/f;->g:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_0
    const-string v2, "&region="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_2
    iget-object v2, p0, Lcom/baidu/geofence/a/f;->i:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_3
    const-string v2, "region"

    iget-object v3, p0, Lcom/baidu/geofence/a/f;->i:Ljava/lang/String;

    goto :goto_2

    :goto_4
    const-string v2, "&"

    invoke-static {v1, v2}, Lcom/baidu/geofence/a/a;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&sign="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.map.baidu.com/sdkproxy/v2/lbs_locsdk/place/v2/search?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/geofence/a/f;->eh:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/geofence/a/f;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/geofence/a/f;->d:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/geofence/a/f;->i:Ljava/lang/String;

    return-void
.end method

.method public onAuthResult(ILjava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/baidu/geofence/a/f;->k:Lcom/baidu/geofence/GeoFenceListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/geofence/a/f;->k:Lcom/baidu/geofence/GeoFenceListener;

    const/4 v0, 0x0

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/baidu/geofence/a/f;->l:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/baidu/geofence/GeoFenceListener;->onGeoFenceCreateFinished(Ljava/util/List;ILjava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "token"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "token"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/geofence/a/f;->c:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/h/s;->b()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/baidu/geofence/a/f;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/baidu/geofence/a/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method
