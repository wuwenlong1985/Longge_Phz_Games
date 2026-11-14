.class public Lorg/apache/http/impl/client/ProxyAuthenticationStrategy;
.super Lorg/apache/http/impl/client/AuthenticationStrategyImpl;
.source "ProxyAuthenticationStrategy.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "Proxy-Authenticate"

    const-string v1, "http.auth.proxy-scheme-pref"

    const/16 v2, 0x197

    .line 45
    invoke-direct {p0, v2, v0, v1}, Lorg/apache/http/impl/client/AuthenticationStrategyImpl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
