.class public Lcom/baidu/mapsdkplatform/comapi/util/k;
.super Ljava/lang/Object;
.source "SysOSAPI.java"


# static fields
.field private static A:Ljava/lang/String; = "-1"

.field private static B:Ljava/lang/String; = ""

.field private static C:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static D:Ljava/lang/String; = ""

.field private static E:Ljava/lang/String; = null

.field private static F:Z = false

.field private static G:Z = false

.field public static a:Landroid/content/Context; = null

.field public static b:F = 1.0f

.field public static c:Ljava/lang/String; = null

.field private static final d:Ljava/lang/String; = "k"

.field private static e:Lcom/baidu/mapsdkplatform/comjni/util/a; = null

.field private static f:Ljava/lang/String; = "02"

.field private static g:Ljava/lang/String; = null

.field private static h:Ljava/lang/String; = null

.field private static i:Ljava/lang/String; = null

.field private static j:Ljava/lang/String; = null

.field private static k:Ljava/lang/String; = null

.field private static l:Ljava/lang/String; = null

.field private static m:I = 0x0

.field private static n:I = 0x0

.field private static o:I = 0x0

.field private static p:I = 0x0

.field private static q:I = 0x0

.field private static r:I = 0x0

.field private static s:Ljava/lang/String; = null

.field private static t:Ljava/lang/String; = "baidu"

.field private static u:Ljava/lang/String; = ""

.field private static v:Ljava/lang/String; = ""

.field private static w:Ljava/lang/String; = ""

.field private static x:Ljava/lang/String; = null

.field private static y:Ljava/lang/String; = null

.field private static z:Ljava/lang/String; = "-1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/baidu/mapsdkplatform/comjni/util/a;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comjni/util/a;-><init>()V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->e:Lcom/baidu/mapsdkplatform/comjni/util/a;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->C:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    .line 167
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 460
    sput-object p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->s:Ljava/lang/String;

    .line 461
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->i()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 533
    sput-object p1, Lcom/baidu/mapsdkplatform/comapi/util/k;->z:Ljava/lang/String;

    .line 534
    sput-object p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->A:Ljava/lang/String;

    .line 535
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->i()V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    .line 131
    sget-boolean v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->G:Z

    if-ne v0, p0, :cond_0

    return-void

    .line 134
    :cond_0
    sput-boolean p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->G:Z

    .line 139
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 144
    :cond_1
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/baidu/mshield/MH;->setAgreePolicy(Landroid/content/Context;Z)V

    .line 149
    sget-boolean v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->F:Z

    if-nez v0, :cond_2

    if-eqz p0, :cond_2

    .line 150
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->u()Z

    const/4 p0, 0x1

    .line 151
    sput-boolean p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->F:Z

    .line 154
    :cond_2
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->i()V

    return-void
.end method

