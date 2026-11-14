.class Lcom/baidu/platform/comapi/map/f$b;
.super Lcom/baidu/platform/comapi/map/f$a;
.source "GLRenderControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platform/comapi/map/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field final synthetic k:Lcom/baidu/platform/comapi/map/f;

.field private l:[I


# direct methods
.method public constructor <init>(Lcom/baidu/platform/comapi/map/f;IIIIIIII)V
    .locals 4

    .line 891
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/f$b;->k:Lcom/baidu/platform/comapi/map/f;

    const/16 v0, 0x11

    .line 892
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v2, 0x2

    const/16 v3, 0x3023

    aput v3, v0, v2

    const/4 v2, 0x3

    aput p3, v0, v2

    const/4 v2, 0x4

    const/16 v3, 0x3022

    aput v3, v0, v2

    const/4 v2, 0x5

    aput p4, v0, v2

    const/4 v2, 0x6

    const/16 v3, 0x3021

    aput v3, v0, v2

    const/4 v2, 0x7

    aput p5, v0, v2

    const/16 v2, 0x8

    const/16 v3, 0x3025

    aput v3, v0, v2

    const/16 v2, 0x9

    aput p6, v0, v2

    const/16 v2, 0xa

    const/16 v3, 0x3026

    aput v3, v0, v2

    const/16 v2, 0xb

    aput p7, v0, v2

    const/16 v2, 0xc

    const/16 v3, 0x3032

    aput v3, v0, v2

    const/16 v2, 0xd

    aput p8, v0, v2

    const/16 v2, 0xe

    const/16 v3, 0x3031

    aput v3, v0, v2

    const/16 v2, 0xf

    aput p9, v0, v2

    const/16 v2, 0x10

    const/16 v3, 0x3038

    aput v3, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/baidu/platform/comapi/map/f$a;-><init>(Lcom/baidu/platform/comapi/map/f;[I)V

    .line 896
    new-array p1, v1, [I

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/f$b;->l:[I

    .line 897
    iput p2, p0, Lcom/baidu/platform/comapi/map/f$b;->c:I

    .line 898
    iput p3, p0, Lcom/baidu/platform/comapi/map/f$b;->d:I

    .line 899
    iput p4, p0, Lcom/baidu/platform/comapi/map/f$b;->e:I

    .line 900
    iput p5, p0, Lcom/baidu/platform/comapi/map/f$b;->f:I

    .line 901
    iput p6, p0, Lcom/baidu/platform/comapi/map/f$b;->g:I

    .line 902
    iput p7, p0, Lcom/baidu/platform/comapi/map/f$b;->h:I

    .line 903
    iput p8, p0, Lcom/baidu/platform/comapi/map/f$b;->i:I

    .line 904
    iput p9, p0, Lcom/baidu/platform/comapi/map/f$b;->j:I

    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$b;->l:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 937
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/f$b;->l:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    return p1

    :cond_0
    return p5
.end method


# virtual methods
.method public a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p3

    .line 910
    array-length v8, v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v10, v0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    aget-object v11, v7, v9

    const/16 v4, 0x3025

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v11

    .line 911
    invoke-direct/range {v0 .. v5}, Lcom/baidu/platform/comapi/map/f$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    const/16 v4, 0x3026

    .line 912
    invoke-direct/range {v0 .. v5}, Lcom/baidu/platform/comapi/map/f$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 913
    iget v1, v6, Lcom/baidu/platform/comapi/map/f$b;->g:I

    if-lt v12, v1, :cond_1

    iget v1, v6, Lcom/baidu/platform/comapi/map/f$b;->h:I

    if-lt v0, v1, :cond_1

    const/16 v4, 0x3024

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v11

    .line 914
    invoke-direct/range {v0 .. v5}, Lcom/baidu/platform/comapi/map/f$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    const/16 v4, 0x3023

    .line 915
    invoke-direct/range {v0 .. v5}, Lcom/baidu/platform/comapi/map/f$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    const/16 v4, 0x3022

    .line 916
    invoke-direct/range {v0 .. v5}, Lcom/baidu/platform/comapi/map/f$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    const/16 v4, 0x3021

    .line 917
    invoke-direct/range {v0 .. v5}, Lcom/baidu/platform/comapi/map/f$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 918
    iget v1, v6, Lcom/baidu/platform/comapi/map/f$b;->c:I

    if-ne v12, v1, :cond_1

    iget v1, v6, Lcom/baidu/platform/comapi/map/f$b;->d:I

    if-ne v13, v1, :cond_1

    iget v1, v6, Lcom/baidu/platform/comapi/map/f$b;->e:I

    if-ne v14, v1, :cond_1

    iget v1, v6, Lcom/baidu/platform/comapi/map/f$b;->f:I

    if-ne v0, v1, :cond_1

    if-nez v10, :cond_0

    move-object v10, v11

    :cond_0
    const/16 v4, 0x3031

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v11

    .line 924
    invoke-direct/range {v0 .. v5}, Lcom/baidu/platform/comapi/map/f$b;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 925
    iget v1, v6, Lcom/baidu/platform/comapi/map/f$b;->j:I

    if-ne v0, v1, :cond_1

    return-object v11

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    return-object v10
.end method
