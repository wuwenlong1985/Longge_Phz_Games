.class public final enum Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;
.super Ljava/lang/Enum;
.source "AoiInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/core/AoiInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AoiType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AOI_TYPE_AIRPORT:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

.field public static final enum AOI_TYPE_FREEWAY_SERVICE:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

.field public static final enum AOI_TYPE_GAS_STATION:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

.field public static final enum AOI_TYPE_HOSPITAL:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

.field public static final enum AOI_TYPE_PARK:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

.field public static final enum AOI_TYPE_RAILWAT_STATION:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

.field public static final enum AOI_TYPE_RESIDENTIAL_DISTRICT:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

.field public static final enum AOI_TYPE_SCENIC_AREA:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

.field public static final enum AOI_TYPE_SCHOOL:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

.field public static final enum AOI_TYPE_SHOPPINGMALL:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

.field public static final enum AOI_TYPE_UNKNOWN:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

.field public static final enum AOI_TYPE_WATER:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

.field private static final synthetic b:[Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 232
    new-instance v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    const-string v1, "AOI_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_UNKNOWN:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    .line 237
    new-instance v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    const-string v1, "AOI_TYPE_AIRPORT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_AIRPORT:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    .line 242
    new-instance v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    const-string v1, "AOI_TYPE_RAILWAT_STATION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_RAILWAT_STATION:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    .line 247
    new-instance v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    const-string v1, "AOI_TYPE_SHOPPINGMALL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_SHOPPINGMALL:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    .line 252
    new-instance v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    const-string v1, "AOI_TYPE_GAS_STATION"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_GAS_STATION:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    .line 257
    new-instance v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    const-string v1, "AOI_TYPE_SCHOOL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_SCHOOL:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    .line 262
    new-instance v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    const-string v1, "AOI_TYPE_HOSPITAL"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_HOSPITAL:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    .line 267
    new-instance v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    const-string v1, "AOI_TYPE_RESIDENTIAL_DISTRICT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_RESIDENTIAL_DISTRICT:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    .line 272
    new-instance v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    const-string v1, "AOI_TYPE_SCENIC_AREA"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_SCENIC_AREA:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    .line 277
    new-instance v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    const-string v1, "AOI_TYPE_PARK"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_PARK:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    .line 282
    new-instance v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    const-string v1, "AOI_TYPE_FREEWAY_SERVICE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_FREEWAY_SERVICE:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    .line 287
    new-instance v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    const-string v1, "AOI_TYPE_WATER"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_WATER:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    const/16 v0, 0xc

    .line 228
    new-array v0, v0, [Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    sget-object v1, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_UNKNOWN:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_AIRPORT:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_RAILWAT_STATION:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_SHOPPINGMALL:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_GAS_STATION:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_SCHOOL:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_HOSPITAL:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_RESIDENTIAL_DISTRICT:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_SCENIC_AREA:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_PARK:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_FREEWAY_SERVICE:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_WATER:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    aput-object v1, v0, v13

    sput-object v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->b:[Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 291
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 292
    iput p3, p0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->a:I

    return-void
.end method

.method public static valueOf(I)Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 331
    sget-object p0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_UNKNOWN:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    return-object p0

    .line 328
    :pswitch_0
    sget-object p0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_WATER:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    return-object p0

    .line 325
    :pswitch_1
    sget-object p0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_FREEWAY_SERVICE:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    return-object p0

    .line 322
    :pswitch_2
    sget-object p0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_PARK:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    return-object p0

    .line 319
    :pswitch_3
    sget-object p0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_SCENIC_AREA:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    return-object p0

    .line 316
    :pswitch_4
    sget-object p0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_RESIDENTIAL_DISTRICT:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    return-object p0

    .line 313
    :pswitch_5
    sget-object p0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_HOSPITAL:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    return-object p0

    .line 310
    :pswitch_6
    sget-object p0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_SCHOOL:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    return-object p0

    .line 307
    :pswitch_7
    sget-object p0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_GAS_STATION:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    return-object p0

    .line 304
    :pswitch_8
    sget-object p0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_SHOPPINGMALL:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    return-object p0

    .line 301
    :pswitch_9
    sget-object p0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_RAILWAT_STATION:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    return-object p0

    .line 298
    :pswitch_a
    sget-object p0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->AOI_TYPE_AIRPORT:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;
    .locals 1

    .line 228
    const-class v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;
    .locals 1

    .line 228
    sget-object v0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->b:[Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 336
    iget v0, p0, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->a:I

    return v0
.end method
