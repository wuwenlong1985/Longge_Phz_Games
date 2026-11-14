.class public final enum Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;
.super Ljava/lang/Enum;
.source "PolylineOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/map/PolylineOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineBloomType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLUR:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

.field public static final enum GradientA:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

.field public static final enum NONE:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

.field private static final synthetic a:[Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 51
    new-instance v0, Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;->NONE:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    .line 55
    new-instance v0, Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    const-string v1, "GradientA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;->GradientA:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    .line 59
    new-instance v0, Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    const-string v1, "BLUR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;->BLUR:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    const/4 v0, 0x3

    .line 47
    new-array v0, v0, [Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    sget-object v1, Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;->NONE:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;->GradientA:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;->BLUR:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;->a:[Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;
    .locals 1

    .line 47
    const-class v0, Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;
    .locals 1

    .line 47
    sget-object v0, Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;->a:[Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    return-object v0
.end method
