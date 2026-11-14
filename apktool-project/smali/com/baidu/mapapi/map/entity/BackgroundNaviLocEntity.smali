.class public Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;
.super Ljava/lang/Object;
.source "BackgroundNaviLocEntity.java"


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:D

.field private e:D

.field private f:F

.field private g:F

.field private h:D

.field private i:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->a:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 33
    iput-wide v0, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->d:D

    .line 34
    iput-wide v0, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->e:D

    .line 49
    iput-wide v0, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->h:D

    .line 50
    iput-wide v0, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->i:D

    return-void
.end method


# virtual methods
.method public getCurRouteShapeIdx()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->a:I

    return v0
.end method

.method public getGpsDirection()F
    .locals 1

    .line 61
    iget v0, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->b:F

    return v0
.end method

.method public getGpsLatitude()D
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->e:D

    return-wide v0
.end method

.method public getGpsLongitude()D
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->d:D

    return-wide v0
.end method

.method public getGpsSpeed()F
    .locals 1

    .line 69
    iget v0, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->c:F

    return v0
.end method

.method public getPostDirection()F
    .locals 1

    .line 93
    iget v0, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->f:F

    return v0
.end method

.method public getPostLatitude()D
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->i:D

    return-wide v0
.end method

.method public getPostLongitude()D
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->h:D

    return-wide v0
.end method

.method public getPostSpeed()F
    .locals 1

    .line 101
    iget v0, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->g:F

    return v0
.end method

.method public isValid()Z
    .locals 5

    .line 125
    iget-wide v0, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->e:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->d:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->i:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->h:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCurRouteShapeIdx(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->a:I

    return-void
.end method

.method public setGpsDirection(F)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->b:F

    return-void
.end method

.method public setGpsLatitude(D)V
    .locals 0

    .line 89
    iput-wide p1, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->e:D

    return-void
.end method

.method public setGpsLongitude(D)V
    .locals 0

    .line 81
    iput-wide p1, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->d:D

    return-void
.end method

.method public setGpsSpeed(F)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->c:F

    return-void
.end method

.method public setPostDirection(F)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->f:F

    return-void
.end method

.method public setPostLatitude(D)V
    .locals 0

    .line 121
    iput-wide p1, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->i:D

    return-void
.end method

.method public setPostLongitude(D)V
    .locals 0

    .line 113
    iput-wide p1, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->h:D

    return-void
.end method

.method public setPostSpeed(F)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->g:F

    return-void
.end method
