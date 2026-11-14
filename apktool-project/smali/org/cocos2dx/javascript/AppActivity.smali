.class public Lorg/cocos2dx/javascript/AppActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "AppActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/javascript/AppActivity$VibratorUtil;,
        Lorg/cocos2dx/javascript/AppActivity$BatteryReceiver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "hnphz_AppActivity"

.field public static api:Lcom/tencent/mm/opensdk/openapi/IWXAPI; = null

.field static canSend:Z = true

.field public static ccActivity:Lorg/cocos2dx/javascript/AppActivity; = null

.field private static instance:Lorg/cocos2dx/javascript/AppActivity; = null

.field static isRecording:Z = false

.field static isStartRecording:Z = false

.field private static mBuffer:[S = null

.field private static mBuglyAppID:Ljava/lang/String; = "de792eb59c"

.field private static mRecorder:Landroid/media/AudioRecord; = null

.field private static map:Lcom/happyplay/util/LocationManager; = null

.field static mp3Path:Ljava/lang/String; = null

.field private static permission:Lcom/happyplay/util/PermissionUtils; = null

.field static roomData:Ljava/lang/String; = ""

.field static tempFile:Ljava/lang/String;


# instance fields
.field private contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private data:Ljava/lang/String;

.field private receiver:Lorg/cocos2dx/javascript/AppActivity$BatteryReceiver;

.field private vibrato:Lorg/cocos2dx/javascript/AppActivity$VibratorUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->receiver:Lorg/cocos2dx/javascript/AppActivity$BatteryReceiver;

    .line 120
    iput-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->vibrato:Lorg/cocos2dx/javascript/AppActivity$VibratorUtil;

    return-void
.end method

.method public static CalculateDistance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1215
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    if-eqz v0, :cond_0

    .line 1217
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/cocos2dx/javascript/AppActivity;->calculateLineDistance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method public static HelloOC(Ljava/lang/String;)V
    .locals 1

    const-string v0, "HelloOC:"

    .line 1569
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static JoinGameVoiceRoom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static LaunchWx()V
    .locals 3

    const-string v0, "weixin"

    const-string v1, "\u8c03\u8d77\u5fae\u4fe1"

    .line 1575
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    invoke-static {}, Lcom/happyplay/util/WeChatUtil;->isWxInstall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1578
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->instance:Lorg/cocos2dx/javascript/AppActivity;

    const-string v1, "\u6ca1\u6709\u5b89\u88c5\u5fae\u4fe1\uff0c\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1581
    :cond_0
    invoke-static {}, Lcom/happyplay/util/WeChatUtil;->openWXApp()V

    return-void
.end method

.method public static LoadAndroidApps()Ljava/lang/String;
    .locals 7

    const-string v0, ""

    .line 1412
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1413
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 1414
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1415
    sget-object v2, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v2}, Lorg/cocos2dx/javascript/AppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1418
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v3, v2, :cond_1

    .line 1420
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1423
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    sget-object v5, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v5}, Lorg/cocos2dx/javascript/AppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1424
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    if-ne v3, v5, :cond_0

    .line 1431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v0, v4

    goto :goto_2

    .line 1433
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1437
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public static LogD(Ljava/lang/String;)V
    .locals 1

    const-string v0, "hnphz_AppActivity"

    .line 147
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static NativeBattery()V
    .locals 1

    .line 309
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/javascript/AppActivity;->getBatteryCount()V

    return-void
.end method

