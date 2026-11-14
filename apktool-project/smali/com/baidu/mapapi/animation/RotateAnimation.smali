.class public Lcom/baidu/mapapi/animation/RotateAnimation;
.super Lcom/baidu/mapapi/animation/Animation;
.source "RotateAnimation.java"


# instance fields
.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(FF)V
    .locals 3

    .line 19
    invoke-direct {p0}, Lcom/baidu/mapapi/animation/Animation;-><init>()V

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/a/f;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/a/f;-><init>([F)V

    iput-object v0, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    .line 24
    iput p1, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->d:F

    .line 25
    iput p2, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->e:F

    return-void

    .line 21
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "BDMapSDKException: the degrees can\'t less than zero"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/a/c;->b()V

    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->c:J

    return-wide v0
.end method

.method public getFromDegrees()F
    .locals 1

    .line 30
    iget v0, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->d:F

    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->b:I

    return v0
.end method

.method public getRepeatMode()Lcom/baidu/mapapi/animation/Animation$RepeatMode;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->a:Lcom/baidu/mapapi/animation/Animation$RepeatMode;

    return-object v0
.end method

.method public getToDegrees()F
    .locals 1

    .line 34
    iget v0, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->e:F

    return v0
.end method

.method public setAnimationListener(Lcom/baidu/mapapi/animation/Animation$AnimationListener;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(Lcom/baidu/mapapi/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public setDuration(J)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(J)V

    .line 55
    iput-wide p1, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->c:J

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->b(I)V

    .line 107
    iput p1, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->b:I

    return-void
.end method

.method public setRepeatMode(Lcom/baidu/mapapi/animation/Animation$RepeatMode;)V
    .locals 2

    .line 87
    sget-object v0, Lcom/baidu/mapapi/animation/Animation$RepeatMode;->RESTART:Lcom/baidu/mapapi/animation/Animation$RepeatMode;

    if-ne p1, v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(I)V

    goto :goto_0

    .line 89
    :cond_0
    sget-object v0, Lcom/baidu/mapapi/animation/Animation$RepeatMode;->REVERSE:Lcom/baidu/mapapi/animation/Animation$RepeatMode;

    if-ne p1, v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(I)V

    .line 92
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->a:Lcom/baidu/mapapi/animation/Animation$RepeatMode;

    return-void
.end method
