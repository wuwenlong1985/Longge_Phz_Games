.class public Lorg/apache/http/impl/client/cache/memcached/SHA256KeyHashingScheme;
.super Ljava/lang/Object;
.source "SHA256KeyHashingScheme.java"

# interfaces
.implements Lorg/apache/http/impl/client/cache/memcached/KeyHashingScheme;


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lorg/apache/http/impl/client/cache/memcached/SHA256KeyHashingScheme;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/cache/memcached/SHA256KeyHashingScheme;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDigest()Ljava/security/MessageDigest;
    .locals 3

    :try_start_0
    const-string v0, "SHA-256"

    .line 55
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 57
    sget-object v1, Lorg/apache/http/impl/client/cache/memcached/SHA256KeyHashingScheme;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "can\'t find SHA-256 implementation for cache key hashing"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 58
    new-instance v1, Lorg/apache/http/impl/client/cache/memcached/MemcachedKeyHashingException;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/cache/memcached/MemcachedKeyHashingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 48
    invoke-direct {p0}, Lorg/apache/http/impl/client/cache/memcached/SHA256KeyHashingScheme;->getDigest()Ljava/security/MessageDigest;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 50
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
