.class public Lcom/happyplay/recording/ErrorCode;
.super Ljava/lang/Object;
.source "ErrorCode.java"


# static fields
.field public static final E_NOSDCARD:I = 0x3e9

.field public static final E_STATE_RECODING:I = 0x3ea

.field public static final E_UNKOWN:I = 0x3eb

.field public static final SUCCESS:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorInfo(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
