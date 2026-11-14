.class public Lorg/cocos2dx/javascript/JsCallAndroidObject;
.super Ljava/lang/Object;
.source "JsCallAndroidObject.java"


# instance fields
.field private mActivity:Lorg/cocos2dx/javascript/WebViewActivity;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/javascript/WebViewActivity;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/cocos2dx/javascript/JsCallAndroidObject;->mActivity:Lorg/cocos2dx/javascript/WebViewActivity;

    return-void
.end method


# virtual methods
.method public closeCallback()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 15
    iget-object v0, p0, Lorg/cocos2dx/javascript/JsCallAndroidObject;->mActivity:Lorg/cocos2dx/javascript/WebViewActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/cocos2dx/javascript/WebViewActivity;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
