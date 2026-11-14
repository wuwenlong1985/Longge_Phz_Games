.class Lcom/baidu/b/b/e$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/b/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:[B

.field b:B

.field c:[B


# direct methods
.method public constructor <init>([BB[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/b/b/e$d;->a:[B

    iput-byte p2, p0, Lcom/baidu/b/b/e$d;->b:B

    iput-object p3, p0, Lcom/baidu/b/b/e$d;->c:[B

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/b/h$a;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/b/b/e$d;->a:[B

    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/baidu/b/d/b;->a([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    new-array v3, v3, [B

    const/4 v4, 0x0

    iget-byte v5, p0, Lcom/baidu/b/b/e$d;->b:B

    aput-byte v5, v3, v4

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/b/b/e$d;->c:[B

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/b/b/e$d;->c:[B

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    invoke-static {v1, v2, v3}, Lcom/baidu/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/b/h$a;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method
