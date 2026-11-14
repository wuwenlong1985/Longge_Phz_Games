.class public final enum Lcom/baidu/mapapi/map/ParticleEffectType;
.super Ljava/lang/Enum;
.source "ParticleEffectType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/map/ParticleEffectType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Fireworks:Lcom/baidu/mapapi/map/ParticleEffectType;

.field public static final enum Flower:Lcom/baidu/mapapi/map/ParticleEffectType;

.field public static final enum RainStorm:Lcom/baidu/mapapi/map/ParticleEffectType;

.field public static final enum SandStorm:Lcom/baidu/mapapi/map/ParticleEffectType;

.field public static final enum Smog:Lcom/baidu/mapapi/map/ParticleEffectType;

.field public static final enum Snow:Lcom/baidu/mapapi/map/ParticleEffectType;

.field public static final enum UnKnow:Lcom/baidu/mapapi/map/ParticleEffectType;

.field private static final synthetic b:[Lcom/baidu/mapapi/map/ParticleEffectType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 5
    new-instance v0, Lcom/baidu/mapapi/map/ParticleEffectType;

    const-string v1, "UnKnow"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/mapapi/map/ParticleEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/map/ParticleEffectType;->UnKnow:Lcom/baidu/mapapi/map/ParticleEffectType;

    new-instance v0, Lcom/baidu/mapapi/map/ParticleEffectType;

    const-string v1, "Snow"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/baidu/mapapi/map/ParticleEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/map/ParticleEffectType;->Snow:Lcom/baidu/mapapi/map/ParticleEffectType;

    new-instance v0, Lcom/baidu/mapapi/map/ParticleEffectType;

    const-string v1, "RainStorm"

    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/baidu/mapapi/map/ParticleEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/map/ParticleEffectType;->RainStorm:Lcom/baidu/mapapi/map/ParticleEffectType;

    new-instance v0, Lcom/baidu/mapapi/map/ParticleEffectType;

    const-string v1, "Smog"

    const/4 v6, 0x3

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/baidu/mapapi/map/ParticleEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/map/ParticleEffectType;->Smog:Lcom/baidu/mapapi/map/ParticleEffectType;

    new-instance v0, Lcom/baidu/mapapi/map/ParticleEffectType;

    const-string v1, "SandStorm"

    const/4 v8, 0x7

    invoke-direct {v0, v1, v5, v8}, Lcom/baidu/mapapi/map/ParticleEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/map/ParticleEffectType;->SandStorm:Lcom/baidu/mapapi/map/ParticleEffectType;

    new-instance v0, Lcom/baidu/mapapi/map/ParticleEffectType;

    const-string v1, "Fireworks"

    const/16 v9, 0x8

    invoke-direct {v0, v1, v7, v9}, Lcom/baidu/mapapi/map/ParticleEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/map/ParticleEffectType;->Fireworks:Lcom/baidu/mapapi/map/ParticleEffectType;

    new-instance v0, Lcom/baidu/mapapi/map/ParticleEffectType;

    const-string v1, "Flower"

    const/4 v9, 0x6

    const/16 v10, 0xe

    invoke-direct {v0, v1, v9, v10}, Lcom/baidu/mapapi/map/ParticleEffectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/map/ParticleEffectType;->Flower:Lcom/baidu/mapapi/map/ParticleEffectType;

    .line 3
    new-array v0, v8, [Lcom/baidu/mapapi/map/ParticleEffectType;

    sget-object v1, Lcom/baidu/mapapi/map/ParticleEffectType;->UnKnow:Lcom/baidu/mapapi/map/ParticleEffectType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/ParticleEffectType;->Snow:Lcom/baidu/mapapi/map/ParticleEffectType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mapapi/map/ParticleEffectType;->RainStorm:Lcom/baidu/mapapi/map/ParticleEffectType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mapapi/map/ParticleEffectType;->Smog:Lcom/baidu/mapapi/map/ParticleEffectType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/mapapi/map/ParticleEffectType;->SandStorm:Lcom/baidu/mapapi/map/ParticleEffectType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mapapi/map/ParticleEffectType;->Fireworks:Lcom/baidu/mapapi/map/ParticleEffectType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/baidu/mapapi/map/ParticleEffectType;->Flower:Lcom/baidu/mapapi/map/ParticleEffectType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/baidu/mapapi/map/ParticleEffectType;->b:[Lcom/baidu/mapapi/map/ParticleEffectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput p3, p0, Lcom/baidu/mapapi/map/ParticleEffectType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/map/ParticleEffectType;
    .locals 1

    .line 3
    const-class v0, Lcom/baidu/mapapi/map/ParticleEffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/map/ParticleEffectType;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/map/ParticleEffectType;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/mapapi/map/ParticleEffectType;->b:[Lcom/baidu/mapapi/map/ParticleEffectType;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/map/ParticleEffectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/map/ParticleEffectType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/baidu/mapapi/map/ParticleEffectType;->a:I

    return v0
.end method
