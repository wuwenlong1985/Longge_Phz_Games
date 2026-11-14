.class public abstract Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;
.super Lcom/baidu/platform/comapi/bmsdk/BmObject;
.source "BmAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation$a;
    }
.end annotation


# static fields
.field private static final ABSOLUTE:I = 0x0

.field private static final END:I = 0x2

.field public static final FILL_AFTER:I = 0x2

.field public static final FILL_BEFORE:I = 0x0

.field public static final FILL_FIRST:I = 0x1

.field public static final INFINITE:I = -0x1

.field private static final RELATIVE_TO_SELF:I = 0x1

.field private static final REPEAT:I = 0x3

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field private static final START:I = 0x1

.field private static final START_ON_FIRST_FRAME:I = -0x1

.field private static sync:Ljava/lang/Object;

.field private static wkListenerAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field mDuration:J

.field private mExtParam:Ljava/lang/String;

.field mFillMode:I

.field private mInterpolator:Lcom/baidu/platform/comapi/bmsdk/animation/a;

.field private mListener:Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation$a;

.field mRepeatCount:I

.field mRepeatDelay:J

.field mRepeatMode:I

.field mStartDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 299
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->sync:Ljava/lang/Object;

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->wkListenerAnimations:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/16 v0, 0x50

    const-wide/16 v1, 0x0

    .line 118
    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/platform/comapi/bmsdk/BmObject;-><init>(IJ)V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mFillMode:I

    .line 96
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mRepeatCount:I

    const/4 v0, 0x1

    .line 103
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mRepeatMode:I

    const-string v0, ""

    .line 115
    iput-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mExtParam:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/platform/comapi/bmsdk/BmObject;-><init>(IJ)V

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mFillMode:I

    .line 96
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mRepeatCount:I

    const/4 p1, 0x1

    .line 103
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mRepeatMode:I

    const-string p1, ""

    .line 115
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mExtParam:Ljava/lang/String;

    return-void
.end method

