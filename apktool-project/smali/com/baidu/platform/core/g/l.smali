.class public Lcom/baidu/platform/core/g/l;
.super Lcom/baidu/platform/base/a;
.source "RoutePlanSearchImp.java"

# interfaces
.implements Lcom/baidu/platform/core/g/e;


# instance fields
.field private b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/baidu/platform/base/a;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/baidu/platform/core/g/l;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/baidu/platform/core/g/l;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/baidu/platform/core/g/l;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    .line 131
    iget-object v0, p0, Lcom/baidu/platform/core/g/l;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/baidu/platform/core/g/l;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 22
    iput-object p1, p0, Lcom/baidu/platform/core/g/l;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    .line 23
    iget-object p1, p0, Lcom/baidu/platform/core/g/l;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;)Z
    .locals 2

    .line 116
    new-instance v0, Lcom/baidu/platform/core/g/a;

    invoke-direct {v0}, Lcom/baidu/platform/core/g/a;-><init>()V

    .line 122
    sget-object v1, Lcom/baidu/platform/base/SearchType;->l:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/g/a;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 123
    new-instance v1, Lcom/baidu/platform/core/g/b;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/g/b;-><init>(Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;)V

    .line 124
    iget-object p1, p0, Lcom/baidu/platform/core/g/l;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/g/l;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;)Z
    .locals 2

    .line 103
    new-instance v0, Lcom/baidu/platform/core/g/c;

    invoke-direct {v0}, Lcom/baidu/platform/core/g/c;-><init>()V

    .line 109
    sget-object v1, Lcom/baidu/platform/base/SearchType;->k:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/g/c;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 110
    new-instance v1, Lcom/baidu/platform/core/g/d;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/g/d;-><init>(Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;)V

    .line 111
    iget-object p1, p0, Lcom/baidu/platform/core/g/l;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/g/l;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/mapapi/search/route/IndoorRoutePlanOption;)Z
    .locals 2

    .line 77
    new-instance v0, Lcom/baidu/platform/core/g/f;

    invoke-direct {v0}, Lcom/baidu/platform/core/g/f;-><init>()V

    .line 83
    sget-object v1, Lcom/baidu/platform/base/SearchType;->n:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/g/f;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 84
    new-instance v1, Lcom/baidu/platform/core/g/g;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/g/g;-><init>(Lcom/baidu/mapapi/search/route/IndoorRoutePlanOption;)V

    .line 85
    iget-object p1, p0, Lcom/baidu/platform/core/g/l;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/g/l;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;)Z
    .locals 2

    .line 45
    new-instance v0, Lcom/baidu/platform/core/g/j;

    invoke-direct {v0}, Lcom/baidu/platform/core/g/j;-><init>()V

    .line 53
    sget-object v1, Lcom/baidu/platform/base/SearchType;->i:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/g/j;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 56
    new-instance v1, Lcom/baidu/platform/core/g/k;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/g/k;-><init>(Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;)V

    .line 59
    iget-object p1, p0, Lcom/baidu/platform/core/g/l;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/g/l;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;)Z
    .locals 2

    .line 29
    new-instance v0, Lcom/baidu/platform/core/g/o;

    invoke-direct {v0}, Lcom/baidu/platform/core/g/o;-><init>()V

    .line 36
    sget-object v1, Lcom/baidu/platform/base/SearchType;->j:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/g/o;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 38
    new-instance v1, Lcom/baidu/platform/core/g/p;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/g/p;-><init>(Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;)V

    .line 39
    iget-object p1, p0, Lcom/baidu/platform/core/g/l;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/g/l;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;)Z
    .locals 2

    .line 64
    new-instance v0, Lcom/baidu/platform/core/g/q;

    invoke-direct {v0}, Lcom/baidu/platform/core/g/q;-><init>()V

    .line 70
    sget-object v1, Lcom/baidu/platform/base/SearchType;->m:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/g/q;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 71
    new-instance v1, Lcom/baidu/platform/core/g/r;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/g/r;-><init>(Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;)V

    .line 72
    iget-object p1, p0, Lcom/baidu/platform/core/g/l;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/g/l;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;)Z
    .locals 2

    .line 89
    new-instance v0, Lcom/baidu/platform/core/g/h;

    invoke-direct {v0}, Lcom/baidu/platform/core/g/h;-><init>()V

    .line 95
    sget-object v1, Lcom/baidu/platform/base/SearchType;->x:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/g/h;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 96
    new-instance v1, Lcom/baidu/platform/core/g/i;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/g/i;-><init>(Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;)V

    .line 97
    iget-object p1, p0, Lcom/baidu/platform/core/g/l;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/g/l;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method
