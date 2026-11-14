.class public abstract Lcom/tencent/mid/core/PacketInterface;
.super Ljava/lang/Object;
.source "PacketInterface.java"


# static fields
.field public static final TYPE_CHECK_MID:I = 0x3

.field public static final TYPE_REQUEST_MID:I = 0x2


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/tencent/mid/core/PacketInterface;->context:Landroid/content/Context;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mid/core/PacketInterface;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public encode(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 36
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v0, "et"

    .line 38
    invoke-virtual {p0}, Lcom/tencent/mid/core/PacketInterface;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    invoke-virtual {p0, p1}, Lcom/tencent/mid/core/PacketInterface;->onEncode(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method protected abstract getType()I
.end method

.method protected abstract onEncode(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
