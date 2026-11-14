.class public Lcom/happyplay/util/VibratorUtil;
.super Ljava/lang/Object;
.source "VibratorUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "vibrator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogD(Ljava/lang/String;)V
    .locals 1

    const-string v0, "vibrator"

    .line 17
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public Vibrate(Landroid/app/Activity;J)V
    .locals 1

    const-string v0, "vibrator"

    .line 28
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    .line 29
    invoke-virtual {p1, p2, p3}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public Vibrate(Landroid/app/Activity;[JZ)V
    .locals 1

    const-string v0, "vibrator"

    .line 34
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    .line 35
    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method
