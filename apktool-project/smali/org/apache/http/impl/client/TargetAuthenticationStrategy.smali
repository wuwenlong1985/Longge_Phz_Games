.class public Lorg/apache/http/impl/client/TargetAuthenticationStrategy;
.super Lorg/apache/http/impl/client/AuthenticationStrategyImpl;
.source "TargetAuthenticationStrategy.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "WWW-Authenticate"

    const-string v1, "http.auth.target-scheme-pref"

    const/16 v2, 0x191

    .line 45
    invoke-direct {p0, v2, v0, v1}, Lorg/apache/http/impl/client/AuthenticationStrategyImpl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
