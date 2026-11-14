.class public Lcom/baidu/mshield/x6/recv/MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MyReceiver.java"


# static fields
.field public static a:Z = true


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/baidu/mshield/x6/EngineImpl;->isUnload:Z

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.baidu.mshield.x6.alarm.work.finger"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 14
    :try_start_1
    invoke-static {p0}, Lcom/baidu/mshield/x6/d/i;->a(Landroid/content/Context;)Lcom/baidu/mshield/x6/d/i;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/baidu/mshield/x6/d/i;->a(IZ)V

    const-string p1, "report static alive for ALARM_WORK_DO_FINGER"

    .line 15
    invoke-static {p1}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V

    .line 16
    invoke-static {p0}, Lcom/baidu/mshield/x6/e/a;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 18
    :try_start_2
    invoke-static {p0}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const-string v0, "com.baidu.mshield.x6.alarm.work.zid"

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 21
    new-instance p1, Lcom/baidu/mshield/x6/a/b;

    invoke-direct {p1, p0}, Lcom/baidu/mshield/x6/a/b;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p1, v1}, Lcom/baidu/mshield/x6/a/b;->d(Z)V

    .line 23
    invoke-static {p0}, Lcom/baidu/mshield/x6/d/i;->a(Landroid/content/Context;)Lcom/baidu/mshield/x6/d/i;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/baidu/mshield/x6/d/i;->a(I)V

    const-string p1, "report static alive for ALARM_WORK_DO_ZID"

    .line 24
    invoke-static {p1}, Lcom/baidu/mshield/b/c/a;->a(Ljava/lang/String;)V

    .line 25
    invoke-static {p0}, Lcom/baidu/mshield/x6/e/a;->b(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 28
    invoke-static {p0}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-class p1, Lcom/baidu/mshield/x6/recv/MyReceiver;

    monitor-enter p1

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/baidu/mshield/x6/EngineImpl;->isUnload:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p1

    return-void

    .line 6
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/baidu/mshield/b/a/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Lcom/baidu/mshield/x6/a/b;

    invoke-direct {v0, p0}, Lcom/baidu/mshield/x6/a/b;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v0}, Lcom/baidu/mshield/x6/a/b;->h()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/baidu/mshield/x6/d/i;->b:Z

    if-nez v0, :cond_1

    .line 9
    invoke-static {p0}, Lcom/baidu/mshield/x6/d/i;->a(Landroid/content/Context;)Lcom/baidu/mshield/x6/d/i;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/baidu/mshield/x6/d/i;->a(I)V

    .line 11
    :cond_1
    invoke-static {p0}, Lcom/baidu/mshield/x6/d/i;->a(Landroid/content/Context;)Lcom/baidu/mshield/x6/d/i;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mshield/x6/d/i;->a(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 14
    :try_start_2
    invoke-static {p0}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_0
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    .line 0
    monitor-exit p1

    throw p0
.end method

.method public static c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    :try_start_0
    sget-boolean p1, Lcom/baidu/mshield/x6/EngineImpl;->isUnload:Z

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/baidu/mshield/x6/d/i;->a(Landroid/content/Context;)Lcom/baidu/mshield/x6/d/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/mshield/x6/d/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lcom/baidu/mshield/x6/e/f;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static d(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/baidu/mshield/x6/EngineImpl;->isUnload:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    invoke-static {p0, p1}, Lcom/baidu/mshield/x6/recv/MyReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {p0, p1}, Lcom/baidu/mshield/x6/recv/MyReceiver;->c(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 23
    :cond_2
    sget-boolean v0, Lcom/baidu/mshield/x6/recv/MyReceiver;->a:Z

    if-nez v0, :cond_3

    .line 24
    invoke-static {p0, p1}, Lcom/baidu/mshield/x6/recv/MyReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    .line 26
    sput-boolean p0, Lcom/baidu/mshield/x6/recv/MyReceiver;->a:Z

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/baidu/mshield/x6/e/a/c;->a()Lcom/baidu/mshield/x6/e/a/c;

    move-result-object v0

    new-instance v1, Lcom/baidu/mshield/x6/recv/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mshield/x6/recv/a;-><init>(Lcom/baidu/mshield/x6/recv/MyReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/baidu/mshield/x6/e/a/c;->a(Lcom/baidu/mshield/x6/e/a/e;)V

    return-void
.end method
