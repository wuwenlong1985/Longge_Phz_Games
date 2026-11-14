.class public Lcom/baidu/mshield/x0/f/b;
.super Lcom/baidu/mshield/x0/b/a/b;
.source "ReflectHelper.java"


# instance fields
.field public final synthetic a:I

.field public final synthetic c:J

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Lcom/baidu/mshield/x0/f/a;IJLandroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/baidu/mshield/x0/f/b;->a:I

    iput-wide p3, p0, Lcom/baidu/mshield/x0/f/b;->c:J

    iput-object p5, p0, Lcom/baidu/mshield/x0/f/b;->d:Landroid/content/Context;

    iput p6, p0, Lcom/baidu/mshield/x0/f/b;->e:I

    invoke-direct {p0}, Lcom/baidu/mshield/x0/b/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    :try_start_0
    iget v0, p0, Lcom/baidu/mshield/x0/f/b;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    const-class v0, Lcom/baidu/mshield/x0/f/a;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    invoke-static {}, Lcom/baidu/mshield/x0/f/a;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/baidu/mshield/x0/f/a;->a()J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long v5, v1, v3

    iget-wide v3, p0, Lcom/baidu/mshield/x0/f/b;->c:J

    cmp-long v7, v5, v3

    if-gez v7, :cond_0

    .line 5
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    invoke-static {v1, v2}, Lcom/baidu/mshield/x0/f/a;->a(J)J

    .line 8
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    iget-object v0, p0, Lcom/baidu/mshield/x0/f/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mshield/x6/EngineImpl;->getInstance(Landroid/content/Context;)Lcom/baidu/mshield/x6/EngineImpl;

    move-result-object v0

    iget v1, p0, Lcom/baidu/mshield/x0/f/b;->e:I

    iget v2, p0, Lcom/baidu/mshield/x0/f/b;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mshield/x6/EngineImpl;->uccs(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 11
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/baidu/mshield/x0/f/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mshield/x6/EngineImpl;->getInstance(Landroid/content/Context;)Lcom/baidu/mshield/x6/EngineImpl;

    move-result-object v0

    iget v1, p0, Lcom/baidu/mshield/x0/f/b;->e:I

    iget v2, p0, Lcom/baidu/mshield/x0/f/b;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mshield/x6/EngineImpl;->uccs(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 19
    invoke-static {v0}, Lcom/baidu/mshield/x0/b/d;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
