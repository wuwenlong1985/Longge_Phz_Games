.class public Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyleOption;
.super Lcom/baidu/platform/comapi/bmsdk/BmObject;
.source "BmLineStyleOption.java"


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 9
    invoke-static {}, Lcom/baidu/platform/comapi/bmsdk/style/BmLineStyleOption;->nativeCreate()J

    move-result-wide v0

    const/16 v2, 0x34

    invoke-direct {p0, v2, v0, v1}, Lcom/baidu/platform/comapi/bmsdk/BmObject;-><init>(IJ)V

    return-void
.end method

.method private static native nativeBuildStyleOption(JIJ)Z
.end method

.method private static native nativeCreate()J
.end method
