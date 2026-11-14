.class public Lcom/baidu/mapapi/map/bmsdk/ui/FrameLayout;
.super Lcom/baidu/mapapi/map/bmsdk/ui/GroupUI;
.source "FrameLayout.java"


# instance fields
.field private a:Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/baidu/mapapi/map/bmsdk/ui/GroupUI;-><init>()V

    .line 13
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/FrameLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;

    .line 14
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/FrameLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;->a(Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;)V

    return-void
.end method


# virtual methods
.method public addView(Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/FrameLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;->getBmBaseUI()Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;->a(Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;)Z

    return-void
.end method

.method public getBmBaseUI()Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/FrameLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;

    return-object v0
.end method

.method public setBackground(Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 44
    :cond_0
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    iget-object p1, p0, Lcom/baidu/mapapi/map/bmsdk/ui/FrameLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;)Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/FrameLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;->a(I)Z

    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/FrameLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;->a(Z)Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/FrameLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;->d(I)Z

    return-void
.end method

.method public updateAddView(Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;Lcom/baidu/mapapi/map/Overlay;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 83
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/FrameLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;->getBmBaseUI()Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;->a(Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;)Z

    .line 87
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

    .line 49
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    .line 53
    iget-object p1, p0, Lcom/baidu/mapapi/map/bmsdk/ui/FrameLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;)Z

    .line 54
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

    .line 58
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/FrameLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;->a(I)Z

    .line 62
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

    .line 66
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/FrameLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;->a(Z)Z

    .line 70
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

    .line 74
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/FrameLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmFrameLayout;->d(I)Z

    .line 78
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method
