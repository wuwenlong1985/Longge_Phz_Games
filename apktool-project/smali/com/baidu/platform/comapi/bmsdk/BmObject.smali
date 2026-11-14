.class public abstract Lcom/baidu/platform/comapi/bmsdk/BmObject;
.super Ljava/lang/Object;
.source "BmObject.java"


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private mName:Ljava/lang/String;

.field protected final mObjType:I

.field private mTag:Ljava/lang/String;

.field protected final nativeInstance:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmObject;->mName:Ljava/lang/String;

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmObject;->mTag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmObject;->mObjType:I

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmObject;->nativeInstance:J

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmObject;->mName:Ljava/lang/String;

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmObject;->mTag:Ljava/lang/String;

    .line 22
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmObject;->mObjType:I

    .line 23
    iput-wide p2, p0, Lcom/baidu/platform/comapi/bmsdk/BmObject;->nativeInstance:J

    return-void
.end method

.method private dispose()V
    .locals 5

    .line 73
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmObject;->nativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 74
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmObject;->nativeInstance:J

    .line 75
    invoke-static {}, Lcom/baidu/platform/comapi/util/k;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/baidu/platform/comapi/bmsdk/c;

    invoke-direct {v3, p0, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/c;-><init>(Lcom/baidu/platform/comapi/bmsdk/BmObject;J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method private static native nativeFinalizer(J)V
.end method

.method private static native nativeSetLayerTag(JLjava/lang/String;)Z
.end method

.method private printDebugFinalize()V
    .locals 0

    return-void
.end method

.method private printDebugNew()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 60
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/platform/comapi/bmsdk/BmObject;->dispose()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :catch_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 69
    throw v0

    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmObject;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeInstance()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmObject;->nativeInstance:J

    return-wide v0
.end method

.method public getObjType()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmObject;->mObjType:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmObject;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setLayerTag(Ljava/lang/String;)Z
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmObject;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/BmObject;->nativeSetLayerTag(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmObject;->mName:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmObject;->mTag:Ljava/lang/String;

    return-void
.end method
