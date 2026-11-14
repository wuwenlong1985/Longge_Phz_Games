.class Lcom/baidu/mapapi/map/a$b;
.super Ljava/lang/Object;
.source "BackgroundDrawBaseRouteLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/map/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapapi/map/b;)V
    .locals 0

    .line 316
    invoke-direct {p0}, Lcom/baidu/mapapi/map/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/baidu/mapapi/map/a$b;->a:Landroid/os/Bundle;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/baidu/mapapi/map/a$b;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()D
    .locals 4

    .line 329
    iget-object v0, p0, Lcom/baidu/mapapi/map/a$b;->a:Landroid/os/Bundle;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/a$b;->a:Landroid/os/Bundle;

    const-string v3, "ulWidth"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public c()Z
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/baidu/mapapi/map/a$b;->a:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/a$b;->a:Landroid/os/Bundle;

    const-string v2, "bIsClosedRegion"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public d()[I
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/baidu/mapapi/map/a$b;->a:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/a$b;->a:Landroid/os/Bundle;

    const-string v1, "allPtX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public e()[I
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/baidu/mapapi/map/a$b;->a:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/a$b;->a:Landroid/os/Bundle;

    const-string v1, "allPtY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 364
    iput-object v0, p0, Lcom/baidu/mapapi/map/a$b;->a:Landroid/os/Bundle;

    return-void
.end method
