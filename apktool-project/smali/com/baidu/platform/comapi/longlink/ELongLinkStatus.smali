.class public final enum Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;
.super Ljava/lang/Enum;
.source "ELongLinkStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

.field public static final enum CloudRestart:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

.field public static final enum CloudStop:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

.field public static final enum OK:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

.field public static final enum ResultConnectError:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

.field public static final enum ResultSendError:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

.field public static final enum ResultServerError:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

.field public static final enum ResultTimeout:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

.field public static final enum SendDataLenLimited:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

.field public static final enum SendFormatError:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

.field public static final enum SendInvalidReqID:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

.field public static final enum SendLimited:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

.field public static final enum SendUnRegistered:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 15
    new-instance v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->OK:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    .line 17
    new-instance v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    const-string v1, "SendFormatError"

    sget-object v3, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->OK:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->getStatusCode()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v4, v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->SendFormatError:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    .line 18
    new-instance v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    const-string v1, "SendUnRegistered"

    sget-object v3, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->OK:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->getStatusCode()I

    move-result v3

    const/4 v5, 0x2

    add-int/2addr v3, v5

    invoke-direct {v0, v1, v5, v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->SendUnRegistered:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    .line 19
    new-instance v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    const-string v1, "SendLimited"

    sget-object v3, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->OK:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->getStatusCode()I

    move-result v3

    const/4 v6, 0x3

    add-int/2addr v3, v6

    invoke-direct {v0, v1, v6, v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->SendLimited:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    .line 20
    new-instance v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    const-string v1, "SendDataLenLimited"

    sget-object v3, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->OK:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->getStatusCode()I

    move-result v3

    const/4 v7, 0x4

    add-int/2addr v3, v7

    invoke-direct {v0, v1, v7, v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->SendDataLenLimited:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    .line 21
    new-instance v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    const-string v1, "SendInvalidReqID"

    sget-object v3, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->OK:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->getStatusCode()I

    move-result v3

    const/4 v8, 0x5

    add-int/2addr v3, v8

    invoke-direct {v0, v1, v8, v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->SendInvalidReqID:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    .line 23
    new-instance v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    const-string v1, "ResultConnectError"

    sget-object v3, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->OK:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->getStatusCode()I

    move-result v3

    const/4 v9, 0x6

    add-int/2addr v3, v9

    invoke-direct {v0, v1, v9, v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->ResultConnectError:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    .line 24
    new-instance v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    const-string v1, "ResultSendError"

    sget-object v3, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->OK:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->getStatusCode()I

    move-result v3

    const/4 v10, 0x7

    add-int/2addr v3, v10

    invoke-direct {v0, v1, v10, v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->ResultSendError:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    .line 25
    new-instance v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    const-string v1, "ResultTimeout"

    sget-object v3, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->OK:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->getStatusCode()I

    move-result v3

    const/16 v11, 0x8

    add-int/2addr v3, v11

    invoke-direct {v0, v1, v11, v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->ResultTimeout:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    .line 26
    new-instance v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    const-string v1, "ResultServerError"

    sget-object v3, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->OK:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->getStatusCode()I

    move-result v3

    const/16 v12, 0x9

    add-int/2addr v3, v12

    invoke-direct {v0, v1, v12, v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->ResultServerError:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    .line 29
    new-instance v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    const-string v1, "CloudStop"

    sget-object v3, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->OK:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->getStatusCode()I

    move-result v3

    const/16 v13, 0xa

    add-int/2addr v3, v13

    invoke-direct {v0, v1, v13, v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->CloudStop:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    .line 30
    new-instance v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    const-string v1, "CloudRestart"

    sget-object v3, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->OK:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->getStatusCode()I

    move-result v3

    const/16 v14, 0xb

    add-int/2addr v3, v14

    invoke-direct {v0, v1, v14, v3}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->CloudRestart:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    const/16 v0, 0xc

    .line 13
    new-array v0, v0, [Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    sget-object v1, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->OK:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->SendFormatError:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->SendUnRegistered:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->SendLimited:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->SendDataLenLimited:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->SendInvalidReqID:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->ResultConnectError:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    aput-object v1, v0, v9

    sget-object v1, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->ResultSendError:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    aput-object v1, v0, v10

    sget-object v1, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->ResultTimeout:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    aput-object v1, v0, v11

    sget-object v1, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->ResultServerError:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    aput-object v1, v0, v12

    sget-object v1, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->CloudStop:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    aput-object v1, v0, v13

    sget-object v1, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->CloudRestart:Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    aput-object v1, v0, v14

    sput-object v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->$VALUES:[Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;
    .locals 1

    .line 13
    const-class v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    return-object p0
.end method

.method public static values()[Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;
    .locals 1

    .line 13
    sget-object v0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->$VALUES:[Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    invoke-virtual {v0}, [Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    return-object v0
.end method


# virtual methods
.method public getRequestId()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->b:I

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->a:I

    return v0
.end method

.method public setRequestId(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->b:I

    return-void
.end method
