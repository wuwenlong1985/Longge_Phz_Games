.class public Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimationSet;
.super Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;
.source "BmAnimationSet.java"


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 8
    invoke-static {}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimationSet;->nativeCreate()J

    move-result-wide v0

    const/16 v2, 0x56

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/animation/BmAnimation;-><init>(IJ)V

    return-void
.end method

.method private static native nativeAddAnimation(JJI)Z
.end method

.method private static native nativeCreate()J
.end method
