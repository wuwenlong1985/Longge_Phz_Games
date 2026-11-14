.class public Lcom/baidu/xclient/gdid/b;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:Lcom/baidu/xclient/gdid/b;


# instance fields
.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/xclient/gdid/b;
    .locals 2

    sget-object v0, Lcom/baidu/xclient/gdid/b;->a:Lcom/baidu/xclient/gdid/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/baidu/xclient/gdid/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/xclient/gdid/b;->a:Lcom/baidu/xclient/gdid/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/xclient/gdid/b;

    invoke-direct {v1}, Lcom/baidu/xclient/gdid/b;-><init>()V

    sput-object v1, Lcom/baidu/xclient/gdid/b;->a:Lcom/baidu/xclient/gdid/b;

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
    sget-object v0, Lcom/baidu/xclient/gdid/b;->a:Lcom/baidu/xclient/gdid/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/xclient/gdid/b;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/baidu/xclient/gdid/b;->b()V

    return-void
.end method

.method public b()V
    .locals 8

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/xclient/gdid/f;->b()J

    move-result-wide v0

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/xclient/gdid/f;->c()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    cmp-long v0, v6, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/xclient/gdid/b;->c()V

    return-void
.end method

.method public final c()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/baidu/xclient/gdid/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/xclient/gdid/e/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/xclient/gdid/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mshield/b/e/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/baidu/xclient/gdid/b/a;

    iget-object v1, p0, Lcom/baidu/xclient/gdid/b;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/xclient/gdid/b/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/baidu/xclient/gdid/b/a;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/xclient/gdid/f;->a(J)V

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "1"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/xclient/gdid/f;->a(I)V

    const-string v0, "2"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v0, :cond_1d

    const-string v5, "j"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-ltz v9, :cond_4

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v7

    sget-wide v8, Lcom/baidu/xclient/gdid/c/a;->a:J

    mul-long v5, v5, v8

    invoke-virtual {v7, v5, v6}, Lcom/baidu/xclient/gdid/f;->d(J)V

    :cond_4
    const-string v5, "m"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v4, :cond_6

    if-ne v5, v2, :cond_5

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/baidu/xclient/gdid/f;->a(Z)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/baidu/xclient/gdid/f;->a(Z)V

    :cond_6
    :goto_0
    const-string v5, "e"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v4, :cond_8

    if-ne v5, v2, :cond_7

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/baidu/xclient/gdid/f;->b(Z)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/baidu/xclient/gdid/f;->b(Z)V

    :cond_8
    :goto_1
    const-string v5, "d"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_9

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/baidu/xclient/gdid/f;->c(Z)V

    goto :goto_2

    :cond_9
    if-nez v5, :cond_a

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/baidu/xclient/gdid/f;->c(Z)V

    :cond_a
    :goto_2
    const-string v5, "i"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v4, :cond_c

    if-ne v5, v2, :cond_b

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/baidu/xclient/gdid/f;->g(Z)V

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/baidu/xclient/gdid/f;->g(Z)V

    :cond_c
    :goto_3
    const-string v5, "w"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v4, :cond_e

    if-ne v5, v2, :cond_d

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/baidu/xclient/gdid/f;->i(Z)V

    goto :goto_4

    :cond_d
    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/baidu/xclient/gdid/f;->i(Z)V

    :cond_e
    :goto_4
    const-string v5, "p"

    const-string v6, "-1"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/baidu/xclient/gdid/f;->f(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/baidu/xclient/gdid/f;->b(Ljava/lang/String;)V

    const-string v5, "o"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_10

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/baidu/xclient/gdid/f;->h(Z)V

    goto :goto_5

    :cond_10
    if-nez v5, :cond_11

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/baidu/xclient/gdid/f;->h(Z)V

    :cond_11
    :goto_5
    const-string v5, "a"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_12

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/baidu/xclient/gdid/f;->j(Z)V

    goto :goto_6

    :cond_12
    if-nez v5, :cond_13

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/baidu/xclient/gdid/f;->j(Z)V

    :cond_13
    :goto_6
    const-string v5, "t"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_14

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/baidu/xclient/gdid/f;->k(Z)V

    goto :goto_7

    :cond_14
    if-nez v5, :cond_15

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/baidu/xclient/gdid/f;->k(Z)V

    :cond_15
    :goto_7
    const-string v5, "n"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_16

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/baidu/xclient/gdid/f;->l(Z)V

    goto :goto_8

    :cond_16
    if-nez v5, :cond_17

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/baidu/xclient/gdid/f;->l(Z)V

    :cond_17
    :goto_8
    const-string v5, "h"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_18

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/baidu/xclient/gdid/f;->e(Z)V

    goto :goto_9

    :cond_18
    if-nez v5, :cond_19

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/baidu/xclient/gdid/f;->e(Z)V

    :cond_19
    :goto_9
    const-string v5, "f"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_1a

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/baidu/xclient/gdid/f;->f(Z)V

    goto :goto_a

    :cond_1a
    if-nez v5, :cond_1b

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/baidu/xclient/gdid/f;->f(Z)V

    :cond_1b
    :goto_a
    const-string v5, "aa"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1c

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/xclient/gdid/f;->d(Z)V

    goto :goto_b

    :cond_1c
    if-nez v0, :cond_1d

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/xclient/gdid/f;->d(Z)V

    :cond_1d
    :goto_b
    const-string v0, "6"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1e

    const-string v2, "1"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v5, v2

    sget-wide v7, Lcom/baidu/xclient/gdid/c/a;->a:J

    mul-long v5, v5, v7

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lcom/baidu/xclient/gdid/f;->b(J)V

    const-string v2, "2"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v5, v2

    sget-wide v7, Lcom/baidu/xclient/gdid/c/a;->a:J

    mul-long v5, v5, v7

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lcom/baidu/xclient/gdid/f;->f(J)V

    const-string v2, "4"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    sget-wide v5, Lcom/baidu/xclient/gdid/c/a;->a:J

    mul-long v2, v2, v5

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/baidu/xclient/gdid/f;->h(J)V

    :cond_1e
    const-string v0, "7"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v2, "s"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/xclient/gdid/f;->e(I)V

    const-string v2, "d"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/xclient/gdid/f;->b(I)V

    const-string v2, "j"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/xclient/gdid/f;->c(I)V

    const-string v2, "c"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/xclient/gdid/f;->d(I)V

    const-string v2, "o"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/xclient/gdid/f;->f(I)V

    :cond_1f
    const-string v0, "5"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/xclient/gdid/f;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    return-void

    :cond_20
    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/xclient/gdid/f;->a(Ljava/lang/String;)V

    const-string v0, "3"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "4"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "8"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/xclient/gdid/f;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/xclient/gdid/f;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/xclient/gdid/f;->a()Lcom/baidu/xclient/gdid/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/xclient/gdid/f;->g(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/xclient/gdid/e/d;->a(Ljava/lang/Throwable;)V

    return-void
.end method
