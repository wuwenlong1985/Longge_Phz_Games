.class public Lcom/baidu/mapapi/map/BuildingOptions;
.super Lcom/baidu/mapapi/map/PrismOptions;
.source "BuildingOptions.java"


# instance fields
.field a:Z

.field private e:F

.field private f:Z

.field private g:I

.field private h:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private i:Lcom/baidu/mapapi/map/Prism$AnimateType;

.field private j:Lcom/baidu/mapapi/search/core/BuildingInfo;

.field private k:Z

.field private l:Z

.field private m:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/baidu/mapapi/map/PrismOptions;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/baidu/mapapi/map/BuildingOptions;->e:F

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BuildingOptions;->f:Z

    .line 14
    sget-object v1, Lcom/baidu/mapapi/map/Prism$AnimateType;->AnimateNormal:Lcom/baidu/mapapi/map/Prism$AnimateType;

    iput-object v1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->i:Lcom/baidu/mapapi/map/Prism$AnimateType;

    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->k:Z

    .line 18
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->a:Z

    .line 20
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BuildingOptions;->l:Z

    const/high16 v0, 0x40a00000    # 5.0f

    .line 22
    iput v0, p0, Lcom/baidu/mapapi/map/BuildingOptions;->m:F

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/mapapi/map/Overlay;
    .locals 2

    .line 208
    new-instance v0, Lcom/baidu/mapapi/map/Building;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/Building;-><init>()V

    .line 209
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BuildingOptions;->getZIndex()I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/map/Building;->M:I

    .line 210
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->a:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Building;->N:Z

    .line 211
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BuildingOptions;->getCustomSideImage()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mapapi/map/Building;->t:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 212
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BuildingOptions;->getHeight()F

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/map/Building;->m:F

    .line 213
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BuildingOptions;->getSideFaceColor()I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/map/Building;->s:I

    .line 214
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/BuildingOptions;->getTopFaceColor()I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/map/Building;->r:I

    .line 216
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->k:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Building;->j:Z

    .line 217
    iget v1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->d:I

    iput v1, v0, Lcom/baidu/mapapi/map/Building;->i:I

    .line 219
    iget-object v1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->j:Lcom/baidu/mapapi/search/core/BuildingInfo;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Building;->a:Lcom/baidu/mapapi/search/core/BuildingInfo;

    .line 220
    iget-object v1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->j:Lcom/baidu/mapapi/search/core/BuildingInfo;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->j:Lcom/baidu/mapapi/search/core/BuildingInfo;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/BuildingInfo;->getGeom()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mapapi/map/Building;->n:Ljava/lang/String;

    .line 222
    sget-object v1, Lcom/baidu/mapapi/map/EncodePointType;->BUILDINGINFO:Lcom/baidu/mapapi/map/EncodePointType;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/EncodePointType;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/map/Building;->o:I

    .line 225
    :cond_0
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->f:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Building;->f:Z

    .line 226
    iget v1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->e:F

    iput v1, v0, Lcom/baidu/mapapi/map/Building;->b:F

    .line 228
    iget v1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->g:I

    iput v1, v0, Lcom/baidu/mapapi/map/Building;->e:I

    .line 230
    iget-object v1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->h:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Building;->g:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 232
    iget-object v1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->i:Lcom/baidu/mapapi/map/Prism$AnimateType;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Building;->h:Lcom/baidu/mapapi/map/Prism$AnimateType;

    .line 233
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->l:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Building;->k:Z

    .line 234
    iget v1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->m:F

    iput v1, v0, Lcom/baidu/mapapi/map/Building;->l:F

    return-object v0
.end method

.method public getBuildingFloorAnimateType()Lcom/baidu/mapapi/map/Prism$AnimateType;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/baidu/mapapi/map/BuildingOptions;->i:Lcom/baidu/mapapi/map/Prism$AnimateType;

    return-object v0
.end method

.method public getBuildingInfo()Lcom/baidu/mapapi/search/core/BuildingInfo;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/baidu/mapapi/map/BuildingOptions;->j:Lcom/baidu/mapapi/search/core/BuildingInfo;

    return-object v0
.end method

.method public getFloorColor()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/baidu/mapapi/map/BuildingOptions;->g:I

    return v0
.end method

.method public getFloorHeight()F
    .locals 1

    .line 30
    iget v0, p0, Lcom/baidu/mapapi/map/BuildingOptions;->e:F

    return v0
.end method

.method public getFloorSideTextureImage()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/baidu/mapapi/map/BuildingOptions;->h:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getRoundedCornerRadius()F
    .locals 1

    .line 203
    iget v0, p0, Lcom/baidu/mapapi/map/BuildingOptions;->m:F

    return v0
.end method

.method public isAnimation()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BuildingOptions;->k:Z

    return v0
.end method

.method public isRoundedCorner()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BuildingOptions;->l:Z

    return v0
.end method

.method public setAnimation(Z)Lcom/baidu/mapapi/map/BuildingOptions;
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->k:Z

    return-object p0
.end method

.method public setBuildingFloorAnimateType(Lcom/baidu/mapapi/map/Prism$AnimateType;)Lcom/baidu/mapapi/map/BuildingOptions;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->i:Lcom/baidu/mapapi/map/Prism$AnimateType;

    return-object p0
.end method

.method public setBuildingInfo(Lcom/baidu/mapapi/search/core/BuildingInfo;)Lcom/baidu/mapapi/map/BuildingOptions;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->j:Lcom/baidu/mapapi/search/core/BuildingInfo;

    return-object p0
.end method

.method public setFloorColor(I)Lcom/baidu/mapapi/map/BuildingOptions;
    .locals 1

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BuildingOptions;->f:Z

    .line 75
    iput p1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->g:I

    return-object p0
.end method

.method public setFloorHeight(F)Lcom/baidu/mapapi/map/BuildingOptions;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/baidu/mapapi/map/BuildingOptions;->j:Lcom/baidu/mapapi/search/core/BuildingInfo;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 46
    iput v0, p0, Lcom/baidu/mapapi/map/BuildingOptions;->e:F

    return-object p0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/BuildingOptions;->j:Lcom/baidu/mapapi/search/core/BuildingInfo;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/core/BuildingInfo;->getHeight()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 50
    iget-object p1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->j:Lcom/baidu/mapapi/search/core/BuildingInfo;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/core/BuildingInfo;->getHeight()F

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->e:F

    return-object p0

    .line 53
    :cond_2
    iput p1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->e:F

    return-object p0
.end method

.method public setFloorSideTextureImage(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/BuildingOptions;
    .locals 1

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BuildingOptions;->f:Z

    .line 97
    iput-object p1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->h:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object p0
.end method

.method public setRoundedCornerEnable(Z)Lcom/baidu/mapapi/map/BuildingOptions;
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->l:Z

    return-object p0
.end method

.method public setRoundedCornerRadius(F)Lcom/baidu/mapapi/map/BuildingOptions;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    const/4 p1, 0x0

    .line 193
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/BuildingOptions;->m:F

    return-object p0
.end method
