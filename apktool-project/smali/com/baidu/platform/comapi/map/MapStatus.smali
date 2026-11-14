.class public Lcom/baidu/platform/comapi/map/MapStatus;
.super Ljava/lang/Object;
.source "MapStatus.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platform/comapi/map/MapStatus$WinRound;,
        Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;
    }
.end annotation


# instance fields
.field public adapterZoomUnits:F

.field public animationTime:I

.field public animationType:I

.field public bOverlookSpringback:Z

.field public bfpp:Z

.field public centerPtX:D

.field public centerPtY:D

.field public centerPtZ:D

.field public geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

.field public hasAnimation:I

.field public isBirdEye:Z

.field public level:F

.field public minOverlooking:I

.field public overlooking:D

.field public panoId:Ljava/lang/String;

.field public roadOffsetX:F

.field public roadOffsetY:F

.field public rotation:I

.field public streetExt:I

.field public streetIndicateAngle:F

.field public winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

.field public xOffset:F

.field public xScreenOffset:F

.field public yOffset:F

.field public yScreenOffset:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->animationType:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 201
    iput v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    const/4 v1, -0x1

    .line 202
    iput v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 203
    iput-wide v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:D

    .line 204
    iput-wide v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    .line 205
    iput-wide v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    const-wide/16 v2, 0x0

    .line 206
    iput-wide v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtZ:D

    const/4 v2, 0x0

    .line 207
    iput v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->xOffset:F

    .line 208
    iput v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->yOffset:F

    .line 209
    new-instance v3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    invoke-direct {v3}, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;-><init>()V

    iput-object v3, p0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    .line 210
    new-instance v3, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    invoke-direct {v3}, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;-><init>()V

    iput-object v3, p0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    .line 211
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->bfpp:Z

    const-string v3, ""

    .line 212
    iput-object v3, p0, Lcom/baidu/platform/comapi/map/MapStatus;->panoId:Ljava/lang/String;

    .line 213
    iput v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->streetIndicateAngle:F

    .line 214
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->isBirdEye:Z

    .line 215
    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->streetExt:I

    .line 216
    iput v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetX:F

    .line 217
    iput v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetY:F

    .line 218
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->bOverlookSpringback:Z

    .line 219
    iput v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->minOverlooking:I

    .line 220
    iput v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->xScreenOffset:F

    .line 221
    iput v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->yScreenOffset:F

    .line 222
    iput v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->adapterZoomUnits:F

    return-void
.end method

