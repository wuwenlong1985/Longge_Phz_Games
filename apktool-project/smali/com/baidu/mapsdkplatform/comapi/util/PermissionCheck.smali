.class public Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;
.super Ljava/lang/Object;
.source "PermissionCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$b;,
        Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$a;,
        Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$c;
    }
.end annotation


# static fields
.field public static a:I = 0xc8

.field public static b:I = 0xca

.field public static c:I = 0xfc

.field private static final d:Ljava/lang/String; = "PermissionCheck"

.field private static e:Landroid/content/Context; = null

.field private static f:Ljava/lang/String; = null

.field private static g:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Lcom/baidu/lbsapi/auth/LBSAuthManager; = null

.field private static i:Lcom/baidu/lbsapi/auth/LBSAuthManagerListener; = null

.field private static j:Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$c; = null

.field private static k:I = 0x259

.field private static l:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .line 27
    sput p0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->k:I

    return p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$c;
    .locals 1

    .line 27
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->j:Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$c;

    return-object v0
.end method

.method static synthetic c()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->l:Z

    return v0
.end method

.method static synthetic d()Landroid/content/Context;
    .locals 1

    .line 27
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->e:Landroid/content/Context;

    return-object v0
.end method

.method public static destory()V
    .locals 1

    const/4 v0, 0x0

    .line 203
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->j:Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$c;

    .line 204
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->e:Landroid/content/Context;

    .line 206
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->i:Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;

    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static getApiKey()Ljava/lang/String;
    .locals 1

    .line 199
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static getPermissionResult()I
    .locals 1

    .line 210
    sget v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->k:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 9

    .line 77
    sput-object p0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->e:Landroid/content/Context;

    const/4 v0, 0x0

    .line 80
    :try_start_0
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->e:Landroid/content/Context;

    .line 81
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 84
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    .line 87
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.baidu.lbsapi.API_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->f:Ljava/lang/String;

    .line 91
    :cond_0
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->g:Ljava/util/Hashtable;

    if-nez v1, :cond_1

    .line 92
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->g:Ljava/util/Hashtable;

    .line 95
    :cond_1
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->h:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    if-nez v1, :cond_2

    .line 96
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/LBSAuthManager;

    move-result-object v1

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->h:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    .line 99
    :cond_2
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->i:Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;

    if-nez v1, :cond_3

    .line 100
    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$a;

    invoke-direct {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$a;-><init>(Lcom/baidu/mapsdkplatform/comapi/util/h;)V

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->i:Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;

    :cond_3
    const-string v0, ""

    const/4 v1, 0x0

    .line 106
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 107
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    .line 112
    :goto_1
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 114
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->g:Ljava/util/Hashtable;

    const-string v3, "mb"

    const-string v4, "mb"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->g:Ljava/util/Hashtable;

    const-string v3, "os"

    const-string v4, "os"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->g:Ljava/util/Hashtable;

    const-string v3, "sv"

    const-string v4, "sv"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->g:Ljava/util/Hashtable;

    const-string v3, "imt"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->g:Ljava/util/Hashtable;

    const-string v3, "net"

    const-string v4, "net"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->g:Ljava/util/Hashtable;

    const-string v3, "cpu"

    const-string v4, "cpu"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->g:Ljava/util/Hashtable;

    const-string v3, "glr"

    const-string v4, "glr"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->g:Ljava/util/Hashtable;

    const-string v3, "glv"

    const-string v4, "glv"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->g:Ljava/util/Hashtable;

    const-string v3, "resid"

    const-string v4, "resid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->g:Ljava/util/Hashtable;

    const-string v3, "appid"

    const-string v4, "-1"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->g:Ljava/util/Hashtable;

    const-string v3, "ver"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->g:Ljava/util/Hashtable;

    const-string v3, "screen"

    const-string v4, "(%d,%d)"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "screen_x"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "screen_y"

    .line 127
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 126
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->g:Ljava/util/Hashtable;

    const-string v3, "dpi"

    const-string v4, "(%d,%d)"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "dpi_x"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v1, "dpi_y"

    .line 129
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    .line 128
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->g:Ljava/util/Hashtable;

    const-string v1, "pcn"

    const-string v3, "pcn"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->g:Ljava/util/Hashtable;

    const-string v1, "cuid"

    const-string v3, "cuid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->g:Ljava/util/Hashtable;

    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method public static declared-synchronized permissionCheck()I
    .locals 6

    const-class v0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;

    monitor-enter v0

    .line 156
    :try_start_0
    sget-boolean v1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 157
    monitor-exit v0

    return v2

    .line 159
    :cond_0
    :try_start_1
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->h:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->i:Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->e:Landroid/content/Context;

    if-nez v1, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->h:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    sget-object v3, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->setKey(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/b;->b()Lcom/baidu/mapapi/CommonInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 173
    invoke-virtual {v1}, Lcom/baidu/mapapi/CommonInfo;->getAndroidID()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 175
    sget-object v3, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->h:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    invoke-virtual {v3, v1}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->setAndroidId(Ljava/lang/String;)V

    .line 180
    :cond_2
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->h:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    const-string v3, "lbs_androidmapsdk"

    sget-object v4, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->g:Ljava/util/Hashtable;

    sget-object v5, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->i:Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->authenticate(ZLjava/lang/String;Ljava/util/Hashtable;Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "permission check result is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :cond_3
    monitor-exit v0

    return v1

    .line 160
    :cond_4
    :goto_0
    :try_start_2
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The authManager is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->h:Lcom/baidu/lbsapi/auth/LBSAuthManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; the authCallback is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->i:Lcom/baidu/lbsapi/auth/LBSAuthManagerListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; the mContext is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->e:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 155
    monitor-exit v0

    throw v1
.end method

.method public static setApiKey(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 193
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 194
    sput-object p0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static setPermissionCheckResultListener(Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$c;)V
    .locals 0

    .line 61
    sput-object p0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->j:Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck$c;

    return-void
.end method

.method public static setPrivacyMode(Z)V
    .locals 0

    .line 65
    sput-boolean p0, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->l:Z

    if-eqz p0, :cond_0

    .line 67
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/PermissionCheck;->permissionCheck()I

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->a()V

    :goto_0
    return-void
.end method
