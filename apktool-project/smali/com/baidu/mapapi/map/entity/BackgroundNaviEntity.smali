.class public Lcom/baidu/mapapi/map/entity/BackgroundNaviEntity;
.super Ljava/lang/Object;
.source "BackgroundNaviEntity.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRouteShapePoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviEntity;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setRouteShapePoints(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviEntity;->a:Ljava/util/ArrayList;

    return-void
.end method
