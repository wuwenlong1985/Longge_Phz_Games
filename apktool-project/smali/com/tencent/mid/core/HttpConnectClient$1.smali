.class Lcom/tencent/mid/core/HttpConnectClient$1;
.super Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;
.source "HttpConnectClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mid/core/HttpConnectClient;-><init>(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/mid/core/HttpConnectClient;


# direct methods
.method constructor <init>(Lcom/tencent/mid/core/HttpConnectClient;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/tencent/mid/core/HttpConnectClient$1;->this$0:Lcom/tencent/mid/core/HttpConnectClient;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .locals 3

    .line 158
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide/16 p1, 0x4e20

    :cond_0
    return-wide p1
.end method
