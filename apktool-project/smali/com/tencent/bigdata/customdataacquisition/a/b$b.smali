.class Lcom/tencent/bigdata/customdataacquisition/a/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bigdata/customdataacquisition/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/tencent/bigdata/customdataacquisition/a/b$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/wifi/ScanResult;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$b;->a:Ljava/lang/String;

    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$b;->b:I

    iget-object p1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$b;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$b;->a:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$b;->b:I

    iput-object p3, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/bigdata/customdataacquisition/a/b$b;)I
    .locals 1

    iget p1, p1, Lcom/tencent/bigdata/customdataacquisition/a/b$b;->b:I

    iget v0, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$b;->b:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public a()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "bs"

    iget-object v2, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dBm"

    iget v2, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$b;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ss"

    iget-object v2, p0, Lcom/tencent/bigdata/customdataacquisition/a/b$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, ""

    invoke-static {v2, v1}, Lcom/tencent/bigdata/customdataacquisition/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/bigdata/customdataacquisition/a/b$b;

    invoke-virtual {p0, p1}, Lcom/tencent/bigdata/customdataacquisition/a/b$b;->a(Lcom/tencent/bigdata/customdataacquisition/a/b$b;)I

    move-result p1

    return p1
.end method
