.class public Lcom/baidu/mshield/b/f/d;
.super Ljava/lang/Object;
.source "EncryptUtil.java"


# direct methods
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
    invoke-static {p1, p0}, Lcom/baidu/mshield/b/f/a;->c([B[B)[B

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
    invoke-static {p1}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/Throwable;)V

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

    .line 1
    :try_start_0
    array-length v1, p1

    if-lez v1, :cond_2

    if-eqz p0, :cond_2

    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {p1, p0}, Lcom/baidu/mshield/b/f/a;->d([B[B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    .line 5
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

    .line 9
    :goto_0
    invoke-static {p1}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/Throwable;)V

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
    invoke-static {p1}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/Throwable;)V

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
    invoke-static {p1}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    return-object v0
.end method
