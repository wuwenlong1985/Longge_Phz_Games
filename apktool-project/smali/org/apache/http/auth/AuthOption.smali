.class public final Lorg/apache/http/auth/AuthOption;
.super Ljava/lang/Object;
.source "AuthOption.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final authScheme:Lorg/apache/http/auth/AuthScheme;

.field private final creds:Lorg/apache/http/auth/Credentials;


# direct methods
.method public constructor <init>(Lorg/apache/http/auth/AuthScheme;Lorg/apache/http/auth/Credentials;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Auth scheme may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    .line 46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "User credentials may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
    iput-object p1, p0, Lorg/apache/http/auth/AuthOption;->authScheme:Lorg/apache/http/auth/AuthScheme;

    .line 49
    iput-object p2, p0, Lorg/apache/http/auth/AuthOption;->creds:Lorg/apache/http/auth/Credentials;

    return-void
.end method


# virtual methods
.method public getAuthScheme()Lorg/apache/http/auth/AuthScheme;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/http/auth/AuthOption;->authScheme:Lorg/apache/http/auth/AuthScheme;

    return-object v0
.end method

.method public getCredentials()Lorg/apache/http/auth/Credentials;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/http/auth/AuthOption;->creds:Lorg/apache/http/auth/Credentials;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/http/auth/AuthOption;->authScheme:Lorg/apache/http/auth/AuthScheme;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
