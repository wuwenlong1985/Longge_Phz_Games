.class Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;
.super Ljava/lang/Object;
.source "BackgroundDrawNaviLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;

.field private final b:Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;

.field private c:I

.field private d:I

.field private final e:J


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->a:Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 491
    iput p1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->c:I

    .line 492
    iput p1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->d:I

    .line 497
    iput-object p2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->b:Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;

    .line 498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->e:J

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->b:Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;

    return-object p0
.end method

.method static synthetic b(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)I
    .locals 0

    .line 488
    iget p0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->c:I

    return p0
.end method

.method static synthetic c(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)I
    .locals 0

    .line 488
    iget p0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->d:I

    return p0
.end method

.method static synthetic d(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;)J
    .locals 2

    .line 488
    iget-wide v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->e:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 502
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->a:Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;

    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->b:Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->getGpsLongitude()D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->b:Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/entity/BackgroundNaviLocEntity;->getGpsLatitude()D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->a:Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;

    invoke-static {v3}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->a(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->toScreenLocation(IILcom/baidu/platform/comapi/basestruct/Point;)V

    .line 503
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->a:Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->a(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object v0

    iget v0, v0, Lcom/baidu/platform/comapi/basestruct/Point;->x:I

    iput v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->c:I

    .line 504
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->a:Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;->a(Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer;)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object v0

    iget v0, v0, Lcom/baidu/platform/comapi/basestruct/Point;->y:I

    iput v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawNaviLayer$a;->d:I

    return-void
.end method
