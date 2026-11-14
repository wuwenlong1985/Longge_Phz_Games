.class public final enum Lcom/baidu/mapapi/map/HexagonMap$HexagonType;
.super Ljava/lang/Enum;
.source "HexagonMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/map/HexagonMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HexagonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/map/HexagonMap$HexagonType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EDGE_UP:Lcom/baidu/mapapi/map/HexagonMap$HexagonType;

.field public static final enum VERTEX_UP:Lcom/baidu/mapapi/map/HexagonMap$HexagonType;

.field private static final synthetic a:[Lcom/baidu/mapapi/map/HexagonMap$HexagonType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    new-instance v0, Lcom/baidu/mapapi/map/HexagonMap$HexagonType;

    const-string v1, "VERTEX_UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/map/HexagonMap$HexagonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HexagonMap$HexagonType;->VERTEX_UP:Lcom/baidu/mapapi/map/HexagonMap$HexagonType;

    .line 40
    new-instance v0, Lcom/baidu/mapapi/map/HexagonMap$HexagonType;

    const-string v1, "EDGE_UP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/mapapi/map/HexagonMap$HexagonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HexagonMap$HexagonType;->EDGE_UP:Lcom/baidu/mapapi/map/HexagonMap$HexagonType;

    const/4 v0, 0x2

    .line 38
    new-array v0, v0, [Lcom/baidu/mapapi/map/HexagonMap$HexagonType;

    sget-object v1, Lcom/baidu/mapapi/map/HexagonMap$HexagonType;->VERTEX_UP:Lcom/baidu/mapapi/map/HexagonMap$HexagonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HexagonMap$HexagonType;->EDGE_UP:Lcom/baidu/mapapi/map/HexagonMap$HexagonType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/mapapi/map/HexagonMap$HexagonType;->a:[Lcom/baidu/mapapi/map/HexagonMap$HexagonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/map/HexagonMap$HexagonType;
    .locals 1

    .line 38
    const-class v0, Lcom/baidu/mapapi/map/HexagonMap$HexagonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/map/HexagonMap$HexagonType;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/map/HexagonMap$HexagonType;
    .locals 1

    .line 38
    sget-object v0, Lcom/baidu/mapapi/map/HexagonMap$HexagonType;->a:[Lcom/baidu/mapapi/map/HexagonMap$HexagonType;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/map/HexagonMap$HexagonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/map/HexagonMap$HexagonType;

    return-object v0
.end method
