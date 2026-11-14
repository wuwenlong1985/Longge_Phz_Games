.class final Lorg/cocos2dx/javascript/AppActivity$9;
.super Ljava/lang/Thread;
.source "AppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/javascript/AppActivity;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$9;->val$fileName:Ljava/lang/String;

    iput-object p2, p0, Lorg/cocos2dx/javascript/AppActivity$9;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lorg/cocos2dx/javascript/AppActivity$9;->val$eventName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 554
    new-instance v0, Lcom/happyplay/httpClient/httpClient;

    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity$9;->val$fileName:Ljava/lang/String;

    iget-object v2, p0, Lorg/cocos2dx/javascript/AppActivity$9;->val$url:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/happyplay/httpClient/httpClient;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0}, Lcom/happyplay/httpClient/httpClient;->uploadFile()V

    const-string v1, "send:"

    const-string v2, "send successful"

    .line 556
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget v1, v0, Lcom/happyplay/httpClient/httpClient;->ok:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 558
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    iget-object v2, p0, Lorg/cocos2dx/javascript/AppActivity$9;->val$eventName:Ljava/lang/String;

    iget-object v0, v0, Lcom/happyplay/httpClient/httpClient;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/cocos2dx/javascript/AppActivity;->RunJS(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
