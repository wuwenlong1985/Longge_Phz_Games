.class public Lcom/baidu/mapapi/search/core/AoiInfo;
.super Ljava/lang/Object;
.source "AoiInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/core/AoiInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 216
    new-instance v0, Lcom/baidu/mapapi/search/core/a;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/core/a;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/core/AoiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->c:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAoiName()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAoiType()Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->d:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    return-object v0
.end method

.method public getNearestDistance()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->e:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->f:I

    return v0
.end method

.method public getPolygon()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRelation()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->g:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setAoiName(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setAoiType(Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->d:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    return-void
.end method

.method public setNearestDistance(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->e:I

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->f:I

    return-void
.end method

.method public setPolygon(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setRelation(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->g:I

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "AoiInfo: \n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "; uid = "

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; polygon = "

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; aoiName = "

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; aoiType = "

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->d:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "; nearestDistance= "

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "; order= "

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "; relation= "

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 202
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->d:Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;

    invoke-virtual {p2}, Lcom/baidu/mapapi/search/core/AoiInfo$AoiType;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget p2, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget p2, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget p2, p0, Lcom/baidu/mapapi/search/core/AoiInfo;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
