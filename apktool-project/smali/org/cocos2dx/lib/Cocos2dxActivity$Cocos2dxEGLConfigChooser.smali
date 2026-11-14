.class Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cocos2dxEGLConfigChooser"
.end annotation


# instance fields
.field private final EGL_OPENGL_ES2_BIT:I

.field private final EGL_OPENGL_ES3_BIT:I

.field private mConfigAttributes:[I

.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;IIIIIII)V
    .locals 2

    .line 395
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    .line 392
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->EGL_OPENGL_ES2_BIT:I

    const/16 v0, 0x40

    .line 393
    iput v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->EGL_OPENGL_ES3_BIT:I

    const/4 v0, 0x7

    .line 396
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const/4 p2, 0x2

    aput p4, v0, p2

    const/4 p2, 0x3

    aput p5, v0, p2

    aput p6, v0, p1

    const/4 p1, 0x5

    aput p7, v0, p1

    const/4 p1, 0x6

    aput p8, v0, p1

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;[I)V
    .locals 0

    .line 399
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    .line 392
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->EGL_OPENGL_ES2_BIT:I

    const/16 p1, 0x40

    .line 393
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->EGL_OPENGL_ES3_BIT:I

    .line 400
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    return-void
.end method

.method private doChooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    const/4 v0, 0x1

    .line 465
    new-array v7, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 466
    new-array v0, v0, [I

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v7

    move-object v6, v0

    .line 467
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 468
    aget p2, v0, p1

    if-lez p2, :cond_0

    .line 469
    aget-object p1, v7, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x4

    .line 406
    new-array v2, v1, [[I

    const/16 v3, 0x13

    new-array v4, v3, [I

    const/16 v5, 0x3024

    const/4 v6, 0x0

    aput v5, v4, v6

    iget-object v7, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v7, v7, v6

    const/4 v8, 0x1

    aput v7, v4, v8

    const/16 v7, 0x3023

    const/4 v9, 0x2

    aput v7, v4, v9

    iget-object v10, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v10, v10, v8

    const/4 v11, 0x3

    aput v10, v4, v11

    const/16 v10, 0x3022

    aput v10, v4, v1

    iget-object v12, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v12, v12, v9

    const/4 v13, 0x5

    aput v12, v4, v13

    const/16 v12, 0x3021

    const/4 v14, 0x6

    aput v12, v4, v14

    iget-object v15, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v15, v15, v11

    const/16 v16, 0x7

    aput v15, v4, v16

    const/16 v15, 0x8

    const/16 v17, 0x3025

    aput v17, v4, v15

    iget-object v15, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v15, v15, v1

    const/16 v17, 0x9

    aput v15, v4, v17

    const/16 v15, 0xa

    const/16 v17, 0x3026

    aput v17, v4, v15

    iget-object v15, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v15, v15, v13

    const/16 v17, 0xb

    aput v15, v4, v17

    const/16 v15, 0xc

    const/16 v17, 0x3032

    aput v17, v4, v15

    iget-object v15, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v15, v15, v14

    if-lez v15, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    const/16 v17, 0xd

    aput v15, v4, v17

    const/16 v15, 0xe

    const/16 v17, 0x3031

    aput v17, v4, v15

    const/16 v15, 0xf

    iget-object v12, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v12, v12, v14

    aput v12, v4, v15

    const/16 v12, 0x3040

    const/16 v15, 0x10

    aput v12, v4, v15

    const/16 v12, 0x11

    aput v1, v4, v12

    const/16 v12, 0x12

    const/16 v17, 0x3038

    aput v17, v4, v12

    aput-object v4, v2, v6

    new-array v4, v3, [I

    aput v5, v4, v6

    iget-object v12, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v12, v12, v6

    aput v12, v4, v8

    aput v7, v4, v9

    iget-object v12, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v12, v12, v8

    aput v12, v4, v11

    aput v10, v4, v1

    iget-object v12, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v12, v12, v9

    aput v12, v4, v13

    const/16 v12, 0x3021

    aput v12, v4, v14

    iget-object v12, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v12, v12, v11

    aput v12, v4, v16

    const/16 v12, 0x3025

    const/16 v17, 0x8

    aput v12, v4, v17

    const/16 v12, 0x9

    iget-object v10, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v10, v10, v1

    const/16 v11, 0x18

    if-lt v10, v11, :cond_1

    const/16 v10, 0x10

    goto :goto_1

    :cond_1
    iget-object v10, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v10, v10, v1

    :goto_1
    aput v10, v4, v12

    const/16 v10, 0xa

    const/16 v11, 0x3026

    aput v11, v4, v10

    const/16 v10, 0xb

    iget-object v11, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v11, v11, v13

    aput v11, v4, v10

    const/16 v10, 0xc

    const/16 v11, 0x3032

    aput v11, v4, v10

    const/16 v10, 0xd

    iget-object v11, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v11, v11, v14

    if-lez v11, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    aput v11, v4, v10

    const/16 v10, 0xe

    const/16 v11, 0x3031

    aput v11, v4, v10

    const/16 v10, 0xf

    iget-object v11, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v11, v11, v14

    aput v11, v4, v10

    const/16 v10, 0x3040

    aput v10, v4, v15

    const/16 v10, 0x11

    aput v1, v4, v10

    const/16 v10, 0x12

    const/16 v11, 0x3038

    aput v11, v4, v10

    aput-object v4, v2, v8

    new-array v3, v3, [I

    aput v5, v3, v6

    iget-object v4, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v4, v4, v6

    aput v4, v3, v8

    aput v7, v3, v9

    iget-object v4, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v4, v4, v8

    const/4 v5, 0x3

    aput v4, v3, v5

    const/16 v4, 0x3022

    aput v4, v3, v1

    iget-object v4, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v4, v4, v9

    aput v4, v3, v13

    const/16 v4, 0x3021

    aput v4, v3, v14

    iget-object v4, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v4, v4, v5

    aput v4, v3, v16

    const/16 v4, 0x3025

    const/16 v5, 0x8

    aput v4, v3, v5

    const/16 v4, 0x9

    iget-object v5, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v5, v5, v1

    const/16 v7, 0x18

    if-lt v5, v7, :cond_3

    const/16 v5, 0x10

    goto :goto_3

    :cond_3
    iget-object v5, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v5, v5, v1

    :goto_3
    aput v5, v3, v4

    const/16 v4, 0xa

    const/16 v5, 0x3026

    aput v5, v3, v4

    const/16 v4, 0xb

    iget-object v5, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    aget v5, v5, v13

    aput v5, v3, v4

    const/16 v4, 0xc

    const/16 v5, 0x3032

    aput v5, v3, v4

    const/16 v4, 0xd

    aput v6, v3, v4

    const/16 v4, 0xe

    const/16 v5, 0x3031

    aput v5, v3, v4

    const/16 v4, 0xf

    aput v6, v3, v4

    const/16 v4, 0x3040

    aput v4, v3, v15

    const/16 v4, 0x11

    aput v1, v3, v4

    const/16 v1, 0x12

    const/16 v4, 0x3038

    aput v4, v3, v1

    aput-object v3, v2, v9

    const/4 v1, 0x3

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    aput-object v3, v2, v1

    .line 454
    array-length v1, v2

    :goto_4
    if-ge v6, v1, :cond_5

    aget-object v3, v2, v6

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 455
    invoke-direct {v0, v4, v5, v3}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->doChooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v3

    if-eqz v3, :cond_4

    return-object v3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    const-string v1, "device_policy"

    const-string v2, "Can not select an EGLConfig for rendering."

    .line 460
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3038
    .end array-data
.end method
