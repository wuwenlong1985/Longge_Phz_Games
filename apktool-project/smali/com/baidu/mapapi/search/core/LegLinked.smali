.class public Lcom/baidu/mapapi/search/core/LegLinked;
.super Ljava/lang/Object;
.source "LegLinked.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/core/LegLinked;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/baidu/mapapi/search/core/f;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/core/f;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/core/LegLinked;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/baidu/mapapi/search/core/LegLinked;->a:I

    .line 9
    iput v0, p0, Lcom/baidu/mapapi/search/core/LegLinked;->b:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/baidu/mapapi/search/core/LegLinked;->a:I

    .line 9
    iput v0, p0, Lcom/baidu/mapapi/search/core/LegLinked;->b:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/core/LegLinked;->a:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/search/core/LegLinked;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/baidu/mapapi/search/core/LegLinked;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/baidu/mapapi/search/core/LegLinked;->a:I

    return-void
.end method

.method public b()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/baidu/mapapi/search/core/LegLinked;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/baidu/mapapi/search/core/LegLinked;->b:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 43
    iget p2, p0, Lcom/baidu/mapapi/search/core/LegLinked;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget p2, p0, Lcom/baidu/mapapi/search/core/LegLinked;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
