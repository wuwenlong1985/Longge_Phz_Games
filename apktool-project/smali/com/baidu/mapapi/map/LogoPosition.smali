.class public final enum Lcom/baidu/mapapi/map/LogoPosition;
.super Ljava/lang/Enum;
.source "LogoPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/map/LogoPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/baidu/mapapi/map/LogoPosition;

.field public static final enum logoPostionCenterBottom:Lcom/baidu/mapapi/map/LogoPosition;

.field public static final enum logoPostionCenterTop:Lcom/baidu/mapapi/map/LogoPosition;

.field public static final enum logoPostionRightBottom:Lcom/baidu/mapapi/map/LogoPosition;

.field public static final enum logoPostionRightTop:Lcom/baidu/mapapi/map/LogoPosition;

.field public static final enum logoPostionleftBottom:Lcom/baidu/mapapi/map/LogoPosition;

.field public static final enum logoPostionleftTop:Lcom/baidu/mapapi/map/LogoPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 13
    new-instance v0, Lcom/baidu/mapapi/map/LogoPosition;

    const-string v1, "logoPostionleftBottom"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/map/LogoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftBottom:Lcom/baidu/mapapi/map/LogoPosition;

    .line 17
    new-instance v0, Lcom/baidu/mapapi/map/LogoPosition;

    const-string v1, "logoPostionleftTop"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/mapapi/map/LogoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftTop:Lcom/baidu/mapapi/map/LogoPosition;

    .line 21
    new-instance v0, Lcom/baidu/mapapi/map/LogoPosition;

    const-string v1, "logoPostionCenterBottom"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/mapapi/map/LogoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionCenterBottom:Lcom/baidu/mapapi/map/LogoPosition;

    .line 25
    new-instance v0, Lcom/baidu/mapapi/map/LogoPosition;

    const-string v1, "logoPostionCenterTop"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/baidu/mapapi/map/LogoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionCenterTop:Lcom/baidu/mapapi/map/LogoPosition;

    .line 29
    new-instance v0, Lcom/baidu/mapapi/map/LogoPosition;

    const-string v1, "logoPostionRightBottom"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/baidu/mapapi/map/LogoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionRightBottom:Lcom/baidu/mapapi/map/LogoPosition;

    .line 33
    new-instance v0, Lcom/baidu/mapapi/map/LogoPosition;

    const-string v1, "logoPostionRightTop"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/baidu/mapapi/map/LogoPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionRightTop:Lcom/baidu/mapapi/map/LogoPosition;

    const/4 v0, 0x6

    .line 9
    new-array v0, v0, [Lcom/baidu/mapapi/map/LogoPosition;

    sget-object v1, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftBottom:Lcom/baidu/mapapi/map/LogoPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionleftTop:Lcom/baidu/mapapi/map/LogoPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionCenterBottom:Lcom/baidu/mapapi/map/LogoPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionCenterTop:Lcom/baidu/mapapi/map/LogoPosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionRightBottom:Lcom/baidu/mapapi/map/LogoPosition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/mapapi/map/LogoPosition;->logoPostionRightTop:Lcom/baidu/mapapi/map/LogoPosition;

    aput-object v1, v0, v7

    sput-object v0, Lcom/baidu/mapapi/map/LogoPosition;->a:[Lcom/baidu/mapapi/map/LogoPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/map/LogoPosition;
    .locals 1

    .line 9
    const-class v0, Lcom/baidu/mapapi/map/LogoPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/map/LogoPosition;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/map/LogoPosition;
    .locals 1

    .line 9
    sget-object v0, Lcom/baidu/mapapi/map/LogoPosition;->a:[Lcom/baidu/mapapi/map/LogoPosition;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/map/LogoPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/map/LogoPosition;

    return-object v0
.end method
