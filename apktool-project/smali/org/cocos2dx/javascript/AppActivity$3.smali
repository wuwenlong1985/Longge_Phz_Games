.class final Lorg/cocos2dx/javascript/AppActivity$3;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/javascript/AppActivity;->StartShareWebViewWxSceneSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$3;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lorg/cocos2dx/javascript/AppActivity$3;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lorg/cocos2dx/javascript/AppActivity$3;->val$description:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 438
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$3;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity$3;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lorg/cocos2dx/javascript/AppActivity$3;->val$description:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/happyplay/util/WeChatUtil;->wxShareWebView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
