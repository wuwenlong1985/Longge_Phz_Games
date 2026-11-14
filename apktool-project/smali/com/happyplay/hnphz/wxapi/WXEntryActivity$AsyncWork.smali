.class Lcom/happyplay/hnphz/wxapi/WXEntryActivity$AsyncWork;
.super Landroid/os/AsyncTask;
.source "WXEntryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/happyplay/hnphz/wxapi/WXEntryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncWork"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field task:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/happyplay/hnphz/wxapi/WXEntryActivity;


# direct methods
.method public constructor <init>(Lcom/happyplay/hnphz/wxapi/WXEntryActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/happyplay/hnphz/wxapi/WXEntryActivity$AsyncWork;->this$0:Lcom/happyplay/hnphz/wxapi/WXEntryActivity;

    .line 252
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 253
    iput-object p2, p0, Lcom/happyplay/hnphz/wxapi/WXEntryActivity$AsyncWork;->task:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 258
    iget-object p1, p0, Lcom/happyplay/hnphz/wxapi/WXEntryActivity$AsyncWork;->task:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    return-object p1
.end method
