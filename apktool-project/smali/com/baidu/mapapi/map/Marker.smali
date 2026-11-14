.class public final Lcom/baidu/mapapi/map/Marker;
.super Lcom/baidu/mapapi/map/Overlay;
.source "Marker.java"


# instance fields
.field A:F

.field B:Landroid/graphics/Point;

.field C:Lcom/baidu/mapapi/map/InfoWindow;

.field D:Lcom/baidu/mapapi/map/InfoWindow$a;

.field E:Z

.field F:I

.field G:I

.field H:I

.field I:I

.field J:Lcom/baidu/mapapi/map/InfoWindowAdapter;

.field a:Lcom/baidu/mapapi/model/LatLng;

.field b:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field c:F

.field d:F

.field e:Z

.field f:Z

.field g:F

.field h:Ljava/lang/String;

.field i:Lcom/baidu/mapapi/map/TitleOptions;

.field j:I

.field k:I

.field l:Z

.field m:Z

.field n:F

.field o:I

.field p:Z

.field q:Z

.field r:Z

.field s:Z

.field t:Z

.field u:I

.field v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field w:I

.field x:Lcom/baidu/mapapi/animation/Animation;

.field y:F

.field z:F


# direct methods
.method constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->l:Z

    .line 39
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->m:Z

    .line 42
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->p:Z

    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/Marker;->q:Z

    .line 44
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->r:Z

    .line 45
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->s:Z

    .line 47
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->t:Z

    const/16 v1, 0x14

    .line 52
    iput v1, p0, Lcom/baidu/mapapi/map/Marker;->w:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 56
    iput v1, p0, Lcom/baidu/mapapi/map/Marker;->y:F

    .line 58
    iput v1, p0, Lcom/baidu/mapapi/map/Marker;->z:F

    .line 60
    iput v1, p0, Lcom/baidu/mapapi/map/Marker;->A:F

    .line 68
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->E:Z

    const v1, 0x7fffffff

    .line 70
    iput v1, p0, Lcom/baidu/mapapi/map/Marker;->F:I

    const/4 v1, 0x4

    .line 72
    iput v1, p0, Lcom/baidu/mapapi/map/Marker;->G:I

    const/16 v1, 0x16

    .line 73
    iput v1, p0, Lcom/baidu/mapapi/map/Marker;->H:I

    .line 74
    iput v0, p0, Lcom/baidu/mapapi/map/Marker;->I:I

    .line 79
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/h;->c:Lcom/baidu/mapsdkplatform/comapi/map/h;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Marker;->type:Lcom/baidu/mapsdkplatform/comapi/map/h;

    return-void
.end method

.method private a(Lcom/baidu/mapapi/map/InfoWindow;Lcom/baidu/mapapi/map/InfoWindow;)V
    .locals 1

    .line 710
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/InfoWindow;->getBitmapDescriptor()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    .line 711
    iput-object v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 712
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/InfoWindow;->getPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->d:Lcom/baidu/mapapi/model/LatLng;

    .line 713
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/InfoWindow;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->a:Ljava/lang/String;

    .line 714
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/InfoWindow;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    .line 715
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/InfoWindow;->getYOffset()I

    move-result v0

    iput v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->g:I

    .line 716
    iget-boolean v0, p2, Lcom/baidu/mapapi/map/InfoWindow;->k:Z

    iput-boolean v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->k:Z

    .line 717
    iget-object p2, p2, Lcom/baidu/mapapi/map/InfoWindow;->e:Lcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;

    iput-object p2, p1, Lcom/baidu/mapapi/map/InfoWindow;->e:Lcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;

    return-void
.end method

