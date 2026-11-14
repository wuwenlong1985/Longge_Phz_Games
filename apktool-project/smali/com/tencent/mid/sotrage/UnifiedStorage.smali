.class public Lcom/tencent/mid/sotrage/UnifiedStorage;
.super Ljava/lang/Object;
.source "UnifiedStorage.java"


# static fields
.field private static instance:Lcom/tencent/mid/sotrage/UnifiedStorage;


# instance fields
.field private cachedMid:Lcom/tencent/mid/api/MidEntity;

.field private context:Landroid/content/Context;

.field firstRead:Z

.field private logger:Lcom/tencent/mid/util/Logger;

.field newVersionMidEntity:Lcom/tencent/mid/api/MidEntity;

.field newVersionMidStorageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/mid/sotrage/StorageInterface;",
            ">;"
        }
    .end annotation
.end field

.field oldMidStorageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/mid/sotrage/StorageInterface;",
            ">;"
        }
    .end annotation
.end field

.field private storageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/mid/sotrage/StorageInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->storageMap:Ljava/util/Map;

    .line 33
    iput-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->context:Landroid/content/Context;

    .line 34
    invoke-static {}, Lcom/tencent/mid/util/Util;->getLogger()Lcom/tencent/mid/util/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->logger:Lcom/tencent/mid/util/Logger;

    .line 62
    iput-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->newVersionMidStorageMap:Ljava/util/Map;

    .line 78
    iput-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->newVersionMidEntity:Lcom/tencent/mid/api/MidEntity;

    .line 150
    iput-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->oldMidStorageMap:Ljava/util/Map;

    .line 179
    iput-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->cachedMid:Lcom/tencent/mid/api/MidEntity;

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->firstRead:Z

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->context:Landroid/content/Context;

    .line 39
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->storageMap:Ljava/util/Map;

    .line 40
    iget-object v1, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->storageMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lcom/tencent/mid/sotrage/SettingSystem;

    invoke-direct {v3, p1, v2}, Lcom/tencent/mid/sotrage/SettingSystem;-><init>(Landroid/content/Context;I)V

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->storageMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/tencent/mid/sotrage/InternalStorage;

    invoke-direct {v3, p1, v2}, Lcom/tencent/mid/sotrage/InternalStorage;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->storageMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/tencent/mid/sotrage/Perference;

    invoke-direct {v3, p1, v2}, Lcom/tencent/mid/sotrage/Perference;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tencent/mid/sotrage/UnifiedStorage;
    .locals 2

    const-class v0, Lcom/tencent/mid/sotrage/UnifiedStorage;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/tencent/mid/sotrage/UnifiedStorage;->instance:Lcom/tencent/mid/sotrage/UnifiedStorage;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/tencent/mid/sotrage/UnifiedStorage;

    invoke-direct {v1, p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/mid/sotrage/UnifiedStorage;->instance:Lcom/tencent/mid/sotrage/UnifiedStorage;

    .line 54
    :cond_0
    sget-object p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->instance:Lcom/tencent/mid/sotrage/UnifiedStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v0

    throw p0
.end method

.method private getNewVersionMidStorageMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/mid/sotrage/StorageInterface;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->newVersionMidStorageMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->newVersionMidStorageMap:Ljava/util/Map;

    .line 67
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->newVersionMidStorageMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mid/sotrage/SettingSystem;

    iget-object v3, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->context:Landroid/content/Context;

    const v4, 0xf4241

    invoke-direct {v2, v3, v4}, Lcom/tencent/mid/sotrage/SettingSystem;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->newVersionMidStorageMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mid/sotrage/InternalStorage;

    iget-object v3, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/tencent/mid/sotrage/InternalStorage;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->newVersionMidStorageMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mid/sotrage/Perference;

    iget-object v3, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/tencent/mid/sotrage/Perference;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->newVersionMidStorageMap:Ljava/util/Map;

    return-object v0
.end method

.method private getOldMidStorageMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/mid/sotrage/StorageInterface;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->oldMidStorageMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->oldMidStorageMap:Ljava/util/Map;

    .line 155
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->oldMidStorageMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mid/sotrage/SettingSystem;

    iget-object v3, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/tencent/mid/sotrage/SettingSystem;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->oldMidStorageMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mid/sotrage/InternalStorage;

    iget-object v3, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/tencent/mid/sotrage/InternalStorage;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->oldMidStorageMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mid/sotrage/Perference;

    iget-object v3, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/tencent/mid/sotrage/Perference;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->oldMidStorageMap:Ljava/util/Map;

    return-object v0
.end method

.method private readOldMid()Lcom/tencent/mid/api/MidEntity;
    .locals 3

    .line 166
    new-instance v0, Lcom/tencent/mid/sotrage/SettingSystem;

    iget-object v1, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/mid/sotrage/SettingSystem;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/tencent/mid/sotrage/SettingSystem;->readMidEntity()Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    new-instance v0, Lcom/tencent/mid/sotrage/InternalStorage;

    iget-object v1, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/tencent/mid/sotrage/InternalStorage;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/tencent/mid/sotrage/InternalStorage;->readMidEntity()Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    .line 170
    :cond_0
    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    new-instance v0, Lcom/tencent/mid/sotrage/Perference;

    iget-object v1, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/tencent/mid/sotrage/Perference;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/tencent/mid/sotrage/Perference;->readMidEntity()Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    .line 173
    :cond_1
    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    return-object v0
.end method

.method private readSpecialTypeMidEntity(ILjava/util/Map;)Lcom/tencent/mid/api/MidEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/mid/sotrage/StorageInterface;",
            ">;)",
            "Lcom/tencent/mid/api/MidEntity;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->storageMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 330
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/mid/sotrage/StorageInterface;

    if-eqz p1, :cond_0

    .line 332
    invoke-virtual {p1}, Lcom/tencent/mid/sotrage/StorageInterface;->readMidEntity()Lcom/tencent/mid/api/MidEntity;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->storageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 413
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mid/sotrage/StorageInterface;

    invoke-virtual {v1}, Lcom/tencent/mid/sotrage/StorageInterface;->doClear()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 415
    iput-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->cachedMid:Lcom/tencent/mid/api/MidEntity;

    return-void
.end method

.method public clearNewVersionMid()V
    .locals 2

    .line 426
    invoke-direct {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getNewVersionMidStorageMap()Ljava/util/Map;

    .line 427
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->newVersionMidStorageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 428
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mid/sotrage/StorageInterface;

    invoke-virtual {v1}, Lcom/tencent/mid/sotrage/StorageInterface;->doClear()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 430
    iput-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->newVersionMidEntity:Lcom/tencent/mid/api/MidEntity;

    return-void
.end method

.method public clearOldMid()V
    .locals 2

    .line 419
    invoke-direct {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getOldMidStorageMap()Ljava/util/Map;

    .line 420
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->oldMidStorageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 421
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mid/sotrage/StorageInterface;

    invoke-virtual {v1}, Lcom/tencent/mid/sotrage/StorageInterface;->doClear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readCheckEntity()Lcom/tencent/mid/sotrage/CheckEntity;
    .locals 5

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x4

    .line 389
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 387
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readCheckEntity(Ljava/util/List;)Lcom/tencent/mid/sotrage/CheckEntity;

    move-result-object v0

    return-object v0
.end method

.method public readCheckEntity(Ljava/util/List;)Lcom/tencent/mid/sotrage/CheckEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/tencent/mid/sotrage/CheckEntity;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 393
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 397
    iget-object v2, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->storageMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mid/sotrage/StorageInterface;

    if-eqz v1, :cond_1

    .line 399
    invoke-virtual {v1}, Lcom/tencent/mid/sotrage/StorageInterface;->readCheckEntity()Lcom/tencent/mid/sotrage/CheckEntity;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public readGuid()J
    .locals 4

    .line 197
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readMidEntity()Lcom/tencent/mid/api/MidEntity;

    .line 198
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->cachedMid:Lcom/tencent/mid/api/MidEntity;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->cachedMid:Lcom/tencent/mid/api/MidEntity;

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->getGuid()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 202
    iget-object v1, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->logger:Lcom/tencent/mid/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readMidString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public readMidEntity()Lcom/tencent/mid/api/MidEntity;
    .locals 8

    .line 216
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->cachedMid:Lcom/tencent/mid/api/MidEntity;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->logger:Lcom/tencent/mid/util/Logger;

    const-string v4, "read the new one"

    invoke-virtual {v0, v4}, Lcom/tencent/mid/util/Logger;->d(Ljava/lang/Object;)V

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    new-array v4, v3, [Ljava/lang/Integer;

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->storageMap:Ljava/util/Map;

    .line 218
    invoke-virtual {p0, v0, v4}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readMidEntity(Ljava/util/List;Ljava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->cachedMid:Lcom/tencent/mid/api/MidEntity;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->cachedMid:Lcom/tencent/mid/api/MidEntity;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->logger:Lcom/tencent/mid/util/Logger;

    const-string v4, "load from the old one"

    invoke-virtual {v0, v4}, Lcom/tencent/mid/util/Logger;->d(Ljava/lang/Object;)V

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    new-array v4, v3, [Ljava/lang/Integer;

    .line 227
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 228
    invoke-direct {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getOldMidStorageMap()Ljava/util/Map;

    move-result-object v4

    .line 226
    invoke-virtual {p0, v0, v4}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readMidEntity(Ljava/util/List;Ljava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    .line 229
    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    iget-object v4, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->logger:Lcom/tencent/mid/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copy old mid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->getMid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to new version."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/mid/util/Logger;->w(Ljava/lang/Object;)V

    .line 231
    iput-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->cachedMid:Lcom/tencent/mid/api/MidEntity;

    .line 232
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->cachedMid:Lcom/tencent/mid/api/MidEntity;

    invoke-virtual {p0, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writeMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->cachedMid:Lcom/tencent/mid/api/MidEntity;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v0

    const/4 v4, 0x2

    if-nez v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->logger:Lcom/tencent/mid/util/Logger;

    const-string v5, "mid query other app"

    invoke-virtual {v0, v5}, Lcom/tencent/mid/util/Logger;->d(Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->context:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/tencent/mid/util/Util;->getMidsByApps(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 241
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 242
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/mid/api/MidEntity;

    if-eqz v5, :cond_2

    .line 244
    invoke-virtual {v5}, Lcom/tencent/mid/api/MidEntity;->isMidValid()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 245
    iput-object v5, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->cachedMid:Lcom/tencent/mid/api/MidEntity;

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->cachedMid:Lcom/tencent/mid/api/MidEntity;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v0

    const/4 v5, 0x3

    if-nez v0, :cond_4

    .line 253
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->logger:Lcom/tencent/mid/util/Logger;

    const-string v6, "read the new one"

    invoke-virtual {v0, v6}, Lcom/tencent/mid/util/Logger;->d(Ljava/lang/Object;)V

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    new-array v6, v5, [Ljava/lang/Integer;

    .line 255
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 256
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    .line 255
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v6, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->storageMap:Ljava/util/Map;

    .line 254
    invoke-virtual {p0, v0, v6}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readMidEntity(Ljava/util/List;Ljava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->cachedMid:Lcom/tencent/mid/api/MidEntity;

    .line 262
    :cond_4
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->cachedMid:Lcom/tencent/mid/api/MidEntity;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 263
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->logger:Lcom/tencent/mid/util/Logger;

    const-string v6, "load from the old one"

    invoke-virtual {v0, v6}, Lcom/tencent/mid/util/Logger;->d(Ljava/lang/Object;)V

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    new-array v5, v5, [Ljava/lang/Integer;

    .line 265
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 266
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    .line 265
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 267
    invoke-direct {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getOldMidStorageMap()Ljava/util/Map;

    move-result-object v1

    .line 264
    invoke-virtual {p0, v0, v1}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readMidEntity(Ljava/util/List;Ljava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    .line 268
    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 269
    iget-object v1, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->logger:Lcom/tencent/mid/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copy old mid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to new version."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/mid/util/Logger;->w(Ljava/lang/Object;)V

    .line 270
    iput-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->cachedMid:Lcom/tencent/mid/api/MidEntity;

    .line 271
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->cachedMid:Lcom/tencent/mid/api/MidEntity;

    invoke-virtual {p0, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writeMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    .line 283
    :cond_5
    iget-boolean v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->firstRead:Z

    if-eqz v0, :cond_8

    .line 284
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->logger:Lcom/tencent/mid/util/Logger;

    const-string v1, "firstRead"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/Logger;->d(Ljava/lang/Object;)V

    .line 285
    invoke-virtual {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readPrivateMidEntity()Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 286
    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->isMidValid()Z

    move-result v0

    if-nez v0, :cond_7

    .line 287
    :cond_6
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->cachedMid:Lcom/tencent/mid/api/MidEntity;

    invoke-virtual {p0, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writePrivateMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    .line 289
    :cond_7
    iput-boolean v2, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->firstRead:Z

    .line 291
    :cond_8
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->cachedMid:Lcom/tencent/mid/api/MidEntity;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->cachedMid:Lcom/tencent/mid/api/MidEntity;

    goto :goto_0

    :cond_9
    new-instance v0, Lcom/tencent/mid/api/MidEntity;

    invoke-direct {v0}, Lcom/tencent/mid/api/MidEntity;-><init>()V

    :goto_0
    return-object v0
.end method

.method public readMidEntity(Ljava/util/List;)Lcom/tencent/mid/api/MidEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/tencent/mid/api/MidEntity;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->storageMap:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readMidEntity(Ljava/util/List;Ljava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object p1

    return-object p1
.end method

.method public readMidEntity(Ljava/util/List;Ljava/util/Map;)Lcom/tencent/mid/api/MidEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/mid/sotrage/StorageInterface;",
            ">;)",
            "Lcom/tencent/mid/api/MidEntity;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 346
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 350
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mid/sotrage/StorageInterface;

    if-eqz v1, :cond_1

    .line 352
    invoke-virtual {v1}, Lcom/tencent/mid/sotrage/StorageInterface;->readMidEntity()Lcom/tencent/mid/api/MidEntity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 353
    invoke-virtual {v1}, Lcom/tencent/mid/api/MidEntity;->isMidValid()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public readMidString()Ljava/lang/String;
    .locals 4

    .line 183
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readMidEntity()Lcom/tencent/mid/api/MidEntity;

    .line 184
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->cachedMid:Lcom/tencent/mid/api/MidEntity;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->cachedMid:Lcom/tencent/mid/api/MidEntity;

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->getMid()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 188
    iget-object v1, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->logger:Lcom/tencent/mid/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readMidString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    :cond_0
    const-string v0, "0"

    return-object v0
.end method

.method public readNewVersionMidEntity()Lcom/tencent/mid/api/MidEntity;
    .locals 4

    .line 81
    invoke-direct {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getNewVersionMidStorageMap()Ljava/util/Map;

    .line 83
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->newVersionMidEntity:Lcom/tencent/mid/api/MidEntity;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 85
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 85
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->newVersionMidStorageMap:Ljava/util/Map;

    .line 84
    invoke-virtual {p0, v0, v1}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readMidEntity(Ljava/util/List;Ljava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->newVersionMidEntity:Lcom/tencent/mid/api/MidEntity;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->logger:Lcom/tencent/mid/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readNewVersionMidEntity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->newVersionMidEntity:Lcom/tencent/mid/api/MidEntity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/Logger;->d(Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->newVersionMidEntity:Lcom/tencent/mid/api/MidEntity;

    return-object v0
.end method

.method public readNewVersionMidStr()Ljava/lang/String;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readNewVersionMidEntity()Lcom/tencent/mid/api/MidEntity;

    .line 95
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->newVersionMidEntity:Lcom/tencent/mid/api/MidEntity;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isMidValid(Lcom/tencent/mid/api/MidEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->newVersionMidEntity:Lcom/tencent/mid/api/MidEntity;

    invoke-virtual {v0}, Lcom/tencent/mid/api/MidEntity;->getMid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public readPrivateMidEntity()Lcom/tencent/mid/api/MidEntity;
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->storageMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readSpecialTypeMidEntity(ILjava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    return-object v0
.end method

.method public readPrivateNewVersionMidEntity()Lcom/tencent/mid/api/MidEntity;
    .locals 2

    .line 118
    invoke-direct {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getNewVersionMidStorageMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readSpecialTypeMidEntity(ILjava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    return-object v0
.end method

.method public readSdCarkMidEntity()Lcom/tencent/mid/api/MidEntity;
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->storageMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readSpecialTypeMidEntity(ILjava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    return-object v0
.end method

.method public readSdCarkNewVersionMidEntity()Lcom/tencent/mid/api/MidEntity;
    .locals 2

    .line 126
    invoke-direct {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getNewVersionMidStorageMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readSpecialTypeMidEntity(ILjava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    return-object v0
.end method

.method public readSettingMidEntity()Lcom/tencent/mid/api/MidEntity;
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->storageMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readSpecialTypeMidEntity(ILjava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    return-object v0
.end method

.method public readSettingNewVersionMidEntity()Lcom/tencent/mid/api/MidEntity;
    .locals 2

    .line 122
    invoke-direct {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getNewVersionMidStorageMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readSpecialTypeMidEntity(ILjava/util/Map;)Lcom/tencent/mid/api/MidEntity;

    move-result-object v0

    return-object v0
.end method

.method public resetCheckEntity(II)V
    .locals 1

    .line 368
    invoke-virtual {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->readCheckEntity()Lcom/tencent/mid/sotrage/CheckEntity;

    move-result-object v0

    if-lez p1, :cond_0

    .line 370
    invoke-virtual {v0, p1}, Lcom/tencent/mid/sotrage/CheckEntity;->setMaxFreq(I)V

    :cond_0
    if-lez p2, :cond_1

    .line 373
    invoke-virtual {v0, p2}, Lcom/tencent/mid/sotrage/CheckEntity;->setMaxDays(I)V

    .line 375
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mid/sotrage/CheckEntity;->setLastCheckTimestamps(J)V

    const/4 p1, 0x0

    .line 376
    invoke-virtual {v0, p1}, Lcom/tencent/mid/sotrage/CheckEntity;->setLastCheckTimes(I)V

    .line 377
    invoke-virtual {p0, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writeCheckEntity(Lcom/tencent/mid/sotrage/CheckEntity;)V

    return-void
.end method

.method public writeCheckEntity(Lcom/tencent/mid/sotrage/CheckEntity;)V
    .locals 5

    .line 439
    invoke-virtual {p1}, Lcom/tencent/mid/sotrage/CheckEntity;->getLastCheckTimestamps()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mid/sotrage/CheckEntity;->setLastCheckTimestamps(J)V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->storageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 443
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mid/sotrage/StorageInterface;

    invoke-virtual {v1, p1}, Lcom/tencent/mid/sotrage/StorageInterface;->writeCheckEntity(Lcom/tencent/mid/sotrage/CheckEntity;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeMidEntity(Lcom/tencent/mid/api/MidEntity;)V
    .locals 5

    .line 453
    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->getTimestamps()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mid/api/MidEntity;->setTimestamps(J)V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->storageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 458
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mid/sotrage/StorageInterface;

    invoke-virtual {v1, p1}, Lcom/tencent/mid/sotrage/StorageInterface;->writeMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeMidEntityWithProvide(Lcom/tencent/mid/api/MidEntity;Z)V
    .locals 5

    .line 464
    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->getTimestamps()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mid/api/MidEntity;->setTimestamps(J)V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->storageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 469
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mid/sotrage/StorageInterface;

    invoke-virtual {v1, p1}, Lcom/tencent/mid/sotrage/StorageInterface;->writeMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 473
    iget-object p2, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->context:Landroid/content/Context;

    if-nez p2, :cond_2

    return-void

    .line 474
    :cond_2
    iget-object p2, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/tencent/mid/util/Util;->insertMid2OldProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public writeNewVersionMidEntity(Lcom/tencent/mid/api/MidEntity;)V
    .locals 1

    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->writeNewVersionMidEntityWithProvider(Lcom/tencent/mid/api/MidEntity;Z)V

    return-void
.end method

.method public writeNewVersionMidEntityWithProvider(Lcom/tencent/mid/api/MidEntity;Z)V
    .locals 5

    .line 104
    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->getTimestamps()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mid/api/MidEntity;->setTimestamps(J)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->logger:Lcom/tencent/mid/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeNewVersionMidEntity midEntity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/Logger;->d(Ljava/lang/Object;)V

    .line 108
    invoke-direct {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getNewVersionMidStorageMap()Ljava/util/Map;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mid/sotrage/StorageInterface;

    invoke-virtual {v1, p1}, Lcom/tencent/mid/sotrage/StorageInterface;->writeMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 113
    iget-object p2, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->context:Landroid/content/Context;

    if-nez p2, :cond_2

    return-void

    .line 114
    :cond_2
    iget-object p2, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/tencent/mid/util/Util;->insertMid2Provider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public writeOldMidEntity(Lcom/tencent/mid/api/MidEntity;)V
    .locals 5

    .line 479
    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->getTimestamps()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mid/api/MidEntity;->setTimestamps(J)V

    .line 483
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getOldMidStorageMap()Ljava/util/Map;

    move-result-object v0

    .line 484
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 485
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mid/sotrage/StorageInterface;

    invoke-virtual {v1, p1}, Lcom/tencent/mid/sotrage/StorageInterface;->writeMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writePrivateMidEntity(Lcom/tencent/mid/api/MidEntity;)V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->storageMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mid/sotrage/StorageInterface;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0, p1}, Lcom/tencent/mid/sotrage/StorageInterface;->writeMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    :cond_0
    return-void
.end method

.method public writePrivateNewVersionMidEntity(Lcom/tencent/mid/api/MidEntity;)V
    .locals 2

    .line 130
    invoke-direct {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getNewVersionMidStorageMap()Ljava/util/Map;

    .line 131
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->newVersionMidStorageMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mid/sotrage/StorageInterface;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0, p1}, Lcom/tencent/mid/sotrage/StorageInterface;->writeMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    :cond_0
    return-void
.end method

.method public writePublicMidEntity(Lcom/tencent/mid/api/MidEntity;)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->storageMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mid/sotrage/StorageInterface;

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0, p1}, Lcom/tencent/mid/sotrage/StorageInterface;->writeMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->storageMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mid/sotrage/StorageInterface;

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v0, p1}, Lcom/tencent/mid/sotrage/StorageInterface;->writeMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    :cond_1
    return-void
.end method

.method public writePublicNewVersionMidEntity(Lcom/tencent/mid/api/MidEntity;)V
    .locals 2

    .line 138
    invoke-direct {p0}, Lcom/tencent/mid/sotrage/UnifiedStorage;->getNewVersionMidStorageMap()Ljava/util/Map;

    .line 139
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->newVersionMidStorageMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mid/sotrage/StorageInterface;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p1}, Lcom/tencent/mid/sotrage/StorageInterface;->writeMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/tencent/mid/sotrage/UnifiedStorage;->newVersionMidStorageMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mid/sotrage/StorageInterface;

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0, p1}, Lcom/tencent/mid/sotrage/StorageInterface;->writeMidEntity(Lcom/tencent/mid/api/MidEntity;)V

    :cond_1
    return-void
.end method
