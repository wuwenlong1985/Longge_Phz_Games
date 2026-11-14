.class Lcom/baidu/location/b/an$b;
.super Lcom/baidu/location/h/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:J

.field final synthetic c:Lcom/baidu/location/b/an;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/location/b/an;)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/location/b/an$b;->c:Lcom/baidu/location/b/an;

    invoke-direct {p0}, Lcom/baidu/location/h/h;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/location/b/an$b;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/an$b;->e:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/baidu/location/b/an$b;->a:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/b/an$b;->b:J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/baidu/location/b/an$b;->el:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/b/an$b;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/b/an$b;->d:Z

    iput-object p1, p0, Lcom/baidu/location/b/an$b;->e:Ljava/lang/String;

    iput-wide p2, p0, Lcom/baidu/location/b/an$b;->b:J

    invoke-static {}, Lcom/baidu/location/b/al;->a()Lcom/baidu/location/b/al;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/b/al;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p2, Lcom/baidu/location/h/e;->n:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/location/b/an$b;->a(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object p1, Lcom/baidu/location/h/e;->n:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/baidu/location/b/an$b;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/location/b/an$b;->ej:Ljava/lang/String;

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/baidu/location/b/an$b;->ej:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/b/an$b;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/baidu/location/b/an$b;->el:Ljava/util/Map;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/location/b/an$b;->el:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/location/b/an$b;->d:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/b/an$b;->d:Z

    return v0
.end method

.method public b()V
    .locals 5

    invoke-static {}, Lcom/baidu/location/h/b;->a()Lcom/baidu/location/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/h/b;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&gnsst="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/baidu/location/b/an$b;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/location/b/w;->a()Lcom/baidu/location/b/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/b/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r|\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "null"

    :goto_0
    invoke-static {}, Lcom/baidu/location/b/w;->a()Lcom/baidu/location/b/w;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/location/b/an$b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/location/b/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r|\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "null"

    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/baidu/location/b/an$b;->el:Ljava/util/Map;

    const-string v3, "info"

    const-string v4, "utf-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/location/b/an$b;->el:Ljava/util/Map;

    const-string v2, "enl"

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
