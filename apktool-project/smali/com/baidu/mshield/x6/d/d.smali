.class public Lcom/baidu/mshield/x6/d/d;
.super Ljava/lang/Object;
.source "HandleSimState.java"


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baidu/mshield/x6/d/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Lcom/baidu/mshield/x6/a/b;

    iget-object v1, p0, Lcom/baidu/mshield/x6/d/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/mshield/x6/a/b;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/baidu/mshield/x6/d/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/mshield/x6/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/baidu/mshield/x6/d/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/mshield/x6/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lcom/baidu/mshield/x6/a/b;->d()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v0}, Lcom/baidu/mshield/x6/a/b;->e()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 7
    invoke-static {v3}, Lcom/baidu/mshield/b/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v0, v3}, Lcom/baidu/mshield/x6/a/b;->d(Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 11
    invoke-static {v4}, Lcom/baidu/mshield/b/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v0, v4}, Lcom/baidu/mshield/x6/a/b;->e(Ljava/lang/String;)V

    .line 15
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_4

    .line 16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 17
    invoke-static {v1}, Lcom/baidu/mshield/b/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/baidu/mshield/b/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 18
    :cond_2
    invoke-virtual {v0, v6}, Lcom/baidu/mshield/x6/a/b;->a(Z)V

    .line 19
    invoke-static {v1}, Lcom/baidu/mshield/b/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mshield/x6/a/b;->d(Ljava/lang/String;)V

    .line 20
    invoke-static {v2}, Lcom/baidu/mshield/b/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mshield/x6/a/b;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_3
    invoke-static {v1}, Lcom/baidu/mshield/b/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 24
    invoke-virtual {v0, v6}, Lcom/baidu/mshield/x6/a/b;->a(Z)V

    .line 25
    invoke-static {v1}, Lcom/baidu/mshield/b/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mshield/x6/a/b;->d(Ljava/lang/String;)V

    const-string v1, ""

    .line 26
    invoke-virtual {v0, v1}, Lcom/baidu/mshield/x6/a/b;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 31
    invoke-static {v2}, Lcom/baidu/mshield/b/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 32
    invoke-virtual {v0, v6}, Lcom/baidu/mshield/x6/a/b;->a(Z)V

    const-string v1, ""

    .line 33
    invoke-virtual {v0, v1}, Lcom/baidu/mshield/x6/a/b;->d(Ljava/lang/String;)V

    .line 34
    invoke-static {v2}, Lcom/baidu/mshield/b/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mshield/x6/a/b;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 38
    invoke-virtual {v0, v6}, Lcom/baidu/mshield/x6/a/b;->a(Z)V

    const-string v1, ""

    .line 39
    invoke-virtual {v0, v1}, Lcom/baidu/mshield/x6/a/b;->d(Ljava/lang/String;)V

    const-string v1, ""

    .line 40
    invoke-virtual {v0, v1}, Lcom/baidu/mshield/x6/a/b;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 46
    invoke-static {v0}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    return-void
.end method
