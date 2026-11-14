.class public Lcom/happyplay/util/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# static fields
.field private static instance:Lcom/happyplay/util/PermissionUtils;

.field public static permissionError:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/happyplay/util/PermissionUtils;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static clearPermissionError()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/happyplay/util/PermissionUtils;->permissionError:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/happyplay/util/PermissionUtils;
    .locals 1

    .line 20
    sget-object v0, Lcom/happyplay/util/PermissionUtils;->instance:Lcom/happyplay/util/PermissionUtils;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/happyplay/util/PermissionUtils;

    invoke-direct {v0}, Lcom/happyplay/util/PermissionUtils;-><init>()V

    sput-object v0, Lcom/happyplay/util/PermissionUtils;->instance:Lcom/happyplay/util/PermissionUtils;

    .line 23
    :cond_0
    sget-object v0, Lcom/happyplay/util/PermissionUtils;->instance:Lcom/happyplay/util/PermissionUtils;

    return-object v0
.end method

.method public static getPermissionError()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/happyplay/util/PermissionUtils;->permissionError:Ljava/lang/String;

    return-object v0
.end method

.method public static hasPermission(Ljava/lang/String;)Z
    .locals 1

    .line 32
    invoke-static {}, Lcom/happyplay/util/PermissionUtils;->getInstance()Lcom/happyplay/util/PermissionUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/happyplay/util/PermissionUtils;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static requestPermission(Ljava/lang/String;)V
    .locals 4

    .line 35
    invoke-static {}, Lcom/happyplay/util/PermissionUtils;->getInstance()Lcom/happyplay/util/PermissionUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/happyplay/util/PermissionUtils;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/happyplay/util/PermissionUtils;->getInstance()Lcom/happyplay/util/PermissionUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/happyplay/util/PermissionUtils;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v2, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static setPermissionError(Ljava/lang/String;)V
    .locals 0

    .line 44
    sput-object p0, Lcom/happyplay/util/PermissionUtils;->permissionError:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/happyplay/util/PermissionUtils;->mActivity:Landroid/app/Activity;

    return-void
.end method
