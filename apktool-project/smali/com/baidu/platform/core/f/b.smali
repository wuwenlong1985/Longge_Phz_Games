.class public Lcom/baidu/platform/core/f/b;
.super Lcom/baidu/platform/base/a;
.source "RecommendStopSearchImp.java"

# interfaces
.implements Lcom/baidu/platform/core/f/a;


# instance fields
.field private b:Lcom/baidu/mapapi/search/recommendstop/OnGetRecommendStopResultListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/baidu/platform/base/a;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/baidu/platform/core/f/b;->b:Lcom/baidu/mapapi/search/recommendstop/OnGetRecommendStopResultListener;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/baidu/platform/core/f/b;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/baidu/platform/core/f/b;->b:Lcom/baidu/mapapi/search/recommendstop/OnGetRecommendStopResultListener;

    .line 40
    iget-object v0, p0, Lcom/baidu/platform/core/f/b;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/recommendstop/OnGetRecommendStopResultListener;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/baidu/platform/core/f/b;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 32
    iput-object p1, p0, Lcom/baidu/platform/core/f/b;->b:Lcom/baidu/mapapi/search/recommendstop/OnGetRecommendStopResultListener;

    .line 33
    iget-object p1, p0, Lcom/baidu/platform/core/f/b;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/recommendstop/RecommendStopSearchOption;)Z
    .locals 2

    .line 18
    new-instance v0, Lcom/baidu/platform/core/f/c;

    invoke-direct {v0}, Lcom/baidu/platform/core/f/c;-><init>()V

    .line 20
    sget-object v1, Lcom/baidu/platform/base/SearchType;->u:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/f/c;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 23
    new-instance v1, Lcom/baidu/platform/core/f/d;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/f/d;-><init>(Lcom/baidu/mapapi/search/recommendstop/RecommendStopSearchOption;)V

    .line 26
    iget-object p1, p0, Lcom/baidu/platform/core/f/b;->b:Lcom/baidu/mapapi/search/recommendstop/OnGetRecommendStopResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/f/b;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method
