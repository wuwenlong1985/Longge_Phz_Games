.class public Lcom/happyplay/hnphz/common/CommonWorkingThread;
.super Ljava/lang/Object;
.source "CommonWorkingThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/happyplay/hnphz/common/CommonWorkingThread$CommonWorkingThreadHolder;
    }
.end annotation


# static fields
.field private static handler:Landroid/os/Handler;

.field private static thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/happyplay/hnphz/common/CommonWorkingThread$1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/happyplay/hnphz/common/CommonWorkingThread;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/happyplay/hnphz/common/CommonWorkingThread;
    .locals 1

    .line 21
    invoke-static {}, Lcom/happyplay/hnphz/common/CommonWorkingThread;->initHandler()V

    .line 22
    sget-object v0, Lcom/happyplay/hnphz/common/CommonWorkingThread$CommonWorkingThreadHolder;->instance:Lcom/happyplay/hnphz/common/CommonWorkingThread;

    return-object v0
.end method

.method private static initHandler()V
    .locals 4

    .line 48
    sget-object v0, Lcom/happyplay/hnphz/common/CommonWorkingThread;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/happyplay/hnphz/common/CommonWorkingThread;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/happyplay/hnphz/common/CommonWorkingThread;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/happyplay/hnphz/common/CommonWorkingThread;->thread:Landroid/os/HandlerThread;

    .line 49
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 50
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "tpush.working.thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/happyplay/hnphz/common/CommonWorkingThread;->thread:Landroid/os/HandlerThread;

    .line 51
    sget-object v0, Lcom/happyplay/hnphz/common/CommonWorkingThread;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/happyplay/hnphz/common/CommonWorkingThread;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/happyplay/hnphz/common/CommonWorkingThread;->handler:Landroid/os/Handler;

    const-string v0, "CommonWorkingThread"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> Create new working thread."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/happyplay/hnphz/common/CommonWorkingThread;->thread:Landroid/os/HandlerThread;

    .line 54
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)Z
    .locals 2

    .line 26
    sget-object v0, Lcom/happyplay/hnphz/common/CommonWorkingThread;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-string v0, "CommonWorkingThread"

    const-string v1, ">>> working thread execute "

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    sget-object v0, Lcom/happyplay/hnphz/common/CommonWorkingThread;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public execute(Ljava/lang/Runnable;J)Z
    .locals 3

    .line 35
    sget-object v0, Lcom/happyplay/hnphz/common/CommonWorkingThread;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-string v0, "CommonWorkingThread"

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> working thread execute delayMillis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object v0, Lcom/happyplay/hnphz/common/CommonWorkingThread;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 44
    sget-object v0, Lcom/happyplay/hnphz/common/CommonWorkingThread;->handler:Landroid/os/Handler;

    return-object v0
.end method
