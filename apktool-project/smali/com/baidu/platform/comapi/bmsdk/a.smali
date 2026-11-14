.class public Lcom/baidu/platform/comapi/bmsdk/a;
.super Ljava/lang/Object;
.source "Bm3DNode.java"


# instance fields
.field private a:Lcom/baidu/platform/comapi/bmsdk/b;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/a;->b:F

    .line 6
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/a;->c:F

    .line 7
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/a;->d:F

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/a;->e:F

    .line 9
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/a;->f:F

    .line 10
    iput v0, p0, Lcom/baidu/platform/comapi/bmsdk/a;->g:F

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/a;->b:F

    .line 42
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/a;->c:F

    .line 43
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/a;->d:F

    return-void
.end method

.method public a(FFF)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/baidu/platform/comapi/bmsdk/a;->e:F

    .line 24
    iput p2, p0, Lcom/baidu/platform/comapi/bmsdk/a;->f:F

    .line 25
    iput p3, p0, Lcom/baidu/platform/comapi/bmsdk/a;->g:F

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/b;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/baidu/platform/comapi/bmsdk/a;->a:Lcom/baidu/platform/comapi/bmsdk/b;

    return-void
.end method