.method public static NativeVibrato(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "vib"

    const-string v1, "1"

    .line 313
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "true"

    .line 316
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, ","

    .line 320
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 321
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 322
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 323
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "vib"

    const-string v1, "3"

    .line 326
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object p0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {p0, v0, p1}, Lorg/cocos2dx/javascript/AppActivity;->onNativeVibrato([JZ)V

    const-string p0, "vib"

    const-string p1, "4"

    .line 329
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static ShowLogOnJava(Ljava/lang/String;)V
    .locals 1

    const-string v0, "js log"

    .line 1535
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static StartOpenURLInBrowser(Ljava/lang/String;)V
    .locals 1

    .line 406
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    if-eqz v0, :cond_0

    .line 407
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/javascript/AppActivity;->openURLInBrowser(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static StartShareTextWxSceneSession(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 420
    invoke-static {p0, v0}, Lcom/happyplay/util/WeChatUtil;->wxShareText(Ljava/lang/String;Z)V

    return-void
.end method

.method public static StartShareTextWxSceneSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "weixin"

    const-string v1, "share"

    .line 423
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    if-eqz v0, :cond_0

    const-string v0, "1"

    .line 425
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 429
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v0, p0, p1}, Lorg/cocos2dx/javascript/AppActivity;->wxShareText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static StartShareTextureToCN(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static StartShareTextureWXSceneTimeline(Ljava/lang/String;)V
    .locals 2

    .line 526
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    if-eqz v0, :cond_0

    .line 527
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    new-instance v1, Lorg/cocos2dx/javascript/AppActivity$8;

    invoke-direct {v1, p0}, Lorg/cocos2dx/javascript/AppActivity$8;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static StartShareTextureWxSceneSession(Ljava/lang/String;)V
    .locals 2

    .line 485
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    if-eqz v0, :cond_0

    .line 486
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    new-instance v1, Lorg/cocos2dx/javascript/AppActivity$6;

    invoke-direct {v1, p0}, Lorg/cocos2dx/javascript/AppActivity$6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static StartShareTextureWxSceneSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "1"

    .line 502
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/happyplay/util/WeChatUtil;->wxShareTexture(Ljava/lang/String;Z)V

    return-void
.end method

.method public static StartShareTextureWxSceneSession(Ljava/lang/String;Z)V
    .locals 0

    .line 497
    invoke-static {p0, p1}, Lcom/happyplay/util/WeChatUtil;->wxShareTexture(Ljava/lang/String;Z)V

    return-void
.end method

.method public static StartShareTextureWxSceneTimeLine(Ljava/lang/String;)V
    .locals 2

    .line 515
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    if-eqz v0, :cond_0

    .line 516
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    new-instance v1, Lorg/cocos2dx/javascript/AppActivity$7;

    invoke-direct {v1, p0}, Lorg/cocos2dx/javascript/AppActivity$7;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static StartShareUrlToCN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static StartShareWebViewWxSceneSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 434
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    if-eqz v0, :cond_0

    .line 435
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    new-instance v1, Lorg/cocos2dx/javascript/AppActivity$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/cocos2dx/javascript/AppActivity$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static StartShareWebViewWxSceneSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 472
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    if-eqz v0, :cond_0

    .line 473
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    new-instance v1, Lorg/cocos2dx/javascript/AppActivity$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/cocos2dx/javascript/AppActivity$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static StartShareWebViewWxSceneSessionTimeline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 460
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    if-eqz v0, :cond_0

    .line 461
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    new-instance v1, Lorg/cocos2dx/javascript/AppActivity$4;

    invoke-direct {v1, p0, p1, p2}, Lorg/cocos2dx/javascript/AppActivity$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static StartShareWebViewWxSceneTimeLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 538
    invoke-static {p0, p1, p2, v0}, Lcom/happyplay/util/WeChatUtil;->wxShareWebView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static StartShareWebViewWxTimeline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 455
    invoke-static {p0, p1, p2, v0}, Lcom/happyplay/util/WeChatUtil;->wxShareWebView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static StartURLImageWxSceneSession(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 354
    invoke-static {p0, v0}, Lorg/cocos2dx/javascript/AppActivity;->StartURLImageWxSceneSession(Ljava/lang/String;Z)V

    return-void
.end method

.method public static StartURLImageWxSceneSession(Ljava/lang/String;Z)V
    .locals 0

    .line 350
    invoke-static {p0, p1}, Lcom/happyplay/util/WeChatUtil;->wxShareURLImage(Ljava/lang/String;Z)V

    return-void
.end method

.method public static StartWxLogin()V
    .locals 0

    .line 416
    invoke-static {}, Lcom/happyplay/util/WeChatUtil;->wxLogin()V

    return-void
.end method

.method public static StartwxShareTexture_Assets_StartURLImageWxSceneSession(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 365
    invoke-static {p0, v0}, Lorg/cocos2dx/javascript/AppActivity;->StartwxShareTexture_Assets_WxSceneSession(Ljava/lang/String;Z)V

    return-void
.end method

.method public static StartwxShareTexture_Assets_WxSceneSession(Ljava/lang/String;Z)V
    .locals 0

    .line 360
    invoke-static {p0, p1}, Lcom/happyplay/util/WeChatUtil;->wxShareTexture_Assets(Ljava/lang/String;Z)V

    return-void
.end method

.method public static StartwxShareTexture_Bytes(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 376
    invoke-static {p0, v0}, Lorg/cocos2dx/javascript/AppActivity;->StartwxShareTexture_Bytes(Ljava/lang/String;Z)V

    return-void
.end method

.method public static StartwxShareTexture_Bytes(Ljava/lang/String;Z)V
    .locals 0

    .line 371
    invoke-static {p0, p1}, Lcom/happyplay/util/WeChatUtil;->wxShareTexture_Bytes(Ljava/lang/String;Z)V

    return-void
.end method

.method public static WXRegisterAppId(Ljava/lang/String;)V
    .locals 0

    .line 346
    invoke-static {p0}, Lcom/happyplay/util/WeChatUtil;->WXRegisterAppId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/javascript/AppActivity;)Lorg/cocos2dx/javascript/AppActivity$BatteryReceiver;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/cocos2dx/javascript/AppActivity;->receiver:Lorg/cocos2dx/javascript/AppActivity$BatteryReceiver;

    return-object p0
.end method

.method static synthetic access$100()[S
    .locals 1

    .line 116
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->mBuffer:[S

    return-object v0
.end method

.method static synthetic access$200()Landroid/media/AudioRecord;
    .locals 1

    .line 116
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->mRecorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method public static bmpToByteArray(Landroid/graphics/Bitmap;Z)[B
    .locals 3

    .line 381
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 382
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    if-eqz p1, :cond_0

    .line 384
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 387
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 389
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 391
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method private buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static clearCurLocation()V
    .locals 1

    .line 1100
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->map:Lcom/happyplay/util/LocationManager;

    invoke-virtual {v0}, Lcom/happyplay/util/LocationManager;->clearCurLocation()V

    return-void
.end method

.method private closeAndroidPDialog()V
    .locals 5

    .line 818
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "android.content.pm.PackageParser$Package"

    .line 823
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 824
    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 825
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 827
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    :try_start_1
    const-string v2, "android.app.ActivityThread"

    .line 830
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentActivityThread"

    .line 831
    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 832
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x0

    .line 833
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "mHiddenApiWarningShown"

    .line 834
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 835
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 836
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 838
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static customExitGame()V
    .locals 2

    .line 291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 292
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 293
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 294
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v1, v0}, Lorg/cocos2dx/javascript/AppActivity;->startActivity(Landroid/content/Intent;)V

    .line 295
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public static downLoadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 575
    new-instance v0, Lorg/cocos2dx/javascript/AppActivity$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/cocos2dx/javascript/AppActivity$10;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    invoke-virtual {v0}, Lorg/cocos2dx/javascript/AppActivity$10;->start()V

    return-void
.end method

.method public static endRecord(Ljava/lang/String;)V
    .locals 1

    .line 638
    sget-boolean v0, Lorg/cocos2dx/javascript/AppActivity;->isStartRecording:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/cocos2dx/javascript/AppActivity;->isRecording:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 643
    :try_start_0
    sput-boolean v0, Lorg/cocos2dx/javascript/AppActivity;->isRecording:Z

    .line 644
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 645
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 646
    sput-object v0, Lorg/cocos2dx/javascript/AppActivity;->mRecorder:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 648
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 651
    :goto_0
    new-instance v0, Lorg/cocos2dx/javascript/AppActivity$11;

    invoke-direct {v0, p0}, Lorg/cocos2dx/javascript/AppActivity$11;-><init>(Ljava/lang/String;)V

    .line 659
    invoke-virtual {v0}, Lorg/cocos2dx/javascript/AppActivity$11;->start()V

    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method public static getAndroidApkVersion()Ljava/lang/String;
    .locals 5

    const-string v0, "error:"

    .line 766
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v1}, Lorg/cocos2dx/javascript/AppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 768
    :try_start_0
    sget-object v2, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v2}, Lorg/cocos2dx/javascript/AppActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 769
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 770
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "apk info"

    .line 771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apk_VersionCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "apk info"

    .line 772
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apk_VersionName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 777
    :catch_1
    :goto_0
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    const-string v2, "getAndroidApkVersion_back"

    invoke-virtual {v0, v2, v1}, Lorg/cocos2dx/javascript/AppActivity;->RunJS(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getAndroidVersionCode()Ljava/lang/String;
    .locals 5

    .line 799
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/javascript/AppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 801
    :try_start_0
    sget-object v2, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v2}, Lorg/cocos2dx/javascript/AppActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 802
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    :try_start_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v1, "apk info"

    .line 804
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apk_VersionCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "apk info"

    .line 805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apk_VersionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    .line 810
    :catch_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAndroidVersionName()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 783
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v1}, Lorg/cocos2dx/javascript/AppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 785
    :try_start_0
    sget-object v2, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v2}, Lorg/cocos2dx/javascript/AppActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 786
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 787
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "apk info"

    .line 788
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apk_VersionCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "apk info"

    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apk_VersionName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    :goto_0
    return-object v1
.end method

.method public static getCurLocation()Ljava/lang/String;
    .locals 1

    .line 1090
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->map:Lcom/happyplay/util/LocationManager;

    invoke-virtual {v0}, Lcom/happyplay/util/LocationManager;->getCurLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFilesDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 673
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 680
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 681
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 685
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 686
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 689
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFormattedAddress()Ljava/lang/String;
    .locals 1

    .line 1075
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->map:Lcom/happyplay/util/LocationManager;

    invoke-static {}, Lcom/happyplay/util/LocationManager;->getCurAddressInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFromClipboard()Ljava/lang/String;
    .locals 1

    .line 1181
    invoke-static {}, Lcom/happyplay/util/ClipUtil;->getFromClipboard()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLatitudePos()Ljava/lang/String;
    .locals 1

    .line 1080
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->map:Lcom/happyplay/util/LocationManager;

    invoke-virtual {v0}, Lcom/happyplay/util/LocationManager;->getLatitude()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLongitudePos()Ljava/lang/String;
    .locals 1

    .line 1085
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->map:Lcom/happyplay/util/LocationManager;

    invoke-virtual {v0}, Lcom/happyplay/util/LocationManager;->getLongitude()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMapRegeocode()Ljava/lang/String;
    .locals 1

    .line 1070
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->map:Lcom/happyplay/util/LocationManager;

    invoke-virtual {v0}, Lcom/happyplay/util/LocationManager;->getMapRegeocode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMetaValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 974
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 975
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 978
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 981
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "hnphz_AppActivity"

    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static getNetStauts()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 1540
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lorg/cocos2dx/javascript/AppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1541
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1542
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1543
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v0, "WIFI"

    goto :goto_0

    .line 1546
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "mobile"

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getOrientation()Ljava/lang/String;
    .locals 2

    .line 1318
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/javascript/AppActivity;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "true"

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "false"

    return-object v0
.end method

.method public static getPhoneList()V
    .locals 2

    .line 1442
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    if-eqz v0, :cond_1

    .line 1443
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1445
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-direct {v0}, Lorg/cocos2dx/javascript/AppActivity;->toJsClient()V

    goto :goto_0

    .line 1447
    :cond_0
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-direct {v0}, Lorg/cocos2dx/javascript/AppActivity;->readContacts()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getRadius()Ljava/lang/String;
    .locals 1

    .line 1095
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->map:Lcom/happyplay/util/LocationManager;

    invoke-virtual {v0}, Lcom/happyplay/util/LocationManager;->getRadius()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRemoteIpByAliDun(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public static getRoomData()Ljava/lang/String;
    .locals 3

    .line 1019
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRoomData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/cocos2dx/javascript/AppActivity;->roomData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1020
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->roomData:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, ""

    .line 1023
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->roomData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 1024
    sput-object v1, Lorg/cocos2dx/javascript/AppActivity;->roomData:Ljava/lang/String;

    return-object v0
.end method

.method public static getSignature()Ljava/lang/String;
    .locals 7

    .line 1250
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    .line 1251
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, ""

    .line 1253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1256
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x40

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1258
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    .line 1259
    aget-object v4, v0, v1

    .line 1262
    array-length v5, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v0, v1

    .line 1263
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1266
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "getSignature"

    .line 1268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2dx/javascript/AppActivity;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1273
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v2

    :goto_1
    return-object v0
.end method

.method public static hasPermission(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "\u8c03\u7528\u4e86\u6743\u9650\u83b7\u53d6\u60c5\u51b5\uff1a"

    .line 1104
    invoke-static {v0}, Lorg/cocos2dx/javascript/AppActivity;->LogD(Ljava/lang/String;)V

    .line 1105
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->permission:Lcom/happyplay/util/PermissionUtils;

    invoke-static {p0}, Lcom/happyplay/util/PermissionUtils;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private hideSystemUI()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1146
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1606

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private initPermission()V
    .locals 2

    .line 916
    invoke-static {p0}, Lorg/cocos2dx/javascript/CheckPermissionUtils;->checkPermission(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 917
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    .line 921
    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static initRecorder()V
    .locals 9

    const/16 v0, 0x3e80

    const/16 v1, 0x10

    const/4 v2, 0x2

    .line 696
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v8

    .line 698
    new-array v0, v8, [S

    sput-object v0, Lorg/cocos2dx/javascript/AppActivity;->mBuffer:[S

    .line 699
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v4, 0x1

    const/16 v5, 0x3e80

    const/16 v6, 0x10

    const/4 v7, 0x2

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    sput-object v0, Lorg/cocos2dx/javascript/AppActivity;->mRecorder:Landroid/media/AudioRecord;

    return-void
.end method

.method public static internetStatus()Ljava/lang/String;
    .locals 2

    .line 1339
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const-string v0, "0|\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5"

    return-object v0

    .line 1345
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1346
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 1351
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1353
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1355
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_2

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_3

    :cond_2
    const-string v0, "1|wifi"

    return-object v0

    .line 1362
    :cond_3
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1363
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "2|\u8702\u7a9d\u7f51\u7edc"

    return-object v0

    :pswitch_0
    const-string v0, "2|4G"

    return-object v0

    :pswitch_1
    const-string v0, "2|3G"

    return-object v0

    :pswitch_2
    const-string v0, "2|2G"

    return-object v0

    :cond_4
    :goto_0
    const-string v0, "0|\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isWxInstall()Ljava/lang/String;
    .locals 1

    .line 412
    invoke-static {}, Lcom/happyplay/util/WeChatUtil;->isWxInstall()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    return-object v0
.end method

.method public static leaveRoom()V
    .locals 0

    return-void
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "MD5"

    .line 1282
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1290
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    const-string v4, "0"

    .line 1291
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1294
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 1286
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Huh, UTF-8 should be supported?"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1284
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Huh, MD5 should be supported?"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static openWXappOnly()V
    .locals 0

    .line 1031
    invoke-static {}, Lcom/happyplay/util/WeChatUtil;->openWXApp()V

    return-void
.end method

.method public static openWebVeiw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 937
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    new-instance v1, Lorg/cocos2dx/javascript/AppActivity$13;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/javascript/AppActivity$13;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private processRoomData()V
    .locals 6

    .line 999
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1000
    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1001
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1002
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheme:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    .line 1004
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 1005
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 1007
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "host:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1008
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataString:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1011
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "roomdata"

    .line 1013
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/javascript/AppActivity;->roomData:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static reInitBdMapSDK()V
    .locals 1

    .line 1053
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->map:Lcom/happyplay/util/LocationManager;

    if-eqz v0, :cond_0

    .line 1054
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->map:Lcom/happyplay/util/LocationManager;

    invoke-virtual {v0}, Lcom/happyplay/util/LocationManager;->startLocation()V

    :cond_0
    return-void
.end method

.method private readContacts()V
    .locals 10

    .line 1461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->contacts:Ljava/util/ArrayList;

    .line 1462
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "phoneType"

    .line 1463
    sget-object v2, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v2}, Lorg/cocos2dx/javascript/AppActivity;->getSystemModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phoneType"

    .line 1464
    sget-object v2, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v2}, Lorg/cocos2dx/javascript/AppActivity;->getSystemModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1466
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "contact_id"

    const-string v1, "sort_key"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "sort_key"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1468
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 1469
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1472
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "data1"

    const-string v6, "mimetype"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "contact_id=?"

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    aput-object v2, v7, v1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1476
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1477
    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1478
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1479
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1482
    iput-object v4, p0, Lorg/cocos2dx/javascript/AppActivity;->data:Ljava/lang/String;

    const-string v6, "vnd.android.cursor.item/phone_v2"

    .line 1483
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v5, "phone"

    .line 1484
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v6, "vnd.android.cursor.item/name"

    .line 1485
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "name"

    .line 1486
    invoke-static {v4}, Lcom/happyplay/util/EscapeUtil;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1488
    :cond_3
    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1490
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1494
    :cond_5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1495
    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1496
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1497
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 1500
    :cond_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "phones"

    .line 1502
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1504
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    const-string v0, "\u81ea\u5b9a\u4e49\u7684json"

    .line 1506
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "phoneList"

    .line 1507
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->RunJS(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public static requestPermission(Ljava/lang/String;)V
    .locals 1

    .line 1109
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->permission:Lcom/happyplay/util/PermissionUtils;

    invoke-static {p0}, Lcom/happyplay/util/PermissionUtils;->requestPermission(Ljava/lang/String;)V

    return-void
.end method

.method public static returnRoom()V
    .locals 0

    return-void
.end method

.method public static setOrientation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "-1"

    const-string v1, "1"

    .line 1302
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1303
    sget-object p0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cocos2dx/javascript/AppActivity;->setRequestedOrientation(I)V

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v1, "2"

    .line 1306
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1307
    sget-object p0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2dx/javascript/AppActivity;->setRequestedOrientation(I)V

    const-string v0, "2"

    goto :goto_0

    :cond_1
    const-string v1, "3"

    .line 1310
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1311
    sget-object p0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/cocos2dx/javascript/AppActivity;->setRequestedOrientation(I)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static showJavaLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1530
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static showTips()V
    .locals 3

    .line 1113
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u9192"

    .line 1114
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u4eb2,\u771f\u7684\u4e0d\u73a9\u4e86\uff0c\u8981\u9000\u51fa\u5417\uff1f"

    .line 1115
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u6b8b\u5fcd\u9000\u51fa"

    new-instance v2, Lorg/cocos2dx/javascript/AppActivity$15;

    invoke-direct {v2}, Lorg/cocos2dx/javascript/AppActivity$15;-><init>()V

    .line 1116
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u518d\u73a9\u4f1a\u513f"

    new-instance v2, Lorg/cocos2dx/javascript/AppActivity$14;

    invoke-direct {v2}, Lorg/cocos2dx/javascript/AppActivity$14;-><init>()V

    .line 1131
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1137
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1138
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startBufferedWrite(Ljava/io/File;)V
    .locals 2

    .line 710
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/cocos2dx/javascript/AppActivity$12;

    invoke-direct {v1, p0, p1}, Lorg/cocos2dx/javascript/AppActivity$12;-><init>(Lorg/cocos2dx/javascript/AppActivity;Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 751
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static startLocation()V
    .locals 1

    const-string v0, "\u542f\u52a8\u5b9a\u4f4d"

    .line 1059
    invoke-static {v0}, Lorg/cocos2dx/javascript/AppActivity;->LogD(Ljava/lang/String;)V

    .line 1060
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->map:Lcom/happyplay/util/LocationManager;

    invoke-virtual {v0}, Lcom/happyplay/util/LocationManager;->startLocation()V

    return-void
.end method

.method public static startRecord(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 591
    sget-boolean v0, Lorg/cocos2dx/javascript/AppActivity;->isStartRecording:Z

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 598
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".temp.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/javascript/AppActivity;->tempFile:Ljava/lang/String;

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".mp3"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lorg/cocos2dx/javascript/AppActivity;->mp3Path:Ljava/lang/String;

    .line 601
    invoke-static {}, Lorg/cocos2dx/javascript/AppActivity;->initRecorder()V

    const/4 p0, 0x1

    .line 603
    sput-boolean p0, Lorg/cocos2dx/javascript/AppActivity;->isRecording:Z

    .line 604
    sput-boolean p0, Lorg/cocos2dx/javascript/AppActivity;->isStartRecording:Z

    .line 605
    sput-boolean p0, Lorg/cocos2dx/javascript/AppActivity;->canSend:Z

    .line 608
    :try_start_0
    sget-object p0, Lorg/cocos2dx/javascript/AppActivity;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 610
    sput-boolean p0, Lorg/cocos2dx/javascript/AppActivity;->canSend:Z

    const-string p0, "android.permission.RECORD_AUDIO"

    .line 611
    invoke-static {p0}, Lorg/cocos2dx/javascript/AppActivity;->requestPermission(Ljava/lang/String;)V

    .line 614
    :goto_0
    new-instance p0, Ljava/io/File;

    sget-object p1, Lorg/cocos2dx/javascript/AppActivity;->tempFile:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 616
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 618
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const/4 p1, 0x0

    .line 621
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    move-object p0, p1

    .line 625
    :cond_1
    :goto_1
    sget-object p1, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    if-nez p0, :cond_2

    new-instance p0, Ljava/io/File;

    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->tempFile:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p1, p0}, Lorg/cocos2dx/javascript/AppActivity;->startBufferedWrite(Ljava/io/File;)V

    const-string p0, "fanjiaheTest"

    .line 628
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startRecord"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->tempFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "||"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->mp3Path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    sget-object p0, Lorg/cocos2dx/javascript/AppActivity;->mp3Path:Ljava/lang/String;

    return-object p0
.end method

.method public static stopLocation()V
    .locals 1

    .line 1065
    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->map:Lcom/happyplay/util/LocationManager;

    invoke-virtual {v0}, Lcom/happyplay/util/LocationManager;->stopLocation()V

    return-void
.end method

.method private toJsClient()V
    .locals 2

    const-string v0, "noReadContacts"

    const-string v1, "no"

    .line 1453
    invoke-virtual {p0, v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->RunJS(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 552
    new-instance v0, Lorg/cocos2dx/javascript/AppActivity$9;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2dx/javascript/AppActivity$9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0}, Lorg/cocos2dx/javascript/AppActivity$9;->start()V

    return-void
.end method

.method public static vioceStart()V
    .locals 0

    return-void
.end method

.method public static voiceStop()V
    .locals 0

    return-void
.end method

.method public static writeToClipboard(Ljava/lang/String;)V
    .locals 0

    .line 1176
    invoke-static {p0}, Lcom/happyplay/util/ClipUtil;->writeToClipboard(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public RunJS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 235
    new-instance v0, Lorg/cocos2dx/javascript/AppActivity$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/javascript/AppActivity$1;-><init>(Lorg/cocos2dx/javascript/AppActivity;)V

    .line 255
    invoke-virtual {v0, p1, p2}, Lorg/cocos2dx/javascript/AppActivity$1;->setjs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    .line 235
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public RunJS_obj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 260
    new-instance v0, Lorg/cocos2dx/javascript/AppActivity$2;

    invoke-direct {v0, p0}, Lorg/cocos2dx/javascript/AppActivity$2;-><init>(Lorg/cocos2dx/javascript/AppActivity;)V

    .line 276
    invoke-virtual {v0, p1, p2}, Lorg/cocos2dx/javascript/AppActivity$2;->setjs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    .line 260
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public calculateLineDistance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1189
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1190
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    .line 1192
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 1195
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 1198
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 1204
    new-instance p1, Ljava/text/DecimalFormat;

    const-string p2, "0.0"

    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    float-to-double p3, p2

    .line 1205
    invoke-virtual {p1, p3, p4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string p3, "gaode"

    .line 1207
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u73a9\u5bb6A\u548c\u73a9\u5bb6B\u4e4b\u95f4\u7684\u8ddd\u79bb\u4e3a\uff1a"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public getBatteryCount()V
    .locals 2

    .line 281
    new-instance v0, Lorg/cocos2dx/javascript/AppActivity$BatteryReceiver;

    invoke-direct {v0, p0}, Lorg/cocos2dx/javascript/AppActivity$BatteryReceiver;-><init>(Lorg/cocos2dx/javascript/AppActivity;)V

    iput-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->receiver:Lorg/cocos2dx/javascript/AppActivity$BatteryReceiver;

    .line 282
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lorg/cocos2dx/javascript/AppActivity;->receiver:Lorg/cocos2dx/javascript/AppActivity$BatteryReceiver;

    invoke-virtual {p0, v1, v0}, Lorg/cocos2dx/javascript/AppActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public getSystemModel()Ljava/lang/String;
    .locals 1

    .line 1457
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    .line 844
    invoke-super {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->setEnableVirtualButton(Z)V

    .line 845
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 847
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->isTaskRoot()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 854
    :cond_0
    invoke-direct {p0}, Lorg/cocos2dx/javascript/AppActivity;->initPermission()V

    .line 856
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setMultipleTouchEnabled(Z)V

    .line 857
    sput-object p0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    .line 858
    invoke-direct {p0}, Lorg/cocos2dx/javascript/AppActivity;->hideSystemUI()V

    .line 859
    invoke-direct {p0}, Lorg/cocos2dx/javascript/AppActivity;->closeAndroidPDialog()V

    .line 861
    invoke-static {p0}, Lcom/happyplay/util/WeChatUtil;->init(Lorg/cocos2dx/javascript/AppActivity;)V

    .line 864
    invoke-static {p0}, Lcom/happyplay/util/ClipUtil;->init(Lorg/cocos2dx/javascript/AppActivity;)V

    .line 866
    new-instance p1, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    invoke-direct {p1, p0}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;-><init>(Landroid/content/Context;)V

    .line 867
    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->mBuglyAppID:Ljava/lang/String;

    invoke-static {p0, v1, v0, p1}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V

    .line 869
    invoke-direct {p0}, Lorg/cocos2dx/javascript/AppActivity;->processRoomData()V

    .line 872
    new-instance p1, Lcom/happyplay/util/LocationManager;

    sget-object v0, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-direct {p1, v0}, Lcom/happyplay/util/LocationManager;-><init>(Lorg/cocos2dx/javascript/AppActivity;)V

    sput-object p1, Lorg/cocos2dx/javascript/AppActivity;->map:Lcom/happyplay/util/LocationManager;

    .line 874
    invoke-static {}, Lcom/happyplay/util/PermissionUtils;->getInstance()Lcom/happyplay/util/PermissionUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/happyplay/util/PermissionUtils;->init(Landroid/app/Activity;)V

    .line 876
    new-instance p1, Lorg/cocos2dx/javascript/AppActivity$VibratorUtil;

    invoke-direct {p1, p0}, Lorg/cocos2dx/javascript/AppActivity$VibratorUtil;-><init>(Lorg/cocos2dx/javascript/AppActivity;)V

    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity;->vibrato:Lorg/cocos2dx/javascript/AppActivity$VibratorUtil;

    .line 877
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 882
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string v0, "false"

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 883
    new-instance v0, Ljava/lang/String;

    const-string v1, "false"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v1, "true"

    .line 885
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "location.txt"

    const-string v0, "has gaode"

    .line 886
    invoke-virtual {p0, p1, v0}, Lorg/cocos2dx/javascript/AppActivity;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "iosiap.txt"

    const-string v0, "has gaode"

    .line 887
    invoke-virtual {p0, p1, v0}, Lorg/cocos2dx/javascript/AppActivity;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "wxshare.txt"

    const-string v0, "has gaode"

    .line 888
    invoke-virtual {p0, p1, v0}, Lorg/cocos2dx/javascript/AppActivity;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "wxShareType.txt"

    const-string v0, "has type"

    .line 889
    invoke-virtual {p0, p1, v0}, Lorg/cocos2dx/javascript/AppActivity;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "copyRoomID.txt"

    const-string v0, "has copyRoomID"

    .line 890
    invoke-virtual {p0, p1, v0}, Lorg/cocos2dx/javascript/AppActivity;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "newVersion20181025.txt"

    const-string v0, "newVersion20181025"

    .line 891
    invoke-virtual {p0, p1, v0}, Lorg/cocos2dx/javascript/AppActivity;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "countApp.txt"

    const-string v0, "has countApp"

    .line 892
    invoke-virtual {p0, p1, v0}, Lorg/cocos2dx/javascript/AppActivity;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "baiduMap.txt"

    const-string v0, "has baiduMap"

    .line 893
    invoke-virtual {p0, p1, v0}, Lorg/cocos2dx/javascript/AppActivity;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Cocos317Engine.txt"

    const-string v0, "has Cocos317Engine"

    .line 894
    invoke-virtual {p0, p1, v0}, Lorg/cocos2dx/javascript/AppActivity;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "true"

    .line 895
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "newVersionOne.txt"

    const-string v0, "newVersionOne"

    .line 896
    invoke-virtual {p0, p1, v0}, Lorg/cocos2dx/javascript/AppActivity;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "newVersionTwo.txt"

    const-string v0, "newVersionTwo"

    .line 897
    invoke-virtual {p0, p1, v0}, Lorg/cocos2dx/javascript/AppActivity;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "newVersionThree"

    const-string v0, "newVersionThree"

    .line 898
    invoke-virtual {p0, p1, v0}, Lorg/cocos2dx/javascript/AppActivity;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "baiduLocation.txt"

    const-string v0, "baiduLocation"

    .line 899
    invoke-virtual {p0, p1, v0}, Lorg/cocos2dx/javascript/AppActivity;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "newLianYun.txt"

    const-string v0, "newLianYun"

    .line 900
    invoke-virtual {p0, p1, v0}, Lorg/cocos2dx/javascript/AppActivity;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "newLianYun2.txt"

    const-string v0, "newLianYun2"

    .line 901
    invoke-virtual {p0, p1, v0}, Lorg/cocos2dx/javascript/AppActivity;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Cocos317Engine.txt"

    const-string v0, "has Cocos317Engine"

    .line 902
    invoke-virtual {p0, p1, v0}, Lorg/cocos2dx/javascript/AppActivity;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->writeMyVersionFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 909
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/PersistableBundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 508
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 509
    invoke-super {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 8

    .line 1240
    new-instance v7, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v7, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x8

    move-object v0, v7

    .line 1243
    invoke-virtual/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    return-object v7
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1165
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "showExitGamePanel"

    const-string p2, "noPar"

    .line 1167
    invoke-virtual {p0, p1, p2}, Lorg/cocos2dx/javascript/AppActivity;->RunJS(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 1171
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onNativeVibrato([JZ)V
    .locals 2

    .line 287
    iget-object v0, p0, Lorg/cocos2dx/javascript/AppActivity;->vibrato:Lorg/cocos2dx/javascript/AppActivity$VibratorUtil;

    sget-object v1, Lorg/cocos2dx/javascript/AppActivity;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v0, v1, p1, p2}, Lorg/cocos2dx/javascript/AppActivity$VibratorUtil;->Vibrate(Landroid/app/Activity;[JZ)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 990
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 991
    invoke-virtual {p0, p1}, Lorg/cocos2dx/javascript/AppActivity;->setIntent(Landroid/content/Intent;)V

    .line 993
    invoke-direct {p0}, Lorg/cocos2dx/javascript/AppActivity;->processRoomData()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1232
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 1233
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onPause()V

    .line 1234
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1225
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 1226
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onResume()V

    .line 1227
    invoke-virtual {p0}, Lorg/cocos2dx/javascript/AppActivity;->getGLSurfaceView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onResume()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1156
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onWindowFocusChanged(Z)V

    .line 1158
    invoke-direct {p0}, Lorg/cocos2dx/javascript/AppActivity;->hideSystemUI()V

    if-eqz p1, :cond_phz_no_eval

    const-string v0, "__PHZ_EVAL__"

    const-string v1, "(function(g){if(g.__PHZ_PATCH_BOOT_REQUESTED)return;g.__PHZ_PATCH_BOOT_REQUESTED=true;var tries=0;function boot(){try{if(g.jsb&&g.jsb.fileUtils&&g.jsclient){var s=g.jsb.fileUtils.getStringFromFile('src/REA_ModPatch.js');if(s&&s.length){(0,eval)(s);if(g.__PHZ_PATCH_LOADED)return;}}}catch(e){}tries++;if(tries<120&&typeof g.setTimeout==='function')g.setTimeout(boot,250);}boot();})(this);"

    invoke-virtual {p0, v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->RunJS(Ljava/lang/String;Ljava/lang/String;)V

    :cond_phz_no_eval

    return-void
.end method

.method public openURLInBrowser(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 334
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 335
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 336
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 338
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 339
    invoke-virtual {p0, v0}, Lorg/cocos2dx/javascript/AppActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public openWebviewActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 926
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 929
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/cocos2dx/javascript/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    .line 930
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "orientation"

    .line 931
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 932
    invoke-virtual {p0, v0}, Lorg/cocos2dx/javascript/AppActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public writeFileData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1514
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/cocos2dx/javascript/AppActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    .line 1516
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 1517
    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1518
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 1519
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1525
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public writeMyVersionFile()V
    .locals 3

    .line 947
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "wxlineshare"

    const/4 v2, 0x1

    .line 949
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "_location"

    .line 950
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "ShareImgCircle"

    .line 951
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "shareEnterGame"

    .line 952
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "ClipboardSwitch"

    .line 953
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "version"

    const-string v2, "addroid_3.0"

    .line 954
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 957
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    :try_start_1
    const-string v1, "myVersion.json"

    .line 960
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/cocos2dx/javascript/AppActivity;->writeFileData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 962
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public wxLogin()V
    .locals 0

    .line 1035
    invoke-static {}, Lcom/happyplay/util/WeChatUtil;->wxLogin()V

    return-void
.end method

.method public wxShareText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "1"

    .line 1040
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 1041
    invoke-static {p1, p2}, Lcom/happyplay/util/WeChatUtil;->wxShareText(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1043
    invoke-static {p1, p2}, Lcom/happyplay/util/WeChatUtil;->wxShareText(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public wxShareWebView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "1"

    .line 446
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    .line 447
    invoke-static {p1, p2, p3, p4}, Lcom/happyplay/util/WeChatUtil;->wxShareWebView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 449
    invoke-static {p1, p2, p3, p4}, Lcom/happyplay/util/WeChatUtil;->wxShareWebView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
