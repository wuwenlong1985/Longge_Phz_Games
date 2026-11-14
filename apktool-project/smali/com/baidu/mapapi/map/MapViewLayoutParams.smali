.class public final Lcom/baidu/mapapi/map/MapViewLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "MapViewLayoutParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;,
        Lcom/baidu/mapapi/map/MapViewLayoutParams$Builder;
    }
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:I = 0x10

.field public static final ALIGN_CENTER_HORIZONTAL:I = 0x4

.field public static final ALIGN_CENTER_VERTICAL:I = 0x20

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2

.field public static final ALIGN_TOP:I = 0x8


# instance fields
.field a:Lcom/baidu/mapapi/model/LatLng;

.field b:Landroid/graphics/Point;

.field c:Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;

.field d:F

.field e:F

.field f:I

.field g:I


# direct methods
.method constructor <init>(IILcom/baidu/mapapi/model/LatLng;Landroid/graphics/Point;Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;IIII)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 207
    iput-object p3, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 208
    iput-object p4, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->b:Landroid/graphics/Point;

    .line 209
    iput-object p5, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->c:Lcom/baidu/mapapi/map/MapViewLayoutParams$ELayoutMode;

    const/4 p1, 0x4

    const/4 p2, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    const/high16 p4, 0x3f000000    # 0.5f

    if-eq p6, p1, :cond_0

    packed-switch p6, :pswitch_data_0

    .line 221
    iput p4, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->d:F

    goto :goto_0

    .line 218
    :pswitch_0
    iput p3, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->d:F

    goto :goto_0

    .line 212
    :pswitch_1
    iput p2, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->d:F

    goto :goto_0

    .line 215
    :cond_0
    iput p4, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->d:F

    :goto_0
    const/16 p1, 0x8

    if-eq p7, p1, :cond_3

    const/16 p1, 0x10

    if-eq p7, p1, :cond_2

    const/16 p1, 0x20

    if-eq p7, p1, :cond_1

    .line 235
    iput p3, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->e:F

    goto :goto_1

    .line 229
    :cond_1
    iput p4, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->e:F

    goto :goto_1

    .line 232
    :cond_2
    iput p3, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->e:F

    goto :goto_1

    .line 226
    :cond_3
    iput p2, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->e:F

    .line 238
    :goto_1
    iput p8, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->f:I

    .line 239
    iput p9, p0, Lcom/baidu/mapapi/map/MapViewLayoutParams;->g:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
