.class public Lorg/cocos2dx/javascript/CheckPermissionUtils;
.super Ljava/lang/Object;
.source "CheckPermissionUtils.java"


# static fields
.field private static permissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    const-string v4, "android.permission.INTERNET"

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    .line 20
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/javascript/CheckPermissionUtils;->permissions:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    # This standalone offline app does not use phone, contacts, location,
    # microphone, or shared-storage APIs on startup. Avoid the original
    # startup permission dialog so launch proceeds directly into the lobby.
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
