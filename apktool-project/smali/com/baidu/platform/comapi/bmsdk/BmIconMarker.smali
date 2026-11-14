.class public Lcom/baidu/platform/comapi/bmsdk/BmIconMarker;
.super Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;
.source "BmIconMarker.java"


# instance fields
.field private g:I

.field private h:Lcom/baidu/mapapi/map/Marker;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 19
    invoke-static {}, Lcom/baidu/platform/comapi/bmsdk/BmIconMarker;->nativeCreate()J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseMarker;-><init>(IJ)V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmIconMarker;->g:I

    return-void
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeSetAnimationType(JI)Z
.end method

.method private static native nativeSetBmpResId(JI)Z
.end method

.method private static native nativeSetColor(JI)Z
.end method

.method private static native nativeSetDrawableResource(JJ)Z
.end method


# virtual methods
.method public a()Lcom/baidu/mapapi/map/Marker;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmIconMarker;->h:Lcom/baidu/mapapi/map/Marker;

    return-object v0
.end method
