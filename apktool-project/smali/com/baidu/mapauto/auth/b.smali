.class public final Lcom/baidu/mapauto/auth/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/baidu/mapauto/auth/ILicenseAuthListener;

.field public final synthetic c:Lcom/baidu/mapauto/auth/AuthCore$AuthParam;

.field public final synthetic d:Lcom/baidu/mapauto/auth/AuthCore;


# direct methods
.method public constructor <init>(Lcom/baidu/mapauto/auth/AuthCore;ILcom/baidu/mapauto/auth/AuthCore$b;Lcom/baidu/mapauto/auth/AuthCore$AuthParam;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapauto/auth/b;->d:Lcom/baidu/mapauto/auth/AuthCore;

    iput p2, p0, Lcom/baidu/mapauto/auth/b;->a:I

    iput-object p3, p0, Lcom/baidu/mapauto/auth/b;->b:Lcom/baidu/mapauto/auth/ILicenseAuthListener;

    iput-object p4, p0, Lcom/baidu/mapauto/auth/b;->c:Lcom/baidu/mapauto/auth/AuthCore$AuthParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const-class v0, Lcom/baidu/mapauto/auth/AuthCore;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget v3, p0, Lcom/baidu/mapauto/auth/b;->a:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/baidu/mapauto/auth/b;->d:Lcom/baidu/mapauto/auth/AuthCore;

    .line 1
    iget-object v3, v3, Lcom/baidu/mapauto/auth/AuthCore;->e:Lcom/baidu/mapauto/auth/process/a;

    .line 2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/baidu/mapauto/auth/util/LogUtil;->getInstance()Lcom/baidu/mapauto/auth/util/LogUtil;

    move-result-object v3

    sget-object v4, Lcom/baidu/mapauto/auth/AuthCore;->TAG:Ljava/lang/String;

    const-string v5, "\u6dfb\u52a0 license file \u6388\u6743\u6d41\u7a0b"

    invoke-virtual {v3, v4, v5}, Lcom/baidu/mapauto/auth/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v3, p0, Lcom/baidu/mapauto/auth/b;->a:I

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_1

    iget-object v2, p0, Lcom/baidu/mapauto/auth/b;->d:Lcom/baidu/mapauto/auth/AuthCore;

    .line 3
    iget-object v2, v2, Lcom/baidu/mapauto/auth/AuthCore;->f:Lcom/baidu/mapauto/auth/process/b;

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/baidu/mapauto/auth/util/LogUtil;->getInstance()Lcom/baidu/mapauto/auth/util/LogUtil;

    move-result-object v2

    sget-object v3, Lcom/baidu/mapauto/auth/AuthCore;->TAG:Ljava/lang/String;

    const-string v4, "\u6dfb\u52a0 license function \u6388\u6743\u6d41\u7a0b"

    invoke-virtual {v2, v3, v4}, Lcom/baidu/mapauto/auth/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/baidu/mapauto/auth/b;->b:Lcom/baidu/mapauto/auth/ILicenseAuthListener;

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/baidu/mapauto/auth/ILicenseAuthListener;->onSuccess(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :cond_2
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v9, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v10, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v10}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/baidu/mapauto/auth/base/BaseLicenseAuthDataStandardProcess;

    iget-object v2, p0, Lcom/baidu/mapauto/auth/b;->d:Lcom/baidu/mapauto/auth/AuthCore;

    .line 5
    iget-object v11, v2, Lcom/baidu/mapauto/auth/AuthCore;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    new-instance v12, Lcom/baidu/mapauto/auth/b$a;

    move-object v2, v12

    move-object v3, p0

    move-object v4, v8

    move-object v6, v10

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/baidu/mapauto/auth/b$a;-><init>(Lcom/baidu/mapauto/auth/b;Ljava/util/HashMap;Lcom/baidu/mapauto/auth/base/BaseLicenseAuthDataStandardProcess;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    new-instance v1, Lcom/baidu/mapauto/auth/base/BaseLicenseAuthDataStandardProcess$ProcessException;

    const/16 v2, -0x3e9

    const-string v3, "\u83b7\u53d6\u6570\u636e\u53d6\u6d88\u5f02\u5e38"

    invoke-direct {v1, v2, v3}, Lcom/baidu/mapauto/auth/base/BaseLicenseAuthDataStandardProcess$ProcessException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapauto/auth/base/BaseLicenseAuthDataStandardProcess$ProcessException;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/baidu/mapauto/auth/b;->b:Lcom/baidu/mapauto/auth/ILicenseAuthListener;

    invoke-virtual {v1}, Lcom/baidu/mapauto/auth/base/BaseLicenseAuthDataStandardProcess$ProcessException;->getCode()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/baidu/mapauto/auth/ILicenseAuthListener;->onError(ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_4
    iget-object v1, p0, Lcom/baidu/mapauto/auth/b;->b:Lcom/baidu/mapauto/auth/ILicenseAuthListener;

    invoke-interface {v1, v8}, Lcom/baidu/mapauto/auth/ILicenseAuthListener;->onSuccess(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
