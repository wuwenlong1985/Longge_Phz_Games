.class Lcom/tencent/mid/util/Util$MidResolver;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mid/util/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MidResolver"
.end annotation


# instance fields
.field private appPrivateMidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/mid/api/MidEntity;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private providerCmd:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput p2, p0, Lcom/tencent/mid/util/Util$MidResolver;->providerCmd:I

    .line 450
    iput-object p1, p0, Lcom/tencent/mid/util/Util$MidResolver;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/mid/api/MidEntity;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mid/util/Util$MidResolver;->appPrivateMidMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 2

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mid/util/Util$MidResolver;->context:Landroid/content/Context;

    iget v1, p0, Lcom/tencent/mid/util/Util$MidResolver;->providerCmd:I

    invoke-static {v0, v1}, Lcom/tencent/mid/util/Util;->access$000(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v0

    .line 456
    invoke-virtual {p0, v0}, Lcom/tencent/mid/util/Util$MidResolver;->set(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public declared-synchronized set(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/mid/api/MidEntity;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 463
    :try_start_0
    iput-object p1, p0, Lcom/tencent/mid/util/Util$MidResolver;->appPrivateMidMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 462
    monitor-exit p0

    throw p1
.end method
