.class public Lcom/baidu/mapapi/search/core/BuildingInfo;
.super Ljava/lang/Object;
.source "BuildingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/core/BuildingInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:F

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/baidu/mapapi/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 186
    new-instance v0, Lcom/baidu/mapapi/search/core/b;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/core/b;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/core/BuildingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->c:F

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->d:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->e:Ljava/lang/String;

    .line 53
    const-class v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/model/LatLng;

    iput-object p1, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->f:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->b:I

    return-void
.end method

.method public a(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->f:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->d:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->d:I

    return v0
.end method

.method public getCenter()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->f:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getGeom()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 133
    iget v0, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->c:F

    return v0
.end method

.method public getLabel()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->b:I

    return v0
.end method

.method public getStructID()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setHeight(F)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->c:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "BuidingInfo: \n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "; height = "

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v1, "; accuracy = "

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "; geom = "

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; center = "

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->f:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 175
    iget p2, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->c:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 176
    iget p2, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/BuildingInfo;->f:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
