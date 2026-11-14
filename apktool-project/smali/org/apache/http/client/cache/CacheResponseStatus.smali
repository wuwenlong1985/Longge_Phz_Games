.class public final enum Lorg/apache/http/client/cache/CacheResponseStatus;
.super Ljava/lang/Enum;
.source "CacheResponseStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/http/client/cache/CacheResponseStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/client/cache/CacheResponseStatus;

.field public static final enum CACHE_HIT:Lorg/apache/http/client/cache/CacheResponseStatus;

.field public static final enum CACHE_MISS:Lorg/apache/http/client/cache/CacheResponseStatus;

.field public static final enum CACHE_MODULE_RESPONSE:Lorg/apache/http/client/cache/CacheResponseStatus;

.field public static final enum VALIDATED:Lorg/apache/http/client/cache/CacheResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 40
    new-instance v0, Lorg/apache/http/client/cache/CacheResponseStatus;

    const-string v1, "CACHE_MODULE_RESPONSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/cache/CacheResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/client/cache/CacheResponseStatus;->CACHE_MODULE_RESPONSE:Lorg/apache/http/client/cache/CacheResponseStatus;

    .line 45
    new-instance v0, Lorg/apache/http/client/cache/CacheResponseStatus;

    const-string v1, "CACHE_HIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/http/client/cache/CacheResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/client/cache/CacheResponseStatus;->CACHE_HIT:Lorg/apache/http/client/cache/CacheResponseStatus;

    .line 48
    new-instance v0, Lorg/apache/http/client/cache/CacheResponseStatus;

    const-string v1, "CACHE_MISS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/http/client/cache/CacheResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/client/cache/CacheResponseStatus;->CACHE_MISS:Lorg/apache/http/client/cache/CacheResponseStatus;

    .line 53
    new-instance v0, Lorg/apache/http/client/cache/CacheResponseStatus;

    const-string v1, "VALIDATED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/http/client/cache/CacheResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/client/cache/CacheResponseStatus;->VALIDATED:Lorg/apache/http/client/cache/CacheResponseStatus;

    const/4 v0, 0x4

    .line 37
    new-array v0, v0, [Lorg/apache/http/client/cache/CacheResponseStatus;

    sget-object v1, Lorg/apache/http/client/cache/CacheResponseStatus;->CACHE_MODULE_RESPONSE:Lorg/apache/http/client/cache/CacheResponseStatus;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/http/client/cache/CacheResponseStatus;->CACHE_HIT:Lorg/apache/http/client/cache/CacheResponseStatus;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/http/client/cache/CacheResponseStatus;->CACHE_MISS:Lorg/apache/http/client/cache/CacheResponseStatus;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/http/client/cache/CacheResponseStatus;->VALIDATED:Lorg/apache/http/client/cache/CacheResponseStatus;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/http/client/cache/CacheResponseStatus;->$VALUES:[Lorg/apache/http/client/cache/CacheResponseStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/client/cache/CacheResponseStatus;
    .locals 1

    .line 37
    const-class v0, Lorg/apache/http/client/cache/CacheResponseStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/http/client/cache/CacheResponseStatus;

    return-object p0
.end method

.method public static final values()[Lorg/apache/http/client/cache/CacheResponseStatus;
    .locals 1

    .line 37
    sget-object v0, Lorg/apache/http/client/cache/CacheResponseStatus;->$VALUES:[Lorg/apache/http/client/cache/CacheResponseStatus;

    invoke-virtual {v0}, [Lorg/apache/http/client/cache/CacheResponseStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/client/cache/CacheResponseStatus;

    return-object v0
.end method
