.class Lcom/baidu/mapapi/map/au;
.super Ljava/lang/Object;
.source "Track.java"

# interfaces
.implements Lcom/baidu/platform/comapi/bmsdk/animation/BmTrackAnimation$a;


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/map/Track;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/map/Track;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/baidu/mapapi/map/au;->a:Lcom/baidu/mapapi/map/Track;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/comapi/bmsdk/b;FF)V
    .locals 4

    .line 44
    iget-object p2, p0, Lcom/baidu/mapapi/map/au;->a:Lcom/baidu/mapapi/map/Track;

    iget-object p2, p2, Lcom/baidu/mapapi/map/Track;->o:Lcom/baidu/mapapi/map/track/TraceAnimationListener;

    if-eqz p2, :cond_0

    .line 45
    new-instance p2, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget-wide v0, p1, Lcom/baidu/platform/comapi/bmsdk/b;->b:D

    iget-wide v2, p1, Lcom/baidu/platform/comapi/bmsdk/b;->a:D

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(DD)V

    invoke-static {p2}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    .line 46
    iget-object p2, p0, Lcom/baidu/mapapi/map/au;->a:Lcom/baidu/mapapi/map/Track;

    iget-object p2, p2, Lcom/baidu/mapapi/map/Track;->o:Lcom/baidu/mapapi/map/track/TraceAnimationListener;

    invoke-interface {p2, p1}, Lcom/baidu/mapapi/map/track/TraceAnimationListener;->onTraceUpdatePosition(Lcom/baidu/mapapi/model/LatLng;)V

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p3, p3, p1

    .line 48
    iget-object p1, p0, Lcom/baidu/mapapi/map/au;->a:Lcom/baidu/mapapi/map/Track;

    iget-object p1, p1, Lcom/baidu/mapapi/map/Track;->o:Lcom/baidu/mapapi/map/track/TraceAnimationListener;

    float-to-int p2, p3

    invoke-interface {p1, p2}, Lcom/baidu/mapapi/map/track/TraceAnimationListener;->onTraceAnimationUpdate(I)V

    :cond_0
    return-void
.end method
