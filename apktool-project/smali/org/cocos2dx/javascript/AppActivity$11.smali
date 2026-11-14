.class final Lorg/cocos2dx/javascript/AppActivity$11;
.super Ljava/lang/Thread;
.source "AppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/javascript/AppActivity;->endRecord(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$11;->val$eventName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 653
    new-instance v0, Lcom/csf/lame4android/utils/FLameUtils;

    const/4 v1, 0x1

    const/16 v2, 0x3e80

    const/16 v3, 0x60

    invoke-direct {v0, v1, v2, v3}, Lcom/csf/lame4android/utils/FLameUtils;-><init>(III)V

    .line 654
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->tempFile:Ljava/lang/String;

    sget-object v2, Lorg/cocos2dx/javascript/AppActivity;->mp3Path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/csf/lame4android/utils/FLameUtils;->raw2mp3(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "record"

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecord"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/cocos2dx/javascript/AppActivity;->tempFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/cocos2dx/javascript/AppActivity;->mp3Path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity$11;->val$eventName:Ljava/lang/String;

    sget-boolean v2, Lorg/cocos2dx/javascript/AppActivity;->canSend:Z

    if-eqz v2, :cond_0

    sget-object v2, Lorg/cocos2dx/javascript/AppActivity;->mp3Path:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/cocos2dx/javascript/AppActivity;->RunJS(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 657
    sput-boolean v0, Lorg/cocos2dx/javascript/AppActivity;->isStartRecording:Z

    return-void
.end method
