.class public Lcom/baidu/mshield/x6/e/h;
.super Ljava/lang/Object;
.source "EncryptUtil.java"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 5

    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    .line 1
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_0

    const/16 v4, 0x3e

    .line 4
    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B[B)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    array-length v1, p1

    if-lez v1, :cond_2

    if-eqz p0, :cond_2

    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {p0, p1}, Lcom/baidu/mshield/b/f/a;->a([B[B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    .line 6
    :try_start_1
    array-length p1, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez p1, :cond_1

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p0, v0

    .line 10
    :goto_0
    invoke-static {p1}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static b([B[B)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 8
    :try_start_0
    array-length v1, p1

    if-lez v1, :cond_2

    if-eqz p0, :cond_2

    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-static {p0, p1}, Lcom/baidu/mshield/b/f/a;->b([B[B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    .line 12
    :try_start_1
    array-length p1, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez p1, :cond_1

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p0, v0

    .line 16
    :goto_0
    invoke-static {p1}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static c([B[B)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    array-length v1, p1

    if-lez v1, :cond_2

    if-eqz p0, :cond_2

    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {p0, p1}, Lcom/baidu/mshield/b/f/f;->b([B[B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    .line 6
    :try_start_1
    array-length p1, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez p1, :cond_1

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p0, v0

    .line 10
    :goto_0
    invoke-static {p1}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static d([B[B)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    :try_start_0
    array-length v1, p1

    if-lez v1, :cond_2

    if-eqz p0, :cond_2

    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {p0, p1}, Lcom/baidu/mshield/b/f/f;->a([B[B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    .line 6
    :try_start_1
    array-length p1, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez p1, :cond_1

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p0, v0

    .line 10
    :goto_0
    invoke-static {p1}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    return-object v0
.end method
