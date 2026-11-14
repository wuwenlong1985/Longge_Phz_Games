.class Lorg/cocos2dx/javascript/WebViewActivity$1;
.super Landroid/os/Handler;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/javascript/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/javascript/WebViewActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/javascript/WebViewActivity;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lorg/cocos2dx/javascript/WebViewActivity$1;->this$0:Lorg/cocos2dx/javascript/WebViewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 32
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lorg/cocos2dx/javascript/WebViewActivity$1;->this$0:Lorg/cocos2dx/javascript/WebViewActivity;

    invoke-static {p1}, Lorg/cocos2dx/javascript/WebViewActivity;->access$000(Lorg/cocos2dx/javascript/WebViewActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 36
    iget-object p1, p0, Lorg/cocos2dx/javascript/WebViewActivity$1;->this$0:Lorg/cocos2dx/javascript/WebViewActivity;

    invoke-virtual {p1}, Lorg/cocos2dx/javascript/WebViewActivity;->finish()V

    :goto_0
    return-void
.end method
