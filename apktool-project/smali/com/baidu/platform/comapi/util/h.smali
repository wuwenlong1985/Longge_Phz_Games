.class public Lcom/baidu/platform/comapi/util/h;
.super Ljava/lang/Object;
.source "EncryptionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platform/comapi/util/h$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/platform/comapi/util/h;
    .locals 1

    .line 21
    invoke-static {}, Lcom/baidu/platform/comapi/util/h$a;->a()Lcom/baidu/platform/comapi/util/h;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/y;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/y;-><init>()V

    .line 55
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/y;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/y;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/y;-><init>()V

    .line 61
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/y;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/y;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/y;-><init>()V

    .line 49
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/y;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    sget-object v0, Lcom/baidu/mapapi/map/EncodePointType;->NONE:Lcom/baidu/mapapi/map/EncodePointType;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/EncodePointType;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    sget-object v0, Lcom/baidu/mapapi/map/EncodePointType;->BUILDINGINFO:Lcom/baidu/mapapi/map/EncodePointType;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/EncodePointType;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 37
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/util/h;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 38
    :cond_1
    sget-object v0, Lcom/baidu/mapapi/map/EncodePointType;->AOI:Lcom/baidu/mapapi/map/EncodePointType;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/EncodePointType;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 39
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/util/h;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 40
    :cond_2
    sget-object v0, Lcom/baidu/mapapi/map/EncodePointType;->RECOGNIZE_AOI:Lcom/baidu/mapapi/map/EncodePointType;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/EncodePointType;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 41
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/util/h;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_3
    :goto_0
    return-object v1

    :cond_4
    :goto_1
    return-object v1
.end method
