.class public Lcom/baidu/mshield/x6/e/l;
.super Ljava/lang/Object;
.source "PolicyUtil.java"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = ""

.field public static c:Ljava/lang/String; = ""

.field public static d:Ljava/lang/String; = ""

.field public static e:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9

    .line 1
    const-class v0, Lcom/baidu/mshield/x6/e/l;

    monitor-enter v0

    const/4 v1, -0x1

    .line 3
    :try_start_0
    new-instance v2, Lcom/baidu/mshield/x6/a/b;

    invoke-direct {v2, p0}, Lcom/baidu/mshield/x6/a/b;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v2}, Lcom/baidu/mshield/x6/a/b;->t()J

    move-result-wide v3

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v7, 0x0

    sub-long v7, v5, v3

    const-wide/32 v3, 0x493e0

    cmp-long v5, v7, v3

    if-gez v5, :cond_0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    return v1

    .line 9
    :cond_0
    :try_start_2
    new-instance v3, Lcom/baidu/mshield/x6/c/a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/baidu/mshield/x6/c/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 10
    invoke-virtual {v3, p1}, Lcom/baidu/mshield/x6/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/baidu/mshield/x6/a/b;->b(J)V

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mshield/b/c/a;->c(Ljava/lang/String;)V

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v2, :cond_1

    .line 14
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    return v1

    .line 17
    :cond_1
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    const-string p1, "status"

    .line 24
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 26
    :try_start_6
    invoke-static {p1}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object p1, v4

    :goto_0
    :try_start_7
    const-string v3, "xid"

    .line 29
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    .line 31
    :try_start_8
    invoke-static {v3}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object v3, v4

    :goto_1
    :try_start_9
    const-string v5, "bs"

    .line 34
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v5

    .line 36
    :try_start_a
    invoke-static {v5}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    move-object v5, v4

    :goto_2
    if-eqz p1, :cond_2

    const-string v6, "99999999"

    .line 38
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz p1, :cond_2

    const/16 p0, -0x63

    .line 39
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    return p0

    .line 42
    :cond_2
    :try_start_c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 46
    invoke-static {}, Lcom/baidu/mshield/x6/b/b;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 47
    new-instance p1, Lcom/baidu/mshield/x6/a/b;

    invoke-direct {p1, p0}, Lcom/baidu/mshield/x6/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/baidu/mshield/x6/a/b;->c()Ljava/lang/String;

    move-result-object p1

    const-string v6, "x_o_b_d"

    .line 48
    invoke-static {p0, v6}, Lcom/baidu/mshield/x6/e/b;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ".x_o_b_d"

    .line 49
    invoke-static {p0, v7}, Lcom/baidu/mshield/x6/e/b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 51
    :cond_3
    new-instance p1, Lcom/baidu/mshield/x6/a/b;

    invoke-direct {p1, p0}, Lcom/baidu/mshield/x6/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/baidu/mshield/x6/a/b;->b()Ljava/lang/String;

    move-result-object p1

    const-string v6, "x_b_d"

    .line 52
    invoke-static {p0, v6}, Lcom/baidu/mshield/x6/e/b;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ".x_b_d"

    .line 53
    invoke-static {p0, v7}, Lcom/baidu/mshield/x6/e/b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 55
    :goto_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 56
    :cond_4
    invoke-static {p0, v3}, Lcom/baidu/mshield/x6/e/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 64
    invoke-static {}, Lcom/baidu/mshield/x6/b/b;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 65
    new-instance p1, Lcom/baidu/mshield/x6/a/b;

    invoke-direct {p1, p0}, Lcom/baidu/mshield/x6/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/baidu/mshield/x6/a/b;->k()Ljava/lang/String;

    move-result-object p1

    const-string v3, "g_m_o_bs"

    .line 66
    invoke-static {p0, v3}, Lcom/baidu/mshield/x6/e/b;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, ".g_m_o_bs"

    .line 67
    invoke-static {p0, v6}, Lcom/baidu/mshield/x6/e/b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 69
    :cond_6
    new-instance p1, Lcom/baidu/mshield/x6/a/b;

    invoke-direct {p1, p0}, Lcom/baidu/mshield/x6/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/baidu/mshield/x6/a/b;->j()Ljava/lang/String;

    move-result-object p1

    const-string v3, "g_m_b_s"

    .line 70
    invoke-static {p0, v3}, Lcom/baidu/mshield/x6/e/b;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, ".g_m_b_s"

    .line 71
    invoke-static {p0, v6}, Lcom/baidu/mshield/x6/e/b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 73
    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 74
    :cond_7
    invoke-static {p0, v5}, Lcom/baidu/mshield/x6/e/b;->e(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_8
    :try_start_d
    const-string p1, "ver"

    .line 79
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 80
    :try_start_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 81
    invoke-static {p0, p1}, Lcom/baidu/mshield/x6/e/b;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v2

    goto :goto_5

    :catchall_4
    move-exception v2

    move-object p1, v4

    .line 84
    :goto_5
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mshield/b/c/a;->c(Ljava/lang/String;)V

    .line 85
    invoke-static {v2}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    .line 87
    :cond_9
    :goto_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 88
    invoke-static {p0, p1}, Lcom/baidu/mshield/x6/e/b;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :cond_a
    const/4 p0, 0x0

    .line 90
    :try_start_10
    monitor-exit v0

    return p0

    :catchall_5
    move-exception p0

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mshield/b/c/a;->c(Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    .line 96
    monitor-exit v0

    return v1

    :catchall_6
    move-exception p0

    .line 97
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 7

    const/16 v0, -0x64

    .line 98
    :try_start_0
    new-instance v1, Lcom/baidu/mshield/x6/a/b;

    invoke-direct {v1, p0}, Lcom/baidu/mshield/x6/a/b;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-static {p0}, Lcom/baidu/mshield/b/a/d;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, -0x1

    .line 100
    invoke-virtual {v1, p1}, Lcom/baidu/mshield/x6/a/b;->h(I)V

    return v0

    .line 104
    :cond_0
    new-instance v2, Lcom/baidu/mshield/x6/c/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/baidu/mshield/x6/c/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 105
    invoke-virtual {v2, p1}, Lcom/baidu/mshield/x6/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    invoke-virtual {v1}, Lcom/baidu/mshield/x6/a/b;->E()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, -0x2

    .line 109
    invoke-virtual {v1, p1}, Lcom/baidu/mshield/x6/a/b;->h(I)V

    :cond_1
    return v0

    .line 114
    :cond_2
    invoke-virtual {v1, p1}, Lcom/baidu/mshield/x6/a/b;->u(Ljava/lang/String;)V

    .line 115
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance p1, Lcom/baidu/mshield/x6/a/c;

    invoke-direct {p1, p0}, Lcom/baidu/mshield/x6/a/c;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const-string v3, ""

    const/4 v4, 0x1

    :try_start_1
    const-string v5, "token"

    .line 120
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    if-ne p2, v4, :cond_3

    .line 124
    invoke-virtual {p1, v5}, Lcom/baidu/mshield/x6/a/c;->b(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/mshield/x6/a/c;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_3
    invoke-virtual {p1, v5}, Lcom/baidu/mshield/x6/a/c;->a(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/mshield/x6/a/c;->c(Ljava/lang/String;)V

    const-string p2, ""

    .line 129
    invoke-virtual {p1, p2}, Lcom/baidu/mshield/x6/a/c;->b(Ljava/lang/String;)V

    const-string p2, ""

    .line 130
    invoke-virtual {p1, p2}, Lcom/baidu/mshield/x6/a/c;->d(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lcom/baidu/mshield/x6/a/b;->c(J)V

    .line 135
    :cond_4
    :goto_0
    invoke-virtual {v1, v4}, Lcom/baidu/mshield/x6/a/b;->d(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 138
    :try_start_2
    invoke-static {p1}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :goto_1
    :try_start_3
    const-string p1, "nc"

    .line 142
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 144
    :try_start_4
    invoke-static {p1}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    move-object p1, v3

    .line 148
    :goto_2
    invoke-virtual {v1}, Lcom/baidu/mshield/x6/a/b;->m()Z

    move-result p2

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    .line 149
    invoke-virtual {v1, v3}, Lcom/baidu/mshield/x6/a/b;->e(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :cond_5
    :try_start_5
    const-string p2, "rmf"

    .line 154
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 156
    invoke-static {p0, v3}, Lcom/baidu/mshield/x6/e/f;->a(Landroid/content/Context;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 158
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/baidu/mshield/x6/a/b;->x(Ljava/lang/String;)V

    const-string v5, ""

    .line 159
    sput-object v5, Lcom/baidu/mshield/x6/e/l;->e:Ljava/lang/String;

    goto :goto_3

    .line 161
    :cond_6
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/baidu/mshield/x6/e/l;->e:Ljava/lang/String;

    .line 162
    invoke-virtual {v1}, Lcom/baidu/mshield/x6/a/b;->O()V

    :goto_3
    const-string v5, "1"

    .line 164
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 165
    new-instance v5, Ljava/lang/String;

    .line 166
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p2

    .line 167
    invoke-static {p2}, Lcom/baidu/mshield/b/a/c;->b([B)[B

    move-result-object p2

    const-string v6, "utf-8"

    invoke-direct {v5, p2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 169
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getZidChecktor ungzRmf : "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string p2, ""

    .line 171
    sput-object p2, Lcom/baidu/mshield/x6/e/l;->e:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p2

    .line 174
    :try_start_6
    invoke-static {p2}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    :goto_4
    const-string p2, "1"

    .line 178
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "nt"

    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "nt"

    .line 179
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_8

    goto :goto_5

    :cond_8
    const/4 p2, 0x0

    goto :goto_6

    .line 180
    :cond_9
    :goto_5
    invoke-static {p0}, Lcom/baidu/mshield/x6/e/l;->a(Landroid/content/Context;)Z

    move-result p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :goto_6
    if-nez p2, :cond_a

    return v3

    .line 187
    :cond_a
    :try_start_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "1"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 188
    invoke-static {p0}, Lcom/baidu/mshield/x6/d/i;->a(Landroid/content/Context;)Lcom/baidu/mshield/x6/d/i;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v4}, Lcom/baidu/mshield/x6/d/i;->a(IZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception p1

    .line 192
    :try_start_8
    invoke-static {p1}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :cond_b
    :goto_7
    :try_start_9
    const-string p1, "op"

    .line 196
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, "da"

    .line 197
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 198
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/baidu/mshield/x6/a/b;->w(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1, p1}, Lcom/baidu/mshield/x6/a/b;->i(I)V

    const-string p1, "nt"

    .line 201
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "nt"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_c

    .line 204
    invoke-virtual {v1, v3}, Lcom/baidu/mshield/x6/a/b;->d(Z)V

    const-string p1, "nt"

    .line 205
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 206
    invoke-static {}, Lcom/baidu/mshield/x6/e/a/c;->a()Lcom/baidu/mshield/x6/e/a/c;

    move-result-object p2

    new-instance v1, Lcom/baidu/mshield/x6/e/m;

    invoke-direct {v1, p1, p0}, Lcom/baidu/mshield/x6/e/m;-><init>(ILandroid/content/Context;)V

    invoke-virtual {p2, v1}, Lcom/baidu/mshield/x6/e/a/c;->a(Lcom/baidu/mshield/x6/e/a/e;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_c
    return v3

    :catchall_4
    move-exception p1

    .line 223
    :try_start_a
    invoke-static {p1}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception p1

    .line 227
    invoke-static {p1}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    .line 229
    :try_start_b
    new-instance p1, Lcom/baidu/mshield/x6/a/b;

    invoke-direct {p1, p0}, Lcom/baidu/mshield/x6/a/b;-><init>(Landroid/content/Context;)V

    .line 230
    invoke-virtual {p1}, Lcom/baidu/mshield/x6/a/b;->E()I

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, -0x4

    .line 231
    invoke-virtual {p1, p0}, Lcom/baidu/mshield/x6/a/b;->h(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception p0

    .line 234
    invoke-static {p0}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    :cond_d
    :goto_8
    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Lcom/baidu/mshield/x6/a/b;

    invoke-direct {v0, p0}, Lcom/baidu/mshield/x6/a/b;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    invoke-virtual {v0}, Lcom/baidu/mshield/x6/a/b;->K()J

    move-result-wide v3

    const/4 p0, 0x0

    sub-long v5, v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long p0, v5, v3

    const/4 v3, 0x1

    if-lez p0, :cond_0

    .line 5
    invoke-virtual {v0, v3}, Lcom/baidu/mshield/x6/a/b;->k(I)V

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/baidu/mshield/x6/a/b;->d(J)V

    const-string p0, "time limit , reset last time and count"

    .line 7
    invoke-static {p0}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mshield/x6/a/b;->J()I

    move-result p0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/mshield/x6/a/b;->I()I

    move-result v1

    if-ge p0, v1, :cond_1

    add-int/2addr p0, v3

    .line 13
    invoke-virtual {v0, p0}, Lcom/baidu/mshield/x6/a/b;->k(I)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count not limit return true , count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V

    return v3

    :cond_1
    const-string p0, "count limit return false "

    .line 17
    invoke-static {p0}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 19
    invoke-static {p0}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 235
    :try_start_0
    new-instance v0, Lcom/baidu/mshield/x6/c/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/mshield/x6/c/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 236
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v2, "4"

    .line 237
    :try_start_1
    invoke-static {p0}, Lcom/baidu/mshield/b/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 239
    new-instance v3, Lcom/baidu/mshield/x6/a/b;

    invoke-direct {v3, p0}, Lcom/baidu/mshield/x6/a/b;-><init>(Landroid/content/Context;)V

    .line 241
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 242
    invoke-virtual {v3}, Lcom/baidu/mshield/x6/a/b;->u()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    .line 243
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    invoke-virtual {v3}, Lcom/baidu/mshield/x6/a/b;->y()Ljava/lang/String;

    move-result-object v5

    .line 246
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 247
    invoke-static {p0}, Lcom/baidu/mshield/b/a/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 248
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " manufacturer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V

    .line 249
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 250
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/mshield/b/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 251
    invoke-virtual {v3, v5}, Lcom/baidu/mshield/x6/a/b;->p(Ljava/lang/String;)V

    :cond_0
    const-string v6, "2"

    .line 254
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    invoke-virtual {v3}, Lcom/baidu/mshield/x6/a/b;->x()Ljava/lang/String;

    move-result-object v5

    .line 257
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 258
    invoke-static {p0}, Lcom/baidu/mshield/x6/EngineImpl;->getInstance(Landroid/content/Context;)Lcom/baidu/mshield/x6/EngineImpl;

    move-result-object v6

    const-string v7, "mod"

    .line 259
    invoke-virtual {v6, v7}, Lcom/baidu/mshield/x6/EngineImpl;->getPropertyByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 260
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " model: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V

    .line 261
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 262
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/mshield/b/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 263
    invoke-virtual {v3, v5}, Lcom/baidu/mshield/x6/a/b;->o(Ljava/lang/String;)V

    :cond_1
    const-string v6, "3"

    .line 266
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    invoke-virtual {v3}, Lcom/baidu/mshield/x6/a/b;->z()Ljava/lang/String;

    move-result-object v5

    .line 269
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 270
    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 271
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " buildId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V

    .line 272
    invoke-static {v5}, Lcom/baidu/mshield/b/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 273
    invoke-virtual {v3, v5}, Lcom/baidu/mshield/x6/a/b;->q(Ljava/lang/String;)V

    :cond_2
    const-string v6, "4"

    .line 275
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    invoke-virtual {v3}, Lcom/baidu/mshield/x6/a/b;->B()Ljava/lang/String;

    move-result-object v5

    .line 278
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 279
    invoke-static {p0}, Lcom/baidu/mshield/b/a/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 280
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " romName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V

    .line 281
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 282
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/mshield/b/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 283
    invoke-virtual {v3, v5}, Lcom/baidu/mshield/x6/a/b;->s(Ljava/lang/String;)V

    :cond_3
    const-string v6, "5"

    .line 286
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    invoke-virtual {v3}, Lcom/baidu/mshield/x6/a/b;->C()Ljava/lang/String;

    move-result-object v5

    .line 289
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 290
    invoke-static {p0}, Lcom/baidu/mshield/b/a/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 291
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " romVersion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V

    .line 292
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 293
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/mshield/b/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 294
    invoke-virtual {v3, v5}, Lcom/baidu/mshield/x6/a/b;->t(Ljava/lang/String;)V

    :cond_4
    const-string v6, "6"

    .line 297
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    invoke-virtual {v3}, Lcom/baidu/mshield/x6/a/b;->A()Ljava/lang/String;

    move-result-object v5

    .line 300
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 301
    invoke-static {p0}, Lcom/baidu/mshield/x6/EngineImpl;->getInstance(Landroid/content/Context;)Lcom/baidu/mshield/x6/EngineImpl;

    move-result-object v6

    const-string v7, "arv"

    .line 302
    invoke-virtual {v6, v7}, Lcom/baidu/mshield/x6/EngineImpl;->getPropertyByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 303
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " romVersion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V

    .line 304
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 306
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/mshield/b/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 307
    invoke-virtual {v3, v5}, Lcom/baidu/mshield/x6/a/b;->r(Ljava/lang/String;)V

    :cond_5
    const-string v3, "7"

    .line 310
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    invoke-static {p0}, Lcom/baidu/mshield/x6/e/f;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 313
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string p0, "9"

    const-string v3, ""

    .line 314
    invoke-virtual {v4, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 317
    :cond_6
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "2"

    const-string v5, ""

    .line 318
    invoke-virtual {v3, p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "9"

    .line 319
    invoke-virtual {v4, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 321
    :try_start_3
    invoke-static {p0}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    :goto_0
    const-string p0, "f"

    .line 325
    invoke-virtual {v2, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string p0, "module_section"

    .line 326
    :try_start_4
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "f/2/sig post body : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/baidu/mshield/x6/c/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object p0

    :catchall_1
    const-string p0, ""

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 20
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/baidu/mshield/x6/a/b;

    invoke-direct {v0, p0}, Lcom/baidu/mshield/x6/a/b;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdata:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V

    const-string p1, "1"

    .line 26
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 28
    sget-object v1, Lcom/baidu/mshield/x6/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mshield/x6/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, "2"

    .line 30
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 32
    sget-object v1, Lcom/baidu/mshield/x6/a/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mshield/x6/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "3"

    .line 34
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 36
    sget-object v1, Lcom/baidu/mshield/x6/a/b;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mshield/x6/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "4"

    .line 38
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 40
    sget-object v1, Lcom/baidu/mshield/x6/a/b;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mshield/x6/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string p1, "5"

    .line 42
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 44
    sget-object v1, Lcom/baidu/mshield/x6/a/b;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mshield/x6/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string p1, "6"

    .line 46
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 48
    sget-object v1, Lcom/baidu/mshield/x6/a/b;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mshield/x6/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string p1, "7"

    .line 50
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 52
    sget-object v1, Lcom/baidu/mshield/x6/a/b;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mshield/x6/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string p1, "8"

    .line 54
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 56
    sget-object v1, Lcom/baidu/mshield/x6/a/b;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mshield/x6/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string p1, "9"

    .line 58
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 60
    sget-object v1, Lcom/baidu/mshield/x6/a/b;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mshield/x6/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string p1, "10"

    .line 62
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 64
    sget-object v1, Lcom/baidu/mshield/x6/a/b;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mshield/x6/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string p1, "11"

    .line 66
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 68
    sget-object v1, Lcom/baidu/mshield/x6/a/b;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mshield/x6/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string p1, "12"

    .line 70
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 72
    sget-object v1, Lcom/baidu/mshield/x6/a/b;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mshield/x6/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string p1, "13"

    .line 74
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 76
    sget-object v1, Lcom/baidu/mshield/x6/a/b;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mshield/x6/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const-string p1, "14"

    .line 78
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    :try_start_1
    const-string v2, "2"

    .line 81
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_e

    const-string v3, "1"

    .line 82
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "1"

    .line 83
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "14 prv 1 origin : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mshield/b/a/c;->a([B)[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    .line 87
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "2"

    .line 88
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 91
    :try_start_2
    invoke-static {v2}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    .line 93
    :cond_e
    :goto_0
    sget-object v2, Lcom/baidu/mshield/x6/a/b;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/baidu/mshield/x6/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const-string p1, "15"

    .line 96
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_10

    :try_start_3
    const-string v2, "2"

    .line 99
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_10

    const-string v2, "1"

    .line 101
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 102
    invoke-virtual {v0}, Lcom/baidu/mshield/x6/a/b;->i()I

    move-result v2

    if-eq p1, v2, :cond_10

    if-lez p1, :cond_10

    .line 104
    invoke-virtual {v0, p1}, Lcom/baidu/mshield/x6/a/b;->b(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 108
    :try_start_4
    invoke-static {p1}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    :cond_10
    :goto_1
    const-string p1, "19"

    .line 112
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "emulator retry policy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V

    const-string v2, "2"

    .line 115
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "emulator 2 json:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v2, :cond_11

    const-string v2, "null"

    goto :goto_2

    :cond_11
    :try_start_5
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v2}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_12

    const-string v2, "1"

    .line 118
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emulator set totalCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, p1}, Lcom/baidu/mshield/x6/a/b;->c(I)V

    :cond_12
    const-string p1, "20"

    .line 123
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 125
    sget-object v1, Lcom/baidu/mshield/x6/a/b;->o:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mshield/x6/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    const-string p1, "22"

    .line 128
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_14

    const-string v1, "2"

    .line 130
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intervalJson="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    const-string v1, "1"

    const/16 v2, 0xb4

    .line 133
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/mshield/x6/a/b;->d(I)V

    const-string v1, "2"

    const/16 v2, 0x168

    .line 134
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/mshield/x6/a/b;->e(I)V

    const-string v1, "3"

    .line 135
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/mshield/x6/a/b;->f(I)V

    const-string v1, "6"

    const/16 v2, 0xa

    .line 136
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/mshield/x6/a/b;->l(I)V

    const-string v1, "7"

    .line 137
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/baidu/mshield/x6/a/b;->j(I)V

    :cond_14
    const-string p1, "23"

    .line 142
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 144
    sget-object v1, Lcom/baidu/mshield/x6/a/b;->p:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mshield/x6/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const-string p1, "24"

    .line 146
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 148
    sget-object v1, Lcom/baidu/mshield/x6/a/b;->q:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mshield/x6/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const-string p1, "25"

    .line 150
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 152
    sget-object v1, Lcom/baidu/mshield/x6/a/b;->r:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mshield/x6/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const-string p1, "26"

    .line 155
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 157
    sget-object v1, Lcom/baidu/mshield/x6/a/b;->s:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mshield/x6/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    const-string p1, "27"

    .line 160
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 162
    sget-object v1, Lcom/baidu/mshield/x6/a/b;->t:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mshield/x6/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    const-string p1, "28"

    .line 165
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 167
    sget-object p1, Lcom/baidu/mshield/x6/a/b;->u:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/baidu/mshield/x6/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_1a
    invoke-static {}, Lcom/baidu/mshield/x6/e/f;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/baidu/mshield/x6/a/b;->j(Ljava/lang/String;)V

    const-string p0, "pull static Policy for load success"

    .line 170
    invoke-static {p0}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 173
    invoke-static {p0}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
