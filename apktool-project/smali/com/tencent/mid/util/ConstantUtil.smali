.class public Lcom/tencent/mid/util/ConstantUtil;
.super Ljava/lang/Object;
.source "ConstantUtil.java"


# static fields
.field private static HTTP_SERVICE:Ljava/lang/String; = null

.field private static final HTTP_SERVICE_KEY:Ljava/lang/String; = "http_service"

.field private static INFO_URL:Ljava/lang/String; = null

.field private static final INFO_URL_KEY:Ljava/lang/String; = "info_url"

.field public static final PREFIX:Ljava/lang/String; = "teg_mid_"

.field private static PSW_URL:Ljava/lang/String; = null

.field private static final PSW_URL_KEY:Ljava/lang/String; = "http_url"

.field private static RMID_URL:Ljava/lang/String; = null

.field private static final RMID_URL_KEY:Ljava/lang/String; = "rmid_url"

.field private static RSA_KEY_VERSION:I = 0x0

.field private static final RSA_KEY_VERSION_KEY:Ljava/lang/String; = "key_version"

.field private static RSA_PK:Ljava/lang/String; = null

.field private static final RSA_PK_KEY:Ljava/lang/String; = "rsa_pk"

.field private static VMID_URL:Ljava/lang/String; = null

.field private static final VMID_URL_KEY:Ljava/lang/String; = "vmid_url"

.field private static instance:Lcom/tencent/mid/util/ConstantUtil;

.field private static logger:Lcom/tencent/mid/util/Logger;


# instance fields
.field private context:Landroid/content/Context;

.field private perference:Lcom/tencent/mid/sotrage/Perference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    invoke-static {}, Lcom/tencent/mid/util/Util;->getLogger()Lcom/tencent/mid/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/mid/util/ConstantUtil;->logger:Lcom/tencent/mid/util/Logger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/tencent/mid/util/ConstantUtil;->perference:Lcom/tencent/mid/sotrage/Perference;

    .line 14
    iput-object v0, p0, Lcom/tencent/mid/util/ConstantUtil;->context:Landroid/content/Context;

    .line 18
    iput-object p1, p0, Lcom/tencent/mid/util/ConstantUtil;->context:Landroid/content/Context;

    .line 19
    new-instance v0, Lcom/tencent/mid/sotrage/Perference;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tencent/mid/sotrage/Perference;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/mid/util/ConstantUtil;->perference:Lcom/tencent/mid/sotrage/Perference;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tencent/mid/util/ConstantUtil;
    .locals 2

    const-class v0, Lcom/tencent/mid/util/ConstantUtil;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/tencent/mid/util/ConstantUtil;->instance:Lcom/tencent/mid/util/ConstantUtil;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/tencent/mid/util/ConstantUtil;

    invoke-direct {v1, p0}, Lcom/tencent/mid/util/ConstantUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/mid/util/ConstantUtil;->instance:Lcom/tencent/mid/util/ConstantUtil;

    .line 28
    :cond_0
    sget-object p0, Lcom/tencent/mid/util/ConstantUtil;->instance:Lcom/tencent/mid/util/ConstantUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getHttpService()Ljava/lang/String;
    .locals 2

    .line 97
    :try_start_0
    sget-object v0, Lcom/tencent/mid/util/ConstantUtil;->HTTP_SERVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/tencent/mid/util/ConstantUtil;->perference:Lcom/tencent/mid/sotrage/Perference;

    const-string v1, "teg_mid_http_service"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/sotrage/Perference;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mid/util/ConstantUtil;->HTTP_SERVICE:Ljava/lang/String;

    .line 99
    :cond_0
    sget-object v0, Lcom/tencent/mid/util/ConstantUtil;->HTTP_SERVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pingmid.qq.com:80"

    return-object v0

    .line 101
    :cond_1
    sget-object v0, Lcom/tencent/mid/util/ConstantUtil;->HTTP_SERVICE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "pingmid.qq.com:80"

    return-object v0
.end method

