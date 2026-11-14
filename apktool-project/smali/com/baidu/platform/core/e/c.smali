.class public Lcom/baidu/platform/core/e/c;
.super Lcom/baidu/platform/base/e;
.source "IndoorPoiSearchRequest.java"


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/search/poi/PoiIndoorOption;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/baidu/platform/base/e;-><init>()V

    .line 14
    invoke-direct {p0, p1}, Lcom/baidu/platform/core/e/c;->a(Lcom/baidu/mapapi/search/poi/PoiIndoorOption;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/poi/PoiIndoorOption;)V
    .locals 4

    .line 18
    iget-object v0, p0, Lcom/baidu/platform/core/e/c;->a:Lcom/baidu/platform/util/a;

    const-string v1, "qt"

    const-string v2, "indoor_s"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 19
    iget-object v0, p0, Lcom/baidu/platform/core/e/c;->a:Lcom/baidu/platform/util/a;

    const-string v1, "x"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 20
    iget-object v0, p0, Lcom/baidu/platform/core/e/c;->a:Lcom/baidu/platform/util/a;

    const-string v1, "y"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 21
    iget-object v0, p0, Lcom/baidu/platform/core/e/c;->a:Lcom/baidu/platform/util/a;

    const-string v1, "from"

    const-string v2, "android_map_sdk"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 24
    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->bid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/baidu/platform/core/e/c;->a:Lcom/baidu/platform/util/a;

    const-string v2, "bid"

    invoke-virtual {v1, v2, v0}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 28
    :cond_0
    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->wd:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 30
    iget-object v1, p0, Lcom/baidu/platform/core/e/c;->a:Lcom/baidu/platform/util/a;

    const-string v2, "wd"

    invoke-virtual {v1, v2, v0}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 33
    :cond_1
    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->floor:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, ""

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 35
    iget-object v1, p0, Lcom/baidu/platform/core/e/c;->a:Lcom/baidu/platform/util/a;

    const-string v2, "floor"

    invoke-virtual {v1, v2, v0}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/core/e/c;->a:Lcom/baidu/platform/util/a;

    const-string v1, "current"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->currentPage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 39
    iget-object v0, p0, Lcom/baidu/platform/core/e/c;->a:Lcom/baidu/platform/util/a;

    const-string v1, "pageSize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->pageSize:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/domain/b;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-interface {p1}, Lcom/baidu/platform/domain/b;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
