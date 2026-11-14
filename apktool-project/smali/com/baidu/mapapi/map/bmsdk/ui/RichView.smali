.class public Lcom/baidu/mapapi/map/bmsdk/ui/RichView;
.super Ljava/lang/Object;
.source "RichView.java"


# instance fields
.field private a:Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

.field private b:Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/RichView;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    return-void
.end method


# virtual methods
.method public getBmRichView()Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/RichView;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    return-object v0
.end method

.method public getView()Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/RichView;->b:Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;

    return-object v0
.end method

.method public setAnimation(Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/RichView;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;->a(Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;)Z

    return-void
.end method

.method public setCollisionBehavior(I)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/RichView;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;->c(I)Z

    return-void
.end method

.method public setCollisionPriority(S)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/RichView;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;->a(S)Z

    return-void
.end method

.method public setLocated(I)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/RichView;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;->a(I)Z

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/RichView;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;->a(F)Z

    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/RichView;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;->b(F)Z

    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/RichView;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;->c(F)Z

    return-void
.end method

.method public setShowLevel(II)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/RichView;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;->a(II)Z

    return-void
.end method

.method public setView(Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/RichView;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/bmsdk/ui/BaseUI;->getBmBaseUI()Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;->a(Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;)Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/RichView;->a:Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;->b(I)Z

    return-void
.end method
