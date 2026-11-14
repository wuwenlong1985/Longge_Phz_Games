.class final enum Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;
.super Ljava/lang/Enum;
.source "NativeLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapsdkplatform/comapi/NativeLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

.field public static final enum b:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

.field public static final enum c:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

.field public static final enum d:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

.field public static final enum e:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

.field private static final synthetic g:[Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 44
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    const-string v1, "ARMEABI"

    const-string v2, "armeabi"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->a:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    .line 45
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    const-string v1, "ARMV7"

    const-string v2, "armeabi-v7a"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->b:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    .line 46
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    const-string v1, "ARM64"

    const-string v2, "arm64-v8a"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->c:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    .line 47
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    const-string v1, "X86"

    const-string v2, "x86"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->d:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    .line 48
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    const-string v1, "X86_64"

    const-string v2, "x86_64"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->e:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    const/4 v0, 0x5

    .line 43
    new-array v0, v0, [Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->a:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->b:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->c:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->d:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->e:Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    aput-object v1, v0, v7

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->g:[Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->f:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;
    .locals 1

    .line 43
    const-class v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;
    .locals 1

    .line 43
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->g:[Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    invoke-virtual {v0}, [Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/NativeLoader$a;->f:Ljava/lang/String;

    return-object v0
.end method
