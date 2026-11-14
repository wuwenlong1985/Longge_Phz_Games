.class public final Lcom/baidu/mapapi/map/Polyline;
.super Lcom/baidu/mapapi/map/Overlay;
.source "Polyline.java"


# instance fields
.field private A:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

.field a:I

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field c:[I

.field d:[I

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field m:I

.field n:Z

.field o:Z

.field p:Z

.field q:I

.field r:I

.field s:F

.field t:I

.field u:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

.field v:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

.field w:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

.field x:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

.field private y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

.field private z:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    const/4 v0, 0x5

    .line 44
    iput v0, p0, Lcom/baidu/mapapi/map/Polyline;->f:I

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->g:Z

    .line 46
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->h:Z

    const/4 v1, 0x1

    .line 47
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/Polyline;->i:Z

    .line 48
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/Polyline;->j:Z

    .line 51
    iput v0, p0, Lcom/baidu/mapapi/map/Polyline;->m:I

    .line 52
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/Polyline;->n:Z

    .line 53
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->o:Z

    .line 54
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->p:Z

    const/high16 v0, 0x40a00000    # 5.0f

    .line 57
    iput v0, p0, Lcom/baidu/mapapi/map/Polyline;->s:F

    .line 58
    iput v1, p0, Lcom/baidu/mapapi/map/Polyline;->t:I

    .line 65
    sget-object v0, Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;->LineCapButt:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->u:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    .line 66
    sget-object v0, Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;->LineJoinRound:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->v:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    .line 67
    sget-object v0, Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;->NONE:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->w:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    .line 68
    sget-object v0, Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;->NONE:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->x:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    .line 72
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/h;->i:Lcom/baidu/mapsdkplatform/comapi/map/h;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->type:Lcom/baidu/mapsdkplatform/comapi/map/h;

    return-void
.end method

.method private static a(Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;)I
    .locals 1

    .line 575
    sget-object v0, Lcom/baidu/mapapi/map/ai;->b:[I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x4

    :goto_0
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;)I
    .locals 1

    .line 556
    sget-object v0, Lcom/baidu/mapapi/map/ai;->a:[I

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/16 v0, 0x800

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x1000

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x2000

    :goto_0
    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(ZLjava/lang/String;)Landroid/os/Bundle;
    .locals 2

    if-eqz p1, :cond_2

    const-string p1, "lineDashTexture.png"

    .line 1049
    iget v0, p0, Lcom/baidu/mapapi/map/Polyline;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p1, "CircleDashTexture.png"

    :cond_0
    if-eqz p2, :cond_1

    move-object p1, p2

    .line 1055
    :cond_1
    invoke-static {p1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1057
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1060
    :cond_2
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->k:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/util/List;Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;Landroid/os/Bundle;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;",
            "Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1097
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1098
    new-array v1, v0, [D

    .line 1099
    new-array v2, v0, [D

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 1101
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/model/LatLng;

    .line 1102
    sget-object v5, Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;->FROM_EAST_TO_WEST:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    const-wide v6, 0x4076800000000000L    # 360.0

    const-wide/16 v8, 0x0

    if-ne p1, v5, :cond_0

    iget-wide v10, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpg-double v5, v10, v8

    if-gez v5, :cond_0

    .line 1103
    new-instance v5, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v4, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v10, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    add-double/2addr v10, v6

    invoke-direct {v5, v8, v9, v10, v11}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    goto :goto_1

    .line 1104
    :cond_0
    sget-object v5, Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;->FROM_WEST_TO_EAST:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    if-ne p1, v5, :cond_1

    iget-wide v10, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpl-double v5, v10, v8

    if-lez v5, :cond_1

    .line 1105
    new-instance v5, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v4, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v10, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v10, v6

    invoke-direct {v5, v8, v9, v10, v11}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    goto :goto_1

    :cond_1
    move-object v5, v4

    .line 1107
    :goto_1
    invoke-static {v5}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v4

    .line 1108
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    aput-wide v5, v1, v3

    .line 1109
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "x_array"

    .line 1111
    invoke-virtual {p2, p0, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string p0, "y_array"

    .line 1112
    invoke-virtual {p2, p0, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-void
.end method

.method private static a([ILandroid/os/Bundle;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 543
    array-length v0, p0

    if-lez v0, :cond_0

    const-string v0, "traffic_array"

    .line 544
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method private b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 1116
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    if-nez v0, :cond_0

    .line 1117
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: colors array can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    array-length v0, v0

    if-nez v0, :cond_1

    .line 1121
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: colors array size can not be Equal to zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1123
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Polyline;->d([ILandroid/os/Bundle;)V

    .line 1125
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->w:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    invoke-static {v0, v1, p1}, Lcom/baidu/mapapi/map/Polyline;->a(Ljava/util/List;Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;Landroid/os/Bundle;)V

    .line 1127
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1128
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 1129
    aput v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1132
    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    array-length v2, v2

    if-ne v1, v2, :cond_3

    .line 1133
    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    aput v2, v0, v1

    .line 1135
    :cond_3
    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Polyline;->c([ILandroid/os/Bundle;)V

    return-object p1
.end method

.method private b(ZLjava/lang/String;)Landroid/os/Bundle;
    .locals 3

    if-eqz p1, :cond_3

    .line 1065
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "total"

    const/4 v1, 0x1

    .line 1066
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "lineDashTexture.png"

    .line 1068
    iget v2, p0, Lcom/baidu/mapapi/map/Polyline;->m:I

    if-ne v2, v1, :cond_0

    const-string v0, "CircleDashTexture.png"

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v0

    .line 1074
    :goto_0
    invoke-static {p2}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v0, "texture_0"

    .line 1076
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-object p1

    .line 1080
    :cond_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 1082
    :goto_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_5

    .line 1083
    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->l:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "texture_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1085
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->l:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    const-string p2, "total"

    .line 1090
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method private static b([ILandroid/os/Bundle;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 549
    array-length v0, p0

    if-lez v0, :cond_0

    const-string v0, "color_array"

    .line 550
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p0, "total"

    const/4 v0, 0x1

    .line 551
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static c([ILandroid/os/Bundle;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1140
    array-length v0, p0

    if-lez v0, :cond_0

    const-string v0, "color_indexs"

    .line 1141
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method private static d([ILandroid/os/Bundle;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1146
    array-length v0, p0

    if-lez v0, :cond_0

    const-string v0, "color_array"

    .line 1147
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .line 956
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 957
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_5

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    const-string v3, "location_x"

    .line 961
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v3, "location_y"

    .line 962
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "width"

    .line 963
    iget v3, p0, Lcom/baidu/mapapi/map/Polyline;->f:I

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "isClickable"

    .line 964
    iget-boolean v3, p0, Lcom/baidu/mapapi/map/Polyline;->j:Z

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "lineBloomType"

    .line 966
    iget-object v3, p0, Lcom/baidu/mapapi/map/Polyline;->x:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    invoke-virtual {v3}, Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;->ordinal()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "lineBloomWidth"

    .line 967
    iget v3, p0, Lcom/baidu/mapapi/map/Polyline;->q:I

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "lineBloomAlpha"

    .line 968
    iget v3, p0, Lcom/baidu/mapapi/map/Polyline;->r:I

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "lineBloomGradientASPeed"

    .line 969
    iget v3, p0, Lcom/baidu/mapapi/map/Polyline;->s:F

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "lineBloomBlurTimes"

    .line 970
    iget v3, p0, Lcom/baidu/mapapi/map/Polyline;->t:I

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 972
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->p:Z

    if-eqz v0, :cond_1

    .line 973
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/Polyline;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 976
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->o:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 977
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/j;->b(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    .line 979
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->w:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    invoke-static {v0, v1, p1}, Lcom/baidu/mapapi/map/Polyline;->a(Ljava/util/List;Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;Landroid/os/Bundle;)V

    .line 980
    iget v0, p0, Lcom/baidu/mapapi/map/Polyline;->a:I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(ILandroid/os/Bundle;)V

    .line 981
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->c:[I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Polyline;->a([ILandroid/os/Bundle;)V

    .line 982
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Polyline;->b([ILandroid/os/Bundle;)V

    .line 983
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->c:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->c:[I

    array-length v0, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->c:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_3

    const-string v0, "baidumapsdk"

    const-string v1, "the size of textureIndexs is larger than the size of points"

    .line 984
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v0, "dotline"

    .line 987
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Polyline;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "focus"

    .line 988
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Polyline;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 989
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->o:Z

    if-eqz v0, :cond_4

    .line 990
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/Polyline;->n:Z

    .line 991
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/Polyline;->p:Z

    :cond_4
    const-string v0, "isThined"

    .line 993
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Polyline;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "isGradient"

    .line 994
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Polyline;->p:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "lineJoinType"

    .line 995
    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->v:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "lineCapType"

    .line 996
    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->u:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "lineDirectionCross180"

    .line 998
    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->w:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1002
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->k:Lcom/baidu/mapapi/map/BitmapDescriptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const-string v0, "custom"

    .line 1003
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "image_info"

    .line 1004
    invoke-direct {p0, v2, v1}, Lcom/baidu/mapapi/map/Polyline;->a(ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 1006
    :cond_5
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->g:Z

    if-eqz v0, :cond_6

    const-string v0, "image_info"

    .line 1007
    invoke-direct {p0, v3, v1}, Lcom/baidu/mapapi/map/Polyline;->a(ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "dotted_line_type"

    .line 1008
    iget v4, p0, Lcom/baidu/mapapi/map/Polyline;->m:I

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    const-string v0, "image_info"

    const-string v4, "line_texture.png"

    .line 1010
    invoke-direct {p0, v3, v4}, Lcom/baidu/mapapi/map/Polyline;->a(ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    const-string v0, "custom"

    .line 1012
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1015
    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->l:Ljava/util/List;

    if-eqz v0, :cond_7

    const-string v0, "customlist"

    .line 1016
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "image_info_list"

    .line 1017
    invoke-direct {p0, v2, v1}, Lcom/baidu/mapapi/map/Polyline;->b(ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    .line 1020
    :cond_7
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->g:Z

    if-nez v0, :cond_8

    const-string v1, "line_texture.png"

    .line 1024
    :cond_8
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    array-length v0, v0

    if-lez v0, :cond_9

    const-string v0, "image_info_list"

    .line 1025
    invoke-direct {p0, v3, v1}, Lcom/baidu/mapapi/map/Polyline;->b(ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 1027
    :cond_9
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->k:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v0, :cond_a

    const-string v0, "image_info"

    .line 1028
    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->k:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "dotline"

    .line 1029
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_a
    const-string v0, "image_info"

    .line 1031
    invoke-direct {p0, v3, v1}, Lcom/baidu/mapapi/map/Polyline;->a(ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_2
    const-string v0, "customlist"

    .line 1035
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_3
    const-string v0, "keep"

    .line 1037
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Polyline;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const-string v0, "baidumapsdk"

    const-string v1, "load texture resource failed!"

    .line 1039
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "dotline"

    .line 1040
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_4
    return-object p1

    .line 958
    :cond_b
    :goto_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: when you add Polyline, you must at least supply 2 points"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
    .locals 13

    .line 591
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 594
    :cond_0
    invoke-super {p0}, Lcom/baidu/mapapi/map/Overlay;->b()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 598
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Polyline;->o:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 599
    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    iget-object v5, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1, v5}, Lcom/baidu/mapsdkplatform/comapi/map/j;->b(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 601
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    .line 604
    :goto_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 606
    iget-object v6, p0, Lcom/baidu/mapapi/map/Polyline;->w:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    invoke-static {v1, v6, v5}, Lcom/baidu/mapapi/map/Polyline;->a(Ljava/util/List;Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;Landroid/os/Bundle;)V

    const-string v1, "x_array"

    .line 607
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "y_array"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "x_array"

    .line 608
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    const-string v6, "y_array"

    .line 609
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    const/4 v6, 0x0

    .line 610
    :goto_1
    array-length v7, v1

    if-ge v6, v7, :cond_2

    .line 611
    new-instance v7, Lcom/baidu/platform/comapi/bmsdk/b;

    aget-wide v8, v1, v6

    aget-wide v10, v5, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    .line 612
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 617
    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->A:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    if-eqz v1, :cond_3

    .line 618
    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->A:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 622
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->z:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    iget v1, p0, Lcom/baidu/mapapi/map/Polyline;->f:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->b(I)Z

    .line 625
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->v:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    invoke-static {v1}, Lcom/baidu/mapapi/map/Polyline;->a(Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->e(I)Z

    .line 626
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->u:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    invoke-static {v1}, Lcom/baidu/mapapi/map/Polyline;->a(Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->c(I)Z

    .line 627
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->u:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    invoke-static {v1}, Lcom/baidu/mapapi/map/Polyline;->a(Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->d(I)Z

    .line 628
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->x:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->f(I)Z

    .line 629
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget v1, p0, Lcom/baidu/mapapi/map/Polyline;->q:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->c(F)Z

    .line 630
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget v1, p0, Lcom/baidu/mapapi/map/Polyline;->r:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->b(F)Z

    .line 631
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget v1, p0, Lcom/baidu/mapapi/map/Polyline;->t:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->g(I)Z

    .line 632
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget v1, p0, Lcom/baidu/mapapi/map/Polyline;->s:F

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->d(F)Z

    .line 633
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->w:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->h(I)Z

    .line 635
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Polyline;->j:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->c(Z)Z

    .line 637
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 639
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->p:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    array-length v0, v0

    if-lez v0, :cond_7

    .line 640
    :goto_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    array-length v0, v0

    if-ge v3, v0, :cond_4

    .line 641
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 644
    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 645
    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 647
    :cond_5
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->A:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    if-eqz v0, :cond_6

    .line 648
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->A:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    invoke-virtual {v0, v4, v1}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(ILjava/util/List;)Z

    .line 649
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->A:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->z:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;)Z

    .line 650
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->A:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    .line 653
    :cond_6
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    return-object v0

    .line 656
    :cond_7
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->o:Z

    if-eqz v0, :cond_8

    .line 657
    iput-boolean v3, p0, Lcom/baidu/mapapi/map/Polyline;->n:Z

    .line 658
    iput-boolean v3, p0, Lcom/baidu/mapapi/map/Polyline;->p:Z

    .line 662
    :cond_8
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->n:Z

    if-eqz v0, :cond_9

    .line 663
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->b(I)Z

    .line 664
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->a(F)Z

    .line 665
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->a(I)Z

    .line 666
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->a(I)Z

    .line 669
    :cond_9
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->g:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_a

    .line 670
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->z:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    iget v2, p0, Lcom/baidu/mapapi/map/Polyline;->m:I

    invoke-virtual {p0, v0, v2}, Lcom/baidu/mapapi/map/Polyline;->setDottedBitmapResource(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;I)V

    .line 671
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->z:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->c(I)Z

    goto :goto_4

    .line 673
    :cond_a
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->z:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-virtual {v0, v3}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->d(I)Z

    .line 677
    :goto_4
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->l:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 679
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->b()Z

    .line 680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 681
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 682
    :goto_5
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_b

    .line 683
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 684
    iget-object v5, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v5}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v5

    .line 685
    iget-object v6, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v6}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v6

    .line 686
    new-instance v7, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v8

    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    .line 687
    new-instance v5, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {v6}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v8

    invoke-virtual {v6}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v10

    invoke-direct {v5, v8, v9, v10, v11}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    .line 688
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 692
    :cond_b
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_13

    .line 693
    new-instance v2, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;-><init>()V

    .line 694
    new-instance v4, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-direct {v4}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;-><init>()V

    .line 696
    iget v5, p0, Lcom/baidu/mapapi/map/Polyline;->f:I

    invoke-virtual {v4, v5}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->b(I)Z

    .line 697
    iget-object v5, p0, Lcom/baidu/mapapi/map/Polyline;->l:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 698
    invoke-virtual {v5}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 699
    new-instance v6, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    invoke-direct {v6, v5}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v6}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;)Z

    .line 700
    invoke-virtual {v2, v4}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;)Z

    .line 701
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 702
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    iget-object v4, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    invoke-virtual {v4, v2}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 707
    :cond_c
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    if-eqz v0, :cond_11

    .line 709
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->b()Z

    .line 710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 711
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 712
    :goto_7
    iget-object v6, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    array-length v6, v6

    if-ge v5, v6, :cond_d

    .line 713
    iget-object v6, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    iget-object v7, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    aget v7, v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 716
    :cond_d
    iget-object v5, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_8
    iget-object v6, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_e

    .line 717
    iget-object v6, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    iget-object v7, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    iget-object v8, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 719
    :cond_e
    :goto_9
    iget-object v5, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_f

    .line 720
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 721
    iget-object v6, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v6}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v6

    .line 722
    iget-object v7, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v7}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v7

    .line 723
    new-instance v8, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {v6}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v9

    invoke-virtual {v6}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v11

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    .line 724
    new-instance v6, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {v7}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v9

    invoke-virtual {v7}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v11

    invoke-direct {v6, v9, v10, v11, v12}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    .line 725
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 729
    :cond_f
    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_13

    .line 730
    new-instance v4, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-direct {v4}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;-><init>()V

    .line 731
    new-instance v5, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-direct {v5}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;-><init>()V

    .line 733
    iget v6, p0, Lcom/baidu/mapapi/map/Polyline;->f:I

    invoke-virtual {v5, v6}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->b(I)Z

    .line 734
    iget-boolean v6, p0, Lcom/baidu/mapapi/map/Polyline;->g:Z

    if-eqz v6, :cond_10

    .line 735
    iget v6, p0, Lcom/baidu/mapapi/map/Polyline;->m:I

    invoke-virtual {p0, v5, v6}, Lcom/baidu/mapapi/map/Polyline;->setDottedBitmapResource(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;I)V

    .line 736
    invoke-virtual {v5, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->c(I)Z

    .line 739
    :cond_10
    iget-object v6, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->a(I)Z

    .line 740
    invoke-virtual {v4, v5}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;)Z

    .line 741
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 742
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    iget-object v5, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    invoke-virtual {v5, v4}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 748
    :cond_11
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->k:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v0, :cond_12

    .line 750
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->k:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 751
    new-instance v1, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    invoke-direct {v1, v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    .line 752
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->z:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;)Z

    goto :goto_b

    .line 755
    :cond_12
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->z:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    iget v1, p0, Lcom/baidu/mapapi/map/Polyline;->f:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->b(I)Z

    .line 756
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->z:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    iget v1, p0, Lcom/baidu/mapapi/map/Polyline;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->a(I)Z

    .line 758
    :goto_b
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->A:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    if-eqz v0, :cond_13

    .line 759
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->A:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->z:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;)Z

    .line 760
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->A:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    .line 764
    :cond_13
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    return-object v0
.end method

.method public getBloomAlpha()I
    .locals 1

    .line 411
    iget v0, p0, Lcom/baidu/mapapi/map/Polyline;->r:I

    return v0
.end method

.method public getBloomBlurTimes()I
    .locals 1

    .line 392
    iget v0, p0, Lcom/baidu/mapapi/map/Polyline;->t:I

    return v0
.end method

.method public getBloomGradientASpeed()F
    .locals 1

    .line 384
    iget v0, p0, Lcom/baidu/mapapi/map/Polyline;->s:F

    return v0
.end method

.method public getBloomWidth()I
    .locals 1

    .line 400
    iget v0, p0, Lcom/baidu/mapapi/map/Polyline;->q:I

    if-nez v0, :cond_0

    .line 401
    iget v0, p0, Lcom/baidu/mapapi/map/Polyline;->f:I

    mul-int/lit8 v0, v0, 0x2

    return v0

    .line 403
    :cond_0
    iget v0, p0, Lcom/baidu/mapapi/map/Polyline;->q:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/baidu/mapapi/map/Polyline;->a:I

    return v0
.end method

.method public getColorList()[I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    return-object v0
.end method

.method public getDottedLineType()I
    .locals 1

    .line 465
    iget v0, p0, Lcom/baidu/mapapi/map/Polyline;->m:I

    return v0
.end method

.method public getLineBloomType()Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->x:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    return-object v0
.end method

.method public getLineCapType()Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->u:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    return-object v0
.end method

.method public getLineDirectionCross180()Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->w:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    return-object v0
.end method

.method public getLineJoinType()Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->v:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    return-object v0
.end method

.method public getTexture()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->k:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/baidu/mapapi/map/Polyline;->f:I

    return v0
.end method

.method public isClickable()Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->j:Z

    return v0
.end method

.method public isDottedLine()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->g:Z

    return v0
.end method

.method public isFocus()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->h:Z

    return v0
.end method

.method public isGeodesic()Z
    .locals 1

    .line 521
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->o:Z

    return v0
.end method

.method public isGradient()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->p:Z

    return v0
.end method

.method public isIsKeepScale()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->i:Z

    return v0
.end method

.method public isThined()Z
    .locals 1

    .line 430
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->n:Z

    return v0
.end method

.method public setBloomAlpha(I)V
    .locals 1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/16 p1, 0xff

    .line 343
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/map/Polyline;->r:I

    .line 344
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setBloomBlurTimes(I)V
    .locals 1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    const/16 p1, 0xa

    :cond_0
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const/4 p1, 0x1

    .line 375
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/map/Polyline;->t:I

    .line 376
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setBloomGradientASpeed(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x41200000    # 10.0f

    .line 359
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/map/Polyline;->s:F

    .line 360
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setBloomWidth(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 331
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/Polyline;->q:I

    .line 332
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 310
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Polyline;->j:Z

    .line 311
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/baidu/mapapi/map/Polyline;->a:I

    .line 119
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setColorList([I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 133
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    return-void

    .line 134
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: colorList can not empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDottedLine(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Polyline;->g:Z

    .line 158
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setDottedLineType(Lcom/baidu/mapapi/map/PolylineDottedLineType;)V
    .locals 0

    .line 420
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/PolylineDottedLineType;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/Polyline;->m:I

    .line 421
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setFocus(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Polyline;->h:Z

    .line 168
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setGeodesic(Z)V
    .locals 0

    .line 511
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Polyline;->o:Z

    .line 512
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setGradient(Z)V
    .locals 0

    .line 529
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Polyline;->p:Z

    .line 530
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setIndexs([I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 277
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->c:[I

    return-void

    .line 278
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: indexList can not empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIsKeepScale(Z)V
    .locals 0

    .line 301
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Polyline;->i:Z

    return-void
.end method

.method public setLineBloomType(Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->x:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    .line 239
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setLineCapType(Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->u:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    .line 503
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setLineDirectionCross180(Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->w:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    return-void
.end method

.method public setLineJoinType(Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->v:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    .line 484
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 207
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 210
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points count can not less than 2 or more than 10000"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 212
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not contains null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 216
    :cond_2
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    .line 217
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setTexture(Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->k:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 179
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setTextureList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 258
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->l:Ljava/util/List;

    return-void

    .line 259
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: textureList can not empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setThined(Z)V
    .locals 0

    .line 439
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Polyline;->n:Z

    .line 440
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 228
    iput p1, p0, Lcom/baidu/mapapi/map/Polyline;->f:I

    .line 229
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_0
    return-void
.end method

.method toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;
    .locals 13

    .line 769
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->p:Z

    if-eqz v0, :cond_0

    .line 770
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/BmGradientLine;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/BmGradientLine;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    goto :goto_0

    .line 772
    :cond_0
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/BmPolyline;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/BmPolyline;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    .line 775
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->a(Lcom/baidu/mapapi/map/Polyline;)V

    .line 776
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/Polyline;->setDrawItem(Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;)V

    .line 778
    invoke-super {p0}, Lcom/baidu/mapapi/map/Overlay;->toDrawItem()Lcom/baidu/platform/comapi/bmsdk/BmDrawItem;

    .line 780
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    goto/16 :goto_e

    .line 785
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 787
    iget-boolean v2, p0, Lcom/baidu/mapapi/map/Polyline;->o:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 788
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    iget-object v5, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v2, v5}, Lcom/baidu/mapsdkplatform/comapi/map/j;->b(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 790
    :cond_2
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    .line 793
    :goto_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 795
    iget-object v6, p0, Lcom/baidu/mapapi/map/Polyline;->w:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    invoke-static {v2, v6, v5}, Lcom/baidu/mapapi/map/Polyline;->a(Ljava/util/List;Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;Landroid/os/Bundle;)V

    const-string v2, "x_array"

    .line 796
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "y_array"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "x_array"

    .line 797
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v2

    const-string v6, "y_array"

    .line 798
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    const/4 v6, 0x0

    .line 799
    :goto_2
    array-length v7, v2

    if-ge v6, v7, :cond_3

    .line 800
    new-instance v7, Lcom/baidu/platform/comapi/bmsdk/b;

    aget-wide v8, v2, v6

    aget-wide v10, v5, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    .line 801
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 805
    :cond_3
    new-instance v2, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-direct {v2, v3}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;-><init>(I)V

    iput-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->A:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    .line 807
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->A:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v2, v0}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 809
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->z:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    .line 811
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->z:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    iget v2, p0, Lcom/baidu/mapapi/map/Polyline;->f:I

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->b(I)Z

    .line 813
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->v:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    invoke-static {v2}, Lcom/baidu/mapapi/map/Polyline;->a(Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->e(I)Z

    .line 814
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->u:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    invoke-static {v2}, Lcom/baidu/mapapi/map/Polyline;->a(Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->c(I)Z

    .line 815
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->u:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    invoke-static {v2}, Lcom/baidu/mapapi/map/Polyline;->a(Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->d(I)Z

    .line 816
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->x:Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/PolylineOptions$LineBloomType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->f(I)Z

    .line 817
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget v2, p0, Lcom/baidu/mapapi/map/Polyline;->q:I

    div-int/2addr v2, v1

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->c(F)Z

    .line 818
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget v2, p0, Lcom/baidu/mapapi/map/Polyline;->r:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->b(F)Z

    .line 819
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget v2, p0, Lcom/baidu/mapapi/map/Polyline;->t:I

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->g(I)Z

    .line 820
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget v2, p0, Lcom/baidu/mapapi/map/Polyline;->s:F

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->d(F)Z

    .line 821
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->w:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->h(I)Z

    .line 823
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget-boolean v2, p0, Lcom/baidu/mapapi/map/Polyline;->j:Z

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->c(Z)Z

    .line 825
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    .line 828
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->p:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    array-length v0, v0

    if-lez v0, :cond_6

    .line 829
    :goto_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    array-length v0, v0

    if-ge v3, v0, :cond_4

    .line 830
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 833
    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_4
    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 834
    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 836
    :cond_5
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->A:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    invoke-virtual {v0, v4, v1}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(ILjava/util/List;)Z

    .line 837
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->A:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->z:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;)Z

    .line 838
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->A:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    .line 839
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    return-object v0

    .line 842
    :cond_6
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->o:Z

    if-eqz v0, :cond_7

    .line 843
    iput-boolean v3, p0, Lcom/baidu/mapapi/map/Polyline;->n:Z

    .line 844
    iput-boolean v3, p0, Lcom/baidu/mapapi/map/Polyline;->p:Z

    .line 848
    :cond_7
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->n:Z

    if-eqz v0, :cond_8

    .line 849
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->b(I)Z

    .line 850
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->a(F)Z

    .line 851
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->a(I)Z

    .line 852
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->a(I)Z

    .line 855
    :cond_8
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->g:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_9

    .line 856
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->z:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    iget v2, p0, Lcom/baidu/mapapi/map/Polyline;->m:I

    invoke-virtual {p0, v0, v2}, Lcom/baidu/mapapi/map/Polyline;->setDottedBitmapResource(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;I)V

    .line 857
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->z:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->c(I)Z

    goto :goto_5

    .line 859
    :cond_9
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->z:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-virtual {v0, v3}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->d(I)Z

    .line 863
    :goto_5
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->l:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 864
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 865
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 867
    :goto_6
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_a

    .line 868
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 869
    iget-object v5, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v5}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v5

    .line 870
    iget-object v6, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v6}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v6

    .line 871
    new-instance v7, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v8

    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    .line 872
    new-instance v5, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {v6}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v8

    invoke-virtual {v6}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v10

    invoke-direct {v5, v8, v9, v10, v11}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    .line 873
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    .line 877
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_13

    .line 878
    new-instance v4, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-direct {v4}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;-><init>()V

    .line 879
    new-instance v5, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-direct {v5}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;-><init>()V

    .line 881
    iget v6, p0, Lcom/baidu/mapapi/map/Polyline;->f:I

    invoke-virtual {v5, v6}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->b(I)Z

    .line 883
    iget-object v6, p0, Lcom/baidu/mapapi/map/Polyline;->c:[I

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/baidu/mapapi/map/Polyline;->c:[I

    array-length v6, v6

    if-ge v2, v6, :cond_b

    .line 884
    iget-object v6, p0, Lcom/baidu/mapapi/map/Polyline;->l:Ljava/util/List;

    iget-object v7, p0, Lcom/baidu/mapapi/map/Polyline;->c:[I

    aget v7, v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/mapapi/map/BitmapDescriptor;

    goto :goto_8

    .line 886
    :cond_b
    iget-object v6, p0, Lcom/baidu/mapapi/map/Polyline;->l:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 889
    :goto_8
    invoke-virtual {v6}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 890
    new-instance v7, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    invoke-direct {v7, v6}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v7}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;)Z

    .line 891
    invoke-virtual {v4, v5}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;)Z

    .line 892
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 893
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    iget-object v5, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    invoke-virtual {v5, v4}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 898
    :cond_c
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    .line 899
    :goto_9
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    array-length v2, v2

    if-ge v0, v2, :cond_d

    .line 900
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    iget-object v5, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 903
    :cond_d
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_e

    .line 904
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    iget-object v5, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    iget-object v6, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 906
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 907
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 909
    :goto_b
    iget-object v5, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_f

    .line 910
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 911
    iget-object v6, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v6}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v6

    .line 912
    iget-object v7, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v7}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v7

    .line 913
    new-instance v8, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {v6}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v9

    invoke-virtual {v6}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v11

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    .line 914
    new-instance v6, Lcom/baidu/platform/comapi/bmsdk/b;

    invoke-virtual {v7}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v9

    invoke-virtual {v7}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v11

    invoke-direct {v6, v9, v10, v11, v12}, Lcom/baidu/platform/comapi/bmsdk/b;-><init>(DD)V

    .line 915
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 919
    :cond_f
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_13

    .line 920
    new-instance v4, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-direct {v4}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;-><init>()V

    .line 921
    new-instance v5, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-direct {v5}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;-><init>()V

    .line 923
    iget v6, p0, Lcom/baidu/mapapi/map/Polyline;->f:I

    invoke-virtual {v5, v6}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->b(I)Z

    .line 924
    iget-boolean v6, p0, Lcom/baidu/mapapi/map/Polyline;->g:Z

    if-eqz v6, :cond_10

    .line 925
    iget v6, p0, Lcom/baidu/mapapi/map/Polyline;->m:I

    invoke-virtual {p0, v5, v6}, Lcom/baidu/mapapi/map/Polyline;->setDottedBitmapResource(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;I)V

    .line 926
    invoke-virtual {v5, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->c(I)Z

    .line 928
    :cond_10
    iget-object v6, p0, Lcom/baidu/mapapi/map/Polyline;->e:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->a(I)Z

    .line 929
    invoke-virtual {v4, v5}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;)Z

    .line 930
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Ljava/util/List;)Z

    .line 931
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    iget-object v5, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    invoke-virtual {v5, v4}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 937
    :cond_11
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->k:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v0, :cond_12

    .line 939
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->k:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 940
    new-instance v1, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;

    invoke-direct {v1, v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;-><init>(Landroid/graphics/Bitmap;)V

    .line 941
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->z:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmBitmapResource;)Z

    goto :goto_d

    .line 944
    :cond_12
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->z:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    iget v1, p0, Lcom/baidu/mapapi/map/Polyline;->f:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->b(I)Z

    .line 945
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->z:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    iget v1, p0, Lcom/baidu/mapapi/map/Polyline;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;->a(I)Z

    .line 947
    :goto_d
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->A:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->z:Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;->a(Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyle;)Z

    .line 948
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->A:Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;->a(Lcom/baidu/platform/comapi/bmsdk/BmGeoElement;)Z

    .line 951
    :cond_13
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->y:Lcom/baidu/platform/comapi/bmsdk/BmBaseLine;

    return-object v0

    .line 781
    :cond_14
    :goto_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BDMapSDKException: when you add Polyline, you must at least supply 2 points"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
