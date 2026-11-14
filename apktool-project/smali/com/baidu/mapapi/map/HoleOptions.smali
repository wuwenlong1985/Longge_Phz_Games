.class public Lcom/baidu/mapapi/map/HoleOptions;
.super Lcom/baidu/mapapi/map/OverlayOptions;
.source "HoleOptions.java"


# instance fields
.field protected mHoleType:Ljava/lang/String;

.field protected mIsHoleClickable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/baidu/mapapi/map/OverlayOptions;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/HoleOptions;->mIsHoleClickable:Z

    return-void
.end method


# virtual methods
.method public getHoleType()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/baidu/mapapi/map/HoleOptions;->mHoleType:Ljava/lang/String;

    return-object v0
.end method

.method public isHoleClickable()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/HoleOptions;->mIsHoleClickable:Z

    return v0
.end method

.method public setHoleClickable(Z)Lcom/baidu/mapapi/map/HoleOptions;
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/HoleOptions;->mIsHoleClickable:Z

    return-object p0
.end method
