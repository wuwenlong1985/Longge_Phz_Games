.class public final Lcom/baidu/mapauto/auth/LicenseAuth;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lcom/baidu/mapauto/auth/LicenseAuth;


# instance fields
.field public final a:Lcom/baidu/mapauto/auth/AuthCore;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/mapauto/auth/AuthCore;

    invoke-direct {v0}, Lcom/baidu/mapauto/auth/AuthCore;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapauto/auth/LicenseAuth;->a:Lcom/baidu/mapauto/auth/AuthCore;

    return-void
.end method

.method public static getInstance()Lcom/baidu/mapauto/auth/LicenseAuth;
    .locals 2

    sget-object v0, Lcom/baidu/mapauto/auth/LicenseAuth;->b:Lcom/baidu/mapauto/auth/LicenseAuth;

    if-nez v0, :cond_1

    const-class v0, Lcom/baidu/mapauto/auth/LicenseAuth;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/mapauto/auth/LicenseAuth;->b:Lcom/baidu/mapauto/auth/LicenseAuth;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/mapauto/auth/LicenseAuth;

    invoke-direct {v1}, Lcom/baidu/mapauto/auth/LicenseAuth;-><init>()V

    sput-object v1, Lcom/baidu/mapauto/auth/LicenseAuth;->b:Lcom/baidu/mapauto/auth/LicenseAuth;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/baidu/mapauto/auth/LicenseAuth;->b:Lcom/baidu/mapauto/auth/LicenseAuth;

    return-object v0
.end method


# virtual methods
.method public loadAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/mapauto/auth/ILicenseAuthListener;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/baidu/mapauto/auth/LicenseAuth;->loadAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/baidu/mapauto/auth/ILicenseAuthListener;)V

    return-void
.end method

.method public loadAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/baidu/mapauto/auth/ILicenseAuthListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/baidu/mapauto/auth/ILicenseAuthListener;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/baidu/mapauto/auth/LicenseAuth;->loadAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/baidu/mapauto/auth/ILicenseAuthListener;)V

    return-void
.end method

