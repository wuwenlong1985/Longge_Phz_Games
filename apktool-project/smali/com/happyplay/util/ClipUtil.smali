.class public Lcom/happyplay/util/ClipUtil;
.super Ljava/lang/Object;
.source "ClipUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "clipboard"

.field private static ccActivity:Lorg/cocos2dx/javascript/AppActivity; = null

.field public static isLooper:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogD(Ljava/lang/String;)V
    .locals 1

    const-string v0, "clipboard"

    .line 18
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getFromClipboard()Ljava/lang/String;
    .locals 3

    const-string v0, "android getFromClipboard"

    .line 45
    invoke-static {v0}, Lcom/happyplay/util/ClipUtil;->LogD(Ljava/lang/String;)V

    .line 47
    sget-boolean v0, Lcom/happyplay/util/ClipUtil;->isLooper:Z

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 49
    sget-boolean v0, Lcom/happyplay/util/ClipUtil;->isLooper:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/happyplay/util/ClipUtil;->isLooper:Z

    .line 52
    :cond_0
    sget-object v0, Lcom/happyplay/util/ClipUtil;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    const-string v1, "clipboard"

    .line 53
    invoke-virtual {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 54
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android getFromClipboard:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/happyplay/util/ClipUtil;->LogD(Ljava/lang/String;)V

    return-object v0
.end method

.method public static init(Lorg/cocos2dx/javascript/AppActivity;)V
    .locals 1

    const-string v0, "ClipUtil init"

    .line 22
    invoke-static {v0}, Lcom/happyplay/util/ClipUtil;->LogD(Ljava/lang/String;)V

    .line 24
    sput-object p0, Lcom/happyplay/util/ClipUtil;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    const-string p0, "ClipUtil init end"

    .line 26
    invoke-static {p0}, Lcom/happyplay/util/ClipUtil;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public static writeToClipboard(Ljava/lang/String;)V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android writeToClipboard :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/happyplay/util/ClipUtil;->LogD(Ljava/lang/String;)V

    .line 33
    sget-boolean v0, Lcom/happyplay/util/ClipUtil;->isLooper:Z

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 35
    sget-boolean v0, Lcom/happyplay/util/ClipUtil;->isLooper:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/happyplay/util/ClipUtil;->isLooper:Z

    .line 37
    :cond_0
    sget-object v0, Lcom/happyplay/util/ClipUtil;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    const-string v1, "clipboard"

    .line 38
    invoke-virtual {v0, v1}, Lorg/cocos2dx/javascript/AppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "pipi"

    .line 39
    invoke-static {v1, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
