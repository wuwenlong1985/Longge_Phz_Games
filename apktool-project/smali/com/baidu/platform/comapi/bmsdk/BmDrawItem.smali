.class public abstract Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
.super Lcom/baidu/platform/comapi/bmsdk/BmObject;
.source "BmDrawItem.java"


# instance fields
.field protected a:I

.field protected b:F

.field protected c:Ljava/lang/String;

.field d:S

.field e:J

.field protected f:Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;

.field private g:I

.field private h:I


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    .line 26
    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmObject;-><init>(IJ)V

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->a:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->b:F

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->c:Ljava/lang/String;

    const/4 v0, 0x4

    .line 19
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->g:I

    const/16 v0, 0x16

    .line 20
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->h:I

    const-wide/16 v0, -0x1

    .line 21
    iput-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->e:J

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->f:Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/platform/comapi/bmsdk/BmObject;-><init>(IJ)V

    const/4 p1, 0x1

    .line 14
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->a:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->b:F

    const-string p1, ""

    .line 17
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->c:Ljava/lang/String;

    const/4 p1, 0x4

    .line 19
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->g:I

    const/16 p1, 0x16

    .line 20
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->h:I

    const-wide/16 p1, -0x1

    .line 21
    iput-wide p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->e:J

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->f:Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;

    return-void
.end method

.method private static native nativeSetAnimation(JJ)Z
.end method

.method private static native nativeSetClickable(JZ)Z
.end method

.method private static native nativeSetHoleClickable(JZ)Z
.end method

.method private static native nativeSetOpacity(JF)Z
.end method

.method private static native nativeSetShowLevel(JII)Z
.end method

.method private static native nativeSetVisibility(JI)Z
.end method


# virtual methods
.method public a(S)V
    .locals 0

    .line 57
    iput-short p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->d:S

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;)Z
    .locals 4

    .line 138
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->f:Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;

    .line 139
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->nativeInstance:J

    if-nez p1, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->getNativeInstance()J

    move-result-wide v2

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->nativeSetAnimation(JJ)Z

    move-result p1

    return p1
.end method

.method public b(J)V
    .locals 0

    .line 38
    iput-wide p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->e:J

    return-void
.end method

.method public c(Z)Z
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->nativeSetClickable(JZ)Z

    move-result p1

    return p1
.end method

.method public d()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->e:J

    return-wide v0
.end method

.method public d(Z)Z
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->nativeSetHoleClickable(JZ)Z

    move-result p1

    return p1
.end method

.method public e()S
    .locals 1

    .line 53
    iget-short v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->d:S

    return v0
.end method

.method public e(F)Z
    .locals 2

    .line 107
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->b:F

    .line 108
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->nativeSetOpacity(JF)Z

    move-result p1

    return p1
.end method

.method public i(I)Z
    .locals 2

    .line 48
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->a:I

    .line 49
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->nativeSetVisibility(JI)Z

    move-result p1

    return p1
.end method

.method public j(I)Z
    .locals 3

    .line 88
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->nativeInstance:J

    iget v2, p0, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->h:I

    invoke-static {v0, v1, p1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;->nativeSetShowLevel(JII)Z

    move-result p1

    return p1
.end method
