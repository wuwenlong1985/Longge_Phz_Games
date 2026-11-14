.class public Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;
.super Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;
.source "LabelUI.java"


# instance fields
.field private a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;-><init>()V

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->b:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    .line 23
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a(Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;)V

    return-void
.end method


# virtual methods
.method public getBmBaseUI()Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    return-object v0
.end method

.method public getStyle()Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->c:Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setBackground(Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 185
    :cond_0
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    .line 186
    iget-object p1, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;)Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a(I)Z

    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a(Z)Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->d(I)Z

    return-void
.end method

.method public setHeight(I)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->c(I)Z

    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->e(I)Z

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a(IIII)Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a(Ljava/lang/String;)Z

    .line 33
    iput-object p1, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->b:Ljava/lang/String;

    return-void
.end method

.method public setTextStyle(Lcom/baidu/mapapi/map/bmsdk/ui/TextStyle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/bmsdk/ui/TextStyle;->getBmTextStyle()Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;)Z

    :cond_0
    return-void
.end method

.method public setWidth(I)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->b(I)Z

    return-void
.end method

.method public updateBackground(Lcom/baidu/mapapi/map/BitmapDescriptor;Lcom/baidu/mapapi/map/Overlay;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 196
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    .line 201
    iget-object p1, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;)Z

    .line 202
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public updateBackgroundColor(ILcom/baidu/mapapi/map/Overlay;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 219
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a(I)Z

    .line 223
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public updateClickable(ZLcom/baidu/mapapi/map/Overlay;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 97
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a(Z)Z

    .line 101
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public updateGravity(ILcom/baidu/mapapi/map/Overlay;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 169
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->d(I)Z

    .line 173
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public updateHeight(ILcom/baidu/mapapi/map/Overlay;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 145
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->c(I)Z

    .line 149
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public updateMaxLines(ILcom/baidu/mapapi/map/Overlay;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 258
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->e(I)Z

    .line 262
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public updatePadding(IIIILcom/baidu/mapapi/map/Overlay;)V
    .locals 1

    if-eqz p5, :cond_1

    .line 246
    invoke-virtual {p5}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a(IIII)Z

    .line 250
    invoke-virtual {p5}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public updateText(Ljava/lang/String;Lcom/baidu/mapapi/map/Overlay;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a(Ljava/lang/String;)Z

    .line 47
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public updateTextStyle(Lcom/baidu/mapapi/map/bmsdk/ui/TextStyle;Lcom/baidu/mapapi/map/Overlay;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 69
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/bmsdk/ui/TextStyle;->getBmTextStyle()Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;)Z

    .line 73
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public updateWidth(ILcom/baidu/mapapi/map/Overlay;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 123
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/LabelUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->b(I)Z

    .line 127
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method
