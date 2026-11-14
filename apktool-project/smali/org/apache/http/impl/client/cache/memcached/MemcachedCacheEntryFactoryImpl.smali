.class public Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryFactoryImpl;
.super Ljava/lang/Object;
.source "MemcachedCacheEntryFactoryImpl.java"

# interfaces
.implements Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMemcachedCacheEntry(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheEntry;)Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntry;
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;-><init>(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheEntry;)V

    return-object v0
.end method

.method public getUnsetCacheEntry()Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntry;
    .locals 2

    .line 41
    new-instance v0, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/http/impl/client/cache/memcached/MemcachedCacheEntryImpl;-><init>(Ljava/lang/String;Lorg/apache/http/client/cache/HttpCacheEntry;)V

    return-object v0
.end method
