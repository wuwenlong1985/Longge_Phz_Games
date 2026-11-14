.class public Lcom/tencent/mid/util/Env;
.super Ljava/lang/Object;
.source "Env.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mid/util/Env$BasicEnv;
    }
.end annotation


# static fields
.field private static attr_json:Lorg/json/JSONObject;

.field static basicEnv:Lcom/tencent/mid/util/Env$BasicEnv;

.field private static logger:Lcom/tencent/mid/util/Logger;


# instance fields
.field conn:Ljava/lang/String;

.field tel_network:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 159
    invoke-static {}, Lcom/tencent/mid/util/Util;->getLogger()Lcom/tencent/mid/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/mid/util/Env;->logger:Lcom/tencent/mid/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/tencent/mid/util/Env;->tel_network:Ljava/lang/Integer;

    .line 167
    iput-object v0, p0, Lcom/tencent/mid/util/Env;->conn:Ljava/lang/String;

    .line 197
    :try_start_0
    invoke-static {p1}, Lcom/tencent/mid/util/Env;->getBasicEnv(Landroid/content/Context;)Lcom/tencent/mid/util/Env$BasicEnv;

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 199
    invoke-static {v0}, Lcom/tencent/bigdata/dataacquisition/DeviceInfos;->getTelephonyNetworkType(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/util/Env;->tel_network:Ljava/lang/Integer;

    .line 201
    invoke-static {p1}, Lcom/tencent/bigdata/dataacquisition/DeviceInfos;->getLinkedWay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mid/util/Env;->conn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 203
    sget-object v0, Lcom/tencent/mid/util/Env;->logger:Lcom/tencent/mid/util/Logger;

    invoke-virtual {v0, p1}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static appendEnvAttr(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 176
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 177
    sget-object p1, Lcom/tencent/mid/util/Env;->attr_json:Lorg/json/JSONObject;

    if-nez p1, :cond_1

    .line 178
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    sput-object p1, Lcom/tencent/mid/util/Env;->attr_json:Lorg/json/JSONObject;

    .line 180
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 181
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 183
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 184
    sget-object v0, Lcom/tencent/mid/util/Env;->attr_json:Lorg/json/JSONObject;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    return-void
.end method

.method static declared-synchronized getBasicEnv(Landroid/content/Context;)Lcom/tencent/mid/util/Env$BasicEnv;
    .locals 3

    const-class v0, Lcom/tencent/mid/util/Env;

    monitor-enter v0

    .line 189
    :try_start_0
    sget-object v1, Lcom/tencent/mid/util/Env;->basicEnv:Lcom/tencent/mid/util/Env$BasicEnv;

    if-nez v1, :cond_0

    .line 190
    new-instance v1, Lcom/tencent/mid/util/Env$BasicEnv;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tencent/mid/util/Env$BasicEnv;-><init>(Landroid/content/Context;Lcom/tencent/mid/util/Env$1;)V

    sput-object v1, Lcom/tencent/mid/util/Env;->basicEnv:Lcom/tencent/mid/util/Env$BasicEnv;

    .line 192
    :cond_0
    sget-object p0, Lcom/tencent/mid/util/Env;->basicEnv:Lcom/tencent/mid/util/Env$BasicEnv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 188
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public encode(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 208
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 210
    :try_start_0
    sget-object v1, Lcom/tencent/mid/util/Env;->basicEnv:Lcom/tencent/mid/util/Env$BasicEnv;

    if-eqz v1, :cond_0

    .line 211
    sget-object v1, Lcom/tencent/mid/util/Env;->basicEnv:Lcom/tencent/mid/util/Env$BasicEnv;

    invoke-virtual {v1, v0}, Lcom/tencent/mid/util/Env$BasicEnv;->encode(Lorg/json/JSONObject;)V

    :cond_0
    const-string v1, "cn"

    .line 214
    iget-object v2, p0, Lcom/tencent/mid/util/Env;->conn:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/tencent/mid/util/Env;->tel_network:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v1, "tn"

    .line 216
    iget-object v2, p0, Lcom/tencent/mid/util/Env;->tel_network:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "ev"

    .line 218
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    sget-object v0, Lcom/tencent/mid/util/Env;->attr_json:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/mid/util/Env;->attr_json:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "eva"

    .line 220
    sget-object v1, Lcom/tencent/mid/util/Env;->attr_json:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 223
    sget-object v0, Lcom/tencent/mid/util/Env;->logger:Lcom/tencent/mid/util/Logger;

    invoke-virtual {v0, p1}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
