.class public Lcom/baidu/platform/comapi/bmsdk/BmTextPathMarker;
.super Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
.source "BmTextPathMarker.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 11
    invoke-static {}, Lcom/baidu/platform/comapi/bmsdk/BmTextPathMarker;->nativeCreate()J

    move-result-wide v0

    const/4 v2, 0x6

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;-><init>(IJ)V

    return-void
.end method

.method private static native nativeAddGeoElement(JJ)Z
.end method

.method private static native nativeClearGeoElements(J)Z
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeSetGeoElement(JJ)Z
.end method

.method private static native nativeSetStyle(JJ)Z
.end method

.method private static native nativeSetText(JLjava/lang/String;)Z
.end method
