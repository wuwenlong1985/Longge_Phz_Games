.class public Lcom/baidu/mapsdkplatform/comapi/map/a;
.super Lcom/baidu/mapsdkplatform/comapi/map/b;
.source "BaiduHeatMapLayer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/b;-><init>()V

    const/16 v0, 0xa

    .line 6
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a;->c:I

    const-string v0, "heatmap"

    .line 7
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a;->b:Ljava/lang/String;

    const v0, 0x2bf20

    .line 8
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/a;->d:I

    return-void
.end method
