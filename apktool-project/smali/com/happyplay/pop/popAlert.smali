.class public Lcom/happyplay/pop/popAlert;
.super Ljava/lang/Object;
.source "popAlert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showAlertDialog(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .line 21
    new-instance v0, Lcom/happyplay/pop/popAlert$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/happyplay/pop/popAlert$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showToast(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .line 42
    new-instance v0, Lcom/happyplay/pop/popAlert$2;

    invoke-direct {v0, p1, p0}, Lcom/happyplay/pop/popAlert$2;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
