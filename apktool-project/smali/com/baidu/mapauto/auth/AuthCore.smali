.class public Lcom/baidu/mapauto/auth/AuthCore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapauto/auth/AuthCore$AuthParam;,
        Lcom/baidu/mapauto/auth/AuthCore$b;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AuthCore"

.field public static final TYPE_LICENSE_ALL:I = 0x3

.field public static final TYPE_LICENSE_FILE:I = 0x1

.field public static final TYPE_LICENSE_FUNCTION:I = 0x2


# instance fields
.field public final a:Lcom/baidu/mapauto/auth/data/license/impl/a;

.field public volatile b:Lcom/baidu/mapauto/auth/data/license/impl/b;

.field public final c:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final d:Ljava/util/concurrent/ThreadPoolExecutor;

.field public volatile e:Lcom/baidu/mapauto/auth/process/a;

.field public volatile f:Lcom/baidu/mapauto/auth/process/b;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "sdk_version_name"

    const-string v2, "1.0.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sdk_version_code"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/baidu/mapauto/auth/net/c$a;

    invoke-direct {v1}, Lcom/baidu/mapauto/auth/net/c$a;-><init>()V

    invoke-virtual {v1}, Lcom/baidu/mapauto/auth/net/c$a;->d()Lcom/baidu/mapauto/auth/net/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapauto/auth/net/c$a;->c()Lcom/baidu/mapauto/auth/net/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapauto/auth/net/c$a;->b()Lcom/baidu/mapauto/auth/net/c$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mapauto/auth/net/c$a;->a(Ljava/util/HashMap;)Lcom/baidu/mapauto/auth/net/c$a;

    move-result-object v0

    new-instance v1, Lcom/baidu/mapauto/auth/AuthCore$a;

    invoke-direct {v1}, Lcom/baidu/mapauto/auth/AuthCore$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/mapauto/auth/net/c$a;->a(Lcom/baidu/mapauto/auth/AuthCore$a;)Lcom/baidu/mapauto/auth/net/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapauto/auth/net/c$a;->a()Lcom/baidu/mapauto/auth/net/c;

    move-result-object v0

    new-instance v1, Lcom/baidu/mapauto/auth/data/license/impl/a;

    new-instance v2, Lcom/baidu/mapauto/auth/net/a;

    invoke-direct {v2, v0}, Lcom/baidu/mapauto/auth/net/a;-><init>(Lcom/baidu/mapauto/auth/net/c;)V

    invoke-direct {v1, v2}, Lcom/baidu/mapauto/auth/data/license/impl/a;-><init>(Lcom/baidu/mapauto/auth/net/a;)V

    iput-object v1, p0, Lcom/baidu/mapauto/auth/AuthCore;->a:Lcom/baidu/mapauto/auth/data/license/impl/a;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v4, 0x2

    const v5, 0x7fffffff

    const-wide/16 v6, 0x3c

    move-object v3, v0

    move-object v8, v10

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/baidu/mapauto/auth/AuthCore;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x3

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    move-object v1, v0

    move-object v6, v10

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/baidu/mapauto/auth/AuthCore;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/HashMap;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mapauto/auth/base/BaseLicenseAuthDataStandardProcess$ProcessException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p7

    invoke-static {}, Lcom/baidu/mapauto/auth/util/LogUtil;->getInstance()Lcom/baidu/mapauto/auth/util/LogUtil;

    move-result-object v4

    sget-object v5, Lcom/baidu/mapauto/auth/AuthCore;->TAG:Ljava/lang/String;

    const-string v6, "\u672c\u5730: \u5f00\u59cb\u6388\u6743"

    invoke-virtual {v4, v5, v6}, Lcom/baidu/mapauto/auth/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_b

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v1, Lcom/baidu/mapauto/auth/AuthCore;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v6, p2

    :goto_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/baidu/mapauto/auth/AuthCore;->h:Ljava/lang/String;

    move-object v14, v7

    goto :goto_1

    :cond_1
    move-object/from16 v14, p3

    :goto_1
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v1, Lcom/baidu/mapauto/auth/AuthCore;->i:Ljava/lang/String;

    move-object v9, v7

    goto :goto_2

    :cond_2
    move-object/from16 v9, p4

    :goto_2
    new-instance v15, Lcom/baidu/mapauto/auth/AuthCore$AuthParam;

    new-instance v13, Ljava/util/HashMap;

    const/4 v12, 0x0

    invoke-direct {v13, v12}, Ljava/util/HashMap;-><init>(I)V

    move-object v7, v15

    move-object v8, v6

    move-object v10, v14

    move-object/from16 v11, p5

    const/4 v4, 0x0

    move-object/from16 v12, p6

    invoke-direct/range {v7 .. v13}, Lcom/baidu/mapauto/auth/AuthCore$AuthParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v15, v3}, Lcom/baidu/mapauto/auth/AuthCore$AuthParam;->a(I)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v1, Lcom/baidu/mapauto/auth/AuthCore;->b:Lcom/baidu/mapauto/auth/data/license/impl/b;

    if-nez v7, :cond_4

    const-class v7, Lcom/baidu/mapauto/auth/AuthCore;

    monitor-enter v7

    :try_start_0
    iget-object v8, v1, Lcom/baidu/mapauto/auth/AuthCore;->b:Lcom/baidu/mapauto/auth/data/license/impl/b;

    if-nez v8, :cond_3

    new-instance v8, Lcom/baidu/mapauto/auth/data/license/impl/b;

    new-instance v9, Lcom/baidu/mapauto/auth/store/a;

    invoke-direct {v9, v2}, Lcom/baidu/mapauto/auth/store/a;-><init>(Landroid/content/Context;)V

    invoke-direct {v8, v9}, Lcom/baidu/mapauto/auth/data/license/impl/b;-><init>(Lcom/baidu/mapauto/auth/store/a;)V

    iput-object v8, v1, Lcom/baidu/mapauto/auth/AuthCore;->b:Lcom/baidu/mapauto/auth/data/license/impl/b;

    :cond_3
    monitor-exit v7

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    :goto_3
    iget-object v2, v1, Lcom/baidu/mapauto/auth/AuthCore;->b:Lcom/baidu/mapauto/auth/data/license/impl/b;

    instance-of v2, v2, Lcom/baidu/mapauto/auth/data/license/impl/b;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/baidu/mapauto/auth/AuthCore;->b:Lcom/baidu/mapauto/auth/data/license/impl/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/baidu/mapauto/auth/data/license/impl/b;->b:Ljava/lang/String;

    .line 2
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    and-int/lit8 v7, v3, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    new-instance v7, Lcom/baidu/mapauto/auth/process/a;

    iget-object v8, v1, Lcom/baidu/mapauto/auth/AuthCore;->a:Lcom/baidu/mapauto/auth/data/license/impl/a;

    iget-object v9, v1, Lcom/baidu/mapauto/auth/AuthCore;->b:Lcom/baidu/mapauto/auth/data/license/impl/b;

    invoke-direct {v7, v6, v8, v9}, Lcom/baidu/mapauto/auth/process/a;-><init>(ILcom/baidu/mapauto/auth/data/license/impl/a;Lcom/baidu/mapauto/auth/data/license/impl/b;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/baidu/mapauto/auth/util/LogUtil;->getInstance()Lcom/baidu/mapauto/auth/util/LogUtil;

    move-result-object v7

    const-string v8, "\u672c\u5730: \u6dfb\u52a0 license file \u6388\u6743\u6d41\u7a0b"

    invoke-virtual {v7, v5, v8}, Lcom/baidu/mapauto/auth/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    and-int/2addr v3, v6

    if-ne v3, v6, :cond_7

    new-instance v3, Lcom/baidu/mapauto/auth/process/b;

    iget-object v7, v1, Lcom/baidu/mapauto/auth/AuthCore;->a:Lcom/baidu/mapauto/auth/data/license/impl/a;

    iget-object v8, v1, Lcom/baidu/mapauto/auth/AuthCore;->b:Lcom/baidu/mapauto/auth/data/license/impl/b;

    invoke-direct {v3, v6, v7, v8}, Lcom/baidu/mapauto/auth/process/b;-><init>(ILcom/baidu/mapauto/auth/data/license/impl/a;Lcom/baidu/mapauto/auth/data/license/impl/b;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/baidu/mapauto/auth/util/LogUtil;->getInstance()Lcom/baidu/mapauto/auth/util/LogUtil;

    move-result-object v3

    const-string v6, "\u672c\u5730: \u6dfb\u52a0 license function \u6388\u6743\u6d41\u7a0b"

    invoke-virtual {v3, v5, v6}, Lcom/baidu/mapauto/auth/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/baidu/mapauto/auth/util/LogUtil;->getInstance()Lcom/baidu/mapauto/auth/util/LogUtil;

    move-result-object v2

    const-string v3, "\u672c\u5730: \u6ca1\u6709\u53d1\u73b0\u4efb\u4f55\u6388\u6743\u6d41\u7a0b"

    invoke-virtual {v2, v5, v3}, Lcom/baidu/mapauto/auth/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    return-object v2

    :cond_8
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapauto/auth/base/BaseLicenseAuthDataStandardProcess;

    :try_start_1
    invoke-virtual {v4, v15}, Lcom/baidu/mapauto/auth/base/BaseLicenseAuthDataStandardProcess;->a(Lcom/baidu/mapauto/auth/AuthCore$AuthParam;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Lcom/baidu/mapauto/auth/base/BaseLicenseAuthDataStandardProcess$ProcessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-static {}, Lcom/baidu/mapauto/auth/util/LogUtil;->getInstance()Lcom/baidu/mapauto/auth/util/LogUtil;

    move-result-object v3

    sget-object v4, Lcom/baidu/mapauto/auth/AuthCore;->TAG:Ljava/lang/String;

    const-string v5, "\u672c\u5730: \u6388\u6743\u5f02\u5e38\u7ed3\u675f\uff08"

    .line 3
    invoke-static {v5}, Lcom/baidu/mapauto/auth/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/baidu/mapauto/auth/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-static {}, Lcom/baidu/mapauto/auth/util/LogUtil;->getInstance()Lcom/baidu/mapauto/auth/util/LogUtil;

    move-result-object v2

    sget-object v4, Lcom/baidu/mapauto/auth/AuthCore;->TAG:Ljava/lang/String;

    const-string v5, "\u672c\u5730: \u6388\u6743\u6210\u529f\u7ed3\u675f"

    invoke-virtual {v2, v4, v5}, Lcom/baidu/mapauto/auth/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_a
    invoke-static {}, Lcom/baidu/mapauto/auth/util/LogUtil;->getInstance()Lcom/baidu/mapauto/auth/util/LogUtil;

    move-result-object v2

    const-string v3, "\u672c\u5730: \u6838\u5fc3\u53c2\u6570\u68c0\u6d4b\u5931\u8d25"

    invoke-virtual {v2, v5, v3}, Lcom/baidu/mapauto/auth/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/mapauto/auth/base/BaseLicenseAuthDataStandardProcess$ProcessException;

    const-string v3, "\u53c2\u6570\u9519\u8bef, \u8bf7\u786e\u4fdd ak, channel, serviceName \u3001 file \u7c7b\u578b\u4e0b\u65f6\u7684 deviceId \u4e0d\u4e3a\u7a7a"

    const/16 v4, -0x3ea

    invoke-direct {v2, v4, v3}, Lcom/baidu/mapauto/auth/base/BaseLicenseAuthDataStandardProcess$ProcessException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_b
    const/16 v4, -0x3ea

    invoke-static {}, Lcom/baidu/mapauto/auth/util/LogUtil;->getInstance()Lcom/baidu/mapauto/auth/util/LogUtil;

    move-result-object v2

    const-string v3, "\u672c\u5730: context \u4e3a\u7a7a"

    invoke-virtual {v2, v5, v3}, Lcom/baidu/mapauto/auth/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/mapauto/auth/base/BaseLicenseAuthDataStandardProcess$ProcessException;

    const-string v3, "context \u4e0d\u53ef\u4ee5\u4e3a\u7a7a"

    invoke-direct {v2, v4, v3}, Lcom/baidu/mapauto/auth/base/BaseLicenseAuthDataStandardProcess$ProcessException;-><init>(ILjava/lang/String;)V

    throw v2
.end method
