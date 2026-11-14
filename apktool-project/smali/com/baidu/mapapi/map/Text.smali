.class public final Lcom/baidu/mapapi/map/Text;
.super Lcom/baidu/mapapi/map/Overlay;
.source "Text.java"


# static fields
.field private static final q:Ljava/lang/String; = "Text"


# instance fields
.field a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

.field b:Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

.field c:Ljava/lang/String;

.field d:Lcom/baidu/mapapi/model/LatLng;

.field e:I

.field f:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field g:I

.field h:I

.field i:Landroid/graphics/Typeface;

.field j:I

.field k:I

.field l:I

.field m:I

.field n:F

.field o:I

.field p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Text;->p:Z

    .line 58
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/h;->e:Lcom/baidu/mapsdkplatform/comapi/map/h;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Text;->type:Lcom/baidu/mapsdkplatform/comapi/map/h;

    return-void
.end method

.method private c()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->f:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v0, :cond_2

    .line 148
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;-><init>()V

    .line 149
    new-instance v1, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;-><init>()V

    .line 150
    iget-object v2, p0, Lcom/baidu/mapapi/map/Text;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a(Ljava/lang/String;)Z

    .line 151
    iget-object v2, p0, Lcom/baidu/mapapi/map/Text;->i:Landroid/graphics/Typeface;

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/baidu/mapapi/map/Text;->i:Landroid/graphics/Typeface;

    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->e(I)Z

    .line 154
    :cond_1
    iget v2, p0, Lcom/baidu/mapapi/map/Text;->h:I

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->b(I)Z

    .line 155
    iget v2, p0, Lcom/baidu/mapapi/map/Text;->g:I

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->a(I)Z

    .line 156
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;)Z

    .line 157
    new-instance v1, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Text;->f:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;)Z

    .line 158
    iget v1, p0, Lcom/baidu/mapapi/map/Text;->e:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a(I)Z

    const/16 v1, 0x30

    .line 159
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->d(I)Z

    .line 160
    iget-object v1, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Text;->b:Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;->b(Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;)Z

    .line 161
    new-instance v1, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/map/Text;->b:Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    .line 162
    iget-object v1, p0, Lcom/baidu/mapapi/map/Text;->b:Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;->a(Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;)Z

    .line 163
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Text;->b:Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;->a(Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;)Z

    goto :goto_0

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Text;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;->a(Ljava/lang/String;)Z

    .line 166
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;-><init>()V

    .line 167
    iget v1, p0, Lcom/baidu/mapapi/map/Text;->h:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->b(I)Z

    .line 168
    iget v1, p0, Lcom/baidu/mapapi/map/Text;->g:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->a(I)Z

    .line 169
    iget-object v1, p0, Lcom/baidu/mapapi/map/Text;->i:Landroid/graphics/Typeface;

    if-eqz v1, :cond_3

    .line 170
    iget-object v1, p0, Lcom/baidu/mapapi/map/Text;->i:Landroid/graphics/Typeface;

    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->e(I)Z

    .line 172
    :cond_3
    iget-object v1, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;)Z

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    return-void

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method a()Landroid/os/Bundle;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->i:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->i:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/graphics/Typeface;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/baidu/vi/EnvDrawText;->removeFontCache(I)V

    .line 492
    :cond_0
    invoke-super {p0}, Lcom/baidu/mapapi/map/Overlay;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 416
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 417
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->d:Lcom/baidu/mapapi/model/LatLng;

    if-nez v0, :cond_0

    .line 418
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: when you add a text overlay, you must provide text and the position info."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string v0, "text"

    .line 421
    iget-object v1, p0, Lcom/baidu/mapapi/map/Text;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->d:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    const-string v1, "location_x"

    .line 423
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "location_y"

    .line 424
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 426
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->g:I

    ushr-int/lit8 v0, v0, 0x18

    .line 428
    iget v1, p0, Lcom/baidu/mapapi/map/Text;->g:I

    const/16 v2, 0x10

    shr-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 429
    iget v3, p0, Lcom/baidu/mapapi/map/Text;->g:I

    const/16 v4, 0x8

    shr-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 430
    iget v5, p0, Lcom/baidu/mapapi/map/Text;->g:I

    and-int/lit16 v5, v5, 0xff

    .line 431
    invoke-static {v0, v5, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    const-string v1, "font_color"

    .line 432
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 435
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->e:I

    ushr-int/lit8 v0, v0, 0x18

    .line 437
    iget v1, p0, Lcom/baidu/mapapi/map/Text;->e:I

    shr-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 438
    iget v3, p0, Lcom/baidu/mapapi/map/Text;->e:I

    shr-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 439
    iget v5, p0, Lcom/baidu/mapapi/map/Text;->e:I

    and-int/lit16 v5, v5, 0xff

    .line 440
    invoke-static {v0, v5, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    const-string v1, "bg_color"

    .line 441
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "font_size"

    .line 444
    iget v1, p0, Lcom/baidu/mapapi/map/Text;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->i:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->i:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/graphics/Typeface;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/Text;->i:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Lcom/baidu/vi/EnvDrawText;->registFontCache(ILandroid/graphics/Typeface;)V

    const-string v0, "type_face"

    .line 447
    iget-object v1, p0, Lcom/baidu/mapapi/map/Text;->i:Landroid/graphics/Typeface;

    invoke-virtual {v1}, Landroid/graphics/Typeface;->hashCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 450
    :cond_1
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->l:I

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "align_x"

    .line 464
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 466
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->m:I

    if-eq v0, v4, :cond_4

    if-eq v0, v2, :cond_3

    const/16 v1, 0x20

    goto :goto_1

    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    const-string v0, "align_y"

    .line 480
    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "rotate"

    .line 481
    iget v1, p0, Lcom/baidu/mapapi/map/Text;->n:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "update"

    .line 482
    iget v1, p0, Lcom/baidu/mapapi/map/Text;->o:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "isClickable"

    .line 483
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Text;->p:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAlignX()F
    .locals 1

    .line 121
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->l:I

    int-to-float v0, v0

    return v0
.end method

.method public getAlignY()F
    .locals 1

    .line 130
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->m:I

    int-to-float v0, v0

    return v0
.end method

.method public getBgColor()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->e:I

    return v0
.end method

.method public getFontColor()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->g:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->h:I

    return v0
.end method

.method public getPosition()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->d:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getRotate()F
    .locals 1

    .line 139
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->n:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->i:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isClickable()Z
    .locals 1

    .line 372
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Text;->p:Z

    return v0
.end method

.method public setAlign(II)V
    .locals 0

    .line 310
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->l:I

    .line 311
    iput p2, p0, Lcom/baidu/mapapi/map/Text;->m:I

    const/4 p1, 0x1

    .line 312
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->o:I

    .line 313
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-nez p1, :cond_0

    .line 314
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_0
    return-void
.end method

.method public setBgColor(I)V
    .locals 0

    .line 226
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->e:I

    const/4 p1, 0x1

    .line 227
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->o:I

    .line 229
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Text;->c()V

    goto :goto_0

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :goto_0
    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    .line 355
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Text;->p:Z

    .line 356
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;->c(Z)Z

    .line 359
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 362
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFontColor(I)V
    .locals 0

    .line 243
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->g:I

    const/4 p1, 0x1

    .line 244
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->o:I

    .line 245
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Text;->c()V

    goto :goto_0

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :goto_0
    return-void
.end method

.method public setFontSize(I)V
    .locals 0

    .line 259
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->h:I

    const/4 p1, 0x1

    .line 260
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->o:I

    .line 261
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Text;->c()V

    goto :goto_0

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :goto_0
    return-void
.end method

.method public setLocate(I)V
    .locals 1

    .line 319
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->k:I

    .line 320
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;->a(I)Z

    .line 323
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPosition(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 6

    if-nez p1, :cond_0

    .line 204
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: position can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/Text;->d:Lcom/baidu/mapapi/model/LatLng;

    const/4 p1, 0x1

    .line 207
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->o:I

    .line 208
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 209
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_2

    .line 210
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->d:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    .line 211
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    new-instance v1, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;->a(Lcom/baidu/platform/comapi/bmsdk/b;)Z

    .line 212
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 215
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setRotate(F)V
    .locals 1

    .line 337
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->n:F

    const/4 v0, 0x1

    .line 338
    iput v0, p0, Lcom/baidu/mapapi/map/Text;->o:I

    .line 339
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;->a(F)Z

    .line 342
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->P:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    goto :goto_0

    .line 345
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    const-string v0, ""

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 186
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/Text;->c:Ljava/lang/String;

    const/4 p1, 0x1

    .line 187
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->o:I

    .line 189
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 190
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Text;->c()V

    goto :goto_0

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :goto_0
    return-void

    .line 184
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: text can not be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/baidu/mapapi/map/Text;->i:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    .line 292
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->o:I

    .line 293
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-nez p1, :cond_0

    .line 294
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_0
    return-void
.end method

.method public setTypefaceType(I)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->j:I

    const/4 p1, 0x1

    .line 276
    iput p1, p0, Lcom/baidu/mapapi/map/Text;->o:I

    .line 277
    invoke-static {}, Lcom/baidu/mapapi/map/OverlayUtil;->isOverlayUpgrade()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Text;->c()V

    goto :goto_0

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :goto_0
    return-void
.end method

.method toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
    .locals 7

    .line 377
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    .line 378
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;->a(Lcom/baidu/mapapi/map/Text;)V

    .line 379
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/Text;->setDrawItem(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)V

    .line 381
    invoke-super {p0}, Lcom/baidu/mapapi/map/Overlay;->toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    .line 382
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->d:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    new-instance v2, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;->a(Lcom/baidu/platform/comapi/bmsdk/b;)Z

    .line 385
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->f:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v0, :cond_0

    .line 386
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;-><init>()V

    .line 387
    new-instance v1, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;-><init>()V

    .line 388
    iget-object v2, p0, Lcom/baidu/mapapi/map/Text;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a(Ljava/lang/String;)Z

    .line 389
    iget v2, p0, Lcom/baidu/mapapi/map/Text;->j:I

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->e(I)Z

    .line 390
    iget v2, p0, Lcom/baidu/mapapi/map/Text;->h:I

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->b(I)Z

    .line 391
    iget v2, p0, Lcom/baidu/mapapi/map/Text;->g:I

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->a(I)Z

    .line 392
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;)Z

    .line 393
    new-instance v1, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Text;->f:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;)Z

    .line 394
    iget v1, p0, Lcom/baidu/mapapi/map/Text;->e:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a(I)Z

    const/16 v1, 0x30

    .line 395
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->d(I)Z

    .line 396
    new-instance v1, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    invoke-direct {v1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/map/Text;->b:Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    .line 397
    iget-object v1, p0, Lcom/baidu/mapapi/map/Text;->b:Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;->a(Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;)Z

    .line 398
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Text;->b:Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;->a(Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;)Z

    goto :goto_0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Text;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;->a(Ljava/lang/String;)Z

    .line 401
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;-><init>()V

    .line 402
    iget v1, p0, Lcom/baidu/mapapi/map/Text;->h:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->b(I)Z

    .line 403
    iget v1, p0, Lcom/baidu/mapapi/map/Text;->g:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->a(I)Z

    .line 404
    iget v1, p0, Lcom/baidu/mapapi/map/Text;->j:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->e(I)Z

    .line 405
    iget-object v1, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;)Z

    .line 408
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    iget v1, p0, Lcom/baidu/mapapi/map/Text;->n:F

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;->a(F)Z

    .line 409
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    iget v1, p0, Lcom/baidu/mapapi/map/Text;->k:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;->a(I)Z

    .line 410
    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->a:Lcom/baidu/platform/comapi/bmsdk/BmTextMarker;

    return-object v0
.end method
