.class public Lcom/baidu/platform/core/g/i;
.super Lcom/baidu/platform/base/e;
.source "IntegralRouteRequest.java"


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/baidu/platform/base/e;-><init>()V

    .line 9
    invoke-direct {p0, p1}, Lcom/baidu/platform/core/g/i;->a(Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;)V
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/baidu/platform/core/g/i;->a:Lcom/baidu/platform/util/a;

    const-string v1, "qt"

    const-string v2, "walkplan"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 14
    iget-object v0, p0, Lcom/baidu/platform/core/g/i;->a:Lcom/baidu/platform/util/a;

    const-string v1, "sn"

    iget-object v2, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->mFrom:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {p0, v2}, Lcom/baidu/platform/core/g/i;->a(Lcom/baidu/mapapi/search/route/PlanNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 15
    iget-object v0, p0, Lcom/baidu/platform/core/g/i;->a:Lcom/baidu/platform/util/a;

    const-string v1, "en"

    iget-object v2, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->mTo:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {p0, v2}, Lcom/baidu/platform/core/g/i;->a(Lcom/baidu/mapapi/search/route/PlanNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 16
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->mFrom:Lcom/baidu/mapapi/search/route/PlanNode;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/baidu/platform/core/g/i;->a:Lcom/baidu/platform/util/a;

    const-string v1, "sc"

    iget-object v2, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->mFrom:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/PlanNode;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 19
    :cond_0
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->mTo:Lcom/baidu/mapapi/search/route/PlanNode;

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/baidu/platform/core/g/i;->a:Lcom/baidu/platform/util/a;

    const-string v1, "ec"

    iget-object p1, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->mTo:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/PlanNode;->getCity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/baidu/platform/core/g/i;->a:Lcom/baidu/platform/util/a;

    const-string v0, "ie"

    const-string v1, "utf-8"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 23
    iget-object p1, p0, Lcom/baidu/platform/core/g/i;->a:Lcom/baidu/platform/util/a;

    const-string v0, "lrn"

    const-string v1, "20"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 24
    iget-object p1, p0, Lcom/baidu/platform/core/g/i;->a:Lcom/baidu/platform/util/a;

    const-string v0, "version"

    const-string v1, "6"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 25
    iget-object p1, p0, Lcom/baidu/platform/core/g/i;->a:Lcom/baidu/platform/util/a;

    const-string v0, "rp_format"

    const-string v1, "json"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 26
    iget-object p1, p0, Lcom/baidu/platform/core/g/i;->a:Lcom/baidu/platform/util/a;

    const-string v0, "rp_filter"

    const-string v1, "mobile"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 27
    iget-object p1, p0, Lcom/baidu/platform/core/g/i;->a:Lcom/baidu/platform/util/a;

    const-string v0, "spath_type"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 28
    iget-object p1, p0, Lcom/baidu/platform/core/g/i;->a:Lcom/baidu/platform/util/a;

    const-string v0, "with_indoor_navi"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/domain/b;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-interface {p1}, Lcom/baidu/platform/domain/b;->k()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
