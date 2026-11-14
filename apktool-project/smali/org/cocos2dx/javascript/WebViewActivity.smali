.class public Lorg/cocos2dx/javascript/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"


# static fields
.field public static final MSG_Close:I = 0x1


# instance fields
.field private mMsgHandler:Landroid/os/Handler;

.field private mWebViewLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    new-instance v0, Lorg/cocos2dx/javascript/WebViewActivity$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/javascript/WebViewActivity$1;-><init>(Lorg/cocos2dx/javascript/WebViewActivity;)V

    iput-object v0, p0, Lorg/cocos2dx/javascript/WebViewActivity;->mMsgHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/javascript/WebViewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 23
    iget-object p0, p0, Lorg/cocos2dx/javascript/WebViewActivity;->mWebViewLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$100(Lorg/cocos2dx/javascript/WebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lorg/cocos2dx/javascript/WebViewActivity;->toLoadInnerApp(Ljava/lang/String;)V

    return-void
.end method

.method private createWebView(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ADASDA"

    const-string v1, "createView"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 83
    iget-object v2, p0, Lorg/cocos2dx/javascript/WebViewActivity;->mWebViewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    const/4 p1, 0x1

    .line 86
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 87
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    const/high16 v1, 0x2000000

    .line 88
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 89
    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 91
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 92
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 93
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 94
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    const/4 v2, 0x0

    .line 95
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 96
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 97
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 98
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 99
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 100
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 101
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 102
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 105
    new-instance p1, Lorg/cocos2dx/javascript/JsCallAndroidObject;

    invoke-direct {p1, p0}, Lorg/cocos2dx/javascript/JsCallAndroidObject;-><init>(Lorg/cocos2dx/javascript/WebViewActivity;)V

    const-string v1, "webView"

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance p1, Lorg/cocos2dx/javascript/WebViewActivity$2;

    invoke-direct {p1, p0}, Lorg/cocos2dx/javascript/WebViewActivity$2;-><init>(Lorg/cocos2dx/javascript/WebViewActivity;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 131
    new-instance p1, Lorg/cocos2dx/javascript/WebViewActivity$3;

    invoke-direct {p1, p0}, Lorg/cocos2dx/javascript/WebViewActivity$3;-><init>(Lorg/cocos2dx/javascript/WebViewActivity;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method private toLoadInnerApp(Ljava/lang/String;)V
    .locals 2

    .line 148
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v0}, Lorg/cocos2dx/javascript/WebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Lorg/cocos2dx/javascript/WebViewActivity;->requestWindowFeature(I)Z

    .line 52
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    const v1, 0x7f0a0029

    .line 53
    invoke-virtual {p0, v1}, Lorg/cocos2dx/javascript/WebViewActivity;->setContentView(I)V

    const v1, 0x7f0800ae

    .line 55
    invoke-virtual {p0, v1}, Lorg/cocos2dx/javascript/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lorg/cocos2dx/javascript/WebViewActivity;->mWebViewLayout:Landroid/widget/FrameLayout;

    const-string v1, "orientation"

    .line 57
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "landscape"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Lorg/cocos2dx/javascript/WebViewActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, v0}, Lorg/cocos2dx/javascript/WebViewActivity;->setRequestedOrientation(I)V

    :goto_0
    const-string v0, "url"

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/cocos2dx/javascript/WebViewActivity;->createWebView(Ljava/lang/String;)V

    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 1

    .line 70
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 71
    iput p1, v0, Landroid/os/Message;->what:I

    .line 72
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    iget-object p1, p0, Lorg/cocos2dx/javascript/WebViewActivity;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
