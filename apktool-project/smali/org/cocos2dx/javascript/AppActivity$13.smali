.class final Lorg/cocos2dx/javascript/AppActivity$13;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/javascript/AppActivity;->openWebVeiw(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$orientation:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 937
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$13;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lorg/cocos2dx/javascript/AppActivity$13;->val$orientation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 940
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity$13;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lorg/cocos2dx/javascript/AppActivity$13;->val$orientation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2dx/javascript/AppActivity;->openWebviewActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
