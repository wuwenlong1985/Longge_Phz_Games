.class public Lcom/happyplay/util/TemplateUtil;
.super Ljava/lang/Object;
.source "TemplateUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "template"

.field private static ccActivity:Lorg/cocos2dx/javascript/AppActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogD(Ljava/lang/String;)V
    .locals 1

    const-string v0, "template"

    .line 17
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public init(Lorg/cocos2dx/javascript/AppActivity;)V
    .locals 1

    const-string v0, "TemplateUtil init"

    .line 21
    invoke-static {v0}, Lcom/happyplay/util/TemplateUtil;->LogD(Ljava/lang/String;)V

    .line 23
    sput-object p1, Lcom/happyplay/util/TemplateUtil;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    const-string p1, "TemplateUtil init end"

    .line 25
    invoke-static {p1}, Lcom/happyplay/util/TemplateUtil;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method
