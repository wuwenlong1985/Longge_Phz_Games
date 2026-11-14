.class final Lcom/happyplay/pop/popAlert$1;
.super Ljava/lang/Object;
.source "popAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/happyplay/pop/popAlert;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Landroid/app/Activity;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/happyplay/pop/popAlert$1;->val$app:Landroid/app/Activity;

    iput-object p2, p0, Lcom/happyplay/pop/popAlert$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/happyplay/pop/popAlert$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 26
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/happyplay/pop/popAlert$1;->val$app:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/happyplay/pop/popAlert$1;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v1, p0, Lcom/happyplay/pop/popAlert$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x1080093

    .line 29
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 30
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
