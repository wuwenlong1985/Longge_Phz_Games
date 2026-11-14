.class public Lcom/baidu/mapapi/animation/SingleScaleAnimation;
.super Lcom/baidu/mapapi/animation/Animation;
.source "SingleScaleAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/animation/SingleScaleAnimation$ScaleType;
    }
.end annotation


# instance fields
.field private d:Lcom/baidu/mapapi/animation/SingleScaleAnimation$ScaleType;

.field private e:[F


# direct methods
.method public varargs constructor <init>(Lcom/baidu/mapapi/animation/SingleScaleAnimation$ScaleType;[F)V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/baidu/mapapi/animation/Animation;-><init>()V

    if-eqz p2, :cond_3

    .line 28
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    sget-object v0, Lcom/baidu/mapapi/animation/SingleScaleAnimation$ScaleType;->SCALE_X:Lcom/baidu/mapapi/animation/SingleScaleAnimation$ScaleType;

    if-ne p1, v0, :cond_1

    .line 31
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/a/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lcom/baidu/mapsdkplatform/comapi/a/j;-><init>(I[F)V

    iput-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    goto :goto_0

    .line 32
    :cond_1
    sget-object v0, Lcom/baidu/mapapi/animation/SingleScaleAnimation$ScaleType;->SCALE_Y:Lcom/baidu/mapapi/animation/SingleScaleAnimation$ScaleType;

    if-ne p1, v0, :cond_2

    .line 33
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/a/j;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p2}, Lcom/baidu/mapsdkplatform/comapi/a/j;-><init>(I[F)V

    iput-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    .line 36
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->d:Lcom/baidu/mapapi/animation/SingleScaleAnimation$ScaleType;

    .line 37
    iput-object p2, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->e:[F

    return-void

    .line 29
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "BDMapSDKException: the scales is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/a/c;->b()V

    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->c:J

    return-wide v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->b:I

    return v0
.end method

.method public getRepeatMode()Lcom/baidu/mapapi/animation/Animation$RepeatMode;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->a:Lcom/baidu/mapapi/animation/Animation$RepeatMode;

    return-object v0
.end method

.method public getScale()[F
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->e:[F

    return-object v0
.end method

.method public getScaleType()Lcom/baidu/mapapi/animation/SingleScaleAnimation$ScaleType;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->d:Lcom/baidu/mapapi/animation/SingleScaleAnimation$ScaleType;

    return-object v0
.end method

.method public setAnimationListener(Lcom/baidu/mapapi/animation/Animation$AnimationListener;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(Lcom/baidu/mapapi/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public setDuration(J)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(J)V

    .line 58
    iput-wide p1, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->c:J

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->b(I)V

    .line 100
    iput p1, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->b:I

    return-void
.end method

.method public setRepeatMode(Lcom/baidu/mapapi/animation/Animation$RepeatMode;)V
    .locals 2

    .line 85
    sget-object v0, Lcom/baidu/mapapi/animation/Animation$RepeatMode;->RESTART:Lcom/baidu/mapapi/animation/Animation$RepeatMode;

    if-ne p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(I)V

    goto :goto_0

    .line 87
    :cond_0
    sget-object v0, Lcom/baidu/mapapi/animation/Animation$RepeatMode;->REVERSE:Lcom/baidu/mapapi/animation/Animation$RepeatMode;

    if-ne p1, v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(I)V

    .line 90
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->a:Lcom/baidu/mapapi/animation/Animation$RepeatMode;

    return-void
.end method
