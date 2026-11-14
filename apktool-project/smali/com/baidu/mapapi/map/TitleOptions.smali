.class public Lcom/baidu/mapapi/map/TitleOptions;
.super Lcom/baidu/mapapi/map/OverlayOptions;
.source "TitleOptions.java"


# instance fields
.field private a:I

.field private b:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:F

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:F

.field private r:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/baidu/mapapi/map/OverlayOptions;-><init>()V

    const/high16 v0, -0x1000000

    .line 18
    iput v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->c:I

    const/16 v0, 0x30

    .line 21
    iput v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->d:I

    const/4 v0, 0x2

    .line 25
    iput v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->h:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 37
    iput v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->q:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 39
    iput v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->r:F

    return-void
.end method


# virtual methods
.method b()Landroid/os/Bundle;
    .locals 5

    .line 348
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 349
    iget v1, p0, Lcom/baidu/mapapi/map/TitleOptions;->c:I

    ushr-int/lit8 v1, v1, 0x18

    .line 351
    iget v2, p0, Lcom/baidu/mapapi/map/TitleOptions;->c:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 352
    iget v3, p0, Lcom/baidu/mapapi/map/TitleOptions;->c:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 353
    iget v4, p0, Lcom/baidu/mapapi/map/TitleOptions;->c:I

    and-int/lit16 v4, v4, 0xff

    .line 354
    invoke-static {v1, v4, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const-string v2, "font_color"

    .line 355
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 357
    iget v1, p0, Lcom/baidu/mapapi/map/TitleOptions;->a:I

    ushr-int/lit8 v1, v1, 0x18

    .line 359
    iget v2, p0, Lcom/baidu/mapapi/map/TitleOptions;->a:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 360
    iget v3, p0, Lcom/baidu/mapapi/map/TitleOptions;->a:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 361
    iget v4, p0, Lcom/baidu/mapapi/map/TitleOptions;->a:I

    and-int/lit16 v4, v4, 0xff

    .line 362
    invoke-static {v1, v4, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const-string v2, "bg_color"

    .line 363
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "font_size"

    .line 365
    iget v2, p0, Lcom/baidu/mapapi/map/TitleOptions;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "align_x"

    .line 366
    iget v2, p0, Lcom/baidu/mapapi/map/TitleOptions;->q:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "align_y"

    .line 367
    iget v2, p0, Lcom/baidu/mapapi/map/TitleOptions;->r:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "title_rotate"

    .line 368
    iget v2, p0, Lcom/baidu/mapapi/map/TitleOptions;->m:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "title_x_offset"

    .line 369
    iget v2, p0, Lcom/baidu/mapapi/map/TitleOptions;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "title_y_offset"

    .line 370
    iget v2, p0, Lcom/baidu/mapapi/map/TitleOptions;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "text"

    .line 371
    iget-object v2, p0, Lcom/baidu/mapapi/map/TitleOptions;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAlign()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->h:I

    return v0
.end method

.method public getBottomPadding()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->l:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->e:I

    return v0
.end method

.method public getLeftPadding()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->i:I

    return v0
.end method

.method public getMaxLines()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->g:I

    return v0
.end method

.method public getRightPadding()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->j:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleAnchorX()F
    .locals 1

    .line 117
    iget v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->q:F

    return v0
.end method

.method public getTitleAnchorY()F
    .locals 1

    .line 126
    iget v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->r:F

    return v0
.end method

.method public getTitleBgBitmapDescriptor()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getTitleBgColor()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->a:I

    return v0
.end method

.method public getTitleFontColor()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->c:I

    return v0
.end method

.method public getTitleFontSize()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->d:I

    return v0
.end method

.method public getTitleRotate()F
    .locals 1

    .line 175
    iget v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->m:F

    return v0
.end method

.method public getTitleXOffset()F
    .locals 1

    .line 91
    iget v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->p:I

    int-to-float v0, v0

    return v0
.end method

.method public getTitleYOffset()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->o:I

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->k:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/baidu/mapapi/map/TitleOptions;->f:I

    return v0
.end method

.method public setAlign(I)Lcom/baidu/mapapi/map/TitleOptions;
    .locals 0

    .line 263
    iput p1, p0, Lcom/baidu/mapapi/map/TitleOptions;->h:I

    return-object p0
.end method

.method public setHeight(I)Lcom/baidu/mapapi/map/TitleOptions;
    .locals 0

    .line 251
    iput p1, p0, Lcom/baidu/mapapi/map/TitleOptions;->e:I

    return-object p0
.end method

.method public setMaxLines(I)Lcom/baidu/mapapi/map/TitleOptions;
    .locals 0

    .line 237
    iput p1, p0, Lcom/baidu/mapapi/map/TitleOptions;->g:I

    return-object p0
.end method

.method public setPadding(IIII)Lcom/baidu/mapapi/map/TitleOptions;
    .locals 0

    .line 281
    iput p1, p0, Lcom/baidu/mapapi/map/TitleOptions;->i:I

    .line 282
    iput p3, p0, Lcom/baidu/mapapi/map/TitleOptions;->j:I

    .line 283
    iput p2, p0, Lcom/baidu/mapapi/map/TitleOptions;->k:I

    .line 284
    iput p4, p0, Lcom/baidu/mapapi/map/TitleOptions;->l:I

    return-object p0
.end method

.method public setWidth(I)Lcom/baidu/mapapi/map/TitleOptions;
    .locals 0

    .line 221
    iput p1, p0, Lcom/baidu/mapapi/map/TitleOptions;->f:I

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/baidu/mapapi/map/TitleOptions;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/baidu/mapapi/map/TitleOptions;->n:Ljava/lang/String;

    return-object p0
.end method

.method public titleAnchor(FF)Lcom/baidu/mapapi/map/TitleOptions;
    .locals 0

    .line 106
    iput p1, p0, Lcom/baidu/mapapi/map/TitleOptions;->q:F

    .line 107
    iput p2, p0, Lcom/baidu/mapapi/map/TitleOptions;->r:F

    return-object p0
.end method

.method public titleBgBitmapDescriptor(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/TitleOptions;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/baidu/mapapi/map/TitleOptions;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object p0
.end method

.method public titleBgColor(I)Lcom/baidu/mapapi/map/TitleOptions;
    .locals 0

    .line 191
    iput p1, p0, Lcom/baidu/mapapi/map/TitleOptions;->a:I

    return-object p0
.end method

.method public titleFontColor(I)Lcom/baidu/mapapi/map/TitleOptions;
    .locals 0

    .line 296
    iput p1, p0, Lcom/baidu/mapapi/map/TitleOptions;->c:I

    return-object p0
.end method

.method public titleFontSize(I)Lcom/baidu/mapapi/map/TitleOptions;
    .locals 0

    .line 308
    iput p1, p0, Lcom/baidu/mapapi/map/TitleOptions;->d:I

    return-object p0
.end method

.method public titleOffset(II)Lcom/baidu/mapapi/map/TitleOptions;
    .locals 0

    .line 325
    iput p1, p0, Lcom/baidu/mapapi/map/TitleOptions;->p:I

    .line 326
    iput p2, p0, Lcom/baidu/mapapi/map/TitleOptions;->o:I

    return-object p0
.end method

.method public titleRotate(F)Lcom/baidu/mapapi/map/TitleOptions;
    .locals 2

    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    if-gez v0, :cond_0

    add-float/2addr p1, v1

    goto :goto_0

    :cond_0
    rem-float/2addr p1, v1

    .line 343
    iput p1, p0, Lcom/baidu/mapapi/map/TitleOptions;->m:F

    return-object p0
.end method
