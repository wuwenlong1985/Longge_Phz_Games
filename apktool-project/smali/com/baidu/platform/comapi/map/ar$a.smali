.class Lcom/baidu/platform/comapi/map/ar$a;
.super Ljava/lang/Thread;
.source "VulkanRenderControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platform/comapi/map/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platform/comapi/map/ar;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/ar;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Lcom/baidu/platform/comapi/map/SurfaceRenderer;

.field private n:Landroid/view/SurfaceHolder;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Runnable;

.field private q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private r:J


# direct methods
.method public constructor <init>(Lcom/baidu/platform/comapi/map/ar;Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/ar;",
            ">;)V"
        }
    .end annotation

    .line 338
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/ar$a;->a:Lcom/baidu/platform/comapi/map/ar;

    .line 339
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 332
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 674
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/ar$a;->f:Z

    .line 676
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/ar$a;->h:Z

    .line 683
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->o:Ljava/util/ArrayList;

    .line 686
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    .line 687
    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->r:J

    .line 340
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/ar$a;->d:Z

    .line 341
    iput p1, p0, Lcom/baidu/platform/comapi/map/ar$a;->i:I

    .line 342
    iput p1, p0, Lcom/baidu/platform/comapi/map/ar$a;->j:I

    const/4 p1, 0x1

    .line 343
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/ar$a;->l:Z

    .line 344
    iput p1, p0, Lcom/baidu/platform/comapi/map/ar$a;->k:I

    .line 345
    iput-object p2, p0, Lcom/baidu/platform/comapi/map/ar$a;->b:Ljava/lang/ref/WeakReference;

    .line 346
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/platform/comapi/map/ar;

    .line 347
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/ar;->a:Lcom/baidu/platform/comapi/map/SurfaceRenderer;

    iput-object p2, p0, Lcom/baidu/platform/comapi/map/ar$a;->m:Lcom/baidu/platform/comapi/map/SurfaceRenderer;

    .line 348
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/ar;->a()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/ar$a;->n:Landroid/view/SurfaceHolder;

    .line 349
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/ar$a;->n:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/platform/comapi/map/VulkanDetect;->getNativeWindow(Landroid/view/Surface;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/baidu/platform/comapi/map/ar$a;->r:J

    const/16 p1, 0xa

    .line 350
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/ar$a;->setPriority(I)V

    return-void
.end method

.method private f()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 403
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->d:Z

    if-nez v0, :cond_9

    .line 412
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 414
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/ar$a;->h()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 415
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 422
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/ar$a;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 423
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->f:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 424
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->g:Z

    if-nez v1, :cond_2

    .line 426
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/map/ar$a;->g:Z

    .line 427
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 430
    :cond_2
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->a:Lcom/baidu/platform/comapi/map/ar;

    invoke-static {v1}, Lcom/baidu/platform/comapi/map/ar;->a(Lcom/baidu/platform/comapi/map/ar;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 431
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->h:Z

    if-nez v1, :cond_3

    .line 432
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/map/ar$a;->h:Z

    .line 433
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 436
    :cond_3
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 438
    :cond_4
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->d:Z

    if-eqz v1, :cond_5

    .line 439
    monitor-exit v0

    goto/16 :goto_4

    .line 441
    :cond_5
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->a:Lcom/baidu/platform/comapi/map/ar;

    invoke-static {v1}, Lcom/baidu/platform/comapi/map/ar;->a(Lcom/baidu/platform/comapi/map/ar;)Z

    .line 442
    iget v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->i:I

    .line 443
    iget v2, p0, Lcom/baidu/platform/comapi/map/ar$a;->j:I

    .line 444
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/ar$a;->a:Lcom/baidu/platform/comapi/map/ar;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/baidu/platform/comapi/map/ar;->a(Lcom/baidu/platform/comapi/map/ar;Z)Z

    .line 445
    iput-boolean v4, p0, Lcom/baidu/platform/comapi/map/ar$a;->h:Z

    .line 446
    iput-boolean v4, p0, Lcom/baidu/platform/comapi/map/ar$a;->l:Z

    .line 447
    iget-boolean v3, p0, Lcom/baidu/platform/comapi/map/ar$a;->f:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/baidu/platform/comapi/map/ar$a;->g:Z

    if-eqz v3, :cond_6

    .line 449
    iput-boolean v4, p0, Lcom/baidu/platform/comapi/map/ar$a;->g:Z

    .line 451
    :cond_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 472
    :try_start_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->p:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 473
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->p:Ljava/lang/Runnable;

    .line 474
    iput-object v3, p0, Lcom/baidu/platform/comapi/map/ar$a;->p:Ljava/lang/Runnable;

    goto :goto_3

    :cond_7
    move-object v0, v3

    :goto_3
    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 480
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/ar$a;->m:Lcom/baidu/platform/comapi/map/SurfaceRenderer;

    invoke-interface {v3, p0}, Lcom/baidu/platform/comapi/map/SurfaceRenderer;->onDrawFrame(Ljava/lang/Object;)V

    if-eqz v0, :cond_8

    .line 488
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 492
    :cond_8
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->a:Lcom/baidu/platform/comapi/map/ar;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/ar;->b(Lcom/baidu/platform/comapi/map/ar;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/ar;

    .line 493
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/ar;->e()I

    move-result v0

    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v5, 0x3c

    if-ge v0, v5, :cond_0

    if-lez v0, :cond_0

    const/16 v5, 0x3e8

    .line 496
    div-int/2addr v5, v0

    int-to-long v5, v5

    sub-long v7, v3, v1

    sub-long v0, v5, v7

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 498
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 499
    :try_start_3
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 500
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    move-exception v1

    .line 451
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_9
    :goto_4
    const-string v0, "VulkanSurfaceView"

    const-string v1, "destroySurface"

    .line 511
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_2
    move-exception v0

    const-string v1, "VulkanSurfaceView"

    const-string v2, "destroySurface"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    throw v0
.end method

.method private g()Z
    .locals 3

    .line 516
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 520
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->e:Z

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->f:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->a:Lcom/baidu/platform/comapi/map/ar;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/ar;->a(Lcom/baidu/platform/comapi/map/ar;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 524
    :cond_1
    iget v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->i:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->j:I

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->l:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->k:I

    if-ne v0, v2, :cond_3

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v2
.end method

.method private h()Ljava/lang/Runnable;
    .locals 2

    .line 663
    monitor-enter p0

    .line 664
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->o:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit p0

    return-object v0

    .line 668
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_0
    iget v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->k:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 546
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(I)V
    .locals 2

    if-ltz p1, :cond_2

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 536
    :try_start_0
    iput p1, p0, Lcom/baidu/platform/comapi/map/ar$a;->k:I

    if-ne p1, v0, :cond_1

    .line 538
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 540
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 533
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 6

    .line 557
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/platform/comapi/map/VulkanDetect;->getNativeWindow(Landroid/view/Surface;)J

    move-result-wide v1

    .line 560
    iget-wide v3, p0, Lcom/baidu/platform/comapi/map/ar$a;->r:J

    cmp-long v5, v3, v1

    const/4 v3, 0x1

    if-eqz v5, :cond_0

    .line 561
    iput-wide v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->r:J

    .line 562
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 564
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->m:Lcom/baidu/platform/comapi/map/SurfaceRenderer;

    invoke-interface {v1, p1, v3, v3, v3}, Lcom/baidu/platform/comapi/map/SurfaceRenderer;->onSurfaceCreated(Landroid/view/SurfaceHolder;III)V

    .line 566
    :cond_0
    iput-boolean v3, p0, Lcom/baidu/platform/comapi/map/ar$a;->f:Z

    .line 567
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 568
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/view/SurfaceHolder;II)V
    .locals 2

    .line 618
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 619
    :try_start_0
    iput p2, p0, Lcom/baidu/platform/comapi/map/ar$a;->i:I

    .line 620
    iput p3, p0, Lcom/baidu/platform/comapi/map/ar$a;->j:I

    .line 622
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->a:Lcom/baidu/platform/comapi/map/ar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/platform/comapi/map/ar;->a(Lcom/baidu/platform/comapi/map/ar;Z)Z

    .line 623
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 625
    :goto_0
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/ar$a;->isAlive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 627
    :try_start_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 629
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->m:Lcom/baidu/platform/comapi/map/SurfaceRenderer;

    invoke-interface {v0, p2, p3}, Lcom/baidu/platform/comapi/map/SurfaceRenderer;->onSurfaceChanged(II)V

    .line 633
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/ar$a;->a:Lcom/baidu/platform/comapi/map/ar;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/baidu/platform/comapi/map/ar;->a(Lcom/baidu/platform/comapi/map/ar;Z)Z

    .line 634
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 635
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 594
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 597
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->l:Z

    .line 598
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/ar$a;->p:Ljava/lang/Runnable;

    .line 600
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 601
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 551
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->l:Z

    .line 552
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 553
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 573
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->f:Z

    .line 574
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 576
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->g:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/ar$a;->isAlive()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 578
    :try_start_1
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 580
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->m:Lcom/baidu/platform/comapi/map/SurfaceRenderer;

    invoke-interface {v1, p1}, Lcom/baidu/platform/comapi/map/SurfaceRenderer;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 584
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    .line 657
    monitor-enter p0

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 606
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->e:Z

    .line 607
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 612
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->e:Z

    .line 613
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 614
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 642
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->d:Z

    .line 643
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/ar$a;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 644
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/ar$a;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 648
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 644
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VkThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/ar$a;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/ar$a;->setName(Ljava/lang/String;)V

    .line 358
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/ar$a;->f()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 360
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
