.class public Lcom/baidu/platform/core/e/f;
.super Lcom/baidu/platform/base/a;
.source "PoiSearchImp.java"

# interfaces
.implements Lcom/baidu/platform/core/e/a;


# instance fields
.field private b:Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/baidu/platform/base/a;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/baidu/platform/core/e/f;->b:Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/baidu/platform/core/e/f;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/baidu/platform/core/e/f;->b:Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;

    .line 97
    iget-object v0, p0, Lcom/baidu/platform/core/e/f;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/baidu/platform/core/e/f;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 89
    iput-object p1, p0, Lcom/baidu/platform/core/e/f;->b:Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;

    .line 90
    iget-object p1, p0, Lcom/baidu/platform/core/e/f;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;)Z
    .locals 3

    .line 45
    new-instance v0, Lcom/baidu/platform/core/e/g;

    iget v1, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mPageNum:I

    iget v2, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mPageCapacity:I

    invoke-direct {v0, v1, v2}, Lcom/baidu/platform/core/e/g;-><init>(II)V

    .line 51
    sget-object v1, Lcom/baidu/platform/base/SearchType;->c:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/e/g;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 52
    new-instance v1, Lcom/baidu/platform/core/e/i;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/e/i;-><init>(Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;)V

    .line 53
    iget-object p1, p0, Lcom/baidu/platform/core/e/f;->b:Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/e/f;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;)Z
    .locals 3

    .line 32
    new-instance v0, Lcom/baidu/platform/core/e/g;

    iget v1, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mPageNum:I

    iget v2, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mPageCapacity:I

    invoke-direct {v0, v1, v2}, Lcom/baidu/platform/core/e/g;-><init>(II)V

    .line 38
    sget-object v1, Lcom/baidu/platform/base/SearchType;->b:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/e/g;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 39
    new-instance v1, Lcom/baidu/platform/core/e/i;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/e/i;-><init>(Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;)V

    .line 40
    iget-object p1, p0, Lcom/baidu/platform/core/e/f;->b:Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/e/f;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;)Z
    .locals 2

    .line 58
    new-instance v0, Lcom/baidu/platform/core/e/d;

    invoke-direct {v0}, Lcom/baidu/platform/core/e/d;-><init>()V

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->isSearchByUids()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/e/d;->a(Z)V

    .line 68
    :cond_0
    sget-object v1, Lcom/baidu/platform/base/SearchType;->d:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/e/d;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 69
    new-instance v1, Lcom/baidu/platform/core/e/e;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/e/e;-><init>(Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;)V

    .line 70
    iget-object p1, p0, Lcom/baidu/platform/core/e/f;->b:Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/e/f;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/mapapi/search/poi/PoiIndoorOption;)Z
    .locals 2

    .line 75
    new-instance v0, Lcom/baidu/platform/core/e/b;

    invoke-direct {v0}, Lcom/baidu/platform/core/e/b;-><init>()V

    .line 81
    sget-object v1, Lcom/baidu/platform/base/SearchType;->e:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/e/b;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 82
    new-instance v1, Lcom/baidu/platform/core/e/c;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/e/c;-><init>(Lcom/baidu/mapapi/search/poi/PoiIndoorOption;)V

    .line 83
    iget-object p1, p0, Lcom/baidu/platform/core/e/f;->b:Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/e/f;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;)Z
    .locals 3

    .line 19
    new-instance v0, Lcom/baidu/platform/core/e/g;

    iget v1, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mPageNum:I

    iget v2, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mPageCapacity:I

    invoke-direct {v0, v1, v2}, Lcom/baidu/platform/core/e/g;-><init>(II)V

    .line 25
    sget-object v1, Lcom/baidu/platform/base/SearchType;->a:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/e/g;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 26
    new-instance v1, Lcom/baidu/platform/core/e/i;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/e/i;-><init>(Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;)V

    .line 27
    iget-object p1, p0, Lcom/baidu/platform/core/e/f;->b:Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/e/f;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method
