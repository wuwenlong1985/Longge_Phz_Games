.class public final Lcom/baidu/mapapi/map/CircleOptions;
.super Lcom/baidu/mapapi/map/OverlayOptions;
.source "CircleOptions.java"


# static fields
.field private static final d:Ljava/lang/String; = "CircleOptions"


# instance fields
.field a:I

.field b:Z

.field c:Landroid/os/Bundle;

.field private e:Lcom/baidu/mapapi/model/LatLng;

.field private f:I

.field private g:I

.field private h:Lcom/baidu/mapapi/map/Stroke;

.field private i:Z

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/HoleOptions;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/baidu/mapapi/map/HoleOptions;

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:F

.field private r:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/baidu/mapapi/map/OverlayOptions;-><init>()V

    const/high16 v0, -0x1000000

    .line 17
    iput v0, p0, Lcom/baidu/mapapi/map/CircleOptions;->f:I

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/CircleOptions;->i:Z

    .line 21
    iput v0, p0, Lcom/baidu/mapapi/map/CircleOptions;->j:I

    .line 24
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/CircleOptions;->m:Z

    .line 25
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/CircleOptions;->n:Z

    const/high16 v0, 0x3f000000    # 0.5f

    .line 28
    iput v0, p0, Lcom/baidu/mapapi/map/CircleOptions;->q:F

    const v0, 0x3e4ccccd    # 0.2f

    .line 29
    iput v0, p0, Lcom/baidu/mapapi/map/CircleOptions;->r:F

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/CircleOptions;->b:Z

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/mapapi/map/Overlay;
    .locals 2

    .line 282
    new-instance v0, Lcom/baidu/mapapi/map/Circle;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/Circle;-><init>()V

    .line 283
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/CircleOptions;->b:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Circle;->N:Z

    .line 284
    iget v1, p0, Lcom/baidu/mapapi/map/CircleOptions;->a:I

    iput v1, v0, Lcom/baidu/mapapi/map/Circle;->M:I

    .line 285
    iget-object v1, p0, Lcom/baidu/mapapi/map/CircleOptions;->c:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Circle;->O:Landroid/os/Bundle;

    .line 286
    iget v1, p0, Lcom/baidu/mapapi/map/CircleOptions;->f:I

    iput v1, v0, Lcom/baidu/mapapi/map/Circle;->b:I

    .line 287
    iget-object v1, p0, Lcom/baidu/mapapi/map/CircleOptions;->e:Lcom/baidu/mapapi/model/LatLng;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Circle;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 288
    iget v1, p0, Lcom/baidu/mapapi/map/CircleOptions;->g:I

    iput v1, v0, Lcom/baidu/mapapi/map/Circle;->c:I

    .line 289
    iget-object v1, p0, Lcom/baidu/mapapi/map/CircleOptions;->h:Lcom/baidu/mapapi/map/Stroke;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Circle;->d:Lcom/baidu/mapapi/map/Stroke;

    .line 290
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/CircleOptions;->i:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Circle;->e:Z

    .line 291
    iget v1, p0, Lcom/baidu/mapapi/map/CircleOptions;->j:I

    iput v1, v0, Lcom/baidu/mapapi/map/Circle;->m:I

    .line 292
    iget-object v1, p0, Lcom/baidu/mapapi/map/CircleOptions;->k:Ljava/util/List;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Circle;->f:Ljava/util/List;

    .line 293
    iget-object v1, p0, Lcom/baidu/mapapi/map/CircleOptions;->l:Lcom/baidu/mapapi/map/HoleOptions;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Circle;->g:Lcom/baidu/mapapi/map/HoleOptions;

    .line 294
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/CircleOptions;->m:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Circle;->h:Z

    .line 295
    iget v1, p0, Lcom/baidu/mapapi/map/CircleOptions;->o:I

    iput v1, v0, Lcom/baidu/mapapi/map/Circle;->o:I

    .line 296
    iget v1, p0, Lcom/baidu/mapapi/map/CircleOptions;->p:I

    iput v1, v0, Lcom/baidu/mapapi/map/Circle;->p:I

    .line 297
    iget v1, p0, Lcom/baidu/mapapi/map/CircleOptions;->q:F

    iput v1, v0, Lcom/baidu/mapapi/map/Circle;->q:F

    .line 298
    iget v1, p0, Lcom/baidu/mapapi/map/CircleOptions;->r:F

    iput v1, v0, Lcom/baidu/mapapi/map/Circle;->r:F

    .line 299
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/CircleOptions;->n:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Circle;->i:Z

    return-object v0
.end method

.method public addHoleOption(Lcom/baidu/mapapi/map/HoleOptions;)Lcom/baidu/mapapi/map/CircleOptions;
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/baidu/mapapi/map/CircleOptions;->l:Lcom/baidu/mapapi/map/HoleOptions;

    return-object p0
.end method

