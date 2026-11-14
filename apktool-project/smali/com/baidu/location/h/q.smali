.class Lcom/baidu/location/h/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/location/h/h;


# direct methods
.method constructor <init>(Lcom/baidu/location/h/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/h/q;->b:Lcom/baidu/location/h/h;

    iput-object p2, p0, Lcom/baidu/location/h/q;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v0, p0, Lcom/baidu/location/h/q;->b:Lcom/baidu/location/h/h;

    invoke-virtual {v0}, Lcom/baidu/location/h/h;->b()V

    iget-object v0, p0, Lcom/baidu/location/h/q;->b:Lcom/baidu/location/h/h;

    iget-object v1, p0, Lcom/baidu/location/h/q;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/location/h/h;->eh:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/baidu/location/b/t;->a()Lcom/baidu/location/b/t;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/location/h/q;->b:Lcom/baidu/location/h/h;

    iget-object v4, v4, Lcom/baidu/location/h/h;->eh:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/baidu/location/b/t;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/baidu/location/h/q;->b:Lcom/baidu/location/h/h;

    iget-object v5, v5, Lcom/baidu/location/h/h;->eh:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/net/URL;

    invoke-static {}, Lcom/baidu/location/b/t;->a()Lcom/baidu/location/b/t;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/location/h/q;->b:Lcom/baidu/location/h/h;

    iget-object v6, v6, Lcom/baidu/location/h/h;->eh:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/baidu/location/b/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-virtual {v5, v0}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    sget v7, Lcom/baidu/location/h/a;->a:I

    invoke-virtual {v5, v7}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    sget v7, Lcom/baidu/location/h/a;->b:I

    invoke-virtual {v5, v7}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v7, "POST"

    invoke-virtual {v5, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v7, "Content-Type"

    const-string v8, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v5, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Accept-Encoding"

    const-string v8, "gzip"

    invoke-virtual {v5, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/baidu/location/h/s;->aw:Ljava/lang/String;

    if-eqz v7, :cond_1

    const-string v7, "bd-loc-android"

    sget-object v8, Lcom/baidu/location/h/s;->aw:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v3, :cond_2

    const-string v3, "Host"

    sget-object v7, Lcom/baidu/location/h/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v3, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/baidu/location/h/q;->b:Lcom/baidu/location/h/h;

    iget-object v3, v3, Lcom/baidu/location/h/h;->el:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v7, "&"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    const/16 v7, 0xc8

    if-ne v2, v7, :cond_7

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string v8, "gzip"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v7, Ljava/util/zip/GZIPInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v7

    :cond_5
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v8, 0x400

    :try_start_5
    new-array v8, v8, [B

    :goto_2
    invoke-virtual {v2, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    invoke-virtual {v7, v8, v0, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    :cond_6
    iget-object v8, p0, Lcom/baidu/location/h/q;->b:Lcom/baidu/location/h/h;

    new-instance v9, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const-string v11, "utf-8"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v9, v8, Lcom/baidu/location/h/h;->ej:Ljava/lang/String;

    iget-object v8, p0, Lcom/baidu/location/h/q;->b:Lcom/baidu/location/h/h;

    invoke-virtual {v8, v6}, Lcom/baidu/location/h/h;->a(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v1, v2

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v6

    goto :goto_3

    :catch_1
    move-exception v6

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_8

    :catch_2
    move-exception v6

    move-object v7, v1

    :goto_3
    move-object v12, v6

    move-object v6, v2

    move-object v2, v12

    goto/16 :goto_c

    :catch_3
    move-exception v6

    move-object v7, v1

    :goto_4
    move-object v12, v6

    move-object v6, v2

    move-object v2, v12

    goto/16 :goto_12

    :cond_7
    :try_start_6
    iget-object v2, p0, Lcom/baidu/location/h/q;->b:Lcom/baidu/location/h/h;

    iput-object v1, v2, Lcom/baidu/location/h/h;->ej:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/h/q;->b:Lcom/baidu/location/h/h;

    invoke-virtual {v2, v0}, Lcom/baidu/location/h/h;->a(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v7, v1

    :goto_5
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_8
    if-eqz v3, :cond_9

    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    :catch_4
    const-string v0, "baidu_location_service"

    const-string v2, "close os IOException!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_6
    if-eqz v1, :cond_a

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_7

    :catch_5
    const-string v0, "baidu_location_service"

    const-string v1, "close is IOException!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_7
    if-eqz v7, :cond_11

    goto/16 :goto_15

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v7, v2

    :goto_8
    move-object v1, v3

    goto/16 :goto_16

    :catch_6
    move-exception v2

    move-object v6, v1

    goto :goto_b

    :catch_7
    move-exception v2

    move-object v6, v1

    goto/16 :goto_11

    :catchall_3
    move-exception v0

    move-object v2, v1

    move-object v7, v2

    goto/16 :goto_16

    :catch_8
    move-exception v2

    move-object v3, v1

    move-object v6, v3

    goto :goto_b

    :catch_9
    move-exception v2

    move-object v3, v1

    move-object v6, v3

    goto/16 :goto_11

    :catchall_4
    move-exception v0

    move-object v2, v1

    move-object v5, v2

    goto :goto_9

    :catch_a
    move-exception v2

    move-object v3, v1

    move-object v5, v3

    goto :goto_a

    :catch_b
    move-exception v2

    move-object v3, v1

    move-object v5, v3

    goto :goto_10

    :catchall_5
    move-exception v0

    move-object v2, v1

    move-object v4, v2

    move-object v5, v4

    :goto_9
    move-object v7, v5

    goto/16 :goto_16

    :catch_c
    move-exception v2

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    :goto_a
    move-object v6, v5

    :goto_b
    move-object v7, v6

    :goto_c
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V

    const-string v2, "baidu_location_service"

    const-string v8, "https NetworkCommunicationError!"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/baidu/location/h/q;->b:Lcom/baidu/location/h/h;

    iput-object v1, v2, Lcom/baidu/location/h/h;->ej:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/h/q;->b:Lcom/baidu/location/h/h;

    invoke-virtual {v1, v0}, Lcom/baidu/location/h/h;->a(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_b
    if-eqz v3, :cond_c

    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    goto :goto_d

    :catch_d
    const-string v0, "baidu_location_service"

    const-string v1, "close os IOException!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_d
    if-eqz v6, :cond_d

    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e

    goto :goto_e

    :catch_e
    const-string v0, "baidu_location_service"

    const-string v1, "close is IOException!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_e
    if-eqz v7, :cond_11

    :goto_f
    :try_start_c
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_12

    return-void

    :catch_f
    move-exception v2

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    :goto_10
    move-object v6, v5

    :goto_11
    move-object v7, v6

    :goto_12
    :try_start_d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "baidu_location_service"

    const-string v8, "https NetworkCommunicationException!"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/baidu/location/h/q;->b:Lcom/baidu/location/h/h;

    iput-object v1, v2, Lcom/baidu/location/h/h;->ej:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/h/q;->b:Lcom/baidu/location/h/h;

    invoke-virtual {v1, v0}, Lcom/baidu/location/h/h;->a(Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_e
    if-eqz v3, :cond_f

    :try_start_e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_10

    goto :goto_13

    :catch_10
    const-string v0, "baidu_location_service"

    const-string v1, "close os IOException!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_13
    if-eqz v6, :cond_10

    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_11

    goto :goto_14

    :catch_11
    const-string v0, "baidu_location_service"

    const-string v1, "close is IOException!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_14
    if-eqz v7, :cond_11

    :goto_15
    goto :goto_f

    :catch_12
    const-string v0, "baidu_location_service"

    const-string v1, "close baos IOException!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void

    :catchall_6
    move-exception v0

    move-object v1, v3

    move-object v2, v6

    :goto_16
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_12
    if-eqz v1, :cond_13

    :try_start_10
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_13

    goto :goto_17

    :catch_13
    const-string v1, "baidu_location_service"

    const-string v3, "close os IOException!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_17
    if-eqz v2, :cond_14

    :try_start_11
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_14

    goto :goto_18

    :catch_14
    const-string v1, "baidu_location_service"

    const-string v2, "close is IOException!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_18
    if-eqz v7, :cond_15

    :try_start_12
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_15

    goto :goto_19

    :catch_15
    const-string v1, "baidu_location_service"

    const-string v2, "close baos IOException!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_19
    throw v0
.end method