.method private static a(Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 256
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 260
    :cond_0
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/baidu/mshield/MH;->ud(Landroid/content/Context;Ljava/util/HashMap;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static a(Landroid/content/Context;)[B
    .locals 4

    const/4 v0, 0x0

    .line 211
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez v1, :cond_0

    return-object v0

    .line 217
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 219
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 222
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object p0

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x40

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    :goto_0
    if-eqz p0, :cond_3

    .line 229
    array-length v1, p0

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 230
    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 234
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 171
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    .line 252
    sput-object p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    return-void
.end method

.method public static b(Z)V
    .locals 1

    .line 162
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/baidu/mshield/MH;->setAppStatus(Landroid/content/Context;Z)V

    return-void
.end method

.method public static c()V
    .locals 0

    .line 359
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->g()V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 7

    .line 299
    sput-object p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->x:Ljava/lang/String;

    .line 304
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->y:Ljava/lang/String;

    .line 309
    :cond_1
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    sget-boolean v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->G:Z

    invoke-static {v0, v1}, Lcom/baidu/mshield/MH;->setAgreePolicy(Landroid/content/Context;Z)V

    .line 310
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/b;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->i:Ljava/lang/String;

    .line 312
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->j:Ljava/lang/String;

    .line 313
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->h:Ljava/lang/String;

    .line 314
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->k:Ljava/lang/String;

    .line 316
    sget-boolean v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->F:Z

    if-nez v0, :cond_3

    .line 317
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->u()Z

    .line 318
    sput-boolean v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->F:Z

    goto :goto_0

    :cond_2
    const-string v0, "Android"

    .line 321
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->i:Ljava/lang/String;

    const-string v0, ""

    .line 322
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->j:Ljava/lang/String;

    const-string v0, ""

    .line 323
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->h:Ljava/lang/String;

    const-string v0, ""

    .line 324
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->k:Ljava/lang/String;

    .line 327
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->g:Ljava/lang/String;

    .line 328
    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/k;->d(Landroid/content/Context;)V

    .line 329
    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/k;->e(Landroid/content/Context;)V

    .line 330
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->t()V

    .line 331
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->C:Ljava/util/Map;

    const-string v0, "zid"

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->v()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->C:Ljava/util/Map;

    const-string v0, "resid"

    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->C:Ljava/util/Map;

    const-string v0, "channel"

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->C:Ljava/util/Map;

    const-string v0, "mb"

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->C:Ljava/util/Map;

    const-string v0, "sv"

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->C:Ljava/util/Map;

    const-string v0, "os"

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->C:Ljava/util/Map;

    const-string v0, "dpi"

    const-string v2, "%d,%d"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    .line 341
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->o()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->o()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 340
    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->B:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 344
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->C:Ljava/util/Map;

    const-string v0, "cuid"

    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->B:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_4
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    if-eqz p0, :cond_5

    .line 348
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->C:Ljava/util/Map;

    const-string v0, "pcn"

    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_5
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->C:Ljava/util/Map;

    const-string v0, "screen"

    const-string v2, "%d,%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->k()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->e:Lcom/baidu/mapsdkplatform/comjni/util/a;

    if-eqz p0, :cond_6

    .line 353
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->e:Lcom/baidu/mapsdkplatform/comjni/util/a;

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comjni/util/a;->a()V

    :cond_6
    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .line 364
    new-instance v0, Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;-><init>()V

    .line 365
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->object()Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "cpu"

    .line 366
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "resid"

    .line 367
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "channel"

    .line 368
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "glr"

    .line 369
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "glv"

    .line 370
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "mb"

    .line 371
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "sv"

    .line 372
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "os"

    .line 373
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "dpi_x"

    .line 374
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "dpi_y"

    .line 375
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "net"

    .line 376
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "cuid"

    .line 377
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "zid"

    .line 378
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 389
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 390
    invoke-static {}, Lcom/baidu/mapapi/JNIInitializer;->getCachedContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    .line 393
    :cond_0
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    const-string v1, "pcn"

    .line 394
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    :cond_1
    const-string v1, "screen_x"

    .line 396
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "screen_y"

    .line 397
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->m()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 398
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endObject()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 400
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->getJson()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->D:Ljava/lang/String;

    .line 402
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->D:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 3

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 118
    invoke-static {}, Lcom/baidu/mapapi/VersionInfo;->getApiVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->l:Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->l:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->l:Ljava/lang/String;

    const/16 v1, 0x5f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->l:Ljava/lang/String;

    .line 122
    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->m:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "1.0.0"

    .line 124
    sput-object p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->l:Ljava/lang/String;

    const/4 p0, 0x1

    .line 125
    sput p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->m:I

    :goto_0
    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .line 406
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->D:Ljava/lang/String;

    return-object v0
.end method

.method private static e(Landroid/content/Context;)V
    .locals 2

    const-string v0, "window"

    .line 181
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 182
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz p0, :cond_0

    .line 185
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 189
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->n:I

    .line 190
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v1

    sput v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->o:I

    .line 191
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 193
    :cond_1
    iget p0, v0, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->b:F

    .line 194
    iget p0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-int p0, p0

    sput p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->p:I

    .line 195
    iget p0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-int p0, p0

    sput p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->q:I

    .line 202
    iget p0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->r:I

    .line 203
    sget p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->r:I

    if-nez p0, :cond_2

    const/16 p0, 0xa0

    .line 204
    sput p0, Lcom/baidu/mapsdkplatform/comapi/util/k;->r:I

    :cond_2
    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 7

    .line 430
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->C:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 433
    :cond_0
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->s()Ljava/lang/String;

    move-result-object v0

    .line 435
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->C:Ljava/util/Map;

    const-string v2, "cuid"

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :cond_1
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->C:Ljava/util/Map;

    const-string v1, "zid"

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->v()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 439
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    add-long v5, v1, v3

    const-wide/16 v0, 0x3e8

    .line 440
    div-long v2, v5, v0

    long-to-double v2, v2

    rem-long/2addr v5, v0

    long-to-double v0, v5

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    add-double/2addr v2, v0

    .line 441
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->C:Ljava/util/Map;

    const-string v1, "ctm"

    const-string v4, "%f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->C:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 445
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 446
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "&"

    .line 447
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 448
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 450
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()V
    .locals 1

    .line 454
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->e:Lcom/baidu/mapsdkplatform/comjni/util/a;

    if-eqz v0, :cond_0

    .line 455
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->e:Lcom/baidu/mapsdkplatform/comjni/util/a;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comjni/util/a;->b()V

    :cond_0
    return-void
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .line 465
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static i()V
    .locals 4

    .line 469
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->C:Ljava/util/Map;

    const-string v1, "net"

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->C:Ljava/util/Map;

    const-string v1, "appid"

    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->z:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->C:Ljava/util/Map;

    const-string v1, "bduid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    new-instance v0, Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;-><init>()V

    .line 475
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->object()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 477
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->i:Ljava/lang/String;

    .line 479
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->j:Ljava/lang/String;

    .line 480
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->h:Ljava/lang/String;

    .line 481
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->k:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "Android"

    .line 483
    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->i:Ljava/lang/String;

    const-string v1, ""

    .line 484
    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->j:Ljava/lang/String;

    const-string v1, ""

    .line 485
    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->h:Ljava/lang/String;

    const-string v1, ""

    .line 486
    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->k:Ljava/lang/String;

    .line 489
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "arv"

    .line 490
    sget-object v3, Lcom/baidu/mapsdkplatform/comapi/util/k;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "arl"

    .line 491
    sget-object v3, Lcom/baidu/mapsdkplatform/comapi/util/k;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mod"

    .line 492
    sget-object v3, Lcom/baidu/mapsdkplatform/comapi/util/k;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ws"

    .line 493
    sget-object v3, Lcom/baidu/mapsdkplatform/comapi/util/k;->s:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-boolean v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->F:Z

    if-eqz v2, :cond_1

    .line 496
    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/util/k;->a(Ljava/util/HashMap;)Z

    :cond_1
    const-string v1, "cpu"

    .line 499
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "resid"

    .line 500
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "channel"

    .line 501
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "glr"

    .line 502
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "glv"

    .line 503
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "mb"

    .line 504
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "sv"

    .line 505
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "os"

    .line 506
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "dpi_x"

    .line 507
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "dpi_y"

    .line 508
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "net"

    .line 509
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "cuid"

    .line 510
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 511
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    if-eqz v1, :cond_2

    const-string v1, "pcn"

    .line 512
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    :cond_2
    const-string v1, "screen_x"

    .line 514
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "screen_y"

    .line 515
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->m()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "appid"

    .line 516
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "duid"

    .line 517
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "zid"

    .line 518
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 519
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "token"

    .line 520
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 522
    :cond_3
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endObject()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 524
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->getInstance()Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->getJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->updatePhoneInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .line 539
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static k()I
    .locals 1

    .line 543
    sget v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->n:I

    return v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    .line 547
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static m()I
    .locals 1

    .line 551
    sget v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->o:I

    return v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    .line 555
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static o()I
    .locals 1

    .line 567
    sget v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->r:I

    return v0
.end method

.method public static p()Ljava/lang/String;
    .locals 1

    .line 571
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->t:Ljava/lang/String;

    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 1

    .line 575
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static r()Ljava/lang/String;
    .locals 1

    .line 579
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->x:Ljava/lang/String;

    return-object v0
.end method

.method public static s()Ljava/lang/String;
    .locals 4

    .line 612
    :try_start_0
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/LBSAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getCUID()Ljava/lang/String;

    move-result-object v0

    .line 613
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 614
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->B:Ljava/lang/String;

    .line 615
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->C:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 616
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/k;->s()Ljava/lang/String;

    move-result-object v1

    .line 617
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->C:Ljava/util/Map;

    const-string v3, "cuid"

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    :cond_0
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->getInstance()Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;

    move-result-object v1

    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->updateCuid(Ljava/lang/String;)V

    .line 620
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "cuid"

    .line 621
    sget-object v3, Lcom/baidu/mapsdkplatform/comapi/util/k;->B:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/baidu/mshield/MH;->ud(Landroid/content/Context;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method private static t()V
    .locals 1

    const-string v0, "0"

    .line 242
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->s:Ljava/lang/String;

    return-void
.end method

.method private static u()Z
    .locals 5

    .line 265
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 269
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 271
    new-instance v2, Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-direct {v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;-><init>()V

    .line 272
    invoke-virtual {v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->arrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 273
    sget-object v3, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/mapsdkplatform/comapi/util/k;->a(Landroid/content/Context;)[B

    move-result-object v3

    if-eqz v3, :cond_1

    .line 275
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 276
    aget-byte v4, v3, v1

    invoke-virtual {v2, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endArrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "cuid"

    .line 281
    sget-object v3, Lcom/baidu/mapsdkplatform/comapi/util/k;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "p"

    .line 282
    sget-object v3, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "s"

    .line 283
    invoke-virtual {v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->getJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "arv"

    .line 284
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "arl"

    .line 285
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mod"

    .line 286
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ws"

    .line 287
    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/b;->b()Lcom/baidu/mapapi/CommonInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "oid"

    .line 289
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/b;->b()Lcom/baidu/mapapi/CommonInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mapapi/CommonInfo;->getOAID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_2
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/mshield/MH;->init(Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method private static v()Ljava/lang/String;
    .locals 3

    .line 411
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 415
    :cond_0
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->a:Landroid/content/Context;

    const/16 v1, 0xbe1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, v2}, Lcom/baidu/mshield/MH;->gzfi(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 416
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    .line 420
    :cond_1
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/k;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 421
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/k;->E:Ljava/lang/String;

    .line 423
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->getInstance()Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;

    move-result-object v1

    sget-object v2, Lcom/baidu/mapsdkplatform/comapi/util/k;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->updateZid(Ljava/lang/String;)V

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    const-string v0, ""

    return-object v0
.end method
