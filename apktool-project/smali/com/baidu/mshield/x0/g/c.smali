.class public Lcom/baidu/mshield/x0/g/c;
.super Lcom/baidu/mshield/b/d/a;
.source "ReportEngine.java"


# instance fields
.field public c:Lcom/baidu/mshield/x0/g/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/baidu/mshield/b/d/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 2
    iput-object p1, p0, Lcom/baidu/mshield/b/d/a;->b:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/baidu/mshield/x0/g/b;->a(Landroid/content/Context;)Lcom/baidu/mshield/x0/g/b;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mshield/x0/g/c;->c:Lcom/baidu/mshield/x0/g/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "j="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/baidu/mshield/x0/b/d;->a()[B

    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/baidu/mshield/b/d/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/mshield/utility/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mshield/b/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 11
    invoke-static {v0, v2}, Lcom/baidu/mshield/b/f/d;->c([B[B)[B

    move-result-object v2

    const/4 v3, 0x0

    .line 12
    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    iget-object v4, p0, Lcom/baidu/mshield/x0/g/c;->c:Lcom/baidu/mshield/x0/g/b;

    invoke-virtual {v4, v2}, Lcom/baidu/mshield/x0/g/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    iget-object v4, p0, Lcom/baidu/mshield/x0/g/c;->c:Lcom/baidu/mshield/x0/g/b;

    invoke-virtual {v4, v0, p1}, Lcom/baidu/mshield/x0/g/b;->a([BLjava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p1, :cond_1

    return v1

    .line 27
    :cond_1
    :try_start_1
    invoke-virtual {p0, v2, p1}, Lcom/baidu/mshield/b/d/a;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    .line 37
    :cond_2
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "response"

    .line 38
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v1, :cond_3

    return v1

    :catchall_0
    move-exception p1

    .line 43
    invoke-static {p1}, Lcom/baidu/mshield/x0/b/d;->a(Ljava/lang/Throwable;)V

    :cond_3
    return v1

    :catchall_1
    move-exception p1

    .line 44
    invoke-static {p1}, Lcom/baidu/mshield/x0/b/d;->a(Ljava/lang/Throwable;)V

    return v3

    :catchall_2
    move-exception p1

    .line 45
    invoke-static {p1}, Lcom/baidu/mshield/x0/b/d;->a(Ljava/lang/Throwable;)V

    return v1
.end method
