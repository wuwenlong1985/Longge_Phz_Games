.class public Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;
.super Lcom/baidu/platform/comapi/bmsdk/BmObject;
.source "BmTextStyle.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 15
    invoke-static {}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->nativeCreate()J

    move-result-wide v0

    const/16 v2, 0x36

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmObject;-><init>(IJ)V

    const v0, -0xcccccd

    .line 8
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->a:I

    const/16 v0, 0x16

    .line 9
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->b:I

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->c:I

    .line 11
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->d:I

    .line 12
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->e:I

    return-void
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeSetBorderColor(JI)Z
.end method

.method private static native nativeSetBorderWidth(JI)Z
.end method

.method private static native nativeSetFontOption(JI)Z
.end method

.method private static native nativeSetTextColor(JI)Z
.end method

.method private static native nativeSetTextSize(JI)Z
.end method


# virtual methods
.method public a()Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;
    .locals 2

    .line 69
    new-instance v0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;-><init>()V

    .line 70
    iget v1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->a(I)Z

    .line 71
    iget v1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->b:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->b(I)Z

    .line 72
    iget v1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->c:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->c(I)Z

    .line 73
    iget v1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->d:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->d(I)Z

    .line 74
    iget v1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->e:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->e(I)Z

    return-object v0
.end method

.method public a(I)Z
    .locals 2

    .line 24
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->a:I

    .line 25
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->nativeInstance:J

    invoke-static {p1}, Lcom/baidu/platform/comapi/bmsdk/style/a;->a(I)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->nativeSetTextColor(JI)Z

    move-result p1

    return p1
.end method

.method public b(I)Z
    .locals 2

    .line 34
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->b:I

    .line 35
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->nativeSetTextSize(JI)Z

    move-result p1

    return p1
.end method

.method public c(I)Z
    .locals 2

    .line 44
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->c:I

    .line 45
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->nativeInstance:J

    invoke-static {p1}, Lcom/baidu/platform/comapi/bmsdk/style/a;->a(I)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->nativeSetBorderColor(JI)Z

    move-result p1

    return p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->a()Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Z
    .locals 2

    .line 54
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->d:I

    .line 55
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->nativeSetBorderWidth(JI)Z

    move-result p1

    return p1
.end method

.method public e(I)Z
    .locals 2

    .line 64
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->e:I

    .line 65
    iget-wide v0, p0, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->nativeInstance:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comapi/bmsdk/style/BmTextStyle;->nativeSetFontOption(JI)Z

    move-result p1

    return p1
.end method
