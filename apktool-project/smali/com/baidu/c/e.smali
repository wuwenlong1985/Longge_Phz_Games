.class final Lcom/baidu/c/e;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/baidu/c/e;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/baidu/c/e;
    .locals 2

    sget-object v0, Lcom/baidu/c/e;->a:Lcom/baidu/c/e;

    if-nez v0, :cond_1

    const-class v0, Lcom/baidu/c/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/c/e;->a:Lcom/baidu/c/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/c/e;

    invoke-direct {v1}, Lcom/baidu/c/e;-><init>()V

    sput-object v1, Lcom/baidu/c/e;->a:Lcom/baidu/c/e;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/baidu/c/e;->a:Lcom/baidu/c/e;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_5

    array-length v4, v3

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    :goto_0
    array-length v8, v3

    if-ge v7, v8, :cond_3

    aget-object v8, v3, v7

    instance-of v9, v8, Ljava/net/Inet4Address;

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/c/d;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    instance-of v9, v8, Ljava/net/Inet6Address;

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/c/d;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    const-string v3, "ipv4"

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ipv6"

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Dns resolve failed, host(%s), get no valid resolve result"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    :goto_2
    invoke-static {v3, v1}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const-string v0, "Dns resolve successful, host(%s), ipv4List(%s), ipv6List(%s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    invoke-static {v0, v3}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    :cond_5
    :goto_3
    const-string v3, "Dns resolve failed, host(%s), get empty resolve result"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V

    const-string v3, "Dns resolve failed, host(%s), caught UnknownHostException"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    goto :goto_2
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/baidu/c/b;
    .locals 4

    invoke-direct {p0, p1}, Lcom/baidu/c/e;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v0, "ipv4"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "ipv6"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/baidu/c/b;

    sget-object v2, Lcom/baidu/c/b$b;->f:Lcom/baidu/c/b$b;

    sget-object v3, Lcom/baidu/c/b$a;->a:Lcom/baidu/c/b$a;

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/baidu/c/b;-><init>(Lcom/baidu/c/b$b;Lcom/baidu/c/b$a;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v1

    :cond_3
    :goto_1
    new-instance p1, Lcom/baidu/c/b;

    sget-object v0, Lcom/baidu/c/b$a;->d:Lcom/baidu/c/b$a;

    invoke-direct {p1, v0}, Lcom/baidu/c/b;-><init>(Lcom/baidu/c/b$a;)V

    return-object p1
.end method
