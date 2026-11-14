.class public Lcom/baidu/mapsdkplatform/comapi/map/m;
.super Lcom/baidu/mapsdkplatform/comapi/map/z;
.source "HexagonLayer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/z;-><init>()V

    const/4 v0, 0x6

    .line 6
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/m;->c:I

    const-string v0, "hexagon"

    .line 7
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/m;->b:Ljava/lang/String;

    const/16 v0, 0x1f4

    .line 8
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/m;->d:I

    const v0, 0x15bf4

    .line 9
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/m;->e:I

    return-void
.end method
