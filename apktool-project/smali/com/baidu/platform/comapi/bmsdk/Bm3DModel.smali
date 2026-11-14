.class public Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;
.super Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
.source "Bm3DModel.java"


# instance fields
.field private g:Lcom/baidu/platform/comapi/bmsdk/a;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Lcom/baidu/mapapi/map/BM3DModel;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 19
    invoke-static {}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->nativeCreate()J

    move-result-wide v0

    const/16 v2, 0x14

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;-><init>(IJ)V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->h:Ljava/util/ArrayList;

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->i:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/a;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->g:Lcom/baidu/platform/comapi/bmsdk/a;

    return-void
.end method

.method private static native nativeAddRichView(JJ)Z
.end method

.method private static native nativeClearRichViews(J)Z
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeLoad(JLjava/lang/String;I)Z
.end method

.method private static native nativeLoadByPath(JLjava/lang/String;Ljava/lang/String;I)Z
.end method

.method private static native nativeRemoveRichView(JJ)Z
.end method

.method private static native nativeSetAlwaysShowFront(JZ)Z
.end method

.method private static native nativeSetAnimationIndex(JI)Z
.end method

.method private static native nativeSetAnimationIsEnable(JZ)Z
.end method

.method private static native nativeSetAnimationRepeatCount(JI)Z
.end method

.method private static native nativeSetAnimationSpeed(JF)Z
.end method

.method private static native nativeSetBuildingId(JLjava/lang/String;)Z
.end method

.method private static native nativeSetCollisionBehavior(JI)Z
.end method

.method private static native nativeSetCollisionPriority(JI)Z
.end method

.method private static native nativeSetFloorId(JLjava/lang/String;)Z
.end method

.method private static native nativeSetOffset(JDDD)Z
.end method

.method private static native nativeSetPosition(JDDD)Z
.end method

.method private static native nativeSetRotation(JFFF)Z
.end method

.method private static native nativeSetScale(JF)Z
.end method

.method private static native nativeSetScaleByLevel(JZ)Z
.end method


# virtual methods
.method public a(J)Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 206
    iget-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    .line 207
    invoke-virtual {v1, p1, p2}, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;->a(J)Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/baidu/mapapi/map/BM3DModel;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->j:Lcom/baidu/mapapi/map/BM3DModel;

    return-void
.end method

.method public a(DDD)Z
    .locals 8

    .line 50
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->nativeInstance:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->nativeSetOffset(JDDD)Z

    move-result p1

    return p1
.end method

.method public a(F)Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->g:Lcom/baidu/platform/comapi/bmsdk/a;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/a;->a(F)V

    .line 72
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->nativeSetScale(JF)Z

    move-result p1

    return p1
.end method

.method public a(FFF)Z
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->g:Lcom/baidu/platform/comapi/bmsdk/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/platform/comapi/bmsdk/a;->a(FFF)V

    .line 62
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->nativeInstance:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->nativeSetRotation(JFFF)Z

    move-result p1

    return p1
.end method

.method public a(I)Z
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->nativeSetAnimationRepeatCount(JI)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/b;)Z
    .locals 9

    .line 45
    iget-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->g:Lcom/baidu/platform/comapi/bmsdk/a;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/bmsdk/a;->a(Lcom/baidu/platform/comapi/bmsdk/b;)V

    .line 46
    iget-wide v1, p0, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->nativeInstance:J

    iget-wide v3, p1, Lcom/baidu/platform/comapi/bmsdk/b;->a:D

    iget-wide v5, p1, Lcom/baidu/platform/comapi/bmsdk/b;->b:D

    iget-wide v7, p1, Lcom/baidu/platform/comapi/bmsdk/b;->c:D

    invoke-static/range {v1 .. v8}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->nativeSetPosition(JDDD)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->nativeInstance:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->nativeLoadByPath(JLjava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public a(Z)Z
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->nativeSetScaleByLevel(JZ)Z

    move-result p1

    return p1
.end method

.method public b(F)Z
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->nativeSetAnimationSpeed(JF)Z

    move-result p1

    return p1
.end method

.method public b(I)Z
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->nativeSetAnimationIndex(JI)Z

    move-result p1

    return p1
.end method

.method public b(Z)Z
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/Bm3DModel;->nativeSetAnimationIsEnable(JZ)Z

    move-result p1

    return p1
.end method
