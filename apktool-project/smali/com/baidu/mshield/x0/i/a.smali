.class public Lcom/baidu/mshield/x0/i/a;
.super Ljava/lang/Object;
.source "ReceiverProcessCenter.java"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 18
    :try_start_0
    invoke-static {p0}, Lcom/baidu/mshield/x0/h/a;->a(Landroid/content/Context;)Lcom/baidu/mshield/x0/h/a;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/baidu/mshield/x0/i/b;

    invoke-direct {v1, p0}, Lcom/baidu/mshield/x0/i/b;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/baidu/mshield/x0/h/a;->a(Lcom/baidu/mshield/x0/h/a$a;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 28
    invoke-static {p0}, Lcom/baidu/mshield/x0/b/d;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "secac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x409b949d

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x4c37e806    # 4.8209944E7f

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "com.baidu.mshield.x0.detect.app.fr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "com.baidu.mshield.x0.timer.pp.action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    invoke-static {p0}, Lcom/baidu/mshield/x0/a/d;->a(Landroid/content/Context;)V

    .line 8
    invoke-static {p0}, Lcom/baidu/mshield/x0/b/b;->c(Landroid/content/Context;)V

    goto :goto_1

    .line 9
    :cond_5
    invoke-static {p0}, Lcom/baidu/mshield/x0/i/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 17
    invoke-static {p0}, Lcom/baidu/mshield/x0/b/d;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