.method public getInfoUrl()Ljava/lang/String;
    .locals 2

    .line 166
    :try_start_0
    sget-object v0, Lcom/tencent/mid/util/ConstantUtil;->INFO_URL:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/tencent/mid/util/ConstantUtil;->perference:Lcom/tencent/mid/sotrage/Perference;

    const-string v1, "teg_mid_info_url"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/sotrage/Perference;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mid/util/ConstantUtil;->INFO_URL:Ljava/lang/String;

    .line 168
    :cond_0
    sget-object v0, Lcom/tencent/mid/util/ConstantUtil;->INFO_URL:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/update_info"

    return-object v0

    .line 170
    :cond_1
    sget-object v0, Lcom/tencent/mid/util/ConstantUtil;->INFO_URL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "/update_info"

    return-object v0
.end method

.method public getPSWUrl()Ljava/lang/String;
    .locals 2

    .line 118
    :try_start_0
    sget-object v0, Lcom/tencent/mid/util/ConstantUtil;->PSW_URL:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/tencent/mid/util/ConstantUtil;->perference:Lcom/tencent/mid/sotrage/Perference;

    const-string v1, "teg_mid_http_url"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/sotrage/Perference;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mid/util/ConstantUtil;->PSW_URL:Ljava/lang/String;

    .line 120
    :cond_0
    sget-object v0, Lcom/tencent/mid/util/ConstantUtil;->PSW_URL:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/post_password"

    return-object v0

    .line 122
    :cond_1
    sget-object v0, Lcom/tencent/mid/util/ConstantUtil;->PSW_URL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "/post_password"

    return-object v0
.end method

.method public getRSAKeyVersion()I
    .locals 2

    .line 56
    :try_start_0
    sget v0, Lcom/tencent/mid/util/ConstantUtil;->RSA_KEY_VERSION:I

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/tencent/mid/util/ConstantUtil;->perference:Lcom/tencent/mid/sotrage/Perference;

    const-string v1, "teg_mid_key_version"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/sotrage/Perference;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/tencent/mid/util/ConstantUtil;->RSA_KEY_VERSION:I

    .line 59
    :cond_0
    sget v0, Lcom/tencent/mid/util/ConstantUtil;->RSA_KEY_VERSION:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x2

    return v0
.end method

.method public getRSAPK()Ljava/lang/String;
    .locals 2

    .line 76
    :try_start_0
    sget-object v0, Lcom/tencent/mid/util/ConstantUtil;->RSA_PK:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/tencent/mid/util/ConstantUtil;->perference:Lcom/tencent/mid/sotrage/Perference;

    const-string v1, "teg_mid_rsa_pk"

    invoke-virtual {v0, v1}, Lcom/tencent/mid/sotrage/Perference;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mid/util/ConstantUtil;->RSA_PK:Ljava/lang/String;

    .line 78
    :cond_0
    sget-object v0, Lcom/tencent/mid/util/ConstantUtil;->RSA_PK:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5zQz+I9s/DqreFr8dkd6wSdYDngK9T36rtlDPM6VJHjWQHv6FK83xbDoX6hgcZMPYIIawcwRCVPZNetRlsAnztAt7b71z9NvPaF24+fhHe8Sy3Z/Z2JxvGXsjDnejZzdiuHTS+FGUSjcX+CzyqB30yX0AV+LgxXtQe9aRpT5yo5W6jc2UpEhBYCjpGlmW1mksAwWbyvWSEUTkUD7n9uP7C8eFEh5DHnaTwzxAQtzSxQVC1ZopnC3ly/LhMRl8GFXsFlRzg4VTkSdwS/amyWtkKjfHXp7qh4ySBqY9HEGaoZIHrXGv3VtpXoTgGraj+5HPArW0wqQroUOYVx48xRs6QIDAQAB"

    return-object v0

    .line 80
    :cond_1
    sget-object v0, Lcom/tencent/mid/util/ConstantUtil;->RSA_PK:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5zQz+I9s/DqreFr8dkd6wSdYDngK9T36rtlDPM6VJHjWQHv6FK83xbDoX6hgcZMPYIIawcwRCVPZNetRlsAnztAt7b71z9NvPaF24+fhHe8Sy3Z/Z2JxvGXsjDnejZzdiuHTS+FGUSjcX+CzyqB30yX0AV+LgxXtQe9aRpT5yo5W6jc2UpEhBYCjpGlmW1mksAwWbyvWSEUTkUD7n9uP7C8eFEh5DHnaTwzxAQtzSxQVC1ZopnC3ly/LhMRl8GFXsFlRzg4VTkSdwS/amyWtkKjfHXp7qh4ySBqY9HEGaoZIHrXGv3VtpXoTgGraj+5HPArW0wqQroUOYVx48xRs6QIDAQAB"

    return-object v0
