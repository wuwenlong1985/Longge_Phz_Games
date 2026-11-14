.class public final enum Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;
.super Ljava/lang/Enum;
.source "HeatMapAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/map/HeatMapAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CosineCurve:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InBack:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InBounce:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InCirc:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InCubic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InCurve:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InElastic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InExpo:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InOutBack:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InOutBounce:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InOutCirc:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InOutCubic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InOutElastic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InOutExpo:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InOutQuad:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InOutQuart:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InOutQuint:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InOutSine:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InQuad:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InQuart:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InQuint:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum InSine:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum Linear:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutBack:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutBounce:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutCirc:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutCubic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutCurve:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutElastic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutExpo:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutInBack:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutInBounce:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutInCirc:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutInCubic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutInElastic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutInExpo:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutInQuad:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutInQuart:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutInQuint:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutInSine:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutQuad:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutQuart:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutQuint:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum OutSine:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field public static final enum SineCurve:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field private static final synthetic a:[Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 14
    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "Linear"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->Linear:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "InQuad"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InQuad:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "OutQuad"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutQuad:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    .line 15
    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "InOutQuad"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutQuad:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "OutInQuad"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInQuad:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "InCubic"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InCubic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    .line 16
    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "OutCubic"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutCubic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "InOutCubic"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutCubic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "OutInCubic"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInCubic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "InQuart"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InQuart:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    .line 17
    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "OutQuart"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutQuart:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "InOutQuart"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutQuart:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "OutInQuart"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInQuart:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "InQuint"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InQuint:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "OutQuint"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutQuint:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    .line 18
    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "InOutQuint"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutQuint:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "OutInQuint"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInQuint:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "InSine"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InSine:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "OutSine"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutSine:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "InOutSine"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutSine:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "OutInSine"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInSine:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    .line 19
    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "InExpo"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InExpo:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "OutExpo"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutExpo:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "InOutExpo"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutExpo:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "OutInExpo"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInExpo:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "InCirc"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InCirc:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "OutCirc"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutCirc:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "InOutCirc"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutCirc:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    .line 20
    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "OutInCirc"

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInCirc:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "InElastic"

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InElastic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "OutElastic"

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutElastic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "InOutElastic"

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutElastic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "OutInElastic"

    const/16 v15, 0x20

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInElastic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "InBack"

    const/16 v15, 0x21

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InBack:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "OutBack"

    const/16 v15, 0x22

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutBack:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "InOutBack"

    const/16 v15, 0x23

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutBack:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    .line 21
    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "OutInBack"

    const/16 v15, 0x24

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInBack:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "InBounce"

    const/16 v15, 0x25

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InBounce:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "OutBounce"

    const/16 v15, 0x26

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutBounce:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "InOutBounce"

    const/16 v15, 0x27

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutBounce:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "OutInBounce"

    const/16 v15, 0x28

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInBounce:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "InCurve"

    const/16 v15, 0x29

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InCurve:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "OutCurve"

    const/16 v15, 0x2a

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutCurve:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "SineCurve"

    const/16 v15, 0x2b

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->SineCurve:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    new-instance v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const-string v1, "CosineCurve"

    const/16 v15, 0x2c

    invoke-direct {v0, v1, v15}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->CosineCurve:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v0, 0x2d

    .line 13
    new-array v0, v0, [Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->Linear:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InQuad:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutQuad:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutQuad:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInQuad:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InCubic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutCubic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutCubic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInCubic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InQuart:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutQuart:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutQuart:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInQuart:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InQuint:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutQuint:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutQuint:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInQuint:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InSine:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutSine:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutSine:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInSine:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InExpo:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutExpo:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutExpo:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInExpo:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InCirc:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutCirc:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutCirc:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInCirc:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InElastic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutElastic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutElastic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInElastic:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InBack:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutBack:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutBack:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInBack:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InBounce:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutBounce:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InOutBounce:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutInBounce:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->InCurve:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->OutCurve:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->SineCurve:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->CosineCurve:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sput-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->a:[Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;
    .locals 1

    .line 13
    const-class v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;
    .locals 1

    .line 13
    sget-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->a:[Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    return-object v0
.end method
