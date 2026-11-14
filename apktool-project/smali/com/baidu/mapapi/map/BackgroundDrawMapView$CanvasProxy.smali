.class public Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;
.super Ljava/lang/Object;
.source "BackgroundDrawMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/map/BackgroundDrawMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CanvasProxy"
.end annotation


# instance fields
.field private final a:Landroid/view/TextureView;

.field private b:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/view/TextureView;)V
    .locals 0

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-object p1, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->a:Landroid/view/TextureView;

    return-void
.end method


# virtual methods
.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->a:Landroid/view/TextureView;

    if-nez v0, :cond_0

    return-void

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->b:Landroid/graphics/Canvas;

    if-nez v1, :cond_1

    return-void

    .line 553
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 557
    :cond_2
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 558
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public drawColor(I)V
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->a:Landroid/view/TextureView;

    if-nez v0, :cond_0

    return-void

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->b:Landroid/graphics/Canvas;

    if-nez v1, :cond_1

    return-void

    .line 513
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 517
    :cond_2
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 518
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_3
    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 3

    .line 523
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->a:Landroid/view/TextureView;

    if-nez v0, :cond_0

    return-void

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->b:Landroid/graphics/Canvas;

    if-nez v1, :cond_1

    return-void

    .line 533
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 537
    :cond_2
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 538
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .locals 3

    .line 624
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->a:Landroid/view/TextureView;

    if-nez v0, :cond_0

    return-void

    .line 629
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->b:Landroid/graphics/Canvas;

    if-nez v1, :cond_1

    return-void

    .line 634
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 638
    :cond_2
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 639
    invoke-virtual {v1, p1, p2, p3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->a:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 472
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 476
    :cond_1
    invoke-virtual {v0}, Landroid/view/TextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->b:Landroid/graphics/Canvas;

    .line 477
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->b:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public restore()V
    .locals 3

    .line 584
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->a:Landroid/view/TextureView;

    if-nez v0, :cond_0

    return-void

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->b:Landroid/graphics/Canvas;

    if-nez v1, :cond_1

    return-void

    .line 594
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 598
    :cond_2
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 599
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method public rotate(F)V
    .locals 3

    .line 604
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->a:Landroid/view/TextureView;

    if-nez v0, :cond_0

    return-void

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->b:Landroid/graphics/Canvas;

    if-nez v1, :cond_1

    return-void

    .line 614
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 618
    :cond_2
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 619
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->rotate(F)V

    :cond_3
    return-void
.end method

.method public rotate(FFF)V
    .locals 3

    .line 644
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->a:Landroid/view/TextureView;

    if-nez v0, :cond_0

    return-void

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->b:Landroid/graphics/Canvas;

    if-nez v1, :cond_1

    return-void

    .line 654
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 658
    :cond_2
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 659
    invoke-virtual {v1, p1, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_3
    return-void
.end method

.method public save()I
    .locals 4

    .line 563
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->a:Landroid/view/TextureView;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 568
    :cond_0
    iget-object v2, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->b:Landroid/graphics/Canvas;

    if-nez v2, :cond_1

    return v1

    .line 573
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    .line 577
    :cond_2
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 578
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method public scale(FF)V
    .locals 3

    .line 664
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->a:Landroid/view/TextureView;

    if-nez v0, :cond_0

    return-void

    .line 669
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->b:Landroid/graphics/Canvas;

    if-nez v1, :cond_1

    return-void

    .line 674
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 677
    :cond_2
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 678
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_3
    return-void
.end method

.method public scale(FFFF)V
    .locals 3

    .line 683
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->a:Landroid/view/TextureView;

    if-nez v0, :cond_0

    return-void

    .line 688
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->b:Landroid/graphics/Canvas;

    if-nez v1, :cond_1

    return-void

    .line 693
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 696
    :cond_2
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 697
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_3
    return-void
.end method

.method public translate(FF)V
    .locals 3

    .line 702
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->a:Landroid/view/TextureView;

    if-nez v0, :cond_0

    return-void

    .line 707
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->b:Landroid/graphics/Canvas;

    if-nez v1, :cond_1

    return-void

    .line 712
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 715
    :cond_2
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 716
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->a:Landroid/view/TextureView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 487
    iget-object p1, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->b:Landroid/graphics/Canvas;

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 492
    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->b:Landroid/graphics/Canvas;

    if-eq p1, v1, :cond_3

    return-void

    .line 496
    :cond_3
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 497
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    .line 498
    iput-object p1, p0, Lcom/baidu/mapapi/map/BackgroundDrawMapView$CanvasProxy;->b:Landroid/graphics/Canvas;

    :cond_4
    return-void
.end method
