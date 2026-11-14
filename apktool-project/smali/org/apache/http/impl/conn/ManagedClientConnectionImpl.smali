.class Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;
.super Ljava/lang/Object;
.source "ManagedClientConnectionImpl.java"

# interfaces
.implements Lorg/apache/http/conn/ManagedClientConnection;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private volatile duration:J

.field private final manager:Lorg/apache/http/conn/ClientConnectionManager;

.field private final operator:Lorg/apache/http/conn/ClientConnectionOperator;

.field private volatile poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

.field private volatile reusable:Z


# direct methods
.method constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/impl/conn/HttpPoolEntry;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Connection manager may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    .line 72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Connection operator may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-nez p3, :cond_2

    .line 75
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP pool entry may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_2
    iput-object p1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->manager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 78
    iput-object p2, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->operator:Lorg/apache/http/conn/ClientConnectionOperator;

    .line 79
    iput-object p3, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    const-wide p1, 0x7fffffffffffffffL

    .line 81
    iput-wide p1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->duration:J

    return-void
.end method

.method private ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0

    .line 111
    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/OperatedClientConnection;

    return-object v0
.end method

.method private ensurePoolEntry()Lorg/apache/http/impl/conn/HttpPoolEntry;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method private getConnection()Lorg/apache/http/conn/OperatedClientConnection;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 103
    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/OperatedClientConnection;

    return-object v0
.end method


# virtual methods
.method public abortConnection()V
    .locals 4

    .line 453
    monitor-enter p0

    .line 454
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_0

    .line 455
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 457
    iput-boolean v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    .line 458
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/OperatedClientConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->shutdown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    :catch_0
    :try_start_2
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->manager:Lorg/apache/http/conn/ClientConnectionManager;

    iget-wide v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->duration:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    const/4 v0, 0x0

    .line 464
    iput-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    .line 465
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/OperatedClientConnection;

    .line 126
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->reset()V

    .line 127
    invoke-interface {v1}, Lorg/apache/http/conn/OperatedClientConnection;->close()V

    :cond_0
    return-void
.end method

.method detach()Lorg/apache/http/impl/conn/HttpPoolEntry;
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    const/4 v1, 0x0

    .line 90
    iput-object v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->flush()V

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 242
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 243
    instance-of v1, v0, Lorg/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 244
    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 207
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 212
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->manager:Lorg/apache/http/conn/ClientConnectionManager;

    return-object v0
.end method

.method public getMetrics()Lorg/apache/http/HttpConnectionMetrics;
    .locals 1

    .line 169
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    move-result-object v0

    return-object v0
.end method

.method getPoolEntry()Lorg/apache/http/impl/conn/HttpPoolEntry;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .line 217
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .line 222
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getRemotePort()I

    move-result v0

    return v0
.end method

.method public getRoute()Lorg/apache/http/conn/routing/HttpRoute;
    .locals 1

    .line 267
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensurePoolEntry()Lorg/apache/http/impl/conn/HttpPoolEntry;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getEffectiveRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 2

    .line 232
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    .line 235
    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    .line 236
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .line 164
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getSocketTimeout()I

    move-result v0

    return v0
.end method

