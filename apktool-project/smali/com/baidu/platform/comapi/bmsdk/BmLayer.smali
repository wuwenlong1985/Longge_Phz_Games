.class public Lcom/baidu/platform/comapi/bmsdk/BmLayer;
.super Lcom/baidu/platform/comapi/bmsdk/BmObject;
.source "BmLayer.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/baidu/platform/comapi/bmsdk/d;

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-static {}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->nativeCreate()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmObject;-><init>(IJ)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->b:Lcom/baidu/platform/comapi/bmsdk/d;

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c:J

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .line 35
    invoke-static {}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->nativeCreate()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmObject;-><init>(IJ)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->b:Lcom/baidu/platform/comapi/bmsdk/d;

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c:J

    .line 36
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->nativeSetCollisionBaseMap(JZ)Z

    return-void
.end method

.method private static native nativeAddDrawItem(JJ)Z
.end method

.method private static native nativeAddDrawItemAbove(JJJ)Z
.end method

.method private static native nativeAddDrawItemBelow(JJJ)Z
.end method

.method private static native nativeAddDrawItemByZIndex(JJI)Z
.end method

.method private static native nativeClearDrawItems(J)Z
.end method

.method private static native nativeCommitUpdate(J)Z
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeGetDrawItemRect(JIIII)Landroid/os/Bundle;
.end method

.method private static native nativeGetLayerId(J)J
.end method

.method private static native nativeHandleClick(JIII[J)Z
.end method

.method private static native nativeRemoveDrawItem(JJ)Z
.end method

.method private static native nativeSDKHandleClick(JIII[JLandroid/os/Bundle;)Z
.end method

.method private static native nativeSetClickable(JZ)Z
.end method

.method private static native nativeSetCollideByArea(JZ)Z
.end method

.method private static native nativeSetCollisionBaseMap(JZ)Z
.end method

.method private static native nativeSetShowLevel(JII)Z
.end method

.method private static native nativeSetVisibility(JI)Z
.end method


# virtual methods
.method public a()J
    .locals 5

    .line 40
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 41
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->nativeInstance:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->nativeGetLayerId(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c:J

    .line 43
    :cond_0
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->c:J

    return-wide v0
.end method

.method public a(III)Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
    .locals 8

    const/4 v0, 0x3

    .line 301
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 302
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 303
    iget-wide v1, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->nativeInstance:J

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->nativeSDKHandleClick(JIII[JLandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 305
    iget-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->b:Lcom/baidu/platform/comapi/bmsdk/d;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    aget-wide p2, v0, p1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-eqz v3, :cond_1

    .line 306
    aget-wide p2, v0, p1

    .line 307
    :goto_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    .line 309
    iget-wide v1, v0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->nativeInstance:J

    cmp-long v3, v1, p2

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
    .end array-data
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/d;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->b:Lcom/baidu/platform/comapi/bmsdk/d;

    return-void
.end method

.method public a(IIIZZ)Z
    .locals 9

    const/4 v0, 0x3

    .line 322
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 323
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 324
    iget-wide v1, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->nativeInstance:J

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v0

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->nativeSDKHandleClick(JIII[JLandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 327
    iget-object p2, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->b:Lcom/baidu/platform/comapi/bmsdk/d;

    if-eqz p2, :cond_8

    const/4 p2, 0x0

    aget-wide v1, v0, p2

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-eqz p3, :cond_8

    .line 328
    aget-wide v1, v0, p2

    .line 329
    :goto_0
    iget-object p3, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_8

    .line 330
    iget-object p3, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    .line 331
    iget-wide v5, p3, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->nativeInstance:J

    cmp-long v7, v5, v1

    if-nez v7, :cond_7

    const/4 p2, 0x0

    const/4 v1, 0x1

    .line 334
    aget-wide v5, v0, v1

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    .line 335
    instance-of v2, p3, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;

    if-eqz v2, :cond_0

    .line 336
    move-object p2, p3

    check-cast p2, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;

    aget-wide v1, v0, v1

    invoke-virtual {p2, v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->a(J)Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;

    move-result-object p2

    goto :goto_1

    .line 337
    :cond_0
    instance-of v2, p3, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    if-eqz v2, :cond_1

    .line 338
    move-object p2, p3

    check-cast p2, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;

    aget-wide v1, v0, v1

    invoke-virtual {p2, v1, v2}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->a(J)Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;

    move-result-object p2

    :cond_1
    :goto_1
    const-string v0, "hole_index"

    .line 341
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "hole_index"

    .line 342
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p3, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->b(J)V

    :cond_2
    const-string v0, "multipoint_index"

    .line 345
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 346
    move-object v0, p3

    check-cast v0, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;

    const-string v1, "multipoint_index"

    .line 347
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmMultiPoint;->a(I)V

    :cond_3
    if-eqz p4, :cond_5

    if-eqz p5, :cond_8

    if-eqz p2, :cond_4

    .line 359
    iget-object p4, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->b:Lcom/baidu/platform/comapi/bmsdk/d;

    invoke-interface {p4, p3, p2}, Lcom/baidu/platform/comapi/bmsdk/d;->a(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;)V

    goto :goto_2

    .line 362
    :cond_4
    iget-object p2, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->b:Lcom/baidu/platform/comapi/bmsdk/d;

    invoke-interface {p2, p3}, Lcom/baidu/platform/comapi/bmsdk/d;->a(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 369
    iget-object p4, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->b:Lcom/baidu/platform/comapi/bmsdk/d;

    invoke-interface {p4, p3, p2}, Lcom/baidu/platform/comapi/bmsdk/d;->a(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;)V

    goto :goto_2

    .line 371
    :cond_6
    iget-object p2, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->b:Lcom/baidu/platform/comapi/bmsdk/d;

    invoke-interface {p2, p3}, Lcom/baidu/platform/comapi/bmsdk/d;->a(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)V

    goto :goto_2

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_2
    return p1

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
    .end array-data
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)Z
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->nativeInstance:J

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->nativeRemoveDrawItem(JJ)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;S)Z
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->nativeInstance:J

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->nativeAddDrawItemByZIndex(JJI)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->nativeInstance:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->nativeClearDrawItems(J)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    .line 232
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->nativeInstance:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->nativeCommitUpdate(J)Z

    move-result v0

    return v0
.end method
