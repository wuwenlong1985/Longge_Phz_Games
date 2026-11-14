.class public final Lcom/baidu/mapapi/map/TextOptions;
.super Lcom/baidu/mapapi/map/OverlayOptions;
.source "TextOptions.java"


# static fields
.field public static final ALIGN_BOTTOM:I = 0x10

.field public static final ALIGN_CENTER_HORIZONTAL:I = 0x4

.field public static final ALIGN_CENTER_VERTICAL:I = 0x20

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2

.field public static final ALIGN_TOP:I = 0x8


# instance fields
.field a:I

.field b:Z

.field c:Landroid/os/Bundle;

.field private d:Ljava/lang/String;

.field private e:Lcom/baidu/mapapi/model/LatLng;

.field private f:I

.field private g:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private h:I

.field private i:I

.field private j:Landroid/graphics/Typeface;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:F

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/baidu/mapapi/map/OverlayOptions;-><init>()V

    const/high16 v0, -0x1000000

    .line 46
    iput v0, p0, Lcom/baidu/mapapi/map/TextOptions;->h:I

    const/16 v0, 0xc

    .line 48
    iput v0, p0, Lcom/baidu/mapapi/map/TextOptions;->i:I

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lcom/baidu/mapapi/map/TextOptions;->l:I

    const/4 v1, 0x4

    .line 55
    iput v1, p0, Lcom/baidu/mapapi/map/TextOptions;->m:I

    const/16 v1, 0x20

    .line 57
    iput v1, p0, Lcom/baidu/mapapi/map/TextOptions;->n:I

    .line 61
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/TextOptions;->p:Z

    .line 353
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/TextOptions;->b:Z

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/mapapi/map/Overlay;
    .locals 2

    .line 332
    new-instance v0, Lcom/baidu/mapapi/map/Text;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/Text;-><init>()V

    .line 333
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/TextOptions;->b:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Text;->N:Z

    .line 334
    iget v1, p0, Lcom/baidu/mapapi/map/TextOptions;->a:I

    iput v1, v0, Lcom/baidu/mapapi/map/Text;->M:I

    .line 335
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextOptions;->c:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Text;->O:Landroid/os/Bundle;

    .line 336
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextOptions;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Text;->c:Ljava/lang/String;

    .line 337
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextOptions;->e:Lcom/baidu/mapapi/model/LatLng;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Text;->d:Lcom/baidu/mapapi/model/LatLng;

    .line 338
    iget v1, p0, Lcom/baidu/mapapi/map/TextOptions;->f:I

    iput v1, v0, Lcom/baidu/mapapi/map/Text;->e:I

    .line 339
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextOptions;->g:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Text;->f:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 340
    iget v1, p0, Lcom/baidu/mapapi/map/TextOptions;->h:I

    iput v1, v0, Lcom/baidu/mapapi/map/Text;->g:I

    .line 341
    iget v1, p0, Lcom/baidu/mapapi/map/TextOptions;->i:I

    iput v1, v0, Lcom/baidu/mapapi/map/Text;->h:I

    .line 342
    iget-object v1, p0, Lcom/baidu/mapapi/map/TextOptions;->j:Landroid/graphics/Typeface;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Text;->i:Landroid/graphics/Typeface;

    .line 343
    iget v1, p0, Lcom/baidu/mapapi/map/TextOptions;->k:I

    iput v1, v0, Lcom/baidu/mapapi/map/Text;->j:I

    .line 344
    iget v1, p0, Lcom/baidu/mapapi/map/TextOptions;->m:I

    iput v1, v0, Lcom/baidu/mapapi/map/Text;->l:I

    .line 345
    iget v1, p0, Lcom/baidu/mapapi/map/TextOptions;->n:I

    iput v1, v0, Lcom/baidu/mapapi/map/Text;->m:I

    .line 346
    iget v1, p0, Lcom/baidu/mapapi/map/TextOptions;->l:I

    iput v1, v0, Lcom/baidu/mapapi/map/Text;->k:I

    .line 347
    iget v1, p0, Lcom/baidu/mapapi/map/TextOptions;->o:F

    iput v1, v0, Lcom/baidu/mapapi/map/Text;->n:F

    .line 348
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/TextOptions;->p:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Text;->p:Z

    return-object v0
