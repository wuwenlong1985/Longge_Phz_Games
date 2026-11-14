.class public Lcom/tencent/mid/core/WorkThread;
.super Ljava/lang/Object;
.source "WorkThread.java"


# static fields
.field private static volatile instance:Lcom/tencent/mid/core/WorkThread;


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/tencent/mid/core/WorkThread;->handler:Landroid/os/Handler;

    .line 11
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MidWorkThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 13
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/mid/core/WorkThread;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/tencent/mid/core/WorkThread;
    .locals 2

    .line 17
    sget-object v0, Lcom/tencent/mid/core/WorkThread;->instance:Lcom/tencent/mid/core/WorkThread;

    if-nez v0, :cond_1

    .line 18
    const-class v0, Lcom/tencent/mid/core/WorkThread;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/tencent/mid/core/WorkThread;->instance:Lcom/tencent/mid/core/WorkThread;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/tencent/mid/core/WorkThread;

    invoke-direct {v1}, Lcom/tencent/mid/core/WorkThread;-><init>()V

    sput-object v1, Lcom/tencent/mid/core/WorkThread;->instance:Lcom/tencent/mid/core/WorkThread;

    .line 22
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/mid/core/WorkThread;->instance:Lcom/tencent/mid/core/WorkThread;

    return-object v0
.end method


# virtual methods
.method public doWork(Ljava/lang/Runnable;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/tencent/mid/core/WorkThread;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/tencent/mid/core/WorkThread;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
