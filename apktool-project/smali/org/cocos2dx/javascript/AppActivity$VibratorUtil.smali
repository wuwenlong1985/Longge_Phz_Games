.class public Lorg/cocos2dx/javascript/AppActivity$VibratorUtil;
.super Ljava/lang/Object;
.source "AppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/javascript/AppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VibratorUtil"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/javascript/AppActivity;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/javascript/AppActivity;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$VibratorUtil;->this$0:Lorg/cocos2dx/javascript/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Vibrate(Landroid/app/Activity;J)V
    .locals 1

    const-string v0, "vibrator"

    .line 220
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    .line 221
    invoke-virtual {p1, p2, p3}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public Vibrate(Landroid/app/Activity;[JZ)V
    .locals 1

    const-string v0, "vibrator"

    .line 227
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    .line 228
    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method
