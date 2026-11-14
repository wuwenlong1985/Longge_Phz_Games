.class Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;
.super Ljava/lang/Object;
.source "CacheableRequestPolicy.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public isServableFromCache(Lorg/apache/http/HttpRequest;)Z
    .locals 9

    .line 57
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v1

    .line 60
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-virtual {v2, v1}, Lorg/apache/http/HttpVersion;->compareToVersion(Lorg/apache/http/ProtocolVersion;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 61
    iget-object p1, p0, Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;->log:Lorg/apache/commons/logging/Log;

    const-string v0, "non-HTTP/1.1 request was not serveable from cache"

    invoke-interface {p1, v0}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    return v2

    :cond_0
    const-string v1, "GET"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget-object p1, p0, Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;->log:Lorg/apache/commons/logging/Log;

    const-string v0, "non-GET request was not serveable from cache"

    invoke-interface {p1, v0}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    return v2

    :cond_1
    const-string v0, "Pragma"

    .line 70
    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_2

    .line 71
    iget-object p1, p0, Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;->log:Lorg/apache/commons/logging/Log;

    const-string v0, "request with Pragma header was not serveable from cache"

    invoke-interface {p1, v0}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    return v2

    :cond_2
    const-string v0, "Cache-Control"

    .line 75
    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p1

    .line 76
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v3, p1, v1

    .line 77
    invoke-interface {v3}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    const-string v7, "no-store"

    .line 78
    invoke-interface {v6}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 80
    iget-object p1, p0, Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;->log:Lorg/apache/commons/logging/Log;

    const-string v0, "Request with no-store was not serveable from cache"

    invoke-interface {p1, v0}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    return v2

    :cond_3
    const-string v7, "no-cache"

    .line 84
    invoke-interface {v6}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 86
    iget-object p1, p0, Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;->log:Lorg/apache/commons/logging/Log;

    const-string v0, "Request with no-cache was not serveable from cache"

    invoke-interface {p1, v0}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    return v2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_6
    iget-object p1, p0, Lorg/apache/http/impl/client/cache/CacheableRequestPolicy;->log:Lorg/apache/commons/logging/Log;

    const-string v0, "Request was serveable from cache"

    invoke-interface {p1, v0}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
