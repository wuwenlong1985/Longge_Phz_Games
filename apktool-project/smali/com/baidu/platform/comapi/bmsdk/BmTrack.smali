.class public Lcom/baidu/platform/comapi/bmsdk/BmTrack;
.super Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
.source "BmTrack.java"


# instance fields
.field private g:Lcom/baidu/mapapi/map/Track;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 9
    invoke-static {}, Lcom/baidu/platform/comapi/bmsdk/BmTrack;->nativeCreate()J

    move-result-wide v0

    const/16 v2, 0x19

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;-><init>(IJ)V

    return-void
.end method

.method private static native nativeAddGeoElement(JJ)Z
.end method

.method private static native nativeClearGeoElements(J)Z
.end method

.method private static native nativeCreate()J
.end method


# virtual methods
.method public a(Lcom/baidu/mapapi/map/Track;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/BmTrack;->g:Lcom/baidu/mapapi/map/Track;

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z
    .locals 4

    .line 29
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/BmTrack;->nativeInstance:J

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmTrack;->nativeAddGeoElement(JJ)Z

    move-result p1

    return p1
.end method
