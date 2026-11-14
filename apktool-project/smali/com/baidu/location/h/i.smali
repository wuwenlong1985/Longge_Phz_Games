.class Lcom/baidu/location/h/i;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/baidu/location/h/h;


# direct methods
.method constructor <init>(Lcom/baidu/location/h/h;Z)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/h/i;->b:Lcom/baidu/location/h/h;

    iput-boolean p2, p0, Lcom/baidu/location/h/i;->a:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/baidu/location/h/i;->b:Lcom/baidu/location/h/h;

    sget-object v1, Lcom/baidu/location/h/e;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/location/h/h;->eh:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/h/i;->b:Lcom/baidu/location/h/h;

    invoke-virtual {v0}, Lcom/baidu/location/h/h;->b()V

    iget-object v0, p0, Lcom/baidu/location/h/i;->b:Lcom/baidu/location/h/h;

    iget v0, v0, Lcom/baidu/location/h/h;->ei:I

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_10

    :try_start_0
    invoke-static {}, Lcom/baidu/location/h/s;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-static {v5}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/baidu/location/h/i;->b:Lcom/baidu/location/h/h;

    iget-object v6, v6, Lcom/baidu/location/h/h;->eh:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v2, "GET"

    invoke-virtual {v5, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {v5, v4}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v5, v3}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    sget v2, Lcom/baidu/location/h/a;->a:I

    invoke-virtual {v5, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    sget v2, Lcom/baidu/location/h/a;->a:I

    invoke-virtual {v5, v2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    new-instance v2, Lcom/baidu/location/h/h$a;

    invoke-direct {v2, v5}, Lcom/baidu/location/h/h$a;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    invoke-virtual {v5, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    const-string v2, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v5, v2, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept-Charset"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v2, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/baidu/location/h/i;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "en"

    const-string v6, "1"

    invoke-virtual {v5, v2, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lcom/baidu/location/h/s;->aw:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "bd-loc-android"

    sget-object v6, Lcom/baidu/location/h/s;->aw:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    const/16 v6, 0xc8

    if-ne v2, v6, :cond_5

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v7, "gzip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/util/zip/GZIPInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v6

    :cond_2
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v7, "en"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/baidu/location/h/i;->b:Lcom/baidu/location/h/h;

    iput-boolean v4, v6, Lcom/baidu/location/h/h;->eq:Z

    :cond_3
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v7, 0x400

    :try_start_3
    new-array v7, v7, [B

    :goto_1
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    invoke-virtual {v6, v7, v3, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    iget-object v7, p0, Lcom/baidu/location/h/i;->b:Lcom/baidu/location/h/h;

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const-string v10, "utf-8"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v7, Lcom/baidu/location/h/h;->ej:Ljava/lang/String;

    iget-object v7, p0, Lcom/baidu/location/h/i;->b:Lcom/baidu/location/h/h;

    invoke-virtual {v7, v4}, Lcom/baidu/location/h/h;->a(Z)V

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v6, v1

    :goto_2
    move-object v1, v2

    goto :goto_6

    :catch_0
    move-object v6, v1

    goto :goto_9

    :cond_5
    :try_start_4
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v2, v1

    move-object v6, v2

    const/4 v7, 0x0

    :goto_3
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_6
    if-eqz v2, :cond_7

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_4
    if-eqz v6, :cond_8

    :try_start_6
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_5
    move-object v2, v5

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_6

    :catch_3
    move-object v2, v1

    move-object v6, v2

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v6, v1

    move-object v5, v2

    :goto_6
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_9
    if-eqz v1, :cond_a

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_7

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_7
    if-eqz v6, :cond_b

    :try_start_8
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_8

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_8
    throw v0

    :catch_6
    move-object v6, v1

    move-object v5, v2

    move-object v2, v6

    :catch_7
    :goto_9
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_c
    if-eqz v2, :cond_d

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_a

    :catch_8
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_a
    if-eqz v6, :cond_e

    :try_start_a
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_b

    :catch_9
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_b
    move-object v2, v5

    const/4 v7, 0x0

    :goto_c
    if-eqz v7, :cond_f

    goto :goto_d

    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_10
    :goto_d
    if-gtz v0, :cond_11

    sget v0, Lcom/baidu/location/h/h;->et:I

    add-int/2addr v0, v4

    sput v0, Lcom/baidu/location/h/h;->et:I

    iget-object v0, p0, Lcom/baidu/location/h/i;->b:Lcom/baidu/location/h/h;

    iput-object v1, v0, Lcom/baidu/location/h/h;->ej:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/h/i;->b:Lcom/baidu/location/h/h;

    invoke-virtual {v0, v3}, Lcom/baidu/location/h/h;->a(Z)V

    return-void

    :cond_11
    sput v3, Lcom/baidu/location/h/h;->et:I

    return-void
.end method
