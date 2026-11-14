.class public final Lcom/baidu/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/c/a$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/baidu/c/a;


# instance fields
.field private final b:Lcom/baidu/c/g;

.field private final c:Lcom/baidu/c/e;

.field private final d:Lcom/baidu/c/f;

.field private final e:Lcom/baidu/c/f;

.field private f:Lcom/baidu/c/c;

.field private final g:Landroid/content/Context;

.field private h:Lcom/baidu/c/a$a;

.field private i:J

.field private j:J

.field private k:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/baidu/c/g;->a()Lcom/baidu/c/g;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/c/a;->b:Lcom/baidu/c/g;

    invoke-static {}, Lcom/baidu/c/e;->a()Lcom/baidu/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/c/a;->c:Lcom/baidu/c/e;

    new-instance v0, Lcom/baidu/c/f;

    const-string v1, "DNS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/baidu/c/f;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/baidu/c/a;->d:Lcom/baidu/c/f;

    new-instance v0, Lcom/baidu/c/f;

    const-string v1, "HTTPDNS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/c/f;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/baidu/c/a;->e:Lcom/baidu/c/f;

    sget-object v0, Lcom/baidu/c/a$a;->b:Lcom/baidu/c/a$a;

    iput-object v0, p0, Lcom/baidu/c/a;->h:Lcom/baidu/c/a$a;

    iput-object p1, p0, Lcom/baidu/c/a;->g:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/c/a;->f()V

    iget-object p1, p0, Lcom/baidu/c/a;->f:Lcom/baidu/c/c;

    invoke-virtual {p1}, Lcom/baidu/c/c;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/c/a;->j:J

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/c/a;
    .locals 2

    sget-object v0, Lcom/baidu/c/a;->a:Lcom/baidu/c/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/baidu/c/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/c/a;->a:Lcom/baidu/c/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/c/a;

    invoke-direct {v1, p0}, Lcom/baidu/c/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/baidu/c/a;->a:Lcom/baidu/c/a;

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
    sget-object p0, Lcom/baidu/c/a;->a:Lcom/baidu/c/a;

    return-object p0
.end method