.method public constructor <init>(Lcom/baidu/platform/comapi/map/MapStatus;)V
    .locals 2

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->animationType:I

    .line 226
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    .line 227
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    .line 228
    iget-wide v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:D

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:D

    .line 229
    iget-wide v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    .line 230
    iget-wide v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    .line 231
    iget-wide v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtZ:D

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtZ:D

    .line 232
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->xOffset:F

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->xOffset:F

    .line 233
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->yOffset:F

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->yOffset:F

    .line 234
    iget-object v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    .line 235
    iget-object v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    .line 236
    iget-boolean v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->bfpp:Z

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->bfpp:Z

    .line 237
    iget-object v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->panoId:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->panoId:Ljava/lang/String;

    .line 238
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->streetIndicateAngle:F

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->streetIndicateAngle:F

    .line 239
    iget-boolean v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->isBirdEye:Z

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->isBirdEye:Z

    .line 240
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->streetExt:I

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->streetExt:I

    .line 241
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetX:F

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetX:F

    .line 242
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetY:F

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetY:F

    .line 243
    iget-boolean v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->bOverlookSpringback:Z

    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->bOverlookSpringback:Z

    .line 244
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->minOverlooking:I

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->minOverlooking:I

    .line 245
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->xScreenOffset:F

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->xScreenOffset:F

    .line 246
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->yScreenOffset:F

    iput v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->yScreenOffset:F

    .line 247
    iget p1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->adapterZoomUnits:F

    iput p1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->adapterZoomUnits:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 27
    instance-of v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    .line 34
    :cond_2
    check-cast p1, Lcom/baidu/platform/comapi/map/MapStatus;

    .line 35
    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 37
    :cond_3
    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    .line 39
    :cond_4
    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtZ:D

    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtZ:D

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_5

    return v1

    .line 41
    :cond_5
    iget-boolean v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->bfpp:Z

    iget-boolean v3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->bfpp:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 43
    :cond_6
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    if-nez v2, :cond_7

    .line 44
    iget-object v2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    if-eqz v2, :cond_8

    return v1

    .line 46
    :cond_7
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 48
    :cond_8
    iget v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_9

    return v1

    .line 50
    :cond_9
    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_a

    return v1

    .line 53
    :cond_a
    iget v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    iget v3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    if-eq v2, v3, :cond_b

    return v1

    .line 55
    :cond_b
    iget v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->yOffset:F

    iget v3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->yOffset:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_c

    return v1

    .line 57
    :cond_c
    iget v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->xOffset:F

    iget v3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->xOffset:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_d

    return v1

    .line 59
    :cond_d
    iget v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->xScreenOffset:F

    iget v3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->xScreenOffset:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_e

    return v1

    .line 62
    :cond_e
    iget v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->yScreenOffset:F

    iget v3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->yScreenOffset:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_f

    return v1

    .line 65
    :cond_f
    iget v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->adapterZoomUnits:F

    iget v3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->adapterZoomUnits:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_10

    return v1

    .line 68
    :cond_10
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    if-nez v2, :cond_11

    .line 69
    iget-object p1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    if-eqz p1, :cond_12

    return v1

    .line 71
    :cond_11
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget-object p1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    invoke-virtual {v2, p1}, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v1

    :cond_12
    return v0
.end method

.method public hashCode()I
    .locals 8

    .line 13
    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    const-wide/high16 v2, 0x403f000000000000L    # 31.0

    add-double/2addr v0, v2

    mul-double v0, v0, v2

    .line 14
    iget-wide v4, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    add-double/2addr v0, v4

    mul-double v0, v0, v2

    .line 15
    iget-wide v4, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtZ:D

    add-double/2addr v0, v4

    mul-double v0, v0, v2

    .line 16
    iget-boolean v4, p0, Lcom/baidu/platform/comapi/map/MapStatus;->bfpp:Z

    int-to-double v4, v4

    add-double/2addr v0, v4

    mul-double v0, v0, v2

    .line 17
    iget-object v4, p0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;->hashCode()I

    move-result v4

    :goto_0
    int-to-double v6, v4

    add-double/2addr v0, v6

    mul-double v0, v0, v2

    .line 18
    iget v4, p0, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    int-to-double v6, v4

    add-double/2addr v0, v6

    mul-double v0, v0, v2

    .line 19
    iget-wide v6, p0, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:D

    add-double/2addr v0, v6

    mul-double v0, v0, v2

    .line 20
    iget v4, p0, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    int-to-double v6, v4

    add-double/2addr v0, v6

    mul-double v0, v0, v2

    .line 21
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->hashCode()I

    move-result v5

    :goto_1
    int-to-double v2, v5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MapStatus{level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", overlooking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", centerPtX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", centerPtY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", centerPtZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtZ:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", winRound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", geoRound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->geoRound:Lcom/baidu/platform/comapi/map/MapStatus$GeoBound;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", xOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->xOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->yOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bfpp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->bfpp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", panoId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->panoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", streetIndicateAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->streetIndicateAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isBirdEye="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->isBirdEye:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", streetExt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->streetExt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", roadOffsetX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", roadOffsetY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->roadOffsetY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xScreenOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->xScreenOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", yScreenOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->yScreenOffset:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", adapterZoomUnits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/platform/comapi/map/MapStatus;->adapterZoomUnits:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
