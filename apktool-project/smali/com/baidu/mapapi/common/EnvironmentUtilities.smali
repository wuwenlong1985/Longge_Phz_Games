.class public Lcom/baidu/mapapi/common/EnvironmentUtilities;
.super Ljava/lang/Object;
.source "EnvironmentUtilities.java"


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static d:I

.field static e:I

.field static f:I

.field static g:I

.field private static h:Lcom/baidu/mapsdkplatform/comapi/util/j;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppCachePath()Ljava/lang/String;
    .locals 1

    .line 109
    sget-object v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppSDCardPath()Ljava/lang/String;
    .locals 3

    .line 94
    sget-object v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->a:Ljava/lang/String;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/BaiduMapSDKNew"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public static getAppSecondCachePath()Ljava/lang/String;
    .locals 1

    .line 113
    sget-object v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getDomTmpStgMax()I
    .locals 1

    .line 121
    sget v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->e:I

    return v0
.end method

.method public static getItsTmpStgMax()I
    .locals 1

    .line 125
    sget v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->f:I

    return v0
.end method

.method public static getMapTmpStgMax()I
    .locals 1

    .line 117
    sget v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->d:I

    return v0
.end method

.method public static getSDCardPath()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getSsgTmpStgMax()I
    .locals 1

    .line 129
    sget v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->g:I

    return v0
.end method

.method public static initAppDirectory(Landroid/content/Context;)V
    .locals 1

    .line 46
    sget-object v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->h:Lcom/baidu/mapsdkplatform/comapi/util/j;

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/j;->a()Lcom/baidu/mapsdkplatform/comapi/util/j;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->h:Lcom/baidu/mapsdkplatform/comapi/util/j;

    .line 48
    sget-object v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->h:Lcom/baidu/mapsdkplatform/comapi/util/j;

    invoke-virtual {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/util/j;->a(Landroid/content/Context;)V

    .line 51
    :cond_0
    sget-object p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->a:Ljava/lang/String;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "BaiduMapSDKNew"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cache"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->b:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_1
    sget-object p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->h:Lcom/baidu/mapsdkplatform/comapi/util/j;

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/util/j;->b()Lcom/baidu/mapsdkplatform/comapi/util/i;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 58
    sget-object p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->h:Lcom/baidu/mapsdkplatform/comapi/util/j;

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/util/j;->b()Lcom/baidu/mapsdkplatform/comapi/util/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/util/i;->a()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->a:Ljava/lang/String;

    .line 59
    sget-object p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->h:Lcom/baidu/mapsdkplatform/comapi/util/j;

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/util/j;->b()Lcom/baidu/mapsdkplatform/comapi/util/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/util/i;->c()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->b:Ljava/lang/String;

    .line 62
    :cond_2
    :goto_0
    sget-object p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->h:Lcom/baidu/mapsdkplatform/comapi/util/j;

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/util/j;->b()Lcom/baidu/mapsdkplatform/comapi/util/i;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 63
    sget-object p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->h:Lcom/baidu/mapsdkplatform/comapi/util/j;

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/util/j;->b()Lcom/baidu/mapsdkplatform/comapi/util/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/util/i;->d()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->c:Ljava/lang/String;

    :cond_3
    const/high16 p0, 0x3200000

    .line 65
    sput p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->d:I

    .line 66
    sput p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->e:I

    const/high16 v0, 0x500000

    .line 67
    sput v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->f:I

    .line 68
    sput p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->g:I

    return-void
.end method

.method public static setSDCardPath(Ljava/lang/String;)V
    .locals 0

    .line 86
    sput-object p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->a:Ljava/lang/String;

    return-void
.end method
