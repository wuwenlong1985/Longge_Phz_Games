.class public Lcom/baidu/mapapi/animation/Transformation;
.super Lcom/baidu/mapapi/animation/Animation;
.source "Transformation.java"


# direct methods
.method public varargs constructor <init>([Landroid/graphics/Point;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/baidu/mapapi/animation/Animation;-><init>()V

    if-eqz p1, :cond_1

    .line 28
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/a/l;

    invoke-direct {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/l;-><init>([Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/baidu/mapapi/animation/Transformation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    return-void

    .line 29
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "BDMapSDKException: the points is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>([Lcom/baidu/mapapi/model/LatLng;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/baidu/mapapi/animation/Animation;-><init>()V

    if-eqz p1, :cond_1

    .line 20
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/a/l;

    invoke-direct {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/l;-><init>([Lcom/baidu/mapapi/model/LatLng;)V

    iput-object v0, p0, Lcom/baidu/mapapi/animation/Transformation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    return-void

    .line 21
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "BDMapSDKException: the latlngs is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/baidu/mapapi/animation/Transformation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/a/c;->b()V

    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/baidu/mapapi/animation/Transformation;->c:J

    return-wide v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/baidu/mapapi/animation/Transformation;->b:I

    return v0
.end method

.method public getRepeatMode()Lcom/baidu/mapapi/animation/Animation$RepeatMode;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/baidu/mapapi/animation/Transformation;->a:Lcom/baidu/mapapi/animation/Animation$RepeatMode;

    return-object v0
.end method

.method public setAnimationListener(Lcom/baidu/mapapi/animation/Animation$AnimationListener;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/baidu/mapapi/animation/Transformation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(Lcom/baidu/mapapi/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public setDuration(J)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/baidu/mapapi/animation/Transformation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(J)V

    .line 53
    iput-wide p1, p0, Lcom/baidu/mapapi/animation/Transformation;->c:J

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/baidu/mapapi/animation/Transformation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/baidu/mapapi/animation/Transformation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->b(I)V

    .line 95
    iput p1, p0, Lcom/baidu/mapapi/animation/Transformation;->b:I

    return-void
.end method

.method public setRepeatMode(Lcom/baidu/mapapi/animation/Animation$RepeatMode;)V
    .locals 2

    .line 80
    sget-object v0, Lcom/baidu/mapapi/animation/Animation$RepeatMode;->RESTART:Lcom/baidu/mapapi/animation/Animation$RepeatMode;

    if-ne p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/baidu/mapapi/animation/Transformation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(I)V

    goto :goto_0

    .line 82
    :cond_0
    sget-object v0, Lcom/baidu/mapapi/animation/Animation$RepeatMode;->REVERSE:Lcom/baidu/mapapi/animation/Animation$RepeatMode;

    if-ne p1, v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/baidu/mapapi/animation/Transformation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(I)V

    .line 85
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/baidu/mapapi/animation/Transformation;->a:Lcom/baidu/mapapi/animation/Animation$RepeatMode;

    return-void
.end method
