.class public Lcom/baidu/mapsdkplatform/comjni/tools/a;
.super Ljava/lang/Object;
.source "AppTools.java"


# direct methods
.method public static a(Lcom/baidu/platform/comapi/basestruct/Point;Lcom/baidu/platform/comapi/basestruct/Point;)D
    .locals 4

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "x1"

    .line 83
    iget v2, p0, Lcom/baidu/platform/comapi/basestruct/Point;->x:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "y1"

    .line 84
    iget p0, p0, Lcom/baidu/platform/comapi/basestruct/Point;->y:I

    int-to-double v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p0, "x2"

    .line 85
    iget v1, p1, Lcom/baidu/platform/comapi/basestruct/Point;->x:I

    int-to-double v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p0, "y2"

    .line 86
    iget p1, p1, Lcom/baidu/platform/comapi/basestruct/Point;->y:I

    int-to-double v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 88
    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comjni/tools/JNITools;->GetDistanceByMC(Ljava/lang/Object;)V

    const-string p0, "distance"

    .line 90
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/platform/comapi/basestruct/a;
    .locals 12

    if-eqz p0, :cond_8

    const-string v0, ""

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 29
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "strkey"

    .line 30
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comjni/tools/JNITools;->TransGeoStr2ComplexPt(Ljava/lang/Object;)Z

    .line 33
    new-instance p0, Lcom/baidu/platform/comapi/basestruct/a;

    invoke-direct {p0}, Lcom/baidu/platform/comapi/basestruct/a;-><init>()V

    const-string v1, "map_bound"

    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "ll"

    .line 36
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 38
    new-instance v3, Lcom/baidu/platform/comapi/basestruct/Point;

    const-string v4, "ptx"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v4, v4

    const-string v5, "pty"

    .line 39
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-int v2, v5

    invoke-direct {v3, v4, v2}, Lcom/baidu/platform/comapi/basestruct/Point;-><init>(II)V

    iput-object v3, p0, Lcom/baidu/platform/comapi/basestruct/a;->b:Lcom/baidu/platform/comapi/basestruct/Point;

    :cond_1
    const-string v2, "ru"

    .line 42
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 44
    new-instance v2, Lcom/baidu/platform/comapi/basestruct/Point;

    const-string v3, "ptx"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-int v3, v3

    const-string v4, "pty"

    .line 45
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-direct {v2, v3, v1}, Lcom/baidu/platform/comapi/basestruct/Point;-><init>(II)V

    iput-object v2, p0, Lcom/baidu/platform/comapi/basestruct/a;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    :cond_2
    const-string v1, "poly_line"

    .line 50
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, [Lcom/baidu/platform/comjni/tools/ParcelItem;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 51
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_7

    .line 52
    iget-object v4, p0, Lcom/baidu/platform/comapi/basestruct/a;->d:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    .line 53
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/baidu/platform/comapi/basestruct/a;->d:Ljava/util/ArrayList;

    .line 56
    :cond_3
    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/baidu/platform/comjni/tools/ParcelItem;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v5, "point_array"

    .line 59
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, [Lcom/baidu/platform/comjni/tools/ParcelItem;

    .line 60
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 61
    :goto_1
    array-length v7, v4

    if-ge v6, v7, :cond_5

    .line 62
    aget-object v7, v4, v6

    invoke-virtual {v7}, Lcom/baidu/platform/comjni/tools/ParcelItem;->getBundle()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 64
    new-instance v8, Lcom/baidu/platform/comapi/basestruct/Point;

    const-string v9, "ptx"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-int v9, v9

    const-string v10, "pty"

    .line 65
    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-int v7, v10

    invoke-direct {v8, v9, v7}, Lcom/baidu/platform/comapi/basestruct/Point;-><init>(II)V

    .line 66
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 70
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->trimToSize()V

    .line 71
    iget-object v4, p0, Lcom/baidu/platform/comapi/basestruct/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_7
    iget-object v1, p0, Lcom/baidu/platform/comapi/basestruct/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    const-string v1, "type"

    .line 76
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/baidu/platform/comapi/basestruct/a;->a:I

    return-object p0

    :cond_8
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 95
    invoke-static {}, Lcom/baidu/mapsdkplatform/comjni/tools/JNITools;->GetToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ZI)V
    .locals 0

    .line 99
    invoke-static {p0, p1}, Lcom/baidu/mapsdkplatform/comjni/tools/JNITools;->openLogEnable(ZI)V

    return-void
.end method

.method public static b()V
    .locals 2

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 104
    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comjni/tools/JNITools;->initClass(Ljava/lang/Object;I)I

    return-void
.end method
