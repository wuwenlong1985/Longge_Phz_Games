.class public Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;
.super Ljava/lang/Object;
.source "PermissionCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 261
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;->a:I

    const-string v0, "-1"

    .line 265
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;->b:Ljava/lang/String;

    const-string v0, "-1"

    .line 269
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;->c:Ljava/lang/String;

    const-string v0, ""

    .line 273
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "=============================================\n----------------- \u9274\u6743\u9519\u8bef\u4fe1\u606f ------------\nsha1;package:%s\nkey:%s\nerrorcode: %d uid: %s appid %s msg: %s\n\u8bf7\u4ed4\u7ec6\u6838\u67e5 SHA1\u3001package\u4e0ekey\u7533\u8bf7\u4fe1\u606f\u662f\u5426\u5bf9\u5e94\uff0ckey\u662f\u5426\u5220\u9664\uff0c\u5e73\u53f0\u662f\u5426\u5339\u914d\n=============================================\n"

    const/4 v1, 0x6

    .line 283
    new-array v1, v1, [Ljava/lang/Object;

    .line 290
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapsdkplatform/comapi/util/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 291
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;->b:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;->c:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;->d:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 283
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
