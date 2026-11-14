.class Lcom/tencent/bigdata/customdataacquisition/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bigdata/customdataacquisition/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:D

.field private g:D

.field private h:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/bigdata/customdataacquisition/a/b$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bigdata/customdataacquisition/a/b$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/bigdata/customdataacquisition/a/b$a;D)D
    .locals 0

    iput-wide p1, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->f:D

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->a:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/bigdata/customdataacquisition/a/b$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/bigdata/customdataacquisition/a/b$a;D)D
    .locals 0

    iput-wide p1, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->g:D

    return-wide p1
.end method

.method static synthetic b(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->b:I

    return p1
.end method

.method static synthetic c(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->c:I

    return p1
.end method

.method static synthetic d(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->d:I

    return p1
.end method

.method static synthetic e(Lcom/tencent/bigdata/customdataacquisition/a/b$a;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->h:I

    return p1
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "cid"

    iget v2, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mcc"

    iget v2, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "lac"

    iget v2, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mnc"

    iget v2, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "type"

    iget-object v2, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "nt"

    iget v2, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-wide v1, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->f:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_0

    const-string v1, "lat"

    iget-wide v5, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->f:D

    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_0
    iget-wide v1, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->g:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_1

    const-string v1, "lng"

    iget-wide v2, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->g:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellIDInfo toJSONObject error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bigdata/customdataacquisition/b/a;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "{\"cellId\":%d,\"mcc\":%d,\"lac\":%d,\"mnc\":%d,\"type\":%s,\"lat\":%f,\"lng\":%f}"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->f:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$a;->g:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method
