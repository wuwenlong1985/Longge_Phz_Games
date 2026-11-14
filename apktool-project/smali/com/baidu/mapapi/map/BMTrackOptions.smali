.class public Lcom/baidu/mapapi/map/BMTrackOptions;
.super Lcom/baidu/mapapi/map/OverlayOptions;
.source "BMTrackOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/BMTrackOptions$BMTrackAnimateType;
    }
.end annotation


# instance fields
.field a:F

.field b:F

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private d:[I

.field private e:[I

.field private f:Lcom/baidu/mapapi/map/BMTrackType;

.field private g:I

.field private h:Z

.field private i:Lcom/baidu/mapapi/map/BMTrackOptions$BMTrackAnimateType;

.field private j:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private k:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private l:I

.field private m:Lcom/baidu/mapapi/map/track/TraceAnimationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/baidu/mapapi/map/OverlayOptions;-><init>()V

    .line 30
    sget-object v0, Lcom/baidu/mapapi/map/BMTrackType;->Surface:Lcom/baidu/mapapi/map/BMTrackType;

    iput-object v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->f:Lcom/baidu/mapapi/map/BMTrackType;

    const/16 v0, 0xbb8

    .line 32
    iput v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->g:I

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->h:Z

    .line 36
    sget-object v0, Lcom/baidu/mapapi/map/BMTrackOptions$BMTrackAnimateType;->TraceOverlayAnimationEasingCurveLinear:Lcom/baidu/mapapi/map/BMTrackOptions$BMTrackAnimateType;

    iput-object v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->i:Lcom/baidu/mapapi/map/BMTrackOptions$BMTrackAnimateType;

    const-string v0, "track_palette.png"

    .line 39
    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->j:Lcom/baidu/mapapi/map/BitmapDescriptor;

    const-string v0, "track_projection_palette.png"

    .line 41
    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->k:Lcom/baidu/mapapi/map/BitmapDescriptor;

    const/4 v0, 0x5

    .line 43
    iput v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->l:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 46
    iput v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->a:F

    const v0, 0x3e99999a    # 0.3f

    .line 48
    iput v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->b:F

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/mapapi/map/Overlay;
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->c:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    goto :goto_1

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->f:Lcom/baidu/mapapi/map/BMTrackType;

    sget-object v2, Lcom/baidu/mapapi/map/BMTrackType;->Default3D:Lcom/baidu/mapapi/map/BMTrackType;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->f:Lcom/baidu/mapapi/map/BMTrackType;

    sget-object v2, Lcom/baidu/mapapi/map/BMTrackType;->Surface:Lcom/baidu/mapapi/map/BMTrackType;

    if-ne v0, v2, :cond_2

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->e:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->e:[I

    array-length v0, v0

    iget-object v2, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 279
    :cond_2
    new-instance v0, Lcom/baidu/mapapi/map/Track;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/Track;-><init>()V

    .line 280
    iget-object v1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->e:[I

    iput-object v1, v0, Lcom/baidu/mapapi/map/Track;->c:[I

    .line 281
    iget-object v1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->d:[I

    iput-object v1, v0, Lcom/baidu/mapapi/map/Track;->d:[I

    .line 282
    iget v1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->a:F

    iput v1, v0, Lcom/baidu/mapapi/map/Track;->j:F

    .line 283
    iget v1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->b:F

    iput v1, v0, Lcom/baidu/mapapi/map/Track;->k:F

    .line 284
    iget-object v1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->c:Ljava/util/List;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Track;->b:Ljava/util/List;

    .line 285
    iget v1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->l:I

    iput v1, v0, Lcom/baidu/mapapi/map/Track;->i:I

    .line 286
    iget-object v1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->j:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Track;->m:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 287
    iget-object v1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->k:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Track;->n:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 288
    iget v1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->g:I

    iput v1, v0, Lcom/baidu/mapapi/map/Track;->f:I

    .line 289
    iget-object v1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->i:Lcom/baidu/mapapi/map/BMTrackOptions$BMTrackAnimateType;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BMTrackOptions$BMTrackAnimateType;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/map/Track;->g:I

    .line 290
    iget-object v1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->f:Lcom/baidu/mapapi/map/BMTrackType;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BMTrackType;->getType()I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/map/Track;->e:I

    .line 291
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->h:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Track;->N:Z

    .line 292
    iget v1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->a:F

    iput v1, v0, Lcom/baidu/mapapi/map/Track;->j:F

    .line 293
    iget v1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->b:F

    iput v1, v0, Lcom/baidu/mapapi/map/Track;->k:F

    .line 294
    iget-object v1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->m:Lcom/baidu/mapapi/map/track/TraceAnimationListener;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Track;->o:Lcom/baidu/mapapi/map/track/TraceAnimationListener;

    return-object v0

    :cond_3
    :goto_0
    return-object v1

    :cond_4
    :goto_1
    return-object v1
.end method

.method public getAnimateType()Lcom/baidu/mapapi/map/BMTrackOptions$BMTrackAnimateType;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->i:Lcom/baidu/mapapi/map/BMTrackOptions$BMTrackAnimateType;

    return-object v0
.end method

.method public getAnimationTime()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->g:I

    return v0
.end method

.method public getColors()[I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->d:[I

    return-object v0
.end method

.method public getHeights()[I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->e:[I

    return-object v0
.end method

.method public getOpacity()F
    .locals 1

    .line 254
    iget v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->a:F

    return v0
.end method

.method public getPalette()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->j:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getPaletteOpacity()F
    .locals 1

    .line 258
    iget v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->b:F

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

    .line 115
    iget-object v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->c:Ljava/util/List;

    return-object v0
.end method

.method public getProjectionPaletteDescriptor()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->k:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getTrackType()Lcom/baidu/mapapi/map/BMTrackType;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->f:Lcom/baidu/mapapi/map/BMTrackType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->l:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->h:Z

    return v0
.end method

.method public setAnimateType(Lcom/baidu/mapapi/map/BMTrackOptions$BMTrackAnimateType;)Lcom/baidu/mapapi/map/OverlayOptions;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->i:Lcom/baidu/mapapi/map/BMTrackOptions$BMTrackAnimateType;

    return-object p0
.end method

.method public setAnimationTime(I)Lcom/baidu/mapapi/map/OverlayOptions;
    .locals 0

    .line 142
    iput p1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->g:I

    return-object p0
.end method

.method public setColors([I)Lcom/baidu/mapapi/map/OverlayOptions;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->d:[I

    return-object p0
.end method

.method public setHeights([I)Lcom/baidu/mapapi/map/OverlayOptions;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->e:[I

    return-object p0
.end method

.method public setOpacity(F)V
    .locals 0

    .line 246
    iput p1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->a:F

    return-void
.end method

.method public setPalette(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/OverlayOptions;
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->j:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object p0
.end method

.method public setPaletteOpacity(F)V
    .locals 0

    .line 250
    iput p1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->b:F

    return-void
.end method

.method public setPoints(Ljava/util/List;)Lcom/baidu/mapapi/map/OverlayOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)",
            "Lcom/baidu/mapapi/map/OverlayOptions;"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->c:Ljava/util/List;

    return-object p0
.end method

.method public setProjectionPalette(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/OverlayOptions;
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->k:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object p0
.end method

.method public setTraceAnimationListener(Lcom/baidu/mapapi/map/track/TraceAnimationListener;)Lcom/baidu/mapapi/map/OverlayOptions;
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->m:Lcom/baidu/mapapi/map/track/TraceAnimationListener;

    return-object p0
.end method

.method public setTrackType(Lcom/baidu/mapapi/map/BMTrackType;)Lcom/baidu/mapapi/map/OverlayOptions;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->f:Lcom/baidu/mapapi/map/BMTrackType;

    return-object p0
.end method

.method public setVisible(Z)Lcom/baidu/mapapi/map/OverlayOptions;
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->h:Z

    return-object p0
.end method

.method public setWidth(I)Lcom/baidu/mapapi/map/OverlayOptions;
    .locals 0

    .line 170
    iput p1, p0, Lcom/baidu/mapapi/map/BMTrackOptions;->l:I

    return-object p0
.end method
