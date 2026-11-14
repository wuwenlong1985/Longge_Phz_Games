.class Lcom/baidu/c/g$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field final synthetic b:Lcom/baidu/c/g;

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/c/g$d;

.field private e:Lcom/baidu/c/g$a;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/baidu/c/g;Ljava/lang/String;Lcom/baidu/c/g$d;Lcom/baidu/c/g$a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/c/g$b;->d:Lcom/baidu/c/g$d;

    iput-object p4, p0, Lcom/baidu/c/g$b;->e:Lcom/baidu/c/g$a;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/c/g$b;->a:Z

    iput-boolean p1, p0, Lcom/baidu/c/g$b;->f:Z

    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/baidu/c/g$b;->f:Z

    const-string v0, "Using IDCServerIP(%s)"

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-static {v0, p2}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/baidu/c/g$d;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    add-long v6, v2, v4

    iget-object v2, v0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {v2}, Lcom/baidu/c/g;->e(Lcom/baidu/c/g;)J

    move-result-wide v2

    add-long v4, v6, v2

    iget-object v2, v0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {v2, v1, v4, v5}, Lcom/baidu/c/g;->a(Lcom/baidu/c/g;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-static {}, Lcom/baidu/c/c;->b()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    iget-object v3, v0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {v3}, Lcom/baidu/c/g;->f(Lcom/baidu/c/g;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {v6}, Lcom/baidu/c/g;->g(Lcom/baidu/c/g;)I

    move-result v6

    invoke-direct {v0, v3, v6}, Lcom/baidu/c/g$b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {v3}, Lcom/baidu/c/g;->h(Lcom/baidu/c/g;)Ljava/lang/String;

    move-result-object v3

    iput-boolean v8, v0, Lcom/baidu/c/g$b;->f:Z

    const-string v6, "Using BGPServerIp(%s)"

    new-array v9, v7, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {v10}, Lcom/baidu/c/g;->h(Lcom/baidu/c/g;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v6, v9}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/baidu/c/c;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "dual_stack"

    goto :goto_0

    :cond_2
    const-string v6, "ipv4"

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/baidu/c/c;->c()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v3, v0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {v3}, Lcom/baidu/c/g;->i(Lcom/baidu/c/g;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {v6}, Lcom/baidu/c/g;->j(Lcom/baidu/c/g;)I

    move-result v6

    invoke-direct {v0, v3, v6}, Lcom/baidu/c/g$b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {v3}, Lcom/baidu/c/g;->k(Lcom/baidu/c/g;)Ljava/lang/String;

    move-result-object v3

    iput-boolean v8, v0, Lcom/baidu/c/g$b;->f:Z

    const-string v6, "Using BGPServerIp(%s)"

    new-array v9, v7, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {v10}, Lcom/baidu/c/g;->k(Lcom/baidu/c/g;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v6, v9}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const-string v6, "ipv6"

    :goto_0
    sget-object v9, Lcom/baidu/c/g$d;->b:Lcom/baidu/c/g$d;

    move-object/from16 v10, p2

    invoke-virtual {v10, v9}, Lcom/baidu/c/g$d;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v10, 0x8

    if-eqz v9, :cond_5

    const-string v9, "%s/v4/resolve?account_id=%s&tag=%s&sign=%s&t=%d&sdk_ver=%s&os_type=%s&alt_server_ip=true&type=%s"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v8

    iget-object v3, v0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {v3}, Lcom/baidu/c/g;->l(Lcom/baidu/c/g;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v7

    aput-object v1, v10, v15

    aput-object v2, v10, v14

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v10, v13

    const-string v1, "1.3"

    aput-object v1, v10, v12

    const-string v1, "android"

    aput-object v1, v10, v11

    const/4 v1, 0x7

    aput-object v6, v10, v1

    :goto_1
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    const-string v9, "%s/v4/resolve?account_id=%s&dn=%s&sign=%s&t=%d&sdk_ver=%s&os_type=%s&alt_server_ip=true&type=%s"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v8

    iget-object v3, v0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {v3}, Lcom/baidu/c/g;->l(Lcom/baidu/c/g;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v7

    aput-object v1, v10, v15

    aput-object v2, v10, v14

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v10, v13

    const-string v1, "1.3"

    aput-object v1, v10, v12

    const-string v1, "android"

    aput-object v1, v10, v11

    const/4 v1, 0x7

    aput-object v6, v10, v1

    goto :goto_1

    :goto_2
    iget-object v2, v0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {v2}, Lcom/baidu/c/g;->m(Lcom/baidu/c/g;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "https://%s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v8

    :goto_3
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_6
    const-string v2, "http://%s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v8

    goto :goto_3

    return-object v1

    :cond_7
    return-object v3
.end method

.method private a()V
    .locals 7

    iget-object v0, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/c/g$b;->d:Lcom/baidu/c/g$d;

    invoke-direct {p0, v0, v1}, Lcom/baidu/c/g$b;->a(Ljava/lang/String;Lcom/baidu/c/g$d;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Request url is :%s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/c/g$b;->e:Lcom/baidu/c/g$a;

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/baidu/c/g$b;->d:Lcom/baidu/c/g$d;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v5, v6}, Lcom/baidu/c/g$a;->a(ILcom/baidu/c/g$d;Ljava/util/Map;Ljava/lang/String;)V

    const-string v0, "Httpdns request failed for  %s(%s), get url error"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/c/g$b;->d:Lcom/baidu/c/g$d;

    invoke-virtual {v3}, Lcom/baidu/c/g$d;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/baidu/c/g$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 13

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {p1}, Lcom/baidu/c/g;->m(Lcom/baidu/c/g;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    const-string v7, "Host"

    const-string v8, "httpdns.baidubce.com"

    invoke-virtual {p1, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/c/g;->g()Lcom/baidu/c/g$c;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    const-string v7, "GET"

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v7, 0x7530

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v7, "connection"

    const-string v8, "Keep-Alive"

    invoke-virtual {p1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Accept-Encoding"

    const-string v8, "gzip, deflate"

    invoke-virtual {p1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0x190

    if-lt v7, v8, :cond_1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    :goto_1
    if-eqz v8, :cond_b

    iget-object v9, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {v9, v8, p1}, Lcom/baidu/c/g;->a(Lcom/baidu/c/g;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Response data is : %s"

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v8, v10, v6

    invoke-static {v9, v10}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v8, :cond_5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    iget-boolean v8, p0, Lcom/baidu/c/g$b;->f:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/baidu/c/g;->a(Lcom/baidu/c/g;Ljava/lang/Boolean;)V

    const-string v2, "Httpdns request failed for %s(%s), get empty response data"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/baidu/c/g$b;->d:Lcom/baidu/c/g$d;

    invoke-virtual {v9}, Lcom/baidu/c/g$d;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    iget-object v9, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    aput-object v9, v8, v1

    invoke-static {v2, v8}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/baidu/c/g$b;->e:Lcom/baidu/c/g$a;

    iget-object v8, p0, Lcom/baidu/c/g$b;->d:Lcom/baidu/c/g$d;

    iget-object v9, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    invoke-interface {v2, v4, v8, v5, v9}, Lcom/baidu/c/g$a;->a(ILcom/baidu/c/g$d;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/baidu/c/g$b;->f:Z

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/baidu/c/c;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {p1, v6}, Lcom/baidu/c/g;->a(Lcom/baidu/c/g;I)I

    return-void

    :cond_3
    invoke-static {}, Lcom/baidu/c/c;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {p1, v6}, Lcom/baidu/c/g;->b(Lcom/baidu/c/g;I)I

    :cond_4
    return-void

    :cond_5
    :try_start_3
    iget-object v9, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    iget-object v10, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    iget-object v11, p0, Lcom/baidu/c/g$b;->d:Lcom/baidu/c/g$d;

    invoke-virtual {v9, v8, v10, v11}, Lcom/baidu/c/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/c/g$d;)Ljava/util/Map;

    move-result-object v9

    const-string v10, "isSignExpired"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    iput-boolean v1, p0, Lcom/baidu/c/g$b;->a:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/baidu/c/g$b;->f:Z

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/baidu/c/c;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {p1, v6}, Lcom/baidu/c/g;->a(Lcom/baidu/c/g;I)I

    return-void

    :cond_7
    invoke-static {}, Lcom/baidu/c/c;->c()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {p1, v6}, Lcom/baidu/c/g;->b(Lcom/baidu/c/g;I)I

    :cond_8
    return-void

    :cond_9
    :try_start_4
    const-string v10, "isMsgOK"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0xc8

    if-ne v7, v9, :cond_a

    iget-object v7, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    iget-object v9, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/baidu/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    move-object v0, v7

    goto :goto_2

    :cond_a
    iget-object v7, p0, Lcom/baidu/c/g$b;->e:Lcom/baidu/c/g$a;

    iget-object v8, p0, Lcom/baidu/c/g$b;->d:Lcom/baidu/c/g$d;

    iget-object v9, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    invoke-interface {v7, v4, v8, v5, v9}, Lcom/baidu/c/g$a;->a(ILcom/baidu/c/g$d;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v2, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    iget-boolean v8, p0, Lcom/baidu/c/g$b;->f:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/baidu/c/g;->a(Lcom/baidu/c/g;Ljava/lang/Boolean;)V

    const-string v2, "Httpdns request failed for %s(%s), get null response stream"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/baidu/c/g$b;->d:Lcom/baidu/c/g$d;

    invoke-virtual {v9}, Lcom/baidu/c/g$d;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    iget-object v9, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    aput-object v9, v8, v1

    invoke-static {v2, v8}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/baidu/c/g$b;->e:Lcom/baidu/c/g$a;

    iget-object v8, p0, Lcom/baidu/c/g$b;->d:Lcom/baidu/c/g$d;

    iget-object v9, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    invoke-interface {v2, v4, v8, v5, v9}, Lcom/baidu/c/g$a;->a(ILcom/baidu/c/g$d;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v2, v7

    :goto_2
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-boolean p1, p0, Lcom/baidu/c/g$b;->f:Z

    if-eqz p1, :cond_14

    invoke-static {}, Lcom/baidu/c/c;->b()Z

    move-result p1

    if-eqz p1, :cond_d

    :goto_3
    iget-object p1, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {p1, v6}, Lcom/baidu/c/g;->a(Lcom/baidu/c/g;I)I

    goto/16 :goto_8

    :cond_d
    invoke-static {}, Lcom/baidu/c/c;->c()Z

    move-result p1

    if-eqz p1, :cond_14

    :goto_4
    iget-object p1, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {p1, v6}, Lcom/baidu/c/g;->b(Lcom/baidu/c/g;I)I

    goto/16 :goto_8

    :catch_0
    move-exception v2

    move-object v12, v7

    move-object v7, v2

    move-object v2, v12

    goto :goto_5

    :catch_1
    move-exception v2

    move-object v12, v7

    move-object v7, v2

    move-object v2, v12

    goto/16 :goto_6

    :catch_2
    move-exception v2

    move-object v12, v7

    move-object v7, v2

    move-object v2, v12

    goto/16 :goto_7

    :catch_3
    move-exception v7

    goto :goto_5

    :catch_4
    move-exception v7

    goto :goto_6

    :catch_5
    move-exception v7

    goto/16 :goto_7

    :catchall_0
    move-exception p1

    move-object v0, p1

    move-object v7, v2

    move-object p1, v5

    goto/16 :goto_a

    :catch_6
    move-exception p1

    move-object v7, p1

    move-object p1, v5

    :goto_5
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v2, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    iget-boolean v8, p0, Lcom/baidu/c/g$b;->f:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/baidu/c/g;->a(Lcom/baidu/c/g;Ljava/lang/Boolean;)V

    const-string v2, "Httpdns request failed for %s(%s), caught Exception"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/baidu/c/g$b;->d:Lcom/baidu/c/g$d;

    invoke-virtual {v8}, Lcom/baidu/c/g$d;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v6

    iget-object v8, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    aput-object v8, v3, v1

    invoke-static {v2, v3}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/baidu/c/g$b;->e:Lcom/baidu/c/g$a;

    iget-object v2, p0, Lcom/baidu/c/g$b;->d:Lcom/baidu/c/g$d;

    iget-object v3, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    invoke-interface {v1, v4, v2, v5, v3}, Lcom/baidu/c/g$a;->a(ILcom/baidu/c/g$d;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-boolean p1, p0, Lcom/baidu/c/g$b;->f:Z

    if-eqz p1, :cond_14

    invoke-static {}, Lcom/baidu/c/c;->b()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_3

    :cond_f
    invoke-static {}, Lcom/baidu/c/c;->c()Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_4

    :catch_7
    move-exception p1

    move-object v7, p1

    move-object p1, v5

    :goto_6
    :try_start_8
    invoke-virtual {v7}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    iget-object v2, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    iget-boolean v8, p0, Lcom/baidu/c/g$b;->f:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/baidu/c/g;->a(Lcom/baidu/c/g;Ljava/lang/Boolean;)V

    const-string v2, "Httpdns request failed for %s(%s), caught ArrayIndexOutOfBoundsException"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/baidu/c/g$b;->d:Lcom/baidu/c/g$d;

    invoke-virtual {v8}, Lcom/baidu/c/g$d;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v6

    iget-object v8, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    aput-object v8, v3, v1

    invoke-static {v2, v3}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/baidu/c/g$b;->e:Lcom/baidu/c/g$a;

    iget-object v2, p0, Lcom/baidu/c/g$b;->d:Lcom/baidu/c/g$d;

    iget-object v3, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    invoke-interface {v1, v4, v2, v5, v3}, Lcom/baidu/c/g$a;->a(ILcom/baidu/c/g$d;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-boolean p1, p0, Lcom/baidu/c/g$b;->f:Z

    if-eqz p1, :cond_14

    invoke-static {}, Lcom/baidu/c/c;->b()Z

    move-result p1

    if-eqz p1, :cond_11

    goto/16 :goto_3

    :cond_11
    invoke-static {}, Lcom/baidu/c/c;->c()Z

    move-result p1

    if-eqz p1, :cond_14

    goto/16 :goto_4

    :catch_8
    move-exception p1

    move-object v7, p1

    move-object p1, v5

    :goto_7
    :try_start_a
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    iget-object v2, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    iget-boolean v8, p0, Lcom/baidu/c/g$b;->f:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/baidu/c/g;->a(Lcom/baidu/c/g;Ljava/lang/Boolean;)V

    const-string v2, "Httpdns request failed for %s(%s), caught network IOException"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/baidu/c/g$b;->d:Lcom/baidu/c/g$d;

    invoke-virtual {v8}, Lcom/baidu/c/g$d;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v6

    iget-object v8, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    aput-object v8, v3, v1

    invoke-static {v2, v3}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/baidu/c/g$b;->e:Lcom/baidu/c/g$a;

    iget-object v2, p0, Lcom/baidu/c/g$b;->d:Lcom/baidu/c/g$d;

    iget-object v3, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    invoke-interface {v1, v4, v2, v5, v3}, Lcom/baidu/c/g$a;->a(ILcom/baidu/c/g$d;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-boolean p1, p0, Lcom/baidu/c/g$b;->f:Z

    if-eqz p1, :cond_14

    invoke-static {}, Lcom/baidu/c/c;->b()Z

    move-result p1

    if-eqz p1, :cond_13

    goto/16 :goto_3

    :cond_13
    invoke-static {}, Lcom/baidu/c/c;->c()Z

    move-result p1

    if-eqz p1, :cond_14

    goto/16 :goto_4

    :cond_14
    :goto_8
    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_9

    :cond_15
    iget-object p1, p0, Lcom/baidu/c/g$b;->e:Lcom/baidu/c/g$a;

    iget-object v1, p0, Lcom/baidu/c/g$b;->d:Lcom/baidu/c/g$d;

    iget-object v2, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    invoke-interface {p1, v6, v1, v0, v2}, Lcom/baidu/c/g$a;->a(ILcom/baidu/c/g$d;Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :cond_16
    :goto_9
    iget-object p1, p0, Lcom/baidu/c/g$b;->e:Lcom/baidu/c/g$a;

    iget-object v0, p0, Lcom/baidu/c/g$b;->d:Lcom/baidu/c/g$d;

    iget-object v1, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v5, v1}, Lcom/baidu/c/g$a;->a(ILcom/baidu/c/g$d;Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v7, v2

    :goto_a
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_17
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-boolean p1, p0, Lcom/baidu/c/g$b;->f:Z

    if-eqz p1, :cond_19

    invoke-static {}, Lcom/baidu/c/c;->b()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {p1, v6}, Lcom/baidu/c/g;->a(Lcom/baidu/c/g;I)I

    goto :goto_b

    :cond_18
    invoke-static {}, Lcom/baidu/c/c;->c()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {p1, v6}, Lcom/baidu/c/g;->b(Lcom/baidu/c/g;I)I

    :cond_19
    :goto_b
    throw v0
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-direct {p0}, Lcom/baidu/c/g$b;->a()V

    iget-boolean v0, p0, Lcom/baidu/c/g$b;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Retry for %s(%s)."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/c/g$b;->d:Lcom/baidu/c/g$d;

    invoke-virtual {v3}, Lcom/baidu/c/g$d;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/baidu/c/g$b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {v0}, Lcom/baidu/c/g;->a(Lcom/baidu/c/g;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/c/g$b;->d:Lcom/baidu/c/g$d;

    sget-object v3, Lcom/baidu/c/g$d;->b:Lcom/baidu/c/g$d;

    invoke-virtual {v2, v3}, Lcom/baidu/c/g$d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    iget-object v6, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {v6}, Lcom/baidu/c/g;->b(Lcom/baidu/c/g;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {v0}, Lcom/baidu/c/g;->c(Lcom/baidu/c/g;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/baidu/c/g$b;->d:Lcom/baidu/c/g$d;

    sget-object v3, Lcom/baidu/c/g$d;->a:Lcom/baidu/c/g$d;

    invoke-virtual {v0, v3}, Lcom/baidu/c/g$d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/c/g$b;->c:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    iget-object v5, p0, Lcom/baidu/c/g$b;->b:Lcom/baidu/c/g;

    invoke-static {v5}, Lcom/baidu/c/g;->d(Lcom/baidu/c/g;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
