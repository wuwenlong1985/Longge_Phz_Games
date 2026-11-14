.class public Lcom/baidu/mapapi/map/bmsdk/ui/ImageUI;
.super Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;
.source "ImageUI.java"


# instance fields
.field private a:Lcom/baidu/platform/comapi/bmsdk/ui/BmImageUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;-><init>()V

    .line 15
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/ui/BmImageUI;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmImageUI;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/ImageUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmImageUI;

    .line 16
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/ImageUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmImageUI;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmImageUI;->a(Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;)V

    return-void
.end method


# virtual methods
.method public getBmBaseUI()Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/ImageUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmImageUI;

    return-object v0
.end method

.method public setClickable(Z)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/ImageUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmImageUI;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmImageUI;->a(Z)Z

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/ImageUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmImageUI;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmImageUI;->e(I)Z

    return-void
.end method

.method public setDrawableResource(Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 28
    :cond_0
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    .line 29
    iget-object p1, p0, Lcom/baidu/mapapi/map/bmsdk/ui/ImageUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmImageUI;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmImageUI;->b(Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;)Z

    return-void
.end method

.method public updateClickable(ZLcom/baidu/mapapi/map/Overlay;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 62
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/ImageUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmImageUI;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmImageUI;->a(Z)Z

    .line 66
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public updateColor(ILcom/baidu/mapapi/map/Overlay;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 85
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/ImageUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmImageUI;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmImageUI;->e(I)Z

    .line 89
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public updateDrawableResource(Lcom/baidu/mapapi/map/BitmapDescriptor;Lcom/baidu/mapapi/map/Overlay;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 39
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    .line 43
    iget-object p1, p0, Lcom/baidu/mapapi/map/bmsdk/ui/ImageUI;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmImageUI;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmImageUI;->b(Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;)Z

    .line 44
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method