.method private a(Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 941
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 943
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 944
    new-instance v3, Lcom/baidu/platform/comjni/tools/ParcelItem;

    invoke-direct {v3}, Lcom/baidu/platform/comjni/tools/ParcelItem;-><init>()V

    .line 945
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 946
    iget-object v1, v1, Lcom/baidu/mapapi/map/BitmapDescriptor;->a:Landroid/graphics/Bitmap;

    .line 947
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int v5, v5, v6

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 948
    invoke-virtual {v1, v5}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 949
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const-string v6, "image_data"

    .line 950
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v6, "image_width"

    .line 951
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "image_height"

    .line 952
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    :try_start_0
    const-string v6, "MD5"

    .line 956
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    goto :goto_1

    :catch_0
    move-exception v6

    .line 958
    invoke-virtual {v6}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_1
    if-eqz v1, :cond_1

    .line 962
    array-length v6, v5

    invoke-virtual {v1, v5, v2, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 963
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 964
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 965
    :goto_2
    array-length v6, v1

    if-ge v2, v6, :cond_0

    .line 966
    aget-byte v6, v1, v2

    and-int/lit16 v6, v6, 0xff

    add-int/lit16 v6, v6, 0x100

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 969
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image_hashcode"

    .line 970
    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    :cond_1
    invoke-virtual {v3, v4}, Lcom/baidu/platform/comjni/tools/ParcelItem;->setBundle(Landroid/os/Bundle;)V

    .line 974
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 977
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 978
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/baidu/platform/comjni/tools/ParcelItem;

    .line 979
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 980
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comjni/tools/ParcelItem;

    aput-object v1, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const-string v0, "icons"

    .line 983
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_4
    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 886
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 887
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 888
    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v1, :cond_0

    const-string v1, "image_info"

    .line 889
    iget-object v2, p0, Lcom/baidu/mapapi/map/Marker;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 893
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->a:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v1, :cond_1

    .line 894
    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->a:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    const-string v2, "location_x"

    .line 895
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v2, "location_y"

    .line 896
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_1
    const-string v1, "animatetype"

    .line 898
    iget v2, p0, Lcom/baidu/mapapi/map/Marker;->o:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "perspective"

    .line 899
    iget-boolean v2, p0, Lcom/baidu/mapapi/map/Marker;->e:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "anchor_x"

    .line 900
    iget v2, p0, Lcom/baidu/mapapi/map/Marker;->c:F

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "anchor_y"

    .line 901
    iget v2, p0, Lcom/baidu/mapapi/map/Marker;->d:F

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "rotate"

    .line 902
    iget v2, p0, Lcom/baidu/mapapi/map/Marker;->g:F

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "y_offset"

    .line 903
    iget v2, p0, Lcom/baidu/mapapi/map/Marker;->j:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "x_offset"

    .line 904
    iget v2, p0, Lcom/baidu/mapapi/map/Marker;->k:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "isflat"

    .line 905
    iget-boolean v2, p0, Lcom/baidu/mapapi/map/Marker;->l:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "istop"

    .line 906
    iget-boolean v2, p0, Lcom/baidu/mapapi/map/Marker;->m:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "period"

    .line 907
    iget v2, p0, Lcom/baidu/mapapi/map/Marker;->w:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "alpha"

    .line 908
    iget v2, p0, Lcom/baidu/mapapi/map/Marker;->n:F

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "m_height"

    .line 909
    iget v2, p0, Lcom/baidu/mapapi/map/Marker;->u:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "scaleX"

    .line 910
    iget v2, p0, Lcom/baidu/mapapi/map/Marker;->y:F

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "scaleY"

    .line 911
    iget v2, p0, Lcom/baidu/mapapi/map/Marker;->z:F

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "isClickable"

    .line 912
    iget-boolean v2, p0, Lcom/baidu/mapapi/map/Marker;->q:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "priority"

    .line 913
    iget v2, p0, Lcom/baidu/mapapi/map/Marker;->F:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "isJoinCollision"

    .line 914
    iget-boolean v2, p0, Lcom/baidu/mapapi/map/Marker;->r:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "isForceDisplay"

    .line 915
    iget-boolean v2, p0, Lcom/baidu/mapapi/map/Marker;->t:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "startLevel"

    .line 916
    iget v2, p0, Lcom/baidu/mapapi/map/Marker;->G:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "endLevel"

    .line 917
    iget v2, p0, Lcom/baidu/mapapi/map/Marker;->H:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 918
    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->B:Landroid/graphics/Point;

    if-eqz v1, :cond_2

    const-string v1, "fix_x"

    .line 919
    iget-object v2, p0, Lcom/baidu/mapapi/map/Marker;->B:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "fix_y"

    .line 920
    iget-object v2, p0, Lcom/baidu/mapapi/map/Marker;->B:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    const-string v1, "isfixed"

    .line 923
    iget-boolean v2, p0, Lcom/baidu/mapapi/map/Marker;->p:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 924
    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->v:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 925
    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->v:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/baidu/mapapi/map/Marker;->a(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    :cond_3
    const-string v1, "param"

    .line 928
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 930
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->i:Lcom/baidu/mapapi/map/TitleOptions;

    if-eqz v0, :cond_4

    const-string v0, "m_title"

    .line 931
    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->i:Lcom/baidu/mapapi/map/TitleOptions;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/TitleOptions;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    const-string v0, "update"

    .line 934
    iget v1, p0, Lcom/baidu/mapapi/map/Marker;->I:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "poi_collied"

    .line 935
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Marker;->s:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public cancelAnimation()V
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->x:Lcom/baidu/mapapi/animation/Animation;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->x:Lcom/baidu/mapapi/animation/Animation;

    iget-object v0, v0, Lcom/baidu/mapapi/animation/Animation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/a/c;->b()V

    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .line 187
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->n:F

    return v0
.end method

.method public getAnchorX()F
    .locals 1

    .line 346
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->c:F

    return v0
.end method

.method public getAnchorY()F
    .locals 1

    .line 355
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->d:F

    return v0
.end method

.method public getEndLevel()I
    .locals 1

    .line 612
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->H:I

    return v0
.end method

.method public getFixedPosition()Landroid/graphics/Point;
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->B:Landroid/graphics/Point;

    return-object v0
.end method

.method public getIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getIcons()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->v:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->K:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoWindow()Lcom/baidu/mapapi/map/InfoWindow;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    return-object v0
.end method

.method public getPeriod()I
    .locals 1

    .line 214
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->w:I

    return v0
.end method

.method public getPosition()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->a:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 585
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->F:I

    return v0
.end method

.method public getRotate()F
    .locals 1

    .line 378
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->g:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 563
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->A:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 517
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->y:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 540
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->z:F

    return v0
.end method

.method public getStartLevel()I
    .locals 1

    .line 603
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->G:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleOptions()Lcom/baidu/mapapi/map/TitleOptions;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->i:Lcom/baidu/mapapi/map/TitleOptions;

    return-object v0
.end method

.method public getXOffset()I
    .locals 1

    .line 433
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->k:I

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .line 442
    iget v0, p0, Lcom/baidu/mapapi/map/Marker;->j:I

    return v0
.end method

.method public hideInfoWindow()V
    .locals 2

    .line 820
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->D:Lcom/baidu/mapapi/map/InfoWindow$a;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->D:Lcom/baidu/mapapi/map/InfoWindow$a;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-interface {v0, v1}, Lcom/baidu/mapapi/map/InfoWindow$a;->a(Lcom/baidu/mapapi/map/InfoWindow;)V

    const/4 v0, 0x0

    .line 822
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->E:Z

    :cond_0
    const/4 v0, 0x0

    .line 824
    iput-object v0, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    return-void
.end method

.method public isClickable()Z
    .locals 1

    .line 693
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->q:Z

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    .line 300
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->f:Z

    return v0
.end method

.method public isFixed()Z
    .locals 1

    .line 650
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->p:Z

    return v0
.end method

.method public isFlat()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->l:Z

    return v0
.end method

.method public isForceDisplay()Z
    .locals 1

    .line 636
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->t:Z

    return v0
.end method

.method public isInfoWindowEnabled()Z
    .locals 1

    .line 835
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->E:Z

    return v0
.end method

.method public isJoinCollision()Z
    .locals 1

    .line 624
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->r:Z

    return v0
.end method

.method public isPerspective()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->e:Z

    return v0
.end method

.method public isPoiCollided()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->s:Z

    return v0
.end method

.method public poiCollided(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Marker;->s:Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->n:F

    .line 180
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    :cond_1
    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 175
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->n:F

    return-void
.end method

.method public setAnchor(FF)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    cmpg-float v0, p2, v0

    if-ltz v0, :cond_2

    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    goto :goto_0

    .line 335
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->c:F

    .line 336
    iput p2, p0, Lcom/baidu/mapapi/map/Marker;->d:F

    .line 337
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public setAnimateType(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->o:I

    .line 103
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setAnimation(Lcom/baidu/mapapi/animation/Animation;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 472
    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->x:Lcom/baidu/mapapi/animation/Animation;

    .line 473
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->x:Lcom/baidu/mapapi/animation/Animation;

    iget-object v0, v0, Lcom/baidu/mapapi/animation/Animation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(Lcom/baidu/mapapi/map/Marker;Lcom/baidu/mapapi/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public setAnimation(Lcom/baidu/mapapi/animation/Animation;Landroid/animation/TypeEvaluator;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 485
    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->x:Lcom/baidu/mapapi/animation/Animation;

    .line 486
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->x:Lcom/baidu/mapapi/animation/Animation;

    iget-object v0, v0, Lcom/baidu/mapapi/animation/Animation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p2}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(Landroid/animation/TypeEvaluator;)V

    .line 487
    iget-object p2, p0, Lcom/baidu/mapapi/map/Marker;->x:Lcom/baidu/mapapi/animation/Animation;

    iget-object p2, p2, Lcom/baidu/mapapi/animation/Animation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {p2, p0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(Lcom/baidu/mapapi/map/Marker;Lcom/baidu/mapapi/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 683
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Marker;->q:Z

    .line 684
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    .line 290
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Marker;->f:Z

    .line 291
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setEndLevel(I)V
    .locals 0

    .line 616
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->H:I

    .line 617
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setFixedScreenPosition(Landroid/graphics/Point;)V
    .locals 1

    if-nez p1, :cond_0

    .line 660
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: the screenPosition can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 663
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->B:Landroid/graphics/Point;

    const/4 p1, 0x1

    .line 664
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Marker;->p:Z

    .line 665
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setFlat(Z)V
    .locals 0

    .line 318
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Marker;->l:Z

    .line 319
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setForceDisplay(Z)V
    .locals 0

    .line 640
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Marker;->t:Z

    .line 641
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setIcon(Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .locals 1

    if-nez p1, :cond_0

    .line 89
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: marker\'s icon can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 93
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setIcons(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 122
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: marker\'s icons can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 129
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 130
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/map/BitmapDescriptor;

    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    goto :goto_2

    .line 132
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 133
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/BitmapDescriptor;

    iget-object v0, v0, Lcom/baidu/mapapi/map/BitmapDescriptor;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    .line 138
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->v:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 142
    :goto_2
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setJoinCollision(Z)V
    .locals 0

    .line 628
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Marker;->r:Z

    .line 629
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setPeriod(I)V
    .locals 1

    if-gtz p1, :cond_0

    .line 161
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: marker\'s period must be greater than zero "

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->w:I

    .line 165
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setPerspective(Z)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Marker;->e:Z

    .line 272
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setPosition(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 1

    if-nez p1, :cond_0

    .line 232
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: marker\'s position can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 236
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setPositionWithInfoWindow(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 1

    if-nez p1, :cond_0

    .line 246
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: marker\'s position can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 249
    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 250
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    .line 251
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/InfoWindow;->setPosition(Lcom/baidu/mapapi/model/LatLng;)V

    :cond_1
    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 593
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->F:I

    .line 594
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setRotate(F)V
    .locals 2

    :goto_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    if-gez v0, :cond_0

    add-float/2addr p1, v1

    goto :goto_0

    :cond_0
    rem-float/2addr p1, v1

    .line 368
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->g:F

    .line 369
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setScale(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    .line 576
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->y:F

    .line 577
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->z:F

    .line 578
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setScaleX(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    .line 530
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->y:F

    .line 531
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setScaleY(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    .line 553
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->z:F

    .line 554
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setStartLevel(I)V
    .locals 0

    .line 607
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->G:I

    .line 608
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->h:Ljava/lang/String;

    .line 411
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setTitleOptions(Lcom/baidu/mapapi/map/TitleOptions;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->i:Lcom/baidu/mapapi/map/TitleOptions;

    const/4 p1, 0x1

    .line 389
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->I:I

    .line 390
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setToTop()V
    .locals 1

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->m:Z

    .line 222
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setXOffset(I)V
    .locals 0

    .line 451
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->k:I

    .line 452
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setYOffset(I)V
    .locals 0

    .line 461
    iput p1, p0, Lcom/baidu/mapapi/map/Marker;->j:I

    .line 462
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public showInfoWindow()V
    .locals 4

    .line 749
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->J:Lcom/baidu/mapapi/map/InfoWindowAdapter;

    if-nez v0, :cond_0

    const-string v0, "BDMapSDKException"

    const-string v1, "Marker showInfoWindow InfoWindowAdapter listener can not be null"

    .line 750
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->J:Lcom/baidu/mapapi/map/InfoWindowAdapter;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/InfoWindowAdapter;->getInfoWindow(Lcom/baidu/mapapi/map/Marker;)Lcom/baidu/mapapi/map/InfoWindow;

    move-result-object v0

    if-nez v0, :cond_1

    .line 757
    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->J:Lcom/baidu/mapapi/map/InfoWindowAdapter;

    invoke-interface {v1, p0}, Lcom/baidu/mapapi/map/InfoWindowAdapter;->getInfoWindowView(Lcom/baidu/mapapi/map/Marker;)Landroid/view/View;

    move-result-object v1

    .line 758
    iget-object v2, p0, Lcom/baidu/mapapi/map/Marker;->J:Lcom/baidu/mapapi/map/InfoWindowAdapter;

    invoke-interface {v2}, Lcom/baidu/mapapi/map/InfoWindowAdapter;->getInfoWindowViewYOffset()I

    move-result v2

    if-eqz v1, :cond_1

    .line 759
    iget-object v3, p0, Lcom/baidu/mapapi/map/Marker;->a:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v3, :cond_1

    .line 760
    new-instance v0, Lcom/baidu/mapapi/map/InfoWindow;

    iget-object v3, p0, Lcom/baidu/mapapi/map/Marker;->a:Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v0, v1, v3, v2}, Lcom/baidu/mapapi/map/InfoWindow;-><init>(Landroid/view/View;Lcom/baidu/mapapi/model/LatLng;I)V

    :cond_1
    if-eqz v0, :cond_4

    .line 765
    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    if-nez v1, :cond_2

    .line 766
    iput-object v0, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    goto :goto_0

    .line 769
    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->D:Lcom/baidu/mapapi/map/InfoWindow$a;

    if-eqz v1, :cond_3

    .line 770
    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->D:Lcom/baidu/mapapi/map/InfoWindow$a;

    iget-object v2, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-interface {v1, v2}, Lcom/baidu/mapapi/map/InfoWindow$a;->a(Lcom/baidu/mapapi/map/InfoWindow;)V

    .line 772
    :cond_3
    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-direct {p0, v1, v0}, Lcom/baidu/mapapi/map/Marker;->a(Lcom/baidu/mapapi/map/InfoWindow;Lcom/baidu/mapapi/map/InfoWindow;)V

    .line 774
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->D:Lcom/baidu/mapapi/map/InfoWindow$a;

    if-eqz v0, :cond_4

    .line 775
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->D:Lcom/baidu/mapapi/map/InfoWindow$a;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-interface {v0, v1}, Lcom/baidu/mapapi/map/InfoWindow$a;->b(Lcom/baidu/mapapi/map/InfoWindow;)V

    const/4 v0, 0x1

    .line 776
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->E:Z

    :cond_4
    return-void
.end method

.method public showInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;)V
    .locals 2

    if-nez p1, :cond_0

    .line 727
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: the InfoWindow can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    if-nez v0, :cond_1

    .line 730
    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    goto :goto_0

    .line 733
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->D:Lcom/baidu/mapapi/map/InfoWindow$a;

    if-eqz v0, :cond_2

    .line 734
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->D:Lcom/baidu/mapapi/map/InfoWindow$a;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-interface {v0, v1}, Lcom/baidu/mapapi/map/InfoWindow$a;->a(Lcom/baidu/mapapi/map/InfoWindow;)V

    .line 736
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-direct {p0, v0, p1}, Lcom/baidu/mapapi/map/Marker;->a(Lcom/baidu/mapapi/map/InfoWindow;Lcom/baidu/mapapi/map/InfoWindow;)V

    .line 738
    :goto_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->D:Lcom/baidu/mapapi/map/InfoWindow$a;

    if-eqz p1, :cond_3

    .line 739
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->D:Lcom/baidu/mapapi/map/InfoWindow$a;

    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-interface {p1, v0}, Lcom/baidu/mapapi/map/InfoWindow$a;->b(Lcom/baidu/mapapi/map/InfoWindow;)V

    const/4 p1, 0x1

    .line 740
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Marker;->E:Z

    :cond_3
    return-void
.end method

.method public showSmoothMoveInfoWindow(Lcom/baidu/mapapi/map/InfoWindow;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 794
    :cond_0
    iget-boolean v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->k:Z

    if-nez v0, :cond_1

    .line 795
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: the SmoothMoveInfoWindow must build with View"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 797
    :cond_1
    iget-object v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->c:Landroid/view/View;

    if-nez v0, :cond_2

    .line 798
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: the SmoothMoveInfoWindow\'s View can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 801
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    if-nez v0, :cond_3

    .line 802
    iput-object p1, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    goto :goto_0

    .line 804
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-direct {p0, v0, p1}, Lcom/baidu/mapapi/map/Marker;->a(Lcom/baidu/mapapi/map/InfoWindow;Lcom/baidu/mapapi/map/InfoWindow;)V

    .line 807
    :goto_0
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/baidu/mapapi/map/InfoWindow;->j:Z

    .line 809
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->D:Lcom/baidu/mapapi/map/InfoWindow$a;

    if-eqz p1, :cond_4

    .line 810
    iget-object p1, p0, Lcom/baidu/mapapi/map/Marker;->D:Lcom/baidu/mapapi/map/InfoWindow$a;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-interface {p1, v1}, Lcom/baidu/mapapi/map/InfoWindow$a;->b(Lcom/baidu/mapapi/map/InfoWindow;)V

    .line 811
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Marker;->E:Z

    :cond_4
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->x:Lcom/baidu/mapapi/animation/Animation;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->x:Lcom/baidu/mapapi/animation/Animation;

    iget-object v0, v0, Lcom/baidu/mapapi/animation/Animation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a()V

    :cond_0
    return-void
.end method

.method public updateInfoWindowBitmapDescriptor(Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    iget-boolean v0, v0, Lcom/baidu/mapapi/map/InfoWindow;->l:Z

    if-nez v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/InfoWindow;->setBitmapDescriptor(Lcom/baidu/mapapi/map/BitmapDescriptor;)V

    :cond_0
    return-void
.end method

.method public updateInfoWindowPosition(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/InfoWindow;->setPosition(Lcom/baidu/mapapi/model/LatLng;)V

    :cond_0
    return-void
.end method

.method public updateInfoWindowView(Landroid/view/View;)V
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    iget-boolean v0, v0, Lcom/baidu/mapapi/map/InfoWindow;->k:Z

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/InfoWindow;->setView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public updateInfoWindowYOffset(I)V
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/baidu/mapapi/map/Marker;->C:Lcom/baidu/mapapi/map/InfoWindow;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/InfoWindow;->setYOffset(I)V

    :cond_0
    return-void
.end method