.method public addHoleOptions(Ljava/util/List;)Lcom/baidu/mapapi/map/CircleOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/HoleOptions;",
            ">;)",
            "Lcom/baidu/mapapi/map/CircleOptions;"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/baidu/mapapi/map/CircleOptions;->k:Ljava/util/List;

    return-object p0
.end method

.method public center(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/CircleOptions;
    .locals 1

    if-nez p1, :cond_0

    .line 122
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: circle center can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/CircleOptions;->e:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method

.method public dottedStroke(Z)Lcom/baidu/mapapi/map/CircleOptions;
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/CircleOptions;->i:Z

    return-object p0
.end method

.method public dottedStrokeType(Lcom/baidu/mapapi/map/CircleDottedStrokeType;)Lcom/baidu/mapapi/map/CircleOptions;
    .locals 0

    .line 183
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/CircleDottedStrokeType;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/CircleOptions;->j:I

    return-object p0
.end method

.method public extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/CircleOptions;
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/baidu/mapapi/map/CircleOptions;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public fillColor(I)Lcom/baidu/mapapi/map/CircleOptions;
    .locals 0

    .line 136
    iput p1, p0, Lcom/baidu/mapapi/map/CircleOptions;->f:I

    return-object p0
.end method

.method public getCenter()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/baidu/mapapi/map/CircleOptions;->e:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getCenterColor()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/baidu/mapapi/map/CircleOptions;->o:I

    return v0
.end method

.method public getColorWeight()F
    .locals 1

    .line 74
    iget v0, p0, Lcom/baidu/mapapi/map/CircleOptions;->r:F

    return v0
.end method

.method public getExtraInfo()Landroid/os/Bundle;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/baidu/mapapi/map/CircleOptions;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/baidu/mapapi/map/CircleOptions;->f:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/baidu/mapapi/map/CircleOptions;->g:I

    return v0
.end method

.method public getRadiusWeight()F
    .locals 1

    .line 65
    iget v0, p0, Lcom/baidu/mapapi/map/CircleOptions;->q:F

    return v0
.end method

.method public getSideColor()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/baidu/mapapi/map/CircleOptions;->p:I

    return v0
.end method

.method public getStroke()Lcom/baidu/mapapi/map/Stroke;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/baidu/mapapi/map/CircleOptions;->h:Lcom/baidu/mapapi/map/Stroke;

    return-object v0
.end method

.method public getZIndex()I
    .locals 1

    .line 346
    iget v0, p0, Lcom/baidu/mapapi/map/CircleOptions;->a:I

    return v0
.end method

.method public isIsGradientCircle()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/CircleOptions;->m:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 325
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/CircleOptions;->b:Z

    return v0
.end method

.method public radius(I)Lcom/baidu/mapapi/map/CircleOptions;
    .locals 0

    .line 148
    iput p1, p0, Lcom/baidu/mapapi/map/CircleOptions;->g:I

    return-object p0
.end method

.method public setCenterColor(I)Lcom/baidu/mapapi/map/CircleOptions;
    .locals 0

    .line 231
    iput p1, p0, Lcom/baidu/mapapi/map/CircleOptions;->o:I

    return-object p0
.end method

.method public setClickable(Z)Lcom/baidu/mapapi/map/CircleOptions;
    .locals 0

    .line 276
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/CircleOptions;->n:Z

    return-object p0
.end method

.method public setColorWeight(F)Lcom/baidu/mapapi/map/CircleOptions;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 264
    iput p1, p0, Lcom/baidu/mapapi/map/CircleOptions;->r:F

    :cond_0
    return-object p0
.end method

.method public setIsGradientCircle(Z)Lcom/baidu/mapapi/map/CircleOptions;
    .locals 0

    .line 221
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/CircleOptions;->m:Z

    return-object p0
.end method

.method public setRadiusWeight(F)Lcom/baidu/mapapi/map/CircleOptions;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 252
    iput p1, p0, Lcom/baidu/mapapi/map/CircleOptions;->q:F

    :cond_0
    return-object p0
.end method

.method public setSideColor(I)Lcom/baidu/mapapi/map/CircleOptions;
    .locals 0

    .line 241
    iput p1, p0, Lcom/baidu/mapapi/map/CircleOptions;->p:I

    return-object p0
.end method

.method public stroke(Lcom/baidu/mapapi/map/Stroke;)Lcom/baidu/mapapi/map/CircleOptions;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/baidu/mapapi/map/CircleOptions;->h:Lcom/baidu/mapapi/map/Stroke;

    return-object p0
.end method

.method public visible(Z)Lcom/baidu/mapapi/map/CircleOptions;
    .locals 0

    .line 315
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/CircleOptions;->b:Z

    return-object p0
.end method

.method public zIndex(I)Lcom/baidu/mapapi/map/CircleOptions;
    .locals 0

    .line 336
    iput p1, p0, Lcom/baidu/mapapi/map/CircleOptions;->a:I

    return-object p0
.end method
