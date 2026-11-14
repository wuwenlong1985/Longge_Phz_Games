.class public Lcom/baidu/mapapi/map/bmsdk/ui/TextStyle;
.super Ljava/lang/Object;
.source "TextStyle.java"


# instance fields
.field private a:Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/TextStyle;->a:Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;

    return-void
.end method


# virtual methods
.method public getBmTextStyle()Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/TextStyle;->a:Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;

    return-object v0
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/TextStyle;->a:Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->c(I)Z

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/TextStyle;->a:Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->d(I)Z

    return-void
.end method

.method public setFontOption(I)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/TextStyle;->a:Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->e(I)Z

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/TextStyle;->a:Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->a(I)Z

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/baidu/mapapi/map/bmsdk/ui/TextStyle;->a:Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->b(I)Z

    return-void
.end method