.method private a(J)Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/c/a;->b:Lcom/baidu/c/g;

    invoke-virtual {v0}, Lcom/baidu/c/g;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/baidu/c/a;->i:J

    sub-long v2, p1, v0

    const-wide/16 p1, 0x3e8

    cmp-long v0, v2, p1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private b(J)Z
    .locals 5

    iget-wide v0, p0, Lcom/baidu/c/a;->j:J

    sub-long v2, p1, v0

    const-wide/32 v0, 0xea60

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    iput-wide p1, p0, Lcom/baidu/c/a;->j:J

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private f()V
    .locals 3

    new-instance v0, Lcom/baidu/c/c;

    invoke-direct {v0}, Lcom/baidu/c/c;-><init>()V

    iput-object v0, p0, Lcom/baidu/c/a;->f:Lcom/baidu/c/c;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/c/a;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/c/a;->f:Lcom/baidu/c/c;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Lcom/baidu/c/b;
    .locals 13

    invoke-static {p1}, Lcom/baidu/c/d;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/baidu/c/b;

    sget-object v0, Lcom/baidu/c/b$b;->b:Lcom/baidu/c/b$b;

    sget-object v2, Lcom/baidu/c/b$a;->a:Lcom/baidu/c/b$a;

    invoke-direct {p1, v0, v2, p2, v1}, Lcom/baidu/c/b;-><init>(Lcom/baidu/c/b$b;Lcom/baidu/c/b$a;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/baidu/c/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "[\\[\\]]"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/baidu/c/b;

    sget-object v0, Lcom/baidu/c/b$b;->b:Lcom/baidu/c/b$b;

    sget-object v2, Lcom/baidu/c/b$a;->a:Lcom/baidu/c/b$a;

    invoke-direct {p1, v0, v2, v1, p2}, Lcom/baidu/c/b;-><init>(Lcom/baidu/c/b$b;Lcom/baidu/c/b$a;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p1

    :cond_1
    sget-object v0, Lcom/baidu/c/b$b;->a:Lcom/baidu/c/b$b;

    iget-object v2, p0, Lcom/baidu/c/a;->e:Lcom/baidu/c/f;

    invoke-virtual {v2, p1}, Lcom/baidu/c/f;->a(Ljava/lang/String;)Lcom/baidu/c/f$a;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v3, v4}, Lcom/baidu/c/a;->a(J)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_5

    if-nez v2, :cond_2

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/baidu/c/f$a;->a()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/baidu/c/a;->b:Lcom/baidu/c/g;

    invoke-virtual {v6, p1}, Lcom/baidu/c/g;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-direct {p0, v3, v4}, Lcom/baidu/c/a;->b(J)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/baidu/c/a;->b:Lcom/baidu/c/g;

    invoke-virtual {v3}, Lcom/baidu/c/g;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    new-instance v3, Lcom/baidu/c/i;

    iget-object v4, p0, Lcom/baidu/c/a;->g:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/baidu/c/i;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/baidu/c/a;->b:Lcom/baidu/c/g;

    invoke-virtual {v4, v5, v3}, Lcom/baidu/c/g;->a(Ljava/util/ArrayList;Lcom/baidu/c/g$a;)V

    goto :goto_1

    :cond_5
    const-string v3, "please wait a moment to send request for %s, until preResolve finished or has passed 1000ms "

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {v3, v4}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/baidu/c/f$a;->a()Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lcom/baidu/c/b$b;->d:Lcom/baidu/c/b$b;

    goto :goto_2

    :cond_6
    sget-object p2, Lcom/baidu/c/b$b;->c:Lcom/baidu/c/b$b;

    :goto_2
    const-string v0, "Sync resolve successful, host(%s) ipv4List(%s) ipv6List(%s) resolveType(%s)"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-virtual {v2}, Lcom/baidu/c/f$a;->b()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {v2}, Lcom/baidu/c/f$a;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    move-object p1, v1

    :goto_3
    aput-object p1, v5, v8

    invoke-virtual {v2}, Lcom/baidu/c/f$a;->c()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {v2}, Lcom/baidu/c/f$a;->c()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    aput-object v1, v5, v4

    invoke-virtual {p2}, Lcom/baidu/c/b$b;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-static {v0, v5}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/baidu/c/b;

    sget-object v0, Lcom/baidu/c/b$a;->a:Lcom/baidu/c/b$a;

    invoke-virtual {v2}, Lcom/baidu/c/f$a;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2}, Lcom/baidu/c/f$a;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/baidu/c/b;-><init>(Lcom/baidu/c/b$b;Lcom/baidu/c/b$a;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p1

    :cond_9
    if-nez v2, :cond_a

    if-eqz p2, :cond_a

    const-string p2, "Sync resolve failed, host(%s), find no httpdns cache entry and cacheOnly is true"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p1, v2, v7

    invoke-static {p2, v2}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/baidu/c/b;

    sget-object p2, Lcom/baidu/c/b$a;->c:Lcom/baidu/c/b$a;

    invoke-direct {p1, v0, p2, v1, v1}, Lcom/baidu/c/b;-><init>(Lcom/baidu/c/b$b;Lcom/baidu/c/b$a;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p1

    :cond_a
    iget-object p2, p0, Lcom/baidu/c/a;->d:Lcom/baidu/c/f;

    invoke-virtual {p2, p1}, Lcom/baidu/c/f;->a(Ljava/lang/String;)Lcom/baidu/c/f$a;

    move-result-object p2

    if-eqz p2, :cond_d

    sget-object v0, Lcom/baidu/c/b$b;->e:Lcom/baidu/c/b$b;

    const-string v2, "Sync resolve successful, host(%s) ipv4List(%s) ipv6List(%s) resolveType(%s)"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-virtual {p2}, Lcom/baidu/c/f$a;->b()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p2}, Lcom/baidu/c/f$a;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_b
    move-object p1, v1

    :goto_4
    aput-object p1, v5, v8

    invoke-virtual {p2}, Lcom/baidu/c/f$a;->c()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p2}, Lcom/baidu/c/f$a;->c()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_c
    aput-object v1, v5, v4

    invoke-virtual {v0}, Lcom/baidu/c/b$b;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-static {v2, v5}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/baidu/c/b;

    sget-object v1, Lcom/baidu/c/b$a;->a:Lcom/baidu/c/b$a;

    invoke-virtual {p2}, Lcom/baidu/c/f$a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Lcom/baidu/c/f$a;->c()Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/baidu/c/b;-><init>(Lcom/baidu/c/b$b;Lcom/baidu/c/b$a;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p1

    :cond_d
    iget-object p2, p0, Lcom/baidu/c/a;->c:Lcom/baidu/c/e;

    invoke-virtual {p2, p1}, Lcom/baidu/c/e;->a(Ljava/lang/String;)Lcom/baidu/c/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/baidu/c/b;->b()Lcom/baidu/c/b$a;

    move-result-object v0

    sget-object v2, Lcom/baidu/c/b$a;->a:Lcom/baidu/c/b$a;

    if-ne v0, v2, :cond_10

    new-instance v0, Lcom/baidu/c/f$a;

    invoke-direct {v0}, Lcom/baidu/c/f$a;-><init>()V

    const-wide/16 v9, 0x3c

    invoke-virtual {v0, v9, v10}, Lcom/baidu/c/f$a;->a(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-virtual {v0, v9, v10}, Lcom/baidu/c/f$a;->b(J)V

    invoke-virtual {p2}, Lcom/baidu/c/b;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/c/f$a;->a(Ljava/util/ArrayList;)V

    invoke-virtual {p2}, Lcom/baidu/c/b;->d()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/c/f$a;->b(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/baidu/c/a;->d:Lcom/baidu/c/f;

    invoke-virtual {v2, p1, v0}, Lcom/baidu/c/f;->a(Ljava/lang/String;Lcom/baidu/c/f$a;)V

    const-string v2, "Sync resolve successful, host(%s) ipList(%s) ipv6List(%s) resolveType(%s)"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-virtual {v0}, Lcom/baidu/c/f$a;->b()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {v0}, Lcom/baidu/c/f$a;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_e
    move-object p1, v1

    :goto_5
    aput-object p1, v5, v8

    invoke-virtual {v0}, Lcom/baidu/c/f$a;->c()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {v0}, Lcom/baidu/c/f$a;->c()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_f
    aput-object v1, v5, v4

    invoke-virtual {p2}, Lcom/baidu/c/b;->a()Lcom/baidu/c/b$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/c/b$b;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-static {v2, v5}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_10
    const-string v0, "Sync resolve failed, host(%s), dns resolve failed"

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p1, v1, v7

    invoke-static {v0, v1}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2
.end method

.method a()Lcom/baidu/c/f;
    .locals 1

    iget-object v0, p0, Lcom/baidu/c/a;->e:Lcom/baidu/c/f;

    return-object v0
.end method

.method public a(Lcom/baidu/c/a$a;)V
    .locals 3

    iput-object p1, p0, Lcom/baidu/c/a;->h:Lcom/baidu/c/a$a;

    sget-object v0, Lcom/baidu/c/a$a;->c:Lcom/baidu/c/a$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/c/a;->e:Lcom/baidu/c/f;

    invoke-virtual {v0, v2}, Lcom/baidu/c/f;->a(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/c/a;->e:Lcom/baidu/c/f;

    invoke-virtual {v0, v1}, Lcom/baidu/c/f;->a(Z)V

    :goto_0
    const-string v0, "Set cache policy to %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/baidu/c/a$a;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountID length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is bigger than 64"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/c/a;->b:Lcom/baidu/c/g;

    invoke-virtual {v0, p1}, Lcom/baidu/c/g;->c(Ljava/lang/String;)V

    const-string v0, "Set account id to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const-string p1, "Set pre resolve hosts error, get empty hosts"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/baidu/c/a;->b:Lcom/baidu/c/g;

    invoke-virtual {p1}, Lcom/baidu/c/g;->d()I

    move-result p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, p1, :cond_1

    const-string v2, "The current number of hosts is %d, and the max supported size is %s.Please reduce it to %s or less."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-static {v2, v4}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget p1, p0, Lcom/baidu/c/a;->k:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/baidu/c/a;->k:I

    iget p1, p0, Lcom/baidu/c/a;->k:I

    if-le p1, v3, :cond_2

    const-string p1, "You have already set PreResolveHosts, it is best to set it only once."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/c/a;->i:J

    const-string p1, ""

    move-object v2, p1

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Set pre resolve hosts: %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/baidu/c/a;->b:Lcom/baidu/c/g;

    sget-object v1, Lcom/baidu/c/g$d;->a:Lcom/baidu/c/g$d;

    new-instance v2, Lcom/baidu/c/i;

    iget-object v3, p0, Lcom/baidu/c/a;->g:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/baidu/c/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/baidu/c/g;->a(Ljava/lang/String;Lcom/baidu/c/g$d;Lcom/baidu/c/g$a;)V

    :cond_4
    return-void
.end method

.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/c/a;->b:Lcom/baidu/c/g;

    invoke-virtual {v0, p1}, Lcom/baidu/c/g;->a(Z)V

    const-string v0, "Set https enabled to %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/c/a;->f:Lcom/baidu/c/c;

    invoke-virtual {v0, p1}, Lcom/baidu/c/c;->a(Z)V

    iget-object v0, p0, Lcom/baidu/c/a;->f:Lcom/baidu/c/c;

    invoke-virtual {v0, p2}, Lcom/baidu/c/c;->b(Z)V

    const-string v0, "Set network change policy, clearCache(%b), httpDnsPrefetch(%b)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method b()Lcom/baidu/c/f;
    .locals 1

    iget-object v0, p0, Lcom/baidu/c/a;->d:Lcom/baidu/c/f;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_2

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/baidu/c/a;->b:Lcom/baidu/c/g;

    invoke-virtual {v1, p1}, Lcom/baidu/c/g;->d(Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v5, v0, -0x6

    if-ge v3, v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2a

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Set secret to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/baidu/c/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secret length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") check failed"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method c()Lcom/baidu/c/a$a;
    .locals 1

    iget-object v0, p0, Lcom/baidu/c/a;->h:Lcom/baidu/c/a$a;

    return-object v0
.end method

.method d()Lcom/baidu/c/g;
    .locals 1

    iget-object v0, p0, Lcom/baidu/c/a;->b:Lcom/baidu/c/g;

    return-object v0
.end method

.method e()I
    .locals 1

    iget v0, p0, Lcom/baidu/c/a;->k:I

    return v0
.end method
