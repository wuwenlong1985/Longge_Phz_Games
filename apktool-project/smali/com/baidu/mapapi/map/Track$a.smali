.class Lcom/baidu/mapapi/map/Track$a;
.super Lcom/baidu/platform/comapi/util/j;
.source "Track.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/map/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/map/Track;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/map/Track;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/baidu/mapapi/map/Track$a;->a:Lcom/baidu/mapapi/map/Track;

    .line 125
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/util/j;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 5

    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xff16

    if-ne v0, v1, :cond_1

    .line 132
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track$a;->a:Lcom/baidu/mapapi/map/Track;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/baidu/mapapi/map/Track;->h:F

    .line 135
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track$a;->a:Lcom/baidu/mapapi/map/Track;

    iget-object v0, v0, Lcom/baidu/mapapi/map/Track;->o:Lcom/baidu/mapapi/map/track/TraceAnimationListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track$a;->a:Lcom/baidu/mapapi/map/Track;

    iget-object v0, v0, Lcom/baidu/mapapi/map/Track;->o:Lcom/baidu/mapapi/map/track/TraceAnimationListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    div-int/lit8 v1, v1, 0xa

    invoke-interface {v0, v1}, Lcom/baidu/mapapi/map/track/TraceAnimationListener;->onTraceAnimationUpdate(I)V

    .line 139
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 140
    iget-object p1, p0, Lcom/baidu/mapapi/map/Track$a;->a:Lcom/baidu/mapapi/map/Track;

    iget-object p1, p1, Lcom/baidu/mapapi/map/Track;->o:Lcom/baidu/mapapi/map/track/TraceAnimationListener;

    if-eqz p1, :cond_2

    .line 141
    iget-object p1, p0, Lcom/baidu/mapapi/map/Track$a;->a:Lcom/baidu/mapapi/map/Track;

    iget-object p1, p1, Lcom/baidu/mapapi/map/Track;->o:Lcom/baidu/mapapi/map/track/TraceAnimationListener;

    invoke-interface {p1}, Lcom/baidu/mapapi/map/track/TraceAnimationListener;->onTraceAnimationFinish()V

    goto :goto_0

    .line 144
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xff17

    if-ne v0, v1, :cond_2

    .line 145
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track$a;->a:Lcom/baidu/mapapi/map/Track;

    iget-object v0, v0, Lcom/baidu/mapapi/map/Track;->o:Lcom/baidu/mapapi/map/track/TraceAnimationListener;

    if-eqz v0, :cond_2

    .line 146
    new-instance v0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget v1, p1, Landroid/os/Message;->arg2:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-float p1, p1

    div-float/2addr p1, v2

    float-to-double v1, p1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(DD)V

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/baidu/mapapi/map/Track$a;->a:Lcom/baidu/mapapi/map/Track;

    iget-object v0, v0, Lcom/baidu/mapapi/map/Track;->o:Lcom/baidu/mapapi/map/track/TraceAnimationListener;

    invoke-interface {v0, p1}, Lcom/baidu/mapapi/map/track/TraceAnimationListener;->onTraceUpdatePosition(Lcom/baidu/mapapi/model/LatLng;)V

    :cond_2
    :goto_0
    return-void
.end method
