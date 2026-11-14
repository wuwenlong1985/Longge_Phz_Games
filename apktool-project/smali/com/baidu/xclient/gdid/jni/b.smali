.class public Lcom/baidu/xclient/gdid/jni/b;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:Lcom/baidu/xclient/gdid/jni/b;


# instance fields
.field public b:Lcom/baidu/xclient/gdid/jni/c;

.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/xclient/gdid/jni/b;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/baidu/xclient/gdid/jni/c;->a(Landroid/content/Context;)Lcom/baidu/xclient/gdid/jni/c;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/xclient/gdid/jni/b;->b:Lcom/baidu/xclient/gdid/jni/c;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/xclient/gdid/jni/b;
    .locals 2

    sget-object v0, Lcom/baidu/xclient/gdid/jni/b;->a:Lcom/baidu/xclient/gdid/jni/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/baidu/xclient/gdid/jni/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/xclient/gdid/jni/b;->a:Lcom/baidu/xclient/gdid/jni/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/xclient/gdid/jni/b;

    invoke-direct {v1, p0}, Lcom/baidu/xclient/gdid/jni/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/baidu/xclient/gdid/jni/b;->a:Lcom/baidu/xclient/gdid/jni/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/baidu/xclient/gdid/jni/b;->a:Lcom/baidu/xclient/gdid/jni/b;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/xclient/gdid/f;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/baidu/xclient/gdid/jni/b;->a(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, v1}, Lcom/baidu/xclient/gdid/jni/b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, v1}, Lcom/baidu/xclient/gdid/jni/b;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/baidu/xclient/gdid/jni/b;->c:Landroid/content/Context;

    invoke-virtual {p0, v2, v0, v1}, Lcom/baidu/xclient/gdid/jni/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, v1}, Lcom/baidu/xclient/gdid/jni/b;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/baidu/xclient/gdid/jni/b;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/baidu/xclient/gdid/jni/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    iget-object v1, p0, Lcom/baidu/xclient/gdid/jni/b;->c:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3}, Lcom/baidu/xclient/gdid/jni/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    invoke-virtual {p0, v0, v2}, Lcom/baidu/xclient/gdid/jni/b;->a(Lorg/json/JSONObject;Z)V

    invoke-virtual {p0, v0, v3}, Lcom/baidu/xclient/gdid/jni/b;->a(Lorg/json/JSONObject;Z)V

    iget-object v1, p0, Lcom/baidu/xclient/gdid/jni/b;->b:Lcom/baidu/xclient/gdid/jni/c;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/xclient/gdid/jni/c;->a([B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/16 v1, 0xa

    :try_start_1
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/xclient/gdid/e/d;->a(Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lorg/json/JSONObject;II)Lorg/json/JSONObject;
    .locals 9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-ge v2, p3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int v4, p3, p4

    if-lt v2, v4, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lcom/baidu/mshield/b/e/c;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    if-nez v4, :cond_3

    const-string v4, "0"

    const/4 v7, -0x1

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "1"

    const-string v7, ""

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "2"

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "3"

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    const-string v7, "0"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "1"

    :try_start_1
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "2"

    :try_start_2
    iget-wide v7, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v6, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "3"

    :try_start_3
    iget-wide v7, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v6, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_1
    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/baidu/xclient/gdid/e/d;->a(Ljava/lang/Throwable;)V

    :cond_4
    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;II)Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-ge v2, p2, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int v4, p2, p3

    if-lt v2, v4, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/baidu/xclient/gdid/jni/b;->b:Lcom/baidu/xclient/gdid/jni/c;

    invoke-virtual {v5, v4}, Lcom/baidu/xclient/gdid/jni/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/baidu/xclient/gdid/e/d;->a(Ljava/lang/Throwable;)V

    :cond_3
    return-object v0
.end method

.method public final a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 8

    :try_start_0
    const-string v0, "4"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iget-object v2, p0, Lcom/baidu/xclient/gdid/jni/b;->c:Landroid/content/Context;

    const-string v4, "1"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, p3

    invoke-static/range {v2 .. v7}, Lcom/baidu/xclient/gdid/jni/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;III)Z

    move-result p3

    const/16 v0, 0x14

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/baidu/xclient/gdid/c;->a()Lcom/baidu/xclient/gdid/c;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/baidu/xclient/gdid/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, v1}, Lcom/baidu/mshield/b/e/c;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    iget-wide v2, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {p2, p3, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1

    :goto_0
    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_1
    const/16 p1, 0x34

    iget-object p3, p0, Lcom/baidu/xclient/gdid/jni/b;->b:Lcom/baidu/xclient/gdid/jni/c;

    invoke-virtual {p3}, Lcom/baidu/xclient/gdid/jni/c;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/baidu/xclient/gdid/jni/b;->a(Lorg/json/JSONObject;ILjava/lang/String;)V

    const/16 p1, 0x36

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/baidu/xclient/gdid/jni/b;->b:Lcom/baidu/xclient/gdid/jni/c;

    invoke-virtual {p3}, Lcom/baidu/xclient/gdid/jni/c;->c()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 p1, 0x3a

    iget-object p3, p0, Lcom/baidu/xclient/gdid/jni/b;->b:Lcom/baidu/xclient/gdid/jni/c;

    invoke-virtual {p3}, Lcom/baidu/xclient/gdid/jni/c;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/baidu/xclient/gdid/jni/b;->a(Lorg/json/JSONObject;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/baidu/xclient/gdid/jni/b;->b:Lcom/baidu/xclient/gdid/jni/c;

    const-string p3, "/proc/cpuinfo"

    invoke-virtual {p1, p3}, Lcom/baidu/xclient/gdid/jni/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/xclient/gdid/jni/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x3c

    aget-object v0, p1, v1

    invoke-virtual {p0, p2, p3, v0}, Lcom/baidu/xclient/gdid/jni/b;->a(Lorg/json/JSONObject;ILjava/lang/String;)V

    const/16 p3, 0x3d

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p0, p2, p3, p1}, Lcom/baidu/xclient/gdid/jni/b;->a(Lorg/json/JSONObject;ILjava/lang/String;)V

    const/16 p1, 0x3e

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/baidu/xclient/gdid/e/d;->c()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/baidu/xclient/gdid/e/d;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lorg/json/JSONObject;Z)V
    .locals 10

    :try_start_0
    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/xclient/gdid/f;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x14

    if-eqz p3, :cond_0

    const-string v1, "9"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x16

    const-string v4, "x"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/xclient/gdid/f;->w()I

    move-result v5

    move-object v8, v1

    move v7, v5

    const/16 v9, 0x16

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/xclient/gdid/f;->n()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x15

    const-string v4, "y"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/xclient/gdid/f;->v()I

    move-result v5

    move-object v8, v1

    move v7, v5

    const/16 v9, 0x15

    :goto_0
    if-gt v4, v0, :cond_2

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v4

    :cond_2
    :goto_1
    const-string v1, "4"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v1, p0, Lcom/baidu/xclient/gdid/jni/b;->c:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v1 .. v6}, Lcom/baidu/xclient/gdid/jni/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;III)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/baidu/xclient/gdid/jni/b;->b:Lcom/baidu/xclient/gdid/jni/c;

    invoke-virtual {v1, v8}, Lcom/baidu/xclient/gdid/jni/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :cond_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    invoke-static {v7, v2, v0}, Lcom/baidu/xclient/gdid/jni/a;->a(III)Landroid/util/Pair;

    move-result-object v0

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v1, v3, v0}, Lcom/baidu/xclient/gdid/jni/b;->a(Landroid/content/Context;Lorg/json/JSONObject;II)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int p1, v3, v0

    if-le p1, v2, :cond_6

    move p1, v2

    :cond_6
    if-eqz p3, :cond_7

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/xclient/gdid/f;->h(I)V

    return-void

    :cond_7
    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/xclient/gdid/f;->g(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/baidu/xclient/gdid/e/d;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/baidu/xclient/gdid/jni/b;->b:Lcom/baidu/xclient/gdid/jni/c;

    invoke-virtual {v0}, Lcom/baidu/xclient/gdid/jni/c;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1, v0}, Lcom/baidu/xclient/gdid/jni/b;->a(Lorg/json/JSONObject;ILjava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {}, Lcom/baidu/xclient/gdid/c;->a()Lcom/baidu/xclient/gdid/c;

    move-result-object v1

    const-string v2, "mod"

    invoke-virtual {v1, v2}, Lcom/baidu/xclient/gdid/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/xclient/gdid/jni/b;->a(Lorg/json/JSONObject;ILjava/lang/String;)V

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/baidu/xclient/gdid/jni/b;->b:Lcom/baidu/xclient/gdid/jni/c;

    invoke-virtual {v1}, Lcom/baidu/xclient/gdid/jni/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/xclient/gdid/jni/b;->a(Lorg/json/JSONObject;ILjava/lang/String;)V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/baidu/xclient/gdid/jni/b;->b:Lcom/baidu/xclient/gdid/jni/c;

    invoke-virtual {v1}, Lcom/baidu/xclient/gdid/jni/c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/xclient/gdid/jni/b;->a(Lorg/json/JSONObject;ILjava/lang/String;)V

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/baidu/xclient/gdid/jni/b;->b:Lcom/baidu/xclient/gdid/jni/c;

    invoke-virtual {v1}, Lcom/baidu/xclient/gdid/jni/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/xclient/gdid/jni/b;->a(Lorg/json/JSONObject;ILjava/lang/String;)V

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/baidu/xclient/gdid/jni/b;->b:Lcom/baidu/xclient/gdid/jni/c;

    invoke-virtual {v1}, Lcom/baidu/xclient/gdid/jni/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/xclient/gdid/jni/b;->a(Lorg/json/JSONObject;ILjava/lang/String;)V

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/baidu/xclient/gdid/jni/b;->b:Lcom/baidu/xclient/gdid/jni/c;

    invoke-virtual {v1}, Lcom/baidu/xclient/gdid/jni/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/xclient/gdid/jni/b;->a(Lorg/json/JSONObject;ILjava/lang/String;)V

    const/16 v0, 0x32

    iget-object v1, p0, Lcom/baidu/xclient/gdid/jni/b;->b:Lcom/baidu/xclient/gdid/jni/c;

    const-string v2, "ro.build.fingerprint"

    invoke-virtual {v1, v2}, Lcom/baidu/xclient/gdid/jni/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/xclient/gdid/jni/b;->a(Lorg/json/JSONObject;ILjava/lang/String;)V

    const/16 v0, 0x35

    invoke-static {}, Lcom/baidu/xclient/gdid/c;->a()Lcom/baidu/xclient/gdid/c;

    move-result-object v1

    const-string v2, "arv"

    invoke-virtual {v1, v2}, Lcom/baidu/xclient/gdid/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/xclient/gdid/jni/b;->a(Lorg/json/JSONObject;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/baidu/xclient/gdid/e/d;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;ILjava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/baidu/xclient/gdid/e/d;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 8

    :try_start_0
    const-string v0, "4"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iget-object v2, p0, Lcom/baidu/xclient/gdid/jni/b;->c:Landroid/content/Context;

    const-string v4, "2"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/baidu/xclient/gdid/jni/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;III)Z

    move-result p2

    const/16 v0, 0xb

    const/16 v2, 0xa

    if-eqz p2, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lcom/baidu/xclient/gdid/jni/b;->b:Lcom/baidu/xclient/gdid/jni/c;

    invoke-virtual {v3, p2}, Lcom/baidu/xclient/gdid/jni/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "\\|"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object v3, p2, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aget-object v3, p2, v1

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const/4 v2, 0x1

    aget-object v3, p2, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :goto_2
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/baidu/xclient/gdid/e/d;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;Z)V
    .locals 8

    :try_start_0
    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/xclient/gdid/f;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "4"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const/16 v0, 0x14

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/baidu/xclient/gdid/jni/b;->c:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, v7

    invoke-static/range {v1 .. v6}, Lcom/baidu/xclient/gdid/jni/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;III)Z

    move-result v1

    const-string v2, "10"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3b

    const-string v4, "u"

    invoke-virtual {v7, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/xclient/gdid/f;->y()I

    move-result v5

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/baidu/xclient/gdid/jni/b;->c:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, v7

    invoke-static/range {v1 .. v6}, Lcom/baidu/xclient/gdid/jni/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;III)Z

    move-result v1

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/xclient/gdid/f;->o()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x38

    const-string v4, "z"

    invoke-virtual {v7, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/xclient/gdid/f;->x()I

    move-result v5

    :goto_0
    if-gt v4, v0, :cond_2

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v4

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/baidu/xclient/gdid/jni/b;->b:Lcom/baidu/xclient/gdid/jni/c;

    invoke-virtual {v1, v2}, Lcom/baidu/xclient/gdid/jni/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :cond_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    invoke-static {v5, v2, v0}, Lcom/baidu/xclient/gdid/jni/a;->a(III)Landroid/util/Pair;

    move-result-object v0

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v4, v0}, Lcom/baidu/xclient/gdid/jni/b;->a(Lorg/json/JSONObject;II)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int p1, v4, v0

    if-le p1, v2, :cond_6

    move p1, v2

    :cond_6
    if-eqz p2, :cond_7

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/xclient/gdid/f;->j(I)V

    return-void

    :cond_7
    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/xclient/gdid/f;->i(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/baidu/xclient/gdid/e/d;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 8

    :try_start_0
    const-string v0, "4"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iget-object v2, p0, Lcom/baidu/xclient/gdid/jni/b;->c:Landroid/content/Context;

    const-string v4, "2"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/baidu/xclient/gdid/jni/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;III)Z

    move-result p2

    const/16 v0, 0xd

    const/16 v2, 0xc

    if-eqz p2, :cond_2

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lcom/baidu/xclient/gdid/jni/b;->b:Lcom/baidu/xclient/gdid/jni/c;

    invoke-virtual {v3, p2}, Lcom/baidu/xclient/gdid/jni/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "\\|"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object v3, p2, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aget-object v3, p2, v1

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const/4 v2, 0x1

    aget-object v3, p2, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :goto_2
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/baidu/xclient/gdid/e/d;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 8

    :try_start_0
    const-string v0, "4"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iget-object v2, p0, Lcom/baidu/xclient/gdid/jni/b;->c:Landroid/content/Context;

    const-string v4, "s"

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/baidu/xclient/gdid/jni/a;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;III)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/xclient/gdid/c;->a()Lcom/baidu/xclient/gdid/c;

    move-result-object p2

    const-string v0, "sl"

    invoke-virtual {p2, v0}, Lcom/baidu/xclient/gdid/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0x39

    if-eqz v0, :cond_1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/baidu/mshield/b/f/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-void

    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/baidu/xclient/gdid/e/d;->a(Ljava/lang/Throwable;)V

    return-void
.end method
