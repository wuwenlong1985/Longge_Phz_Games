.class final Lorg/cocos2dx/javascript/AppActivity$5;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/javascript/AppActivity;->StartShareWebViewWxSceneSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$showType:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$5;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lorg/cocos2dx/javascript/AppActivity$5;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lorg/cocos2dx/javascript/AppActivity$5;->val$description:Ljava/lang/String;

    iput-object p4, p0, Lorg/cocos2dx/javascript/AppActivity$5;->val$showType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 476
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$5;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity$5;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lorg/cocos2dx/javascript/AppActivity$5;->val$description:Ljava/lang/String;

    iget-object v3, p0, Lorg/cocos2dx/javascript/AppActivity$5;->val$showType:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/happyplay/util/WeChatUtil;->wxShareWebView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