.method private static addAnimation(Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 327
    :cond_0
    sget-object v0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->sync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 329
    :try_start_0
    sget-object v2, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->wkListenerAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_2

    .line 330
    sget-object v4, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->wkListenerAnimations:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;

    if-eqz v4, :cond_1

    if-ne v4, p0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 343
    sget-object v1, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->wkListenerAnimations:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static dispatchAnimationListener(JI)Z
    .locals 7

    .line 303
    sget-object v0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_0
    sget-object v1, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->wkListenerAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_4

    .line 305
    sget-object v3, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->wkListenerAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;

    if-nez v3, :cond_0

    .line 307
    sget-object v3, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->wkListenerAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 308
    :cond_0
    iget-wide v4, v3, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeInstance:J

    cmp-long v6, v4, p0

    if-nez v6, :cond_3

    iget-object v4, v3, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mListener:Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation$a;

    if-eqz v4, :cond_3

    if-ne p2, v2, :cond_1

    .line 310
    iget-object v4, v3, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mListener:Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation$a;

    invoke-interface {v4, v3}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation$a;->a(Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 312
    iget-object v4, v3, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mListener:Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation$a;

    invoke-interface {v4, v3}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation$a;->b(Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    if-ne p2, v4, :cond_3

    .line 314
    iget-object v4, v3, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mListener:Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation$a;

    invoke-interface {v4, v3}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation$a;->c(Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 318
    :cond_4
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static native nativeCancel(J)Z
.end method

.method private static native nativePause(J)Z
.end method

.method private static native nativeReset(J)Z
.end method

.method private static native nativeResume(J)Z
.end method

.method private static native nativeSetDuration(JJ)Z
.end method

.method private static native nativeSetFillMode(JI)Z
.end method

.method private static native nativeSetInterpolator(JJ)Z
.end method

.method private static native nativeSetListener(JZ)Z
.end method

.method private static native nativeSetRepeatCount(JI)Z
.end method

.method private static native nativeSetRepeatDelay(JJ)Z
.end method

.method private static native nativeSetRepeatMode(JI)Z
.end method

.method private static native nativeSetStartDelay(JJ)Z
.end method

.method private static native nativeSetStartTime(JJ)Z
.end method

.method private static removeAnimation(Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .line 152
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeInstance:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeCancel(J)Z

    move-result v0

    return v0
.end method

.method public getExtParam()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mExtParam:Ljava/lang/String;

    return-object v0
.end method

.method public pause()Z
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeInstance:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativePause(J)Z

    move-result v0

    return v0
.end method

.method public reset()Z
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeInstance:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeReset(J)Z

    move-result v0

    return v0
.end method

.method public resume()Z
    .locals 2

    .line 138
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeInstance:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeResume(J)Z

    move-result v0

    return v0
.end method

.method public setAnimationListener(Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation$a;)Z
    .locals 2

    .line 242
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mListener:Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation$a;

    if-eqz p1, :cond_0

    .line 244
    invoke-static {p0}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->addAnimation(Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;)V

    goto :goto_0

    .line 246
    :cond_0
    invoke-static {p0}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->removeAnimation(Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;)V

    .line 249
    :goto_0
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeInstance:J

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeSetListener(JZ)Z

    move-result p1

    return p1
.end method

.method public setDuration(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 185
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Animation duration cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_0
    iput-wide p1, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mDuration:J

    .line 188
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeInstance:J

    invoke-static {v0, v1, p1, p2}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeSetDuration(JJ)Z

    move-result p1

    return p1
.end method

.method public setExtParam(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mExtParam:Ljava/lang/String;

    return-void
.end method

.method public setFillMode(I)Z
    .locals 2

    .line 237
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mFillMode:I

    .line 238
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeSetFillMode(JI)Z

    move-result p1

    return p1
.end method

.method public setInterpolator(Lcom/baidu/platform/comapi/bmsdk/animation/a;)Z
    .locals 4

    .line 161
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mInterpolator:Lcom/baidu/platform/comapi/bmsdk/animation/a;

    .line 162
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeInstance:J

    if-nez p1, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mInterpolator:Lcom/baidu/platform/comapi/bmsdk/animation/a;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/animation/a;->getNativeInstance()J

    move-result-wide v2

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeSetInterpolator(JJ)Z

    move-result p1

    return p1
.end method

.method public setRepeatCount(I)Z
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    .line 225
    :cond_0
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mRepeatCount:I

    .line 226
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeInstance:J

    iget p1, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mRepeatCount:I

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeSetRepeatCount(JI)Z

    move-result p1

    return p1
.end method

.method public setRepeatDelay(J)Z
    .locals 2

    .line 179
    iput-wide p1, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mRepeatDelay:J

    .line 180
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeInstance:J

    invoke-static {v0, v1, p1, p2}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeSetRepeatDelay(JJ)Z

    move-result p1

    return p1
.end method

.method public setRepeatMode(I)Z
    .locals 2

    .line 217
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mRepeatMode:I

    .line 218
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeSetRepeatMode(JI)Z

    move-result p1

    return p1
.end method

.method public setStartDelay(J)Z
    .locals 2

    .line 174
    iput-wide p1, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->mStartDelay:J

    .line 175
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeInstance:J

    invoke-static {v0, v1, p1, p2}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeSetStartDelay(JJ)Z

    move-result p1

    return p1
.end method

.method public setStartTime(J)Z
    .locals 2

    .line 199
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeInstance:J

    invoke-static {v0, v1, p1, p2}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->nativeSetStartTime(JJ)Z

    move-result p1

    return p1
.end method

.method public start()Z
    .locals 2

    const-wide/16 v0, -0x1

    .line 206
    invoke-virtual {p0, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;->setStartTime(J)Z

    move-result v0

    return v0
.end method
