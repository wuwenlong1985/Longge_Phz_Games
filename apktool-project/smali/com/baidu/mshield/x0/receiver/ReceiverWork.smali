.class public Lcom/baidu/mshield/x0/receiver/ReceiverWork;
.super Landroid/content/BroadcastReceiver;
.source "ReceiverWork.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/baidu/mshield/x0/EngineImpl;->isUnload:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.baidu.mshield.x0.alarm.action"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    new-instance p1, Lcom/baidu/mshield/x0/j/a;

    invoke-direct {p1, p0}, Lcom/baidu/mshield/x0/j/a;-><init>(Landroid/content/Context;)V

    const-wide/32 v0, 0xea60

    .line 8
    invoke-static {p0}, Lcom/baidu/mshield/x0/b/b;->a(Landroid/content/Context;)I

    move-result v2

    int-to-long v2, v2

    mul-long v2, v2, v0

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v4, 0x0

    add-long v4, v0, v2

    invoke-virtual {p1, v4, v5}, Lcom/baidu/mshield/x0/j/a;->c(J)V

    .line 10
    invoke-static {p0, v2, v3}, Lcom/baidu/mshield/x0/b/b;->a(Landroid/content/Context;J)V

    .line 11
    invoke-static {p0}, Lcom/baidu/mshield/x0/d/a;->a(Landroid/content/Context;)Lcom/baidu/mshield/x0/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mshield/x0/d/a;->a()Ljava/util/List;

    move-result-object p1

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long v4, v0, v2

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mshield/x0/b/a;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rec t:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/baidu/mshield/x0/b/a;->c:J

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2, v3, v6}, Lcom/baidu/mshield/x0/b/d;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/baidu/mshield/x0/b/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    .line 16
    iget-wide v1, v0, Lcom/baidu/mshield/x0/b/a;->c:J

    cmp-long v3, v4, v1

    if-ltz v3, :cond_1

    .line 17
    iget-object v0, v0, Lcom/baidu/mshield/x0/b/a;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/baidu/mshield/x0/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 24
    invoke-static {p0}, Lcom/baidu/mshield/x0/b/d;->a(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/baidu/mshield/x0/EngineImpl;->isUnload:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/baidu/mshield/x0/i/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/baidu/mshield/x0/b/a/d;->a()Lcom/baidu/mshield/x0/b/a/d;

    move-result-object v0

    new-instance v1, Lcom/baidu/mshield/x0/receiver/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mshield/x0/receiver/a;-><init>(Lcom/baidu/mshield/x0/receiver/ReceiverWork;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/baidu/mshield/x0/b/a/d;->a(Lcom/baidu/mshield/x0/b/a/a;)V

    return-void
.end method
