.class final Lorg/cocos2dx/javascript/AppActivity$6;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/javascript/AppActivity;->StartShareTextureWxSceneSession(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$6;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 489
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity$6;->val$path:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/happyplay/util/WeChatUtil;->wxShareTexture(Ljava/lang/String;Z)V

    return-void
.end method
