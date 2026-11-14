.class public Lcom/tencent/mid/core/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mid/core/Constants$ERROR;,
        Lcom/tencent/mid/core/Constants$CMD;
    }
.end annotation


# static fields
.field public static final CONFIG_PATCH_PATH:Ljava/lang/String; = "patch/mid_core.zip"

.field public static final CONFIG_PATCH_PATH_BAK:Ljava/lang/String; = "mid_core.zip.bak"

.field public static DAY_TIMESTAMPS:J = 0x5265c00L

.field public static final HTTP_SERVICE:Ljava/lang/String; = "pingmid.qq.com:80"

.field public static final INFO_URL:Ljava/lang/String; = "/update_info"

.field public static final LOG_TAG:Ljava/lang/String; = "MID"

.field public static final PERMISSION_ACCESS_NETWORK_STATE:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_STATE"

.field public static final PERMISSION_ACCESS_WIFI_STATE:Ljava/lang/String; = "android.permission.ACCESS_WIFI_STATE"

.field public static final PERMISSION_INTERNET:Ljava/lang/String; = "android.permission.INTERNET"

.field public static final PERMISSION_READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field public static final PERMISSION_WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"

.field public static final PERMISSION_WRITE_SETTINGS:Ljava/lang/String; = "android.permission.WRITE_SETTINGS"

.field public static final PSW_URL:Ljava/lang/String; = "/post_password"

.field public static final REQUEST_MID_NEW_URL:Ljava/lang/String; = "/request_new"

.field public static final REQUEST_MID_URL:Ljava/lang/String; = "/request"

.field public static final RSA_KEY_VERSION:I = 0x2

.field public static final RSA_PK:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5zQz+I9s/DqreFr8dkd6wSdYDngK9T36rtlDPM6VJHjWQHv6FK83xbDoX6hgcZMPYIIawcwRCVPZNetRlsAnztAt7b71z9NvPaF24+fhHe8Sy3Z/Z2JxvGXsjDnejZzdiuHTS+FGUSjcX+CzyqB30yX0AV+LgxXtQe9aRpT5yo5W6jc2UpEhBYCjpGlmW1mksAwWbyvWSEUTkUD7n9uP7C8eFEh5DHnaTwzxAQtzSxQVC1ZopnC3ly/LhMRl8GFXsFlRzg4VTkSdwS/amyWtkKjfHXp7qh4ySBqY9HEGaoZIHrXGv3VtpXoTgGraj+5HPArW0wqQroUOYVx48xRs6QIDAQAB"

.field public static final VERIFY_MID_URL:Ljava/lang/String; = "/verify"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
