.class public final enum Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;
.super Ljava/lang/Enum;
.source "NaviParaOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/navi/NaviParaOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NaviRoutePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLK:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

.field public static final enum DEFAULT:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

.field public static final enum DIS:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

.field public static final enum FEE:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

.field public static final enum HIGHWAY:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

.field public static final enum TIME:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

.field private static final synthetic a:[Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 75
    new-instance v0, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    const-string v1, "BLK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;->BLK:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    .line 76
    new-instance v0, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    const-string v1, "TIME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;->TIME:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    .line 77
    new-instance v0, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    const-string v1, "DIS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;->DIS:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    .line 78
    new-instance v0, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    const-string v1, "FEE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;->FEE:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    .line 79
    new-instance v0, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    const-string v1, "HIGHWAY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;->HIGHWAY:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    .line 80
    new-instance v0, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    const-string v1, "DEFAULT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;->DEFAULT:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    const/4 v0, 0x6

    .line 74
    new-array v0, v0, [Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    sget-object v1, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;->BLK:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;->TIME:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;->DIS:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;->FEE:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;->HIGHWAY:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;->DEFAULT:Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    aput-object v1, v0, v7

    sput-object v0, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;->a:[Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;
    .locals 1

    .line 74
    const-class v0, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;
    .locals 1

    .line 74
    sget-object v0, Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;->a:[Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/navi/NaviParaOption$NaviRoutePolicy;

    return-object v0
.end method
