.class public Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;
.super Ljava/lang/Object;
.source "MemcachedCacheEntryImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntry;


# instance fields
.field private httpCacheEntry:Lorg/apache/http/client/cache/HttpCacheEntry;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheEntry;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;->key:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;->httpCacheEntry:Lorg/apache/http/client/cache/HttpCacheEntry;

    return-void
.end method


# virtual methods
.method public declared-synchronized getHttpCacheEntry()Lorg/apache/http/client/cache/HttpCacheEntry;
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;->httpCacheEntry:Lorg/apache/http/client/cache/HttpCacheEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStorageKey()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;->key:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set([B)V
    .locals 3

    monitor-enter p0

    .line 89
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 95
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/client/cache/HttpCacheEntry;

    .line 97
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V

    .line 98
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :try_start_2
    iput-object v1, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;->key:Ljava/lang/String;

    .line 105
    iput-object v2, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;->httpCacheEntry:Lorg/apache/http/client/cache/HttpCacheEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 102
    :try_start_3
    new-instance v0, Lorg/apache/http/impl/client/cache/memcached/MemcachedSerializationException;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/cache/memcached/MemcachedSerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 100
    new-instance v0, Lorg/apache/http/impl/client/cache/memcached/MemcachedSerializationException;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/cache/memcached/MemcachedSerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 88
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toByteArray()[B
    .locals 3

    monitor-enter p0

    .line 58
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 62
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 63
    iget-object v2, p0, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;->httpCacheEntry:Lorg/apache/http/client/cache/HttpCacheEntry;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 66
    :try_start_3
    new-instance v1, Lorg/apache/http/impl/client/cache/memcached/MemcachedSerializationException;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/cache/memcached/MemcachedSerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 57
    monitor-exit p0

    throw v0
.end method
