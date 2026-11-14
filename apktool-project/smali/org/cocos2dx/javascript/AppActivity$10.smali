.class final Lorg/cocos2dx/javascript/AppActivity$10;
.super Ljava/lang/Thread;
.source "AppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/javascript/AppActivity;->downLoadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$10;->val$filePath:Ljava/lang/String;

    iput-object p2, p0, Lorg/cocos2dx/javascript/AppActivity$10;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lorg/cocos2dx/javascript/AppActivity$10;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lorg/cocos2dx/javascript/AppActivity$10;->val$eventName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 577
    new-instance v0, Lcom/happyplay/httpClient/httpClient;

    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity$10;->val$filePath:Ljava/lang/String;

    iget-object v2, p0, Lorg/cocos2dx/javascript/AppActivity$10;->val$fileName:Ljava/lang/String;

    iget-object v3, p0, Lorg/cocos2dx/javascript/AppActivity$10;->val$url:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/happyplay/httpClient/httpClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-virtual {v0}, Lcom/happyplay/httpClient/httpClient;->downLoadFile()V

    const-string v1, "download:"

    const-string v2, "download successful"

    .line 579
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget v1, v0, Lcom/happyplay/httpClient/httpClient;->ok:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 581
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    iget-object v2, p0, Lorg/cocos2dx/javascript/AppActivity$10;->val$eventName:Ljava/lang/String;

    iget-object v0, v0, Lcom/happyplay/httpClient/httpClient;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/cocos2dx/javascript/AppActivity;->RunJS(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 583
    :cond_0
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity$10;->val$eventName:Ljava/lang/String;

    const-string v2, "downloadError"

    invoke-virtual {v0, v1, v2}, Lorg/cocos2dx/javascript/AppActivity;->RunJS(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
