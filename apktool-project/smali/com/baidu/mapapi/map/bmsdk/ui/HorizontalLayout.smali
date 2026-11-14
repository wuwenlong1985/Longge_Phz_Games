.class public Lcom/baidu/mapapi/map/bmsdk/ui/HorizontalLayout;
.super Lcom/baidu/mapapi/map/bmsdk/ui/GroupUI;
.source "HorizontalLayout.java"


# instance fields
.field private a:Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/baidu/mapapi/map/bmsdk/ui/GroupUI;-><init>()V

    .line 16
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/HorizontalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;

    return-void
.end method


# virtual methods
.method public addView(Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/HorizontalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;->getBmBaseUI()Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;->a(Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;)Z

    return-void
.end method

.method public getBmBaseUI()Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/HorizontalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;

    return-object v0
.end method

.method public setBackground(Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    .line 66
    iget-object p1, p0, Lcom/baidu/mapapi/map/bmsdk/ui/HorizontalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;)Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/HorizontalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;->a(I)Z

    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/HorizontalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;->a(Z)Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/HorizontalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;->d(I)Z

    return-void
.end method

.method public updateAddView(Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;Lcom/baidu/mapapi/map/Overlay;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 133
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/HorizontalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;->getBmBaseUI()Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;->a(Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;)Z

    .line 137
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public updateBackground(Lcom/baidu/mapapi/map/BitmapDescriptor;Lcom/baidu/mapapi/map/Overlay;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 75
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    .line 79
    iget-object p1, p0, Lcom/baidu/mapapi/map/bmsdk/ui/HorizontalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;)Z

    .line 80
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

    .line 90
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/HorizontalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;->a(I)Z

    .line 95
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

    .line 105
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/HorizontalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;->a(Z)Z

    .line 109
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

    .line 119
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/HorizontalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmHorizontalLayout;->d(I)Z

    .line 123
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method
