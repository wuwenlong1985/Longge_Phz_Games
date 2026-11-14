.class public Lcom/baidu/mapapi/map/PrismOptions;
.super Lcom/baidu/mapapi/map/OverlayOptions;
.source "PrismOptions.java"


# instance fields
.field private a:F

.field b:Z

.field c:I

.field d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:Lcom/baidu/mapapi/map/BitmapDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/baidu/mapapi/map/OverlayOptions;-><init>()V

    const/high16 v0, -0x1000000

    .line 15
    iput v0, p0, Lcom/baidu/mapapi/map/PrismOptions;->f:I

    .line 16
    iput v0, p0, Lcom/baidu/mapapi/map/PrismOptions;->g:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/PrismOptions;->b:Z

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/mapapi/map/Overlay;
    .locals 3

    .line 184
    new-instance v0, Lcom/baidu/mapapi/map/Prism;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/Prism;-><init>()V

    .line 185
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PrismOptions;->b:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Prism;->N:Z

    .line 186
    iget v1, p0, Lcom/baidu/mapapi/map/PrismOptions;->c:I

    iput v1, v0, Lcom/baidu/mapapi/map/Prism;->M:I

    .line 187
    iget-object v1, p0, Lcom/baidu/mapapi/map/PrismOptions;->h:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Prism;->t:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 188
    iget v1, p0, Lcom/baidu/mapapi/map/PrismOptions;->a:F

    iput v1, v0, Lcom/baidu/mapapi/map/Prism;->m:F

    .line 189
    iget-object v1, p0, Lcom/baidu/mapapi/map/PrismOptions;->e:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/mapapi/map/PrismOptions;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/PrismOptions;->e:Ljava/util/List;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Prism;->p:Ljava/util/List;

    .line 194
    iget v1, p0, Lcom/baidu/mapapi/map/PrismOptions;->g:I

    iput v1, v0, Lcom/baidu/mapapi/map/Prism;->s:I

    .line 195
    iget v1, p0, Lcom/baidu/mapapi/map/PrismOptions;->f:I

    iput v1, v0, Lcom/baidu/mapapi/map/Prism;->r:I

    return-object v0

    .line 190
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BDMapSDKException: when you add prism, you must at least supply 4 points"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public customSideImage(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/PrismOptions;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/baidu/mapapi/map/PrismOptions;->h:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object p0
.end method

.method public getCustomSideImage()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/baidu/mapapi/map/PrismOptions;->h:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 27
    iget v0, p0, Lcom/baidu/mapapi/map/PrismOptions;->a:F

    return v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/baidu/mapapi/map/PrismOptions;->e:Ljava/util/List;

    return-object v0
.end method

.method public getShowLevel()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/baidu/mapapi/map/PrismOptions;->d:I

    return v0
.end method

.method public getSideFaceColor()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/baidu/mapapi/map/PrismOptions;->g:I

    return v0
.end method

.method public getTopFaceColor()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/baidu/mapapi/map/PrismOptions;->f:I

    return v0
.end method

.method public getZIndex()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/baidu/mapapi/map/PrismOptions;->c:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/PrismOptions;->b:Z

    return v0
.end method

.method public setHeight(F)Lcom/baidu/mapapi/map/PrismOptions;
    .locals 0

    .line 92
    iput p1, p0, Lcom/baidu/mapapi/map/PrismOptions;->a:F

    return-object p0
.end method

.method public setPoints(Ljava/util/List;)Lcom/baidu/mapapi/map/PrismOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)",
            "Lcom/baidu/mapapi/map/PrismOptions;"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/baidu/mapapi/map/PrismOptions;->e:Ljava/util/List;

    return-object p0
.end method

.method public setShowLevel(I)Lcom/baidu/mapapi/map/PrismOptions;
    .locals 0

    .line 45
    iput p1, p0, Lcom/baidu/mapapi/map/PrismOptions;->d:I

    return-object p0
.end method

.method public setSideFaceColor(I)Lcom/baidu/mapapi/map/PrismOptions;
    .locals 0

    .line 125
    iput p1, p0, Lcom/baidu/mapapi/map/PrismOptions;->g:I

    return-object p0
.end method

.method public setTopFaceColor(I)Lcom/baidu/mapapi/map/PrismOptions;
    .locals 0

    .line 114
    iput p1, p0, Lcom/baidu/mapapi/map/PrismOptions;->f:I

    return-object p0
.end method

.method public visible(Z)Lcom/baidu/mapapi/map/PrismOptions;
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/PrismOptions;->b:Z

    return-object p0
.end method

.method public zIndex(I)Lcom/baidu/mapapi/map/PrismOptions;
    .locals 0

    .line 169
    iput p1, p0, Lcom/baidu/mapapi/map/PrismOptions;->c:I

    return-object p0
.end method
