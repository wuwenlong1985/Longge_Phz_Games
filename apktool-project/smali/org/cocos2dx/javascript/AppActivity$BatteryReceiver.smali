.class public Lorg/cocos2dx/javascript/AppActivity$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/javascript/AppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/javascript/AppActivity;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/javascript/AppActivity;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$BatteryReceiver;->this$0:Lorg/cocos2dx/javascript/AppActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "level"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "scale"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    mul-int/lit8 p1, p1, 0x64

    .line 157
    div-int/2addr p1, p2

    const-string p2, "battery"

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "battery "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p2, p0, Lorg/cocos2dx/javascript/AppActivity$BatteryReceiver;->this$0:Lorg/cocos2dx/javascript/AppActivity;

    const-string v0, "nativePower"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/cocos2dx/javascript/AppActivity;->RunJS(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$BatteryReceiver;->this$0:Lorg/cocos2dx/javascript/AppActivity;

    iget-object p2, p0, Lorg/cocos2dx/javascript/AppActivity$BatteryReceiver;->this$0:Lorg/cocos2dx/javascript/AppActivity;

    invoke-static {p2}, Lorg/cocos2dx/javascript/AppActivity;->access$000(Lorg/cocos2dx/javascript/AppActivity;)Lorg/cocos2dx/javascript/AppActivity$BatteryReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/cocos2dx/javascript/AppActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
