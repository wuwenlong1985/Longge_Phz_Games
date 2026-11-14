.class public Lcom/baidu/mshield/x6/d/b;
.super Ljava/lang/Object;
.source "HandleImAidCheck.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/baidu/mshield/x6/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baidu/mshield/x6/d/b;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Lcom/baidu/mshield/x6/a/b;

    iget-object v0, p0, Lcom/baidu/mshield/x6/d/b;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/baidu/mshield/x6/a/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/baidu/mshield/x6/d/b;->b:Lcom/baidu/mshield/x6/a/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mshield/x6/d/b;->b:Lcom/baidu/mshield/x6/a/b;

    invoke-virtual {v0}, Lcom/baidu/mshield/x6/a/b;->n()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ""

    .line 3
    :try_start_1
    iget-object v2, p0, Lcom/baidu/mshield/x6/d/b;->a:Landroid/content/Context;

    .line 4
    invoke-static {v2}, Lcom/baidu/mshield/x6/EngineImpl;->getInstance(Landroid/content/Context;)Lcom/baidu/mshield/x6/EngineImpl;

    move-result-object v2

    const-string v3, "arid"

    invoke-virtual {v2, v3}, Lcom/baidu/mshield/x6/EngineImpl;->getPropertyByType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    const-string v1, ""

    .line 8
    :cond_0
    :try_start_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    const-string v2, ""

    .line 11
    :cond_1
    :try_start_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mshield/b/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/baidu/mshield/x6/d/b;->b:Lcom/baidu/mshield/x6/a/b;

    invoke-virtual {v1, v0}, Lcom/baidu/mshield/x6/a/b;->l(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mshield/b/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 20
    iget-object v0, p0, Lcom/baidu/mshield/x6/d/b;->b:Lcom/baidu/mshield/x6/a/b;

    invoke-virtual {v0, v1}, Lcom/baidu/mshield/x6/a/b;->l(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/baidu/mshield/x6/d/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mshield/x6/d/i;->a(Landroid/content/Context;)Lcom/baidu/mshield/x6/d/i;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Lcom/baidu/mshield/x6/d/i;->a(IZ)V

    .line 24
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/baidu/mshield/x6/d/b;->b:Lcom/baidu/mshield/x6/a/b;

    invoke-virtual {v0, v4}, Lcom/baidu/mshield/x6/a/b;->f(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 26
    invoke-static {v0}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