.method public loadAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/baidu/mapauto/auth/ILicenseAuthListener;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/baidu/mapauto/auth/ILicenseAuthListener;",
            ")V"
        }
    .end annotation

    move/from16 v1, p7

    move-object v2, p0

    iget-object v3, v2, Lcom/baidu/mapauto/auth/LicenseAuth;->a:Lcom/baidu/mapauto/auth/AuthCore;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v12, Lcom/baidu/mapauto/auth/AuthCore$AuthParam;

    move-object v5, v12

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    invoke-direct/range {v5 .. v11}, Lcom/baidu/mapauto/auth/AuthCore$AuthParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-static {}, Lcom/baidu/mapauto/auth/util/LogUtil;->getInstance()Lcom/baidu/mapauto/auth/util/LogUtil;

    move-result-object v5

    sget-object v6, Lcom/baidu/mapauto/auth/AuthCore;->TAG:Ljava/lang/String;

    const-string v7, "\u5f00\u59cb\u6388\u6743"

    invoke-virtual {v5, v6, v7}, Lcom/baidu/mapauto/auth/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/baidu/mapauto/auth/AuthCore$b;

    move-object/from16 v6, p9

    .line 2
    invoke-direct {v5, v6}, Lcom/baidu/mapauto/auth/AuthCore$b;-><init>(Lcom/baidu/mapauto/auth/ILicenseAuthListener;)V

    const/16 v6, -0x3ea

    if-nez v4, :cond_0

    const-string v1, "context \u4e0d\u53ef\u4ee5\u4e3a\u7a7a"

    .line 3
    :goto_0
    invoke-virtual {v5, v6, v1}, Lcom/baidu/mapauto/auth/AuthCore$b;->onError(ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v12, v1}, Lcom/baidu/mapauto/auth/AuthCore$AuthParam;->a(I)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v1, "\u53c2\u6570\u9519\u8bef, \u8bf7\u786e\u4fdd ak, channel, serviceName \u3001 file \u7c7b\u578b\u4e0b\u65f6\u7684 deviceId \u4e0d\u4e3a\u7a7a"

    goto :goto_0

    :cond_1
    invoke-virtual {v12}, Lcom/baidu/mapauto/auth/AuthCore$AuthParam;->b()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/baidu/mapauto/auth/AuthCore;->g:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/baidu/mapauto/auth/AuthCore$AuthParam;->d()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/baidu/mapauto/auth/AuthCore;->h:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/baidu/mapauto/auth/AuthCore$AuthParam;->c()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/baidu/mapauto/auth/AuthCore;->i:Ljava/lang/String;

    iget-object v6, v3, Lcom/baidu/mapauto/auth/AuthCore;->b:Lcom/baidu/mapauto/auth/data/license/impl/b;

    if-nez v6, :cond_3

    const-class v6, Lcom/baidu/mapauto/auth/AuthCore;

    monitor-enter v6

    :try_start_0
    iget-object v7, v3, Lcom/baidu/mapauto/auth/AuthCore;->b:Lcom/baidu/mapauto/auth/data/license/impl/b;

    if-nez v7, :cond_2

    new-instance v7, Lcom/baidu/mapauto/auth/data/license/impl/b;

    new-instance v8, Lcom/baidu/mapauto/auth/store/a;

    invoke-direct {v8, v4}, Lcom/baidu/mapauto/auth/store/a;-><init>(Landroid/content/Context;)V

    invoke-direct {v7, v8}, Lcom/baidu/mapauto/auth/data/license/impl/b;-><init>(Lcom/baidu/mapauto/auth/store/a;)V

    iput-object v7, v3, Lcom/baidu/mapauto/auth/AuthCore;->b:Lcom/baidu/mapauto/auth/data/license/impl/b;

    :cond_2
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_1
    iget-object v4, v3, Lcom/baidu/mapauto/auth/AuthCore;->e:Lcom/baidu/mapauto/auth/process/a;

    const/4 v6, 0x3

    if-nez v4, :cond_5

    const-class v4, Lcom/baidu/mapauto/auth/AuthCore;

    monitor-enter v4

    :try_start_1
    iget-object v7, v3, Lcom/baidu/mapauto/auth/AuthCore;->e:Lcom/baidu/mapauto/auth/process/a;

    if-nez v7, :cond_4

    new-instance v7, Lcom/baidu/mapauto/auth/process/a;

    iget-object v8, v3, Lcom/baidu/mapauto/auth/AuthCore;->a:Lcom/baidu/mapauto/auth/data/license/impl/a;

    iget-object v9, v3, Lcom/baidu/mapauto/auth/AuthCore;->b:Lcom/baidu/mapauto/auth/data/license/impl/b;

    invoke-direct {v7, v6, v8, v9}, Lcom/baidu/mapauto/auth/process/a;-><init>(ILcom/baidu/mapauto/auth/data/license/impl/a;Lcom/baidu/mapauto/auth/data/license/impl/b;)V

    iput-object v7, v3, Lcom/baidu/mapauto/auth/AuthCore;->e:Lcom/baidu/mapauto/auth/process/a;

    :cond_4
    monitor-exit v4

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_5
    :goto_2
    iget-object v4, v3, Lcom/baidu/mapauto/auth/AuthCore;->f:Lcom/baidu/mapauto/auth/process/b;

    if-nez v4, :cond_7

    const-class v4, Lcom/baidu/mapauto/auth/AuthCore;

    monitor-enter v4

    :try_start_2
    iget-object v7, v3, Lcom/baidu/mapauto/auth/AuthCore;->f:Lcom/baidu/mapauto/auth/process/b;

    if-nez v7, :cond_6

    new-instance v7, Lcom/baidu/mapauto/auth/process/b;

    iget-object v8, v3, Lcom/baidu/mapauto/auth/AuthCore;->a:Lcom/baidu/mapauto/auth/data/license/impl/a;

    iget-object v9, v3, Lcom/baidu/mapauto/auth/AuthCore;->b:Lcom/baidu/mapauto/auth/data/license/impl/b;

    invoke-direct {v7, v6, v8, v9}, Lcom/baidu/mapauto/auth/process/b;-><init>(ILcom/baidu/mapauto/auth/data/license/impl/a;Lcom/baidu/mapauto/auth/data/license/impl/b;)V

    iput-object v7, v3, Lcom/baidu/mapauto/auth/AuthCore;->f:Lcom/baidu/mapauto/auth/process/b;

    :cond_6
    monitor-exit v4

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :cond_7
    :goto_3
    iget-object v4, v3, Lcom/baidu/mapauto/auth/AuthCore;->b:Lcom/baidu/mapauto/auth/data/license/impl/b;

    instance-of v4, v4, Lcom/baidu/mapauto/auth/data/license/impl/b;

    if-eqz v4, :cond_9

    iget-object v4, v3, Lcom/baidu/mapauto/auth/AuthCore;->b:Lcom/baidu/mapauto/auth/data/license/impl/b;

    invoke-virtual {v12}, Lcom/baidu/mapauto/auth/AuthCore$AuthParam;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12}, Lcom/baidu/mapauto/auth/AuthCore$AuthParam;->c()Ljava/lang/String;

    invoke-virtual {v12}, Lcom/baidu/mapauto/auth/AuthCore$AuthParam;->e()Ljava/lang/String;

    const-string v7, "function_name"

    .line 4
    invoke-virtual {v12, v7}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_8

    check-cast v7, Ljava/lang/String;

    .line 5
    :cond_8
    invoke-virtual {v12}, Lcom/baidu/mapauto/auth/AuthCore$AuthParam;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/baidu/mapauto/auth/data/license/impl/b;->b:Ljava/lang/String;

    .line 7
    :cond_9
    iget-object v4, v3, Lcom/baidu/mapauto/auth/AuthCore;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Lcom/baidu/mapauto/auth/b;

    invoke-direct {v6, v3, v1, v5, v12}, Lcom/baidu/mapauto/auth/b;-><init>(Lcom/baidu/mapauto/auth/AuthCore;ILcom/baidu/mapauto/auth/AuthCore$b;Lcom/baidu/mapauto/auth/AuthCore$AuthParam;)V

    invoke-interface {v4, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_4
    return-void
.end method

.method public loadLocalAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mapauto/auth/base/BaseLicenseAuthDataStandardProcess$ProcessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapauto/auth/LicenseAuth;->a:Lcom/baidu/mapauto/auth/AuthCore;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mapauto/auth/AuthCore;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public loadLocalAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mapauto/auth/base/BaseLicenseAuthDataStandardProcess$ProcessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapauto/auth/LicenseAuth;->a:Lcom/baidu/mapauto/auth/AuthCore;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mapauto/auth/AuthCore;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public loadLocalAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mapauto/auth/base/BaseLicenseAuthDataStandardProcess$ProcessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapauto/auth/LicenseAuth;->a:Lcom/baidu/mapauto/auth/AuthCore;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mapauto/auth/AuthCore;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public setDebug(Ljava/lang/Boolean;)V
    .locals 1

    invoke-static {}, Lcom/baidu/mapauto/auth/util/LogUtil;->getInstance()Lcom/baidu/mapauto/auth/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mapauto/auth/util/LogUtil;->openLog(Ljava/lang/Boolean;)V

    return-void
.end method