.end method

.method public align(II)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 290
    iput p1, p0, Lcom/baidu/mapapi/map/TextOptions;->m:I

    .line 291
    iput p2, p0, Lcom/baidu/mapapi/map/TextOptions;->n:I

    return-object p0
.end method

.method public bgBitmapDescriptor(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/baidu/mapapi/map/TextOptions;->g:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object p0
.end method

.method public bgColor(I)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 206
    iput p1, p0, Lcom/baidu/mapapi/map/TextOptions;->f:I

    return-object p0
.end method

.method public extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/baidu/mapapi/map/TextOptions;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public fontColor(I)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 234
    iput p1, p0, Lcom/baidu/mapapi/map/TextOptions;->h:I

    return-object p0
.end method

.method public fontSize(I)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 246
    iput p1, p0, Lcom/baidu/mapapi/map/TextOptions;->i:I

    return-object p0
.end method

.method public getAlignX()F
    .locals 1

    .line 137
    iget v0, p0, Lcom/baidu/mapapi/map/TextOptions;->m:I

    int-to-float v0, v0

    return v0
.end method

.method public getAlignY()F
    .locals 1

    .line 146
    iget v0, p0, Lcom/baidu/mapapi/map/TextOptions;->n:I

    int-to-float v0, v0

    return v0
.end method

.method public getBgBitmapDescriptor()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextOptions;->g:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getBgColor()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/baidu/mapapi/map/TextOptions;->f:I

    return v0
.end method

.method public getExtraInfo()Landroid/os/Bundle;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextOptions;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFontColor()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/baidu/mapapi/map/TextOptions;->h:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/baidu/mapapi/map/TextOptions;->i:I

    return v0
.end method

.method public getPosition()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextOptions;->e:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getRotate()F
    .locals 1

    .line 155
    iget v0, p0, Lcom/baidu/mapapi/map/TextOptions;->o:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextOptions;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextOptions;->j:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getTypefaceType()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/baidu/mapapi/map/TextOptions;->k:I

    return v0
.end method

.method public getZIndex()I
    .locals 1

    .line 393
    iget v0, p0, Lcom/baidu/mapapi/map/TextOptions;->a:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 373
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/TextOptions;->b:Z

    return v0
.end method

.method public position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/TextOptions;
    .locals 1

    if-nez p1, :cond_0

    .line 192
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: position can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/TextOptions;->e:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method

.method public rotate(F)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 315
    iput p1, p0, Lcom/baidu/mapapi/map/TextOptions;->o:F

    return-object p0
.end method

.method public setClickable(Z)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 326
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/TextOptions;->p:Z

    return-object p0
.end method

.method public setLocate(I)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 303
    iput p1, p0, Lcom/baidu/mapapi/map/TextOptions;->l:I

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/baidu/mapapi/map/TextOptions;
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/TextOptions;->d:Ljava/lang/String;

    return-object p0

    .line 177
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: text can not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public typeFaceType(I)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 274
    iput p1, p0, Lcom/baidu/mapapi/map/TextOptions;->k:I

    return-object p0
.end method

.method public typeface(Landroid/graphics/Typeface;)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/baidu/mapapi/map/TextOptions;->j:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public visible(Z)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 363
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/TextOptions;->b:Z

    return-object p0
.end method

.method public zIndex(I)Lcom/baidu/mapapi/map/TextOptions;
    .locals 0

    .line 383
    iput p1, p0, Lcom/baidu/mapapi/map/TextOptions;->a:I

    return-object p0
.end method
