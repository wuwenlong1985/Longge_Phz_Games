.class public Lcom/baidu/vi/VNetworkInfo;
.super Ljava/lang/Object;
.source "VNetworkInfo.java"


# instance fields
.field public state:I

.field public type:I

.field public typename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/NetworkInfo;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/vi/VNetworkInfo;->typename:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/baidu/vi/VNetworkInfo;->type:I

    .line 22
    sget-object v0, Lcom/baidu/vi/j;->a:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/baidu/vi/VNetworkInfo;->state:I

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    .line 27
    iput p1, p0, Lcom/baidu/vi/VNetworkInfo;->state:I

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x2

    .line 24
    iput p1, p0, Lcom/baidu/vi/VNetworkInfo;->state:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
