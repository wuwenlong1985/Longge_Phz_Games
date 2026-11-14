.class public Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;
.super Ljava/lang/Object;
.source "Cocos2dxEngineDataManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CCEngineDataManager"

.field private static sIsEnabled:Z = true

.field private static sIsInited:Z = false

.field private static sManager:Lorg/cocos2dx/enginedata/EngineDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lorg/cocos2dx/enginedata/EngineDataManager;

    invoke-direct {v0}, Lorg/cocos2dx/enginedata/EngineDataManager;-><init>()V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sManager:Lorg/cocos2dx/enginedata/EngineDataManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([I[I)V
    .locals 0

    .line 37
    invoke-static {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->nativeOnQueryFps([I[I)V

    return-void
.end method

.method static synthetic access$100(II)V
    .locals 0

    .line 37
    invoke-static {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->nativeOnChangeContinuousFrameLostConfig(II)V

    return-void
.end method

.method static synthetic access$200(IF)V
    .locals 0

    .line 37
    invoke-static {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->nativeOnChangeLowFpsConfig(IF)V

    return-void
.end method

.method static synthetic access$300(I)V
    .locals 0

    .line 37
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->nativeOnChangeExpectedFps(I)V

    return-void
.end method

.method static synthetic access$400(I)V
    .locals 0

    .line 37
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->nativeOnChangeSpecialEffectLevel(I)V

    return-void
.end method

.method static synthetic access$500(Z)V
    .locals 0

    .line 37
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->nativeOnChangeMuteEnabled(Z)V

    return-void
.end method

.method private static convertIntegerToGameStatus(I)Lorg/cocos2dx/enginedata/IEngineDataManager$GameStatus;
    .locals 5

    .line 183
    invoke-static {}, Lorg/cocos2dx/enginedata/IEngineDataManager$GameStatus;->values()[Lorg/cocos2dx/enginedata/IEngineDataManager$GameStatus;

    move-result-object v0

    .line 184
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 185
    invoke-virtual {v3}, Lorg/cocos2dx/enginedata/IEngineDataManager$GameStatus;->ordinal()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_1
    sget-object p0, Lorg/cocos2dx/enginedata/IEngineDataManager$GameStatus;->INVALID:Lorg/cocos2dx/enginedata/IEngineDataManager$GameStatus;

    return-object p0
.end method

.method public static destroy()V
    .locals 1

    .line 157
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sManager:Lorg/cocos2dx/enginedata/EngineDataManager;

    invoke-virtual {v0}, Lorg/cocos2dx/enginedata/EngineDataManager;->destroy()V

    :cond_0
    return-void
.end method

.method public static disable()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sIsEnabled:Z

    return-void
.end method

.method public static getVendorInfo()Ljava/lang/String;
    .locals 1

    .line 176
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sManager:Lorg/cocos2dx/enginedata/EngineDataManager;

    invoke-virtual {v0}, Lorg/cocos2dx/enginedata/EngineDataManager;->getVendorInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static init(Landroid/content/Context;Landroid/opengl/GLSurfaceView;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "CCEngineDataManager"

    const-string p1, "Context is null"

    .line 73
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "CCEngineDataManager"

    const-string p1, "glSurfaceView is null"

    .line 78
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 82
    :cond_1
    new-instance p0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager$1;

    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager$1;-><init>(Landroid/opengl/GLSurfaceView;)V

    .line 147
    sget-boolean p1, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sIsEnabled:Z

    if-eqz p1, :cond_2

    .line 148
    sget-object p1, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sManager:Lorg/cocos2dx/enginedata/EngineDataManager;

    invoke-virtual {p1, p0}, Lorg/cocos2dx/enginedata/EngineDataManager;->init(Lorg/cocos2dx/enginedata/IEngineDataManager$OnSystemCommandListener;)Z

    move-result p0

    sput-boolean p0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sIsInited:Z

    .line 151
    :cond_2
    sget-boolean p0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sIsInited:Z

    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->nativeSetSupportOptimization(Z)V

    .line 153
    sget-boolean p0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sIsInited:Z

    return p0
.end method

.method public static isInited()Z
    .locals 1

    .line 67
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sIsInited:Z

    return v0
.end method

.method private static native nativeOnChangeContinuousFrameLostConfig(II)V
.end method

.method private static native nativeOnChangeExpectedFps(I)V
.end method

.method private static native nativeOnChangeLowFpsConfig(IF)V
.end method

.method private static native nativeOnChangeMuteEnabled(Z)V
.end method

.method private static native nativeOnChangeSpecialEffectLevel(I)V
.end method

.method private static native nativeOnQueryFps([I[I)V
.end method

.method private static native nativeSetSupportOptimization(Z)V
.end method

.method public static notifyContinuousFrameLost(III)V
    .locals 1

    .line 221
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sIsEnabled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 222
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->nativeSetSupportOptimization(Z)V

    return-void

    .line 226
    :cond_0
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sManager:Lorg/cocos2dx/enginedata/EngineDataManager;

    invoke-virtual {v0, p0, p1, p2}, Lorg/cocos2dx/enginedata/EngineDataManager;->notifyContinuousFrameLost(III)V

    return-void
.end method

.method public static notifyFpsChanged(FF)V
    .locals 1

    .line 247
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sIsEnabled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 248
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->nativeSetSupportOptimization(Z)V

    return-void

    .line 252
    :cond_0
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sManager:Lorg/cocos2dx/enginedata/EngineDataManager;

    invoke-virtual {v0, p0, p1}, Lorg/cocos2dx/enginedata/EngineDataManager;->notifyFpsChanged(FF)V

    return-void
.end method

.method public static notifyGameStatus(III)V
    .locals 2

    .line 199
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sIsEnabled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 200
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->nativeSetSupportOptimization(Z)V

    return-void

    .line 204
    :cond_0
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->convertIntegerToGameStatus(I)Lorg/cocos2dx/enginedata/IEngineDataManager$GameStatus;

    move-result-object v0

    .line 205
    sget-object v1, Lorg/cocos2dx/enginedata/IEngineDataManager$GameStatus;->INVALID:Lorg/cocos2dx/enginedata/IEngineDataManager$GameStatus;

    if-ne v0, v1, :cond_1

    const-string p1, "CCEngineDataManager"

    .line 206
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid game status: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 209
    :cond_1
    sget-object p0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sManager:Lorg/cocos2dx/enginedata/EngineDataManager;

    invoke-virtual {p0, v0, p1, p2}, Lorg/cocos2dx/enginedata/EngineDataManager;->notifyGameStatus(Lorg/cocos2dx/enginedata/IEngineDataManager$GameStatus;II)V

    return-void
.end method

.method public static notifyLowFps(IFI)V
    .locals 1

    .line 238
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sIsEnabled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 239
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->nativeSetSupportOptimization(Z)V

    return-void

    .line 243
    :cond_0
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sManager:Lorg/cocos2dx/enginedata/EngineDataManager;

    invoke-virtual {v0, p0, p1, p2}, Lorg/cocos2dx/enginedata/EngineDataManager;->notifyLowFps(IFI)V

    return-void
.end method

.method public static pause()V
    .locals 1

    .line 163
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sManager:Lorg/cocos2dx/enginedata/EngineDataManager;

    invoke-virtual {v0}, Lorg/cocos2dx/enginedata/EngineDataManager;->pause()V

    :cond_0
    return-void
.end method

.method public static resume()V
    .locals 1

    .line 169
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxEngineDataManager;->sManager:Lorg/cocos2dx/enginedata/EngineDataManager;

    invoke-virtual {v0}, Lorg/cocos2dx/enginedata/EngineDataManager;->resume()V

    :cond_0
    return-void
.end method
