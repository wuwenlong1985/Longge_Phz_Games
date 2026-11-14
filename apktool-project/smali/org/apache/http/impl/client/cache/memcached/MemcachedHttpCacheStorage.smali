.class public Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;
.super Ljava/lang/Object;
.source "MemcachedHttpCacheStorage.java"

# interfaces
.implements Lorg/apache/http/client/cache/HttpCacheStorage;


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final client:Lnet/spy/memcached/MemcachedClientIF;

.field private final keyHashingScheme:Lorg/apache/http/impl/client/cache/memcached/KeyHashingScheme;

.field private final maxUpdateRetries:I

.field private final memcachedCacheEntryFactory:Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const-class v0, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    new-instance v0, Lnet/spy/memcached/MemcachedClient;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lnet/spy/memcached/MemcachedClient;-><init>([Ljava/net/InetSocketAddress;)V

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;-><init>(Lnet/spy/memcached/MemcachedClientIF;)V

    return-void
.end method

.method public constructor <init>(Lnet/spy/memcached/MemcachedClientIF;)V
    .locals 3

    .line 114
    new-instance v0, Lorg/apache/http/impl/client/cache/CacheConfig;

    invoke-direct {v0}, Lorg/apache/http/impl/client/cache/CacheConfig;-><init>()V

    new-instance v1, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryFactoryImpl;

    invoke-direct {v1}, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryFactoryImpl;-><init>()V

    new-instance v2, Lorg/apache/http/impl/client/cache/memcached/SHA256KeyHashingScheme;

    invoke-direct {v2}, Lorg/apache/http/impl/client/cache/memcached/SHA256KeyHashingScheme;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;-><init>(Lnet/spy/memcached/MemcachedClientIF;Lorg/apache/http/impl/client/cache/CacheConfig;Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryFactory;Lorg/apache/http/impl/client/cache/memcached/KeyHashingScheme;)V

    return-void
.end method

.method public constructor <init>(Lnet/spy/memcached/MemcachedClientIF;Lorg/apache/http/impl/client/cache/CacheConfig;Lorg/apache/http/client/cache/HttpCacheEntrySerializer;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    new-instance p3, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryFactoryImpl;

    invoke-direct {p3}, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryFactoryImpl;-><init>()V

    new-instance v0, Lorg/apache/http/impl/client/cache/memcached/SHA256KeyHashingScheme;

    invoke-direct {v0}, Lorg/apache/http/impl/client/cache/memcached/SHA256KeyHashingScheme;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;-><init>(Lnet/spy/memcached/MemcachedClientIF;Lorg/apache/http/impl/client/cache/CacheConfig;Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryFactory;Lorg/apache/http/impl/client/cache/memcached/KeyHashingScheme;)V

    return-void
.end method

.method public constructor <init>(Lnet/spy/memcached/MemcachedClientIF;Lorg/apache/http/impl/client/cache/CacheConfig;Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryFactory;Lorg/apache/http/impl/client/cache/memcached/KeyHashingScheme;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->client:Lnet/spy/memcached/MemcachedClientIF;

    .line 157
    invoke-virtual {p2}, Lorg/apache/http/impl/client/cache/CacheConfig;->getMaxUpdateRetries()I

    move-result p1

    iput p1, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->maxUpdateRetries:I

    .line 158
    iput-object p3, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->memcachedCacheEntryFactory:Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryFactory;

    .line 159
    iput-object p4, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->keyHashingScheme:Lorg/apache/http/impl/client/cache/memcached/KeyHashingScheme;

    return-void
.end method

.method private convertToByteArray(Ljava/lang/Object;)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 194
    :cond_0
    instance-of v1, p1, [B

    if-nez v1, :cond_1

    .line 195
    sget-object v1, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got a non-bytearray back from memcached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    return-object v0

    .line 198
    :cond_1
    check-cast p1, [B

    return-object p1
.end method

.method private getCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 175
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->keyHashingScheme:Lorg/apache/http/impl/client/cache/memcached/KeyHashingScheme;

    invoke-interface {v0, p1}, Lorg/apache/http/impl/client/cache/memcached/KeyHashingScheme;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/http/impl/client/cache/memcached/MemcachedKeyHashingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private reconstituteEntry(Ljava/lang/Object;)Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->convertToByteArray(Ljava/lang/Object;)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 204
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->memcachedCacheEntryFactory:Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryFactory;

    invoke-interface {v1}, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryFactory;->getUnsetCacheEntry()Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntry;

    move-result-object v1

    .line 206
    :try_start_0
    invoke-interface {v1, p1}, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntry;->set([B)V
    :try_end_0
    .catch Lorg/apache/http/impl/client/cache/memcached/MemcachedSerializationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method private serializeEntry(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheEntry;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->memcachedCacheEntryFactory:Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryFactory;->getMemcachedCacheEntry(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntry;

    move-result-object p1

    .line 184
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntry;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/http/impl/client/cache/memcached/MemcachedSerializationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 186
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    .line 187
    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 188
    throw p2
.end method


# virtual methods
.method public getEntry(Ljava/lang/String;)Lorg/apache/http/client/cache/HttpCacheEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 217
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->client:Lnet/spy/memcached/MemcachedClientIF;

    invoke-interface {v2, v0}, Lnet/spy/memcached/MemcachedClientIF;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->reconstituteEntry(Ljava/lang/Object;)Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 218
    invoke-interface {v0}, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntry;->getStorageKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 219
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntry;->getHttpCacheEntry()Lorg/apache/http/client/cache/HttpCacheEntry;

    move-result-object p1
    :try_end_0
    .catch Lnet/spy/memcached/OperationTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    :goto_0
    return-object v1

    :catch_0
    move-exception p1

    .line 221
    new-instance v0, Lorg/apache/http/impl/client/cache/memcached/MemcachedOperationTimeoutException;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/cache/memcached/MemcachedOperationTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public putEntry(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->serializeEntry(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheEntry;)[B

    move-result-object p2

    .line 164
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 167
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->client:Lnet/spy/memcached/MemcachedClientIF;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lnet/spy/memcached/MemcachedClientIF;->set(Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Lnet/spy/memcached/OperationTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 169
    new-instance p2, Lorg/apache/http/impl/client/cache/memcached/MemcachedOperationTimeoutException;

    invoke-direct {p2, p1}, Lorg/apache/http/impl/client/cache/memcached/MemcachedOperationTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public removeEntry(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 229
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->client:Lnet/spy/memcached/MemcachedClientIF;

    invoke-interface {v0, p1}, Lnet/spy/memcached/MemcachedClientIF;->delete(Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Lnet/spy/memcached/OperationTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 231
    new-instance v0, Lorg/apache/http/impl/client/cache/memcached/MemcachedOperationTimeoutException;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/cache/memcached/MemcachedOperationTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public updateEntry(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheUpdateCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/cache/HttpCacheUpdateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 240
    new-instance p1, Lorg/apache/http/client/cache/HttpCacheUpdateException;

    const-string p2, "couldn\'t generate cache key"

    invoke-direct {p1, p2}, Lorg/apache/http/client/cache/HttpCacheUpdateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v1, 0x0

    .line 244
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->client:Lnet/spy/memcached/MemcachedClientIF;

    invoke-interface {v2, v0}, Lnet/spy/memcached/MemcachedClientIF;->gets(Ljava/lang/String;)Lnet/spy/memcached/CASValue;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move-object v4, v3

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {v2}, Lnet/spy/memcached/CASValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->reconstituteEntry(Ljava/lang/Object;)Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntry;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_3

    .line 247
    invoke-interface {v4}, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntry;->getStorageKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object v4, v3

    :cond_3
    if-nez v4, :cond_4

    goto :goto_1

    .line 250
    :cond_4
    invoke-interface {v4}, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntry;->getHttpCacheEntry()Lorg/apache/http/client/cache/HttpCacheEntry;

    move-result-object v3

    .line 252
    :goto_1
    invoke-interface {p2, v3}, Lorg/apache/http/client/cache/HttpCacheUpdateCallback;->update(Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/client/cache/HttpCacheEntry;

    move-result-object v4

    if-nez v3, :cond_5

    .line 255
    invoke-virtual {p0, p1, v4}, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->putEntry(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheEntry;)V

    return-void

    .line 259
    :cond_5
    invoke-direct {p0, p1, v4}, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->serializeEntry(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheEntry;)[B

    move-result-object v3

    .line 260
    iget-object v4, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->client:Lnet/spy/memcached/MemcachedClientIF;

    invoke-virtual {v2}, Lnet/spy/memcached/CASValue;->getCas()J

    move-result-wide v5

    invoke-interface {v4, v0, v5, v6, v3}, Lnet/spy/memcached/MemcachedClientIF;->cas(Ljava/lang/String;JLjava/lang/Object;)Lnet/spy/memcached/CASResponse;

    move-result-object v2

    .line 262
    sget-object v3, Lnet/spy/memcached/CASResponse;->OK:Lnet/spy/memcached/CASResponse;
    :try_end_0
    .catch Lnet/spy/memcached/OperationTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_6

    add-int/lit8 v1, v1, 0x1

    .line 269
    iget v2, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedHttpCacheStorage;->maxUpdateRetries:I

    if-le v1, v2, :cond_1

    .line 271
    new-instance p1, Lorg/apache/http/client/cache/HttpCacheUpdateException;

    const-string p2, "Failed to update"

    invoke-direct {p1, p2}, Lorg/apache/http/client/cache/HttpCacheUpdateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void

    :catch_0
    move-exception p1

    .line 267
    new-instance p2, Lorg/apache/http/impl/client/cache/memcached/MemcachedOperationTimeoutException;

    invoke-direct {p2, p1}, Lorg/apache/http/impl/client/cache/memcached/MemcachedOperationTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
