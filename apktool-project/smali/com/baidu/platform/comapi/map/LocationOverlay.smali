.class public Lcom/baidu/platform/comapi/map/LocationOverlay;
.super Lcom/baidu/platform/comapi/map/InnerOverlay;
.source "LocationOverlay.java"


# instance fields
.field private a:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    .line 26
    invoke-direct {p0, v0}, Lcom/baidu/platform/comapi/map/InnerOverlay;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V
    .locals 1

    const/4 v0, 0x7

    .line 30
    invoke-direct {p0, v0, p1}, Lcom/baidu/platform/comapi/map/InnerOverlay;-><init>(ILcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V

    .line 31
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/LocationOverlay;->a:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    return-void
.end method


# virtual methods
.method public beginLocationLayerAnimation()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/LocationOverlay;->a:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->BeginLocationLayerAnimation()V

    return-void
.end method

.method public clearLocationLayerData(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    .line 152
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "locationaddr"

    .line 154
    iget-wide v1, p0, Lcom/baidu/platform/comapi/map/LocationOverlay;->mLayerID:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 155
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/LocationOverlay;->a:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ClearLocationLayerData(Landroid/os/Bundle;)V

    return-void
.end method

.method public getDefaultShowStatus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLayerTag()Ljava/lang/String;
    .locals 1

    const-string v0, "location"

    return-object v0
.end method

.method public setLocationLayerData(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/OverlayLocationData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/LocationOverlay;->mLayerID:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 54
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "locationaddr"

    .line 55
    iget-wide v2, p0, Lcom/baidu/platform/comapi/map/LocationOverlay;->mLayerID:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 57
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 58
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/platform/comapi/map/OverlayLocationData;

    .line 59
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImgType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "arrowicon"

    if-ne v5, v6, :cond_1

    .line 60
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 61
    new-instance v5, Lcom/baidu/platform/comjni/tools/ParcelItem;

    invoke-direct {v5}, Lcom/baidu/platform/comjni/tools/ParcelItem;-><init>()V

    .line 62
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 63
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 64
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v8, v8, v9

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 65
    invoke-virtual {v6, v8}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 66
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    const-string v9, "imgbin"

    .line 67
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v8, "w"

    .line 68
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImgWidth()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "h"

    .line 69
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImgHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "len"

    .line 70
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int v9, v9, v6

    mul-int/lit8 v9, v9, 0x4

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "rotation"

    const/4 v8, 0x1

    .line 72
    invoke-virtual {v7, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "imgtype"

    .line 73
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImgType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "name"

    .line 74
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImgName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "arrowsize"

    .line 75
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getArrowSize()F

    move-result v4

    invoke-virtual {v7, v6, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 76
    invoke-virtual {v5, v7}, Lcom/baidu/platform/comjni/tools/ParcelItem;->setBundle(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 79
    :cond_1
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImgType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "icon"

    if-ne v5, v6, :cond_2

    .line 80
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 81
    new-instance v5, Lcom/baidu/platform/comjni/tools/ParcelItem;

    invoke-direct {v5}, Lcom/baidu/platform/comjni/tools/ParcelItem;-><init>()V

    .line 82
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 83
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 84
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v8, v8, v9

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 85
    invoke-virtual {v6, v8}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 86
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    const-string v9, "imgbin"

    .line 87
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v8, "w"

    .line 88
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImgWidth()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "h"

    .line 89
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImgHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "len"

    .line 90
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int v9, v9, v6

    mul-int/lit8 v9, v9, 0x4

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "rotation"

    .line 92
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->isRotation()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "animation"

    .line 93
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->isAnimation()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "imgtype"

    .line 94
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImgType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "name"

    .line 95
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImgName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "markersize"

    .line 96
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getMarkerSize()F

    move-result v4

    invoke-virtual {v7, v6, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 98
    invoke-virtual {v5, v7}, Lcom/baidu/platform/comjni/tools/ParcelItem;->setBundle(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 101
    :cond_2
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImgType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gificon"

    if-ne v5, v6, :cond_3

    .line 102
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getGIFImgPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 103
    new-instance v5, Lcom/baidu/platform/comjni/tools/ParcelItem;

    invoke-direct {v5}, Lcom/baidu/platform/comjni/tools/ParcelItem;-><init>()V

    .line 104
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "rotation"

    .line 105
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->isRotation()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "animation"

    .line 106
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->isAnimation()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "gifpath"

    .line 107
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getGIFImgPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "imgtype"

    .line 108
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImgType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "name"

    .line 109
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImgName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "markersize"

    .line 110
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getMarkerSize()F

    move-result v4

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 111
    invoke-virtual {v5, v6}, Lcom/baidu/platform/comjni/tools/ParcelItem;->setBundle(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
    :cond_3
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_4

    return-void

    .line 118
    :cond_4
    new-instance v5, Lcom/baidu/platform/comjni/tools/ParcelItem;

    invoke-direct {v5}, Lcom/baidu/platform/comjni/tools/ParcelItem;-><init>()V

    .line 119
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 120
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 122
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v8, v8, v9

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 123
    invoke-virtual {v6, v8}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 124
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const-string v8, "imgbin"

    .line 125
    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v8, "w"

    .line 126
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImgWidth()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "h"

    .line 127
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImgHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "rotation"

    .line 128
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->isRotation()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "name"

    .line 129
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/OverlayLocationData;->getImgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v5, v7}, Lcom/baidu/platform/comjni/tools/ParcelItem;->setBundle(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 135
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 136
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/baidu/platform/comjni/tools/ParcelItem;

    .line 137
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 138
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/platform/comjni/tools/ParcelItem;

    aput-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    const-string v1, "imagedata"

    .line 140
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 142
    :cond_8
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/LocationOverlay;->a:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetLocationLayerData(Landroid/os/Bundle;)V

    return-void

    :cond_9
    :goto_3
    return-void
.end method
