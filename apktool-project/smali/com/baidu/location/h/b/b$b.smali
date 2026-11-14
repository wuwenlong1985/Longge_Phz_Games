.class public final enum Lcom/baidu/location/h/b/b$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/h/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/location/h/b/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/location/h/b/b$b;

.field public static final enum b:Lcom/baidu/location/h/b/b$b;

.field public static final enum c:Lcom/baidu/location/h/b/b$b;

.field public static final enum d:Lcom/baidu/location/h/b/b$b;

.field public static final enum e:Lcom/baidu/location/h/b/b$b;

.field public static final enum f:Lcom/baidu/location/h/b/b$b;

.field private static final synthetic g:[Lcom/baidu/location/h/b/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/baidu/location/h/b/b$b;

    const-string v1, "SUBWAY_STATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/location/h/b/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/location/h/b/b$b;->a:Lcom/baidu/location/h/b/b$b;

    new-instance v0, Lcom/baidu/location/h/b/b$b;

    const-string v1, "TRAFFIC_STATUS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/location/h/b/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/location/h/b/b$b;->b:Lcom/baidu/location/h/b/b$b;

    new-instance v0, Lcom/baidu/location/h/b/b$b;

    const-string v1, "VDR_INDOOR_SPEED_STATUS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/location/h/b/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/location/h/b/b$b;->c:Lcom/baidu/location/h/b/b$b;

    new-instance v0, Lcom/baidu/location/h/b/b$b;

    const-string v1, "INDOOR_POI_DATA_STATUS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/baidu/location/h/b/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/location/h/b/b$b;->d:Lcom/baidu/location/h/b/b$b;

    new-instance v0, Lcom/baidu/location/h/b/b$b;

    const-string v1, "OUTDOOR_POI_DATA_STATUS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/baidu/location/h/b/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/location/h/b/b$b;->e:Lcom/baidu/location/h/b/b$b;

    new-instance v0, Lcom/baidu/location/h/b/b$b;

    const-string v1, "GPS_CHECKER_STATUS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/baidu/location/h/b/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/location/h/b/b$b;->f:Lcom/baidu/location/h/b/b$b;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/baidu/location/h/b/b$b;

    sget-object v1, Lcom/baidu/location/h/b/b$b;->a:Lcom/baidu/location/h/b/b$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/location/h/b/b$b;->b:Lcom/baidu/location/h/b/b$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/location/h/b/b$b;->c:Lcom/baidu/location/h/b/b$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/location/h/b/b$b;->d:Lcom/baidu/location/h/b/b$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/location/h/b/b$b;->e:Lcom/baidu/location/h/b/b$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/location/h/b/b$b;->f:Lcom/baidu/location/h/b/b$b;

    aput-object v1, v0, v7

    sput-object v0, Lcom/baidu/location/h/b/b$b;->g:[Lcom/baidu/location/h/b/b$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/location/h/b/b$b;
    .locals 1

    const-class v0, Lcom/baidu/location/h/b/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/location/h/b/b$b;

    return-object p0
.end method

.method public static values()[Lcom/baidu/location/h/b/b$b;
    .locals 1

    sget-object v0, Lcom/baidu/location/h/b/b$b;->g:[Lcom/baidu/location/h/b/b$b;

    invoke-virtual {v0}, [Lcom/baidu/location/h/b/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/location/h/b/b$b;

    return-object v0
.end method
