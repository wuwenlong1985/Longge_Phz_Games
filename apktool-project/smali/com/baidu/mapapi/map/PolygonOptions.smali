.class public final Lcom/baidu/mapapi/map/PolygonOptions;
.super Lcom/baidu/mapapi/map/OverlayOptions;
.source "PolygonOptions.java"


# instance fields
.field a:I

.field b:Z

.field c:Landroid/os/Bundle;

.field private d:Lcom/baidu/mapapi/map/Stroke;

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/HoleOptions;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/baidu/mapapi/map/HoleOptions;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Lcom/baidu/mapapi/map/EncodePointType;

.field private l:I

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/baidu/mapapi/map/OverlayOptions;-><init>()V

    const/high16 v0, -0x1000000

    .line 15
    iput v0, p0, Lcom/baidu/mapapi/map/PolygonOptions;->e:I

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/PolygonOptions;->i:Z

    .line 24
    iput v0, p0, Lcom/baidu/mapapi/map/PolygonOptions;->l:I

    .line 25
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/PolygonOptions;->m:Z

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/PolygonOptions;->b:Z

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/mapapi/map/Overlay;
    .locals 3

    .line 185
    new-instance v0, Lcom/baidu/mapapi/map/Polygon;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/Polygon;-><init>()V

    .line 186
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->b:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Polygon;->N:Z

    .line 187
    iget v1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->a:I

    iput v1, v0, Lcom/baidu/mapapi/map/Polygon;->M:I

    .line 188
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->c:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polygon;->O:Landroid/os/Bundle;

    .line 190
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->f:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->j:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polygon;->d:Ljava/lang/String;

    .line 197
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->k:Lcom/baidu/mapapi/map/EncodePointType;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polygon;->L:Lcom/baidu/mapapi/map/EncodePointType;

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->f:Ljava/util/List;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polygon;->k:Ljava/util/List;

    .line 202
    iget v1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->e:I

    iput v1, v0, Lcom/baidu/mapapi/map/Polygon;->j:I

    .line 203
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->d:Lcom/baidu/mapapi/map/Stroke;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polygon;->a:Lcom/baidu/mapapi/map/Stroke;

    .line 204
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->g:Ljava/util/List;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polygon;->l:Ljava/util/List;

    .line 205
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->h:Lcom/baidu/mapapi/map/HoleOptions;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polygon;->m:Lcom/baidu/mapapi/map/HoleOptions;

    .line 206
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->i:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Polygon;->n:Z

    .line 207
    iget v1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->l:I

    iput v1, v0, Lcom/baidu/mapapi/map/Polygon;->g:I

    .line 208
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->m:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Polygon;->o:Z

    return-object v0

    .line 193
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BDMapSDKException: when you add polyline, you must at least supply 2 points"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addHoleOption(Lcom/baidu/mapapi/map/HoleOptions;)Lcom/baidu/mapapi/map/PolygonOptions;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->h:Lcom/baidu/mapapi/map/HoleOptions;

    return-object p0
.end method

.method public addHoleOptions(Ljava/util/List;)Lcom/baidu/mapapi/map/PolygonOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/HoleOptions;",
            ">;)",
            "Lcom/baidu/mapapi/map/PolygonOptions;"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->g:Ljava/util/List;

    return-object p0
.end method

.method public dottedStroke(Z)Lcom/baidu/mapapi/map/PolygonOptions;
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->i:Z

    return-object p0
.end method

.method public dottedStrokeType(Lcom/baidu/mapapi/map/PolylineDottedLineType;)Lcom/baidu/mapapi/map/PolygonOptions;
    .locals 0

    .line 143
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/PolylineDottedLineType;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->l:I

    return-object p0
.end method

.method public extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/PolygonOptions;
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public fillColor(I)Lcom/baidu/mapapi/map/PolygonOptions;
    .locals 0

    .line 75
    iput p1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->e:I

    return-object p0
.end method

.method public getExtraInfo()Landroid/os/Bundle;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolygonOptions;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/baidu/mapapi/map/PolygonOptions;->e:I

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
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolygonOptions;->f:Ljava/util/List;

    return-object v0
.end method

.method public getStroke()Lcom/baidu/mapapi/map/Stroke;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolygonOptions;->d:Lcom/baidu/mapapi/map/Stroke;

    return-object v0
.end method

.method public getZIndex()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/baidu/mapapi/map/PolygonOptions;->a:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/PolygonOptions;->b:Z

    return v0
.end method

.method public points(Ljava/lang/String;Lcom/baidu/mapapi/map/EncodePointType;)Lcom/baidu/mapapi/map/PolygonOptions;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->j:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/baidu/mapapi/map/PolygonOptions;->k:Lcom/baidu/mapapi/map/EncodePointType;

    return-object p0
.end method

.method public points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolygonOptions;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)",
            "Lcom/baidu/mapapi/map/PolygonOptions;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 88
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 91
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points count can not less than three"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 94
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not contains null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v0, 0x0

    .line 98
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    .line 99
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 100
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/model/LatLng;

    .line 101
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/model/LatLng;

    if-ne v3, v4, :cond_3

    .line 103
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not has same points"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0

    .line 108
    :cond_5
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->f:Ljava/util/List;

    return-object p0
.end method

.method public setClickable(Z)Lcom/baidu/mapapi/map/PolygonOptions;
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->m:Z

    return-object p0
.end method

.method public stroke(Lcom/baidu/mapapi/map/Stroke;)Lcom/baidu/mapapi/map/PolygonOptions;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->d:Lcom/baidu/mapapi/map/Stroke;

    return-object p0
.end method

.method public visible(Z)Lcom/baidu/mapapi/map/PolygonOptions;
    .locals 0

    .line 224
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->b:Z

    return-object p0
.end method

.method public zIndex(I)Lcom/baidu/mapapi/map/PolygonOptions;
    .locals 0

    .line 245
    iput p1, p0, Lcom/baidu/mapapi/map/PolygonOptions;->a:I

    return-object p0
.end method