.method public getState()Ljava/lang/Object;
    .locals 1

    .line 413
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensurePoolEntry()Lorg/apache/http/impl/conn/HttpPoolEntry;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isMarkedReusable()Z
    .locals 1

    .line 431
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 141
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isResponseAvailable(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 180
    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->isResponseAvailable(I)Z

    move-result p1

    return p1
.end method

.method public isSecure()Z
    .locals 1

    .line 227
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 228
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isStale()Z
    .locals 1

    .line 150
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isStale()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 380
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP parameters may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 384
    :cond_0
    monitor-enter p0

    .line 385
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_1

    .line 386
    new-instance p1, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {p1}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw p1

    .line 388
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 390
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection not open"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 392
    :cond_2
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 393
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Protocol layering without a tunnel not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 395
    :cond_3
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->isLayered()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 396
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Multiple protocol layering not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 398
    :cond_4
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/OperatedClientConnection;

    .line 400
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 401
    iget-object v2, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->operator:Lorg/apache/http/conn/ClientConnectionOperator;

    invoke-interface {v2, v1, v0, p1, p2}, Lorg/apache/http/conn/ClientConnectionOperator;->updateSecureConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 403
    monitor-enter p0

    .line 404
    :try_start_1
    iget-object p1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-nez p1, :cond_5

    .line 405
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 407
    :cond_5
    iget-object p1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object p1

    .line 408
    invoke-interface {v1}, Lorg/apache/http/conn/OperatedClientConnection;->isSecure()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/apache/http/conn/routing/RouteTracker;->layerProtocol(Z)V

    .line 409
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 400
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public markReusable()V
    .locals 1

    const/4 v0, 0x1

    .line 423
    iput-boolean v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    return-void
.end method

.method public open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 276
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Route may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p3, :cond_1

    .line 279
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP parameters may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 282
    :cond_1
    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_2

    .line 284
    new-instance p1, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {p1}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw p1

    .line 286
    :cond_2
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection already open"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 290
    :cond_3
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/OperatedClientConnection;

    .line 291
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 293
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v7

    .line 294
    iget-object v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->operator:Lorg/apache/http/conn/ClientConnectionOperator;

    if-eqz v7, :cond_4

    move-object v3, v7

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    move-object v3, v2

    :goto_0
    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    move-object v2, v0

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lorg/apache/http/conn/ClientConnectionOperator;->openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 300
    monitor-enter p0

    .line 301
    :try_start_1
    iget-object p1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-nez p1, :cond_5

    .line 302
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 304
    :cond_5
    iget-object p1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object p1

    if-nez v7, :cond_6

    .line 306
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isSecure()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/apache/http/conn/routing/RouteTracker;->connectTarget(Z)V

    goto :goto_1

    .line 308
    :cond_6
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isSecure()Z

    move-result p2

    invoke-virtual {p1, v7, p2}, Lorg/apache/http/conn/routing/RouteTracker;->connectProxy(Lorg/apache/http/HttpHost;Z)V

    .line 310
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 291
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public receiveResponseEntity(Lorg/apache/http/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 186
    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method public receiveResponseHeader()Lorg/apache/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 191
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public releaseConnection()V
    .locals 4

    .line 443
    monitor-enter p0

    .line 444
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_0

    .line 445
    monitor-exit p0

    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->manager:Lorg/apache/http/conn/ClientConnectionManager;

    iget-wide v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->duration:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    const/4 v0, 0x0

    .line 448
    iput-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    .line 449
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 251
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 252
    instance-of v1, v0, Lorg/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 253
    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 197
    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    return-void
.end method

.method public sendRequestHeader(Lorg/apache/http/HttpRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 203
    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 260
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 261
    instance-of v1, v0, Lorg/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 262
    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setIdleDuration(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 436
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->duration:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    .line 438
    iput-wide p1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->duration:J

    :goto_0
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 1

    .line 159
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensureConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 160
    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->setSocketTimeout(I)V

    return-void
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 1

    .line 418
    invoke-direct {p0}, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->ensurePoolEntry()Lorg/apache/http/impl/conn/HttpPoolEntry;

    move-result-object v0

    .line 419
    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/HttpPoolEntry;->setState(Ljava/lang/Object;)V

    return-void
.end method

.method public shutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/OperatedClientConnection;

    .line 135
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->reset()V

    .line 136
    invoke-interface {v1}, Lorg/apache/http/conn/OperatedClientConnection;->shutdown()V

    :cond_0
    return-void
.end method

.method public tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 349
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Next proxy amy not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p3, :cond_1

    .line 352
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP parameters may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 355
    :cond_1
    monitor-enter p0

    .line 356
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_2

    .line 357
    new-instance p1, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {p1}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw p1

    .line 359
    :cond_2
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 361
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection not open"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 363
    :cond_3
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/OperatedClientConnection;

    .line 364
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 366
    invoke-interface {v0, v1, p1, p2, p3}, Lorg/apache/http/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    .line 368
    monitor-enter p0

    .line 369
    :try_start_1
    iget-object p3, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-nez p3, :cond_4

    .line 370
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 372
    :cond_4
    iget-object p3, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {p3}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object p3

    .line 373
    invoke-virtual {p3, p1, p2}, Lorg/apache/http/conn/routing/RouteTracker;->tunnelProxy(Lorg/apache/http/HttpHost;Z)V

    .line 374
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 364
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public tunnelTarget(ZLorg/apache/http/params/HttpParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 316
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP parameters may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 320
    :cond_0
    monitor-enter p0

    .line 321
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-nez v0, :cond_1

    .line 322
    new-instance p1, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {p1}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw p1

    .line 324
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 326
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection not open"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 328
    :cond_2
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->isTunnelled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 329
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Connection is already tunnelled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 331
    :cond_3
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/OperatedClientConnection;

    .line 333
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 335
    invoke-interface {v1, v2, v0, p1, p2}, Lorg/apache/http/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    .line 337
    monitor-enter p0

    .line 338
    :try_start_1
    iget-object p2, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    if-nez p2, :cond_4

    .line 339
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 341
    :cond_4
    iget-object p2, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->poolEntry:Lorg/apache/http/impl/conn/HttpPoolEntry;

    invoke-virtual {p2}, Lorg/apache/http/impl/conn/HttpPoolEntry;->getTracker()Lorg/apache/http/conn/routing/RouteTracker;

    move-result-object p2

    .line 342
    invoke-virtual {p2, p1}, Lorg/apache/http/conn/routing/RouteTracker;->tunnelTarget(Z)V

    .line 343
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 333
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public unmarkReusable()V
    .locals 1

    const/4 v0, 0x0

    .line 427
    iput-boolean v0, p0, Lorg/apache/http/impl/conn/ManagedClientConnectionImpl;->reusable:Z

    return-void
.end method
