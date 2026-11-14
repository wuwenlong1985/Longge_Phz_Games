.class public Lcom/baidu/platform/core/h/b;
.super Lcom/baidu/platform/base/e;
.source "LocationShareRequest.java"


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/search/share/LocationShareURLOption;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/baidu/platform/base/e;-><init>()V

    .line 17
    invoke-direct {p0, p1}, Lcom/baidu/platform/core/h/b;->a(Lcom/baidu/mapapi/search/share/LocationShareURLOption;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/share/LocationShareURLOption;)V
    .locals 5

    .line 21
    iget-object v0, p0, Lcom/baidu/platform/core/h/b;->a:Lcom/baidu/platform/util/a;

    const-string v1, "qt"

    const-string v2, "cs"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 22
    iget-object v0, p1, Lcom/baidu/mapapi/search/share/LocationShareURLOption;->mLocation:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/baidu/platform/core/h/b;->a:Lcom/baidu/platform/util/a;

    const-string v2, "geo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/baidu/platform/comapi/basestruct/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/baidu/platform/comapi/basestruct/Point;->y:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 24
    iget-object v0, p0, Lcom/baidu/platform/core/h/b;->a:Lcom/baidu/platform/util/a;

    const-string v1, "t"

    iget-object v2, p1, Lcom/baidu/mapapi/search/share/LocationShareURLOption;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 25
    iget-object v0, p0, Lcom/baidu/platform/core/h/b;->a:Lcom/baidu/platform/util/a;

    const-string v1, "cnt"

    iget-object p1, p1, Lcom/baidu/mapapi/search/share/LocationShareURLOption;->mSnippet:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Lcom/baidu/platform/core/h/b;->b(Z)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/baidu/platform/core/h/b;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/domain/b;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-interface {p1}, Lcom/baidu/platform/domain/b;->q()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
