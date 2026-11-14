.class public Lcom/baidu/mshield/b/a/f;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mshield/b/a/f$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Z)Lcom/baidu/mshield/b/a/f$a;
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, p1, v0}, Lcom/baidu/mshield/b/a/f;->a([Ljava/lang/String;ZZ)Lcom/baidu/mshield/b/a/f$a;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/lang/String;ZZ)Lcom/baidu/mshield/b/a/f$a;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p0, :cond_17

    .line 2
    array-length v2, p0

    if-nez v2, :cond_0

    goto/16 :goto_1b

    .line 14
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz p1, :cond_1

    const-string p1, "su"

    goto :goto_0

    :cond_1
    const-string p1, "sh"

    :goto_0
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 15
    :try_start_2
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 16
    :try_start_3
    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    aget-object v6, p0, v5

    if-nez v6, :cond_2

    goto :goto_2

    .line 22
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->write([B)V

    const-string v6, "\n"

    .line 23
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "exit\n"

    .line 26
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 29
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz p2, :cond_8

    .line 32
    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 35
    :try_start_5
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 37
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 38
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 40
    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 41
    :try_start_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 42
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object p2, v6

    .line 44
    :cond_5
    :goto_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 45
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 47
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 48
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_7

    :cond_7
    move-object v0, v1

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move-object v8, v0

    move-object v0, p2

    move-object p2, v1

    move-object v1, v8

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, p2

    move-object p2, v1

    move-object v1, v8

    goto :goto_6

    :catchall_1
    move-exception v1

    move-object v8, v0

    move-object v0, p2

    move-object p2, v8

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v8, v0

    move-object v0, p2

    move-object p2, v8

    goto :goto_6

    :catchall_2
    move-exception p2

    move-object v1, p2

    move-object p2, v0

    :goto_5
    move-object v8, v3

    move v3, p0

    move-object p0, p2

    move-object p2, v0

    move-object v0, v8

    goto/16 :goto_c

    :catch_2
    move-exception p2

    move-object v1, p2

    move-object p2, v0

    :goto_6
    move-object v8, v3

    move v3, p0

    move-object p0, p2

    move-object p2, v0

    move-object v0, v8

    goto/16 :goto_11

    :catchall_3
    move-exception p2

    move-object v1, p2

    move-object p2, v0

    move-object v5, p2

    move-object v0, v3

    move v3, p0

    move-object p0, v5

    goto/16 :goto_c

    :catch_3
    move-exception p2

    move-object v1, p2

    move-object p2, v0

    move-object v5, p2

    move-object v0, v3

    move v3, p0

    move-object p0, v5

    goto/16 :goto_11

    :catchall_4
    move-exception p2

    move-object v1, p2

    goto :goto_9

    :catch_4
    move-exception p2

    move-object v1, p2

    goto :goto_a

    :cond_8
    move-object p2, v0

    move-object v3, p2

    move-object v5, v3

    .line 59
    :goto_7
    :try_start_9
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    if-eqz v3, :cond_9

    .line 62
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_9
    if-eqz v5, :cond_a

    .line 65
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_8

    :catch_5
    move-exception v1

    .line 68
    invoke-static {v1}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/Throwable;)V

    :cond_a
    :goto_8
    if-eqz p1, :cond_12

    goto/16 :goto_16

    :catchall_5
    move-exception p0

    move-object v1, p0

    const/4 p0, -0x1

    :goto_9
    move v3, p0

    move-object p0, v0

    move-object p2, p0

    move-object v5, p2

    goto :goto_c

    :catch_6
    move-exception p0

    move-object v1, p0

    const/4 p0, -0x1

    :goto_a
    move v3, p0

    move-object p0, v0

    move-object p2, p0

    move-object v5, p2

    goto :goto_11

    :catchall_6
    move-exception p0

    goto :goto_b

    :catch_7
    move-exception p0

    goto :goto_10

    :catchall_7
    move-exception p0

    move-object p1, v0

    :goto_b
    move-object v1, p0

    move-object p0, v0

    move-object p2, p0

    move-object v2, p2

    move-object v5, v2

    const/4 v3, -0x1

    .line 73
    :goto_c
    :try_start_a
    invoke-static {v1}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-eqz v2, :cond_b

    .line 77
    :try_start_b
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    goto :goto_d

    :catch_8
    move-exception v0

    goto :goto_e

    :cond_b
    :goto_d
    if-eqz v0, :cond_c

    .line 80
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_c
    if-eqz v5, :cond_d

    .line 83
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_f

    .line 86
    :goto_e
    invoke-static {v0}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/Throwable;)V

    :cond_d
    :goto_f
    if-eqz p1, :cond_11

    goto :goto_15

    :catch_9
    move-exception p0

    move-object p1, v0

    :goto_10
    move-object v1, p0

    move-object p0, v0

    move-object p2, p0

    move-object v2, p2

    move-object v5, v2

    const/4 v3, -0x1

    .line 87
    :goto_11
    :try_start_c
    invoke-static {v1}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-eqz v2, :cond_e

    .line 93
    :try_start_d
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    goto :goto_12

    :catch_a
    move-exception v0

    goto :goto_13

    :cond_e
    :goto_12
    if-eqz v0, :cond_f

    .line 96
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_f
    if-eqz v5, :cond_10

    .line 99
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_14

    .line 102
    :goto_13
    invoke-static {v0}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/Throwable;)V

    :cond_10
    :goto_14
    if-eqz p1, :cond_11

    :goto_15
    move-object v0, p0

    move p0, v3

    .line 72
    :goto_16
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    goto :goto_17

    :cond_11
    move-object v0, p0

    move p0, v3

    .line 109
    :cond_12
    :goto_17
    new-instance p1, Lcom/baidu/mshield/b/a/f$a;

    invoke-direct {p1, p0, p2, v0}, Lcom/baidu/mshield/b/a/f$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p1

    :catchall_8
    move-exception p0

    if-eqz v2, :cond_13

    .line 110
    :try_start_e
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    goto :goto_18

    :catch_b
    move-exception p2

    goto :goto_19

    :cond_13
    :goto_18
    if-eqz v0, :cond_14

    .line 113
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_14
    if-eqz v5, :cond_15

    .line 116
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_1a

    .line 119
    :goto_19
    invoke-static {p2}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/Throwable;)V

    :cond_15
    :goto_1a
    if-eqz p1, :cond_16

    .line 123
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    :cond_16
    throw p0

    .line 124
    :cond_17
    :goto_1b
    new-instance p0, Lcom/baidu/mshield/b/a/f$a;

    invoke-direct {p0, v1, v0, v0}, Lcom/baidu/mshield/b/a/f$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
