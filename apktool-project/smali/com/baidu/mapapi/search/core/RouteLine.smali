.class public Lcom/baidu/mapapi/search/core/RouteLine;
.super Ljava/lang/Object;
.source "RouteLine.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/core/RouteLine$TYPE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/baidu/mapapi/search/core/RouteStep;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# instance fields
.field a:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

.field private b:Lcom/baidu/mapapi/search/core/RouteNode;

.field private c:Lcom/baidu/mapapi/search/core/RouteNode;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:Lcom/baidu/mapapi/search/core/LegLinked;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    const-class v1, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/search/core/RouteNode;

    iput-object v1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->b:Lcom/baidu/mapapi/search/core/RouteNode;

    .line 67
    const-class v1, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/search/core/RouteNode;

    iput-object v1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->c:Lcom/baidu/mapapi/search/core/RouteNode;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->d:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 80
    :pswitch_0
    sget-object v0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->e:Ljava/util/List;

    goto :goto_0

    .line 77
    :pswitch_1
    sget-object v0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->e:Ljava/util/List;

    goto :goto_0

    .line 74
    :pswitch_2
    sget-object v0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->e:Ljava/util/List;

    goto :goto_0

    .line 71
    :pswitch_3
    sget-object v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->e:Ljava/util/List;

    .line 85
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->f:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->g:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllStep()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->e:Ljava/util/List;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->f:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->g:I

    return v0
.end method

.method public getLegLinked()Lcom/baidu/mapapi/search/core/LegLinked;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->h:Lcom/baidu/mapapi/search/core/LegLinked;

    return-object v0
.end method

.method public getStarting()Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->b:Lcom/baidu/mapapi/search/core/RouteNode;

    return-object v0
.end method

.method public getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->c:Lcom/baidu/mapapi/search/core/RouteNode;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected getType()Lcom/baidu/mapapi/search/core/RouteLine$TYPE;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->a:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    return-object v0
.end method

.method public setDistance(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->f:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->g:I

    return-void
.end method

.method public setLegLinked(Lcom/baidu/mapapi/search/core/LegLinked;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->h:Lcom/baidu/mapapi/search/core/LegLinked;

    return-void
.end method

.method public setStarting(Lcom/baidu/mapapi/search/core/RouteNode;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->b:Lcom/baidu/mapapi/search/core/RouteNode;

    return-void
.end method

.method public setSteps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->e:Ljava/util/List;

    return-void
.end method

.method public setTerminal(Lcom/baidu/mapapi/search/core/RouteNode;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->c:Lcom/baidu/mapapi/search/core/RouteNode;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->d:Ljava/lang/String;

    return-void
.end method

.method protected setType(Lcom/baidu/mapapi/search/core/RouteLine$TYPE;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->a:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 223
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/RouteLine;->a:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    if-eqz p2, :cond_0

    .line 224
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/RouteLine;->a:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    invoke-static {p2}, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->a(Lcom/baidu/mapapi/search/core/RouteLine$TYPE;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0xa

    .line 226
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    :goto_0
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/RouteLine;->b:Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 229
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/RouteLine;->c:Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 230
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/RouteLine;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/RouteLine;->a:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    if-eqz p2, :cond_1

    .line 232
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/RouteLine;->e:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 234
    :cond_1
    iget p2, p0, Lcom/baidu/mapapi/search/core/RouteLine;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget p2, p0, Lcom/baidu/mapapi/search/core/RouteLine;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