.end method

.method public getRequestMidNewUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "/request_new"

    return-object v0
.end method

.method public getRequestMidUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "/request"

    return-object v0
.end method

.method public getVerifyMidUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "/verify"

    return-object v0
.end method

.method public putHttpService(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/tencent/mid/util/ConstantUtil;->perference:Lcom/tencent/mid/sotrage/Perference;

    const-string v1, "teg_mid_http_service"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mid/sotrage/Perference;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sput-object p1, Lcom/tencent/mid/util/ConstantUtil;->HTTP_SERVICE:Ljava/lang/String;

    return-void
.end method

.method public putInfoUrl(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/tencent/mid/util/ConstantUtil;->perference:Lcom/tencent/mid/sotrage/Perference;

    const-string v1, "teg_mid_info_url"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mid/sotrage/Perference;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sput-object p1, Lcom/tencent/mid/util/ConstantUtil;->INFO_URL:Ljava/lang/String;

    return-void
.end method

.method public putPSWUrl(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/tencent/mid/util/ConstantUtil;->perference:Lcom/tencent/mid/sotrage/Perference;

    const-string v1, "teg_mid_http_url"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mid/sotrage/Perference;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sput-object p1, Lcom/tencent/mid/util/ConstantUtil;->PSW_URL:Ljava/lang/String;

    return-void
.end method

.method public putRMidUrl(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/tencent/mid/util/ConstantUtil;->perference:Lcom/tencent/mid/sotrage/Perference;

    const-string v1, "teg_mid_rmid_url"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mid/sotrage/Perference;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sput-object p1, Lcom/tencent/mid/util/ConstantUtil;->RMID_URL:Ljava/lang/String;

    return-void
.end method

.method public putRSAKeyVersion(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/tencent/mid/util/ConstantUtil;->perference:Lcom/tencent/mid/sotrage/Perference;

    const-string v1, "teg_mid_key_version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mid/sotrage/Perference;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sput p1, Lcom/tencent/mid/util/ConstantUtil;->RSA_KEY_VERSION:I

    return-void
.end method

.method public putRSAPK(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/tencent/mid/util/ConstantUtil;->perference:Lcom/tencent/mid/sotrage/Perference;

    const-string v1, "teg_mid_rsa_pk"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mid/sotrage/Perference;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sput-object p1, Lcom/tencent/mid/util/ConstantUtil;->RSA_PK:Ljava/lang/String;

    return-void
.end method

.method public putVMidUrl(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/tencent/mid/util/ConstantUtil;->perference:Lcom/tencent/mid/sotrage/Perference;

    const-string v1, "teg_mid_vmid_url"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mid/sotrage/Perference;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sput-object p1, Lcom/tencent/mid/util/ConstantUtil;->VMID_URL:Ljava/lang/String;

    return-void
.end method

.method public updateConstants(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "http_service"

    .line 35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http_service"

    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mid/util/ConstantUtil;->putHttpService(Ljava/lang/String;)V

    :cond_0
    const-string v0, "http_url"

    .line 37
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http_url"

    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mid/util/ConstantUtil;->putPSWUrl(Ljava/lang/String;)V

    :cond_1
    const-string v0, "rmid_url"

    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "rmid_url"

    .line 40
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mid/util/ConstantUtil;->putRMidUrl(Ljava/lang/String;)V

    :cond_2
    const-string v0, "vmid_url"

    .line 41
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "vmid_url"

    .line 42
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mid/util/ConstantUtil;->putVMidUrl(Ljava/lang/String;)V

    :cond_3
    const-string v0, "info_url"

    .line 43
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "info_url"

    .line 44
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/mid/util/ConstantUtil;->putInfoUrl(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
