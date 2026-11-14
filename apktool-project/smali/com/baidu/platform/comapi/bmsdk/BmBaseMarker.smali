.class public abstract Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;
.super Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
.source "BmBaseMarker.java"


# instance fields
.field private g:D

.field private h:D

.field private i:D

.field private j:I

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    .line 29
    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;-><init>(IJ)V

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->g:D

    .line 13
    iput-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->h:D

    .line 14
    iput-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->i:D

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->j:I

    .line 16
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->k:I

    .line 17
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->l:I

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->m:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->n:F

    .line 20
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->o:F

    .line 21
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->p:F

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->q:Ljava/lang/String;

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->r:Ljava/lang/String;

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->s:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->t:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(IJ)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;-><init>(IJ)V

    const-wide/16 p1, 0x0

    .line 12
    iput-wide p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->g:D

    .line 13
    iput-wide p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->h:D

    .line 14
    iput-wide p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->i:D

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->j:I

    .line 16
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->k:I

    .line 17
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->l:I

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->m:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 19
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->n:F

    .line 20
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->o:F

    .line 21
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->p:F

    const-string p1, ""

    .line 22
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->q:Ljava/lang/String;

    const-string p1, ""

    .line 23
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->r:Ljava/lang/String;

    const-string p1, ""

    .line 24
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->s:Ljava/lang/String;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->t:Ljava/util/ArrayList;

    return-void
.end method

.method private static native nativeAddRichView(JJ)Z
.end method

.method private static native nativeClearRichViews(J)Z
.end method

.method private static native nativeRemoveRichView(JJ)Z
.end method

.method private static native nativeSetBuildingId(JLjava/lang/String;)Z
.end method

.method private static native nativeSetCollisionBehavior(JI)Z
.end method

.method private static native nativeSetCollisionPriority(JI)Z
.end method

.method private static native nativeSetDrawFullscreenMaskFlag(JZ)Z
.end method

.method private static native nativeSetFixX(JI)Z
.end method

.method private static native nativeSetFixY(JI)Z
.end method

.method private static native nativeSetFloorId(JLjava/lang/String;)Z
.end method

.method private static native nativeSetFollowMapRotateAxis(JI)Z
.end method

.method private static native nativeSetHeight(JI)Z
.end method

.method private static native nativeSetId(JLjava/lang/String;)Z
.end method

.method private static native nativeSetIsFix(JI)Z
.end method

.method private static native nativeSetLocated(JI)Z
.end method

.method private static native nativeSetOffsetX(JII)Z
.end method

.method private static native nativeSetOffsetY(JII)Z
.end method

.method private static native nativeSetPerspective(JI)Z
.end method

.method private static native nativeSetRotate(JF)Z
.end method

.method private static native nativeSetRotateFeature(JI)Z
.end method

.method private static native nativeSetScale(JF)Z
.end method

.method private static native nativeSetScaleX(JF)Z
.end method

.method private static native nativeSetScaleY(JF)Z
.end method

.method private static native nativeSetTrackBy(JI)Z
.end method

.method private static native nativeSetWidth(JI)Z
.end method

.method private static native nativeSetX(JD)Z
.end method

.method private static native nativeSetXYZ(JDDD)Z
.end method

.method private static native nativeSetY(JD)Z
.end method

.method private static native nativeSetZ(JD)Z
.end method


# virtual methods
.method public a(J)Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 310
    iget-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;

    .line 311
    invoke-virtual {v1, p1, p2}, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;->a(J)Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(F)Z
    .locals 2

    .line 191
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->m:F

    .line 192
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->nativeSetRotate(JF)Z

    move-result p1

    return p1
.end method

.method public a(I)Z
    .locals 2

    .line 94
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->j:I

    .line 95
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->nativeSetLocated(JI)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/b;)Z
    .locals 10

    .line 40
    iget-wide v0, p1, Lcom/baidu/platform/comapi/bmsdk/b;->a:D

    iput-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->g:D

    .line 41
    iget-wide v0, p1, Lcom/baidu/platform/comapi/bmsdk/b;->b:D

    iput-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->h:D

    .line 42
    iget-wide v0, p1, Lcom/baidu/platform/comapi/bmsdk/b;->c:D

    iput-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->i:D

    .line 43
    iget-wide v2, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->nativeInstance:J

    iget-wide v4, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->g:D

    iget-wide v6, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->h:D

    iget-wide v8, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->i:D

    invoke-static/range {v2 .. v9}, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->nativeSetXYZ(JDDD)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;)Z
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->nativeInstance:J

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->nativeAddRichView(JJ)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;)Z
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 258
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->nativeInstance:J

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmRichView;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;->nativeRemoveRichView(JJ)Z

    move-result p1

    return p1
.end method
