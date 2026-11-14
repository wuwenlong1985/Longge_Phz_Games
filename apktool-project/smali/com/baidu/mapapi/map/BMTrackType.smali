.class public final enum Lcom/baidu/mapapi/map/BMTrackType;
.super Ljava/lang/Enum;
.source "BMTrackType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/map/BMTrackType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Default3D:Lcom/baidu/mapapi/map/BMTrackType;

.field public static final enum Surface:Lcom/baidu/mapapi/map/BMTrackType;

.field private static final synthetic b:[Lcom/baidu/mapapi/map/BMTrackType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5
    new-instance v0, Lcom/baidu/mapapi/map/BMTrackType;

    const-string v1, "Surface"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/mapapi/map/BMTrackType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/map/BMTrackType;->Surface:Lcom/baidu/mapapi/map/BMTrackType;

    new-instance v0, Lcom/baidu/mapapi/map/BMTrackType;

    const-string v1, "Default3D"

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-direct {v0, v1, v3, v4}, Lcom/baidu/mapapi/map/BMTrackType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/map/BMTrackType;->Default3D:Lcom/baidu/mapapi/map/BMTrackType;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lcom/baidu/mapapi/map/BMTrackType;

    sget-object v1, Lcom/baidu/mapapi/map/BMTrackType;->Surface:Lcom/baidu/mapapi/map/BMTrackType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/BMTrackType;->Default3D:Lcom/baidu/mapapi/map/BMTrackType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/mapapi/map/BMTrackType;->b:[Lcom/baidu/mapapi/map/BMTrackType;

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

    iput p3, p0, Lcom/baidu/mapapi/map/BMTrackType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/map/BMTrackType;
    .locals 1

    .line 3
    const-class v0, Lcom/baidu/mapapi/map/BMTrackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/map/BMTrackType;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/map/BMTrackType;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/mapapi/map/BMTrackType;->b:[Lcom/baidu/mapapi/map/BMTrackType;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/map/BMTrackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/map/BMTrackType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/baidu/mapapi/map/BMTrackType;->a:I

    return v0
.end method
