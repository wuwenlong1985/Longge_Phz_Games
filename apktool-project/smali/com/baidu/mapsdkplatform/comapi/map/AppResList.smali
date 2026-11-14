.class public Lcom/baidu/mapsdkplatform/comapi/map/AppResList;
.super Ljava/lang/Object;
.source "AppResList.java"

# interfaces
.implements Lcom/baidu/platform/comapi/resource/ResourceList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resList()[Ljava/lang/String;
    .locals 35

    const-string v0, "BaiduMapSDK_map_v"

    const-string v1, "BaiduMapSDK_map_for_navi_v"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "cfg/idrres/ResPackIndoorMap.rs"

    const-string v2, "cfg/idrres/DVIndoor.cfg"

    const-string v3, "cfg/idrres/baseindoormap.sty"

    const-string v4, "cfg/a/DVDirectory.cfg"

    const-string v5, "cfg/a/DVSDirectory.cfg"

    const-string v6, "cfg/a/DVHotcity.cfg"

    const-string v7, "cfg/a/DVVersion_pkg.cfg"

    const-string v8, "cfg/a/DVHotMap.cfg"

    const-string v9, "cfg/a/mode_1/map.rs"

    const-string v10, "cfg/a/mode_1/map.sty"

    const-string v11, "cfg/a/mode_1/reduct.rs"

    const-string v12, "cfg/a/mode_1/reduct.sty"

    const-string v13, "cfg/a/mode_1/traffic.rs"

    const-string v14, "cfg/a/mode_1/traffic.sty"

    const-string v15, "cfg/a/mode_1/indoor.rs"

    const-string v16, "cfg/a/mode_1/indoor.sty"

    const-string v17, "cfg/a/mode_1/car.sty"

    const-string v18, "cfg/a/mode_1/car.rs"

    const-string v19, "cfg/a/mode_1/cartraffic.sty"

    const-string v20, "cfg/a/mode_1/englishmap.sty"

    const-string v21, "cfg/a/mode_2/map.sty"

    const-string v22, "cfg/a/mode_14/day.sty"

    const-string v23, "cfg/a/mode_14/map.rs"

    const-string v24, "cfg/a/mode_14/mapviewallday.sty"

    const-string v25, "cfg/a/mode_14/mapviewallnight.sty"

    const-string v26, "cfg/a/mode_14/navdaymapits.sty"

    const-string v27, "cfg/a/mode_14/navdayviewallits.sty"

    const-string v28, "cfg/a/mode_14/navipoday.sty"

    const-string v29, "cfg/a/mode_14/navipolockday.sty"

    const-string v30, "cfg/a/mode_14/navnightmapits.sty"

    const-string v31, "cfg/a/mode_14/navnightviewallits.sty"

    const-string v32, "cfg/a/mode_14/night.sty"

    const-string v33, "cfg/a/mode_14/smallscreennav.sty"

    const-string v34, "cfg/a/mode_14/smallscreenoverview.sty"

    .line 31
    filled-new-array/range {v1 .. v34}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "cfg/idrres/ResPackIndoorMap.rs"

    const-string v2, "cfg/idrres/DVIndoor.cfg"

    const-string v3, "cfg/idrres/baseindoormap.sty"

    const-string v4, "cfg/a/DVDirectory.cfg"

    const-string v5, "cfg/a/DVSDirectory.cfg"

    const-string v6, "cfg/a/DVHotcity.cfg"

    const-string v7, "cfg/a/DVVersion_pkg.cfg"

    const-string v8, "cfg/a/DVHotMap.cfg"

    const-string v9, "cfg/a/mode_1/map.rs"

    const-string v10, "cfg/a/mode_1/map.sty"

    const-string v11, "cfg/a/mode_1/reduct.rs"

    const-string v12, "cfg/a/mode_1/reduct.sty"

    const-string v13, "cfg/a/mode_1/traffic.rs"

    const-string v14, "cfg/a/mode_1/traffic.sty"

    const-string v15, "cfg/a/mode_1/indoor.rs"

    const-string v16, "cfg/a/mode_1/indoor.sty"

    const-string v17, "cfg/a/mode_2/map.sty"

    const-string v18, "cfg/a/mode_1/englishmap.sty"

    .line 68
    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resVer()[B
    .locals 2

    const-string v0, "BaiduMapSDK_map_v"

    const-string v1, "BaiduMapSDK_map_for_navi_v"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    .line 22
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    return-object v0

    .line 24
    :cond_0
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    return-object v0

    nop

    :array_0
    .array-data 1
        0x7t
        0x6t
        0x2t
        0x0t
        0x0t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7t
        0x6t
        0x2t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
