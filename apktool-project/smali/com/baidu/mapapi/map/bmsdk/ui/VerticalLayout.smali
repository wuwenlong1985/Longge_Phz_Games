.class public Lcom/baidu/mapapi/map/bmsdk/ui/VerticalLayout;
.super Lcom/baidu/mapapi/map/bmsdk/ui/GroupUI;
.source "VerticalLayout.java"


# instance fields
.field private a:Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/baidu/mapapi/map/bmsdk/ui/GroupUI;-><init>()V

    .line 12
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/VerticalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;

    .line 13
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/VerticalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;->a(Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;)V

    return-void
.end method


# virtual methods
.method public addView(Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/VerticalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;->getBmBaseUI()Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;->a(Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;)Z

    return-void
.end method

.method public getBmBaseUI()Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/VerticalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;

    return-object v0
.end method

.method public setBackground(Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/VerticalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;)Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/VerticalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;->a(I)Z

    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/VerticalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;->a(Z)Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/VerticalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;->d(I)Z

    return-void
.end method

.method public updateAddView(Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;Lcom/baidu/mapapi/map/Overlay;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 124
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/VerticalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;->getBmBaseUI()Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;->a(Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;)Z

    .line 128
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public updateBackground(Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;Lcom/baidu/mapapi/map/Overlay;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 32
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/VerticalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmDrawableResource;)Z

    .line 36
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

    .line 83
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/VerticalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;->a(I)Z

    .line 87
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
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/VerticalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;->a(Z)Z

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

    .line 110
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/VerticalLayout;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmVerticalLayout;->d(I)Z

    .line 114
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/Overlay;->getBmLayer()Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c()Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method
