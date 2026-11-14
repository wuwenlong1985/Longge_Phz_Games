.class public Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;
.super Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;
.source "BmLabelUI.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 15
    invoke-static {}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->nativeCreate()J

    move-result-wide v0

    const/16 v2, 0x21

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmBaseUI;-><init>(IJ)V

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a:Ljava/lang/String;

    return-void
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeSetMaxLines(JI)Z
.end method

.method private static native nativeSetMinLines(JI)Z
.end method

.method private static native nativeSetStyle(JJ)Z
.end method

.method private static native nativeSetText(JLjava/lang/String;)Z
.end method


# virtual methods
.method public a(Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;)Z
    .locals 4

    .line 36
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->b:Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;

    if-eqz p1, :cond_0

    .line 39
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->nativeInstance:J

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->nativeSetStyle(JJ)Z

    move-result p1

    return p1

    .line 42
    :cond_0
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->nativeInstance:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->nativeSetStyle(JJ)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .line 22
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->a:Ljava/lang/String;

    .line 23
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->nativeSetText(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public e(I)Z
    .locals 2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 61
    :cond_0
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/ui/BmLabelUI;->nativeSetMaxLines(JI)Z

    move-result p1

    return p1
.end method
