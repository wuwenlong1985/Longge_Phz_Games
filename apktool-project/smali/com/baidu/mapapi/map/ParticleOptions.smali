.class public Lcom/baidu/mapapi/map/ParticleOptions;
.super Ljava/lang/Object;
.source "ParticleOptions.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/baidu/mapapi/model/LatLng;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParticleImgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/baidu/mapapi/map/ParticleOptions;->a:Ljava/util/List;

    return-object v0
.end method

.method public getParticlePos()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/baidu/mapapi/map/ParticleOptions;->b:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public setParticleImgs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/baidu/mapapi/map/ParticleOptions;->a:Ljava/util/List;

    return-void
.end method

.method public setParticlePos(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/baidu/mapapi/map/ParticleOptions;->b:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method
