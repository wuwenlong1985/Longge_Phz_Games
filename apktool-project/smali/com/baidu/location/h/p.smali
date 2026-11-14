.class Lcom/baidu/location/h/p;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/location/h/h;


# direct methods
.method constructor <init>(Lcom/baidu/location/h/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/h/p;->b:Lcom/baidu/location/h/h;

    iput-object p2, p0, Lcom/baidu/location/h/p;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    iget-object v0, p0, Lcom/baidu/location/h/p;->b:Lcom/baidu/location/h/h;

    invoke-virtual {v0}, Lcom/baidu/location/h/h;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/location/h/p;->b:Lcom/baidu/location/h/h;

    iget-object v3, p0, Lcom/baidu/location/h/p;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/location/h/h;->eh:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/baidu/location/h/s;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/baidu/location/b/t;->a()Lcom/baidu/location/b/t;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/location/h/p;->b:Lcom/baidu/location/h/h;

    iget-object v6, v6, Lcom/baidu/location/h/h;->eh:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/baidu/location/b/t;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/baidu/location/h/p;->b:Lcom/baidu/location/h/h;

    iget-object v7, v7, Lcom/baidu/location/h/h;->eh:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/net/URL;

    invoke-static {}, Lcom/baidu/location/b/t;->a()Lcom/baidu/location/b/t;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/location/h/p;->b:Lcom/baidu/location/h/h;

    iget-object v8, v8, Lcom/baidu/location/h/h;->eh:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/baidu/location/b/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v5, :cond_1

    :try_start_2
    const-string v5, "Host"

    sget-object v8, Lcom/baidu/location/h/e;->a:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v3

    move-object v4, v1

    goto/16 :goto_16

    :catch_0
    move-exception v0

    move-object v1, v3

    move-object v4, v1

    move-object v8, v4

    goto/16 :goto_c

    :catch_1
    move-exception v0

    move-object v1, v3

    move-object v4, v1

    move-object v8, v4

    goto/16 :goto_11

    :cond_1
    :goto_1
    invoke-virtual {v7, v2}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v7, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    sget v8, Lcom/baidu/location/h/a;->a:I

    invoke-virtual {v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    sget v8, Lcom/baidu/location/h/a;->b:I

    invoke-virtual {v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v8, "POST"

    invoke-virtual {v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    new-instance v8, Lcom/baidu/location/h/h$a;

    invoke-direct {v8, v7}, Lcom/baidu/location/h/h$a;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    invoke-virtual {v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    const-string v8, "Content-Type"

    const-string v9, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v7, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/baidu/location/h/p;->b:Lcom/baidu/location/h/h;

    iget-object v8, v8, Lcom/baidu/location/h/h;->er:Ljava/lang/String;

    if-eqz v8, :cond_2

    const-string v8, "alwd"

    iget-object v9, p0, Lcom/baidu/location/h/p;->b:Lcom/baidu/location/h/h;

    iget-object v9, v9, Lcom/baidu/location/h/h;->er:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v8, "Accept-Encoding"

    const-string v9, "gzip"

    invoke-virtual {v7, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/baidu/location/h/s;->aw:Ljava/lang/String;

    if-eqz v8, :cond_3

    const-string v8, "bd-loc-android"

    sget-object v9, Lcom/baidu/location/h/s;->aw:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v8, p0, Lcom/baidu/location/h/p;->b:Lcom/baidu/location/h/h;

    iget-object v8, v8, Lcom/baidu/location/h/h;->el:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v9, "&"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v4

    const/16 v9, 0xc8

    if-ne v4, v9, :cond_8

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    iget-object v9, p0, Lcom/baidu/location/h/p;->b:Lcom/baidu/location/h/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    sub-long v12, v10, v0

    iput-wide v12, v9, Lcom/baidu/location/h/h;->es:J

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :cond_6
    move-object v0, v4

    :goto_3
    :try_start_5
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 v4, 0x400

    :try_start_6
    new-array v4, v4, [B

    :goto_4
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_7

    invoke-virtual {v1, v4, v2, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    :cond_7
    iget-object v4, p0, Lcom/baidu/location/h/p;->b:Lcom/baidu/location/h/h;

    new-instance v9, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const-string v11, "utf-8"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v9, v4, Lcom/baidu/location/h/h;->ej:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/location/h/p;->b:Lcom/baidu/location/h/h;

    invoke-virtual {v4, v5}, Lcom/baidu/location/h/h;->a(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v2

    move-object v4, v0

    move-object v0, v2

    goto/16 :goto_15

    :catch_2
    move-exception v4

    move-object v14, v4

    move-object v4, v0

    move-object v0, v14

    goto/16 :goto_c

    :catch_3
    move-exception v4

    move-object v14, v4

    move-object v4, v0

    move-object v0, v14

    goto/16 :goto_11

    :catchall_2
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_5

    :catch_4
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_6

    :catch_5
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_7

    :catchall_3
    move-exception v0

    :goto_5
    move-object v1, v3

    goto/16 :goto_15

    :catch_6
    move-exception v0

    :goto_6
    move-object v1, v3

    goto/16 :goto_c

    :catch_7
    move-exception v0

    :goto_7
    move-object v1, v3

    goto/16 :goto_11

    :cond_8
    :try_start_7
    iget-object v0, p0, Lcom/baidu/location/h/p;->b:Lcom/baidu/location/h/h;

    iput-object v3, v0, Lcom/baidu/location/h/h;->ej:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/h/p;->b:Lcom/baidu/location/h/h;

    invoke-virtual {v0, v2}, Lcom/baidu/location/h/h;->a(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object v0, v3

    move-object v1, v0

    :goto_8
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_9
    if-eqz v8, :cond_a

    :try_start_8
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_9

    :catch_8
    const-string v2, "baidu_location_service"

    const-string v3, "close os IOException!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_9
    if-eqz v0, :cond_b

    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_a

    :catch_9
    const-string v0, "baidu_location_service"

    const-string v2, "close is IOException!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_a
    if-eqz v1, :cond_12

    goto/16 :goto_14

    :catchall_4
    move-exception v0

    move-object v1, v3

    move-object v4, v1

    goto/16 :goto_15

    :catch_a
    move-exception v0

    move-object v1, v3

    move-object v4, v1

    goto :goto_c

    :catch_b
    move-exception v0

    move-object v1, v3

    move-object v4, v1

    goto/16 :goto_11

    :catchall_5
    move-exception v0

    move-object v1, v3

    move-object v4, v1

    move-object v7, v4

    goto/16 :goto_16

    :catch_c
    move-exception v0

    move-object v1, v3

    move-object v4, v1

    move-object v7, v4

    goto :goto_b

    :catch_d
    move-exception v0

    move-object v1, v3

    move-object v4, v1

    move-object v7, v4

    goto :goto_10

    :catchall_6
    move-exception v0

    move-object v1, v3

    move-object v4, v1

    move-object v6, v4

    move-object v7, v6

    goto/16 :goto_16

    :catch_e
    move-exception v0

    move-object v1, v3

    move-object v4, v1

    move-object v6, v4

    move-object v7, v6

    :goto_b
    move-object v8, v7

    :goto_c
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    const-string v0, "baidu_location_service"

    const-string v5, "https NetworkCommunicationError!"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/baidu/location/h/p;->b:Lcom/baidu/location/h/h;

    iput-object v3, v0, Lcom/baidu/location/h/h;->ej:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/h/p;->b:Lcom/baidu/location/h/h;

    invoke-virtual {v0, v2}, Lcom/baidu/location/h/h;->a(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_c
    if-eqz v8, :cond_d

    :try_start_b
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f

    goto :goto_d

    :catch_f
    const-string v0, "baidu_location_service"

    const-string v2, "close os IOException!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_d
    if-eqz v4, :cond_e

    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_10

    goto :goto_e

    :catch_10
    const-string v0, "baidu_location_service"

    const-string v2, "close is IOException!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_e
    if-eqz v1, :cond_12

    :goto_f
    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_14

    return-void

    :catch_11
    move-exception v0

    move-object v1, v3

    move-object v4, v1

    move-object v6, v4

    move-object v7, v6

    :goto_10
    move-object v8, v7

    :goto_11
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "baidu_location_service"

    const-string v5, "https NetworkCommunicationException!"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/baidu/location/h/p;->b:Lcom/baidu/location/h/h;

    iput-object v3, v0, Lcom/baidu/location/h/h;->ej:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/h/p;->b:Lcom/baidu/location/h/h;

    invoke-virtual {v0, v2}, Lcom/baidu/location/h/h;->a(Z)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_f
    if-eqz v8, :cond_10

    :try_start_f
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_12

    goto :goto_12

    :catch_12
    const-string v0, "baidu_location_service"

    const-string v2, "close os IOException!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_12
    if-eqz v4, :cond_11

    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_13

    goto :goto_13

    :catch_13
    const-string v0, "baidu_location_service"

    const-string v2, "close is IOException!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_13
    if-eqz v1, :cond_12

    :goto_14
    goto :goto_f

    :catch_14
    const-string v0, "baidu_location_service"

    const-string v1, "close baos IOException!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void

    :catchall_7
    move-exception v0

    :goto_15
    move-object v3, v8

    :goto_16
    if-eqz v7, :cond_13

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_13
    if-eqz v3, :cond_14

    :try_start_11
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_15

    goto :goto_17

    :catch_15
    const-string v2, "baidu_location_service"

    const-string v3, "close os IOException!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_17
    if-eqz v4, :cond_15

    :try_start_12
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_16

    goto :goto_18

    :catch_16
    const-string v2, "baidu_location_service"

    const-string v3, "close is IOException!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_18
    if-eqz v1, :cond_16

    :try_start_13
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_17

    goto :goto_19

    :catch_17
    const-string v1, "baidu_location_service"

    const-string v2, "close baos IOException!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_19
    throw v0
.end method
