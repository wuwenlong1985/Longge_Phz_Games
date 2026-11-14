.class Lcom/baidu/platform/comapi/map/o;
.super Ljava/lang/Object;
.source "MapRenderer.java"

# interfaces
.implements Lcom/baidu/platform/comapi/map/SurfaceRenderer;


# static fields
.field public static d:Z = false


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field private e:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

.field private f:Z

.field private g:Lcom/baidu/platform/comapi/map/aj;

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/MapSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/MapTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/baidu/platform/comapi/map/c;

.field private volatile k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/graphics/Bitmap$Config;

.field private q:Lcom/baidu/platform/comapi/map/e;

.field private r:Z

.field private s:I

.field private t:I

.field private u:I

.field private v:J

.field private w:Z

.field private volatile x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/baidu/platform/comapi/map/MapTextureView;Lcom/baidu/platform/comapi/map/aj;)V
    .locals 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/o;->e:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/o;->f:Z

    .line 33
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/o;->k:Z

    const-wide/16 v1, 0x0

    .line 48
    iput-wide v1, p0, Lcom/baidu/platform/comapi/map/o;->v:J

    .line 50
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/o;->w:Z

    .line 51
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/o;->x:Z

    .line 55
    iput v0, p0, Lcom/baidu/platform/comapi/map/o;->c:I

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/o;->i:Ljava/lang/ref/WeakReference;

    .line 72
    iput-object p2, p0, Lcom/baidu/platform/comapi/map/o;->g:Lcom/baidu/platform/comapi/map/aj;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/baidu/platform/comapi/map/aj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/MapSurfaceView;",
            ">;",
            "Lcom/baidu/platform/comapi/map/aj;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/o;->e:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/o;->f:Z

    .line 33
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/o;->k:Z

    const-wide/16 v1, 0x0

    .line 48
    iput-wide v1, p0, Lcom/baidu/platform/comapi/map/o;->v:J

    .line 50
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/o;->w:Z

    .line 51
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/o;->x:Z

    .line 55
    iput v0, p0, Lcom/baidu/platform/comapi/map/o;->c:I

    .line 66
    iput-object p2, p0, Lcom/baidu/platform/comapi/map/o;->g:Lcom/baidu/platform/comapi/map/aj;

    .line 67
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/o;->h:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/comapi/map/o;)Lcom/baidu/platform/comapi/map/c;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/baidu/platform/comapi/map/o;->j:Lcom/baidu/platform/comapi/map/c;

    return-object p0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 10

    .line 325
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/o;->j:Lcom/baidu/platform/comapi/map/c;

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/o;->h:Ljava/lang/ref/WeakReference;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/o;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz v3, :cond_1

    .line 331
    iget v0, p0, Lcom/baidu/platform/comapi/map/o;->l:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/baidu/platform/comapi/map/o;->m:I

    if-lez v0, :cond_1

    .line 332
    iget v4, p0, Lcom/baidu/platform/comapi/map/o;->n:I

    iget v5, p0, Lcom/baidu/platform/comapi/map/o;->o:I

    iget v6, p0, Lcom/baidu/platform/comapi/map/o;->l:I

    iget v7, p0, Lcom/baidu/platform/comapi/map/o;->m:I

    iget-object v9, p0, Lcom/baidu/platform/comapi/map/o;->p:Landroid/graphics/Bitmap$Config;

    move-object v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->captureImageFromSurface(IIIILjava/lang/Object;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 335
    new-instance v3, Lcom/baidu/platform/comapi/map/q;

    invoke-direct {v3, p0, v0}, Lcom/baidu/platform/comapi/map/q;-><init>(Lcom/baidu/platform/comapi/map/o;Landroid/graphics/Bitmap;)V

    invoke-static {v3, v1, v2}, Lcom/baidu/platform/comapi/util/k;->a(Ljava/lang/Runnable;J)V

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/o;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/o;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/baidu/platform/comapi/map/GLTextureView;

    if-eqz v3, :cond_2

    .line 346
    iget v0, p0, Lcom/baidu/platform/comapi/map/o;->l:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/baidu/platform/comapi/map/o;->m:I

    if-lez v0, :cond_2

    .line 347
    iget v4, p0, Lcom/baidu/platform/comapi/map/o;->n:I

    iget v5, p0, Lcom/baidu/platform/comapi/map/o;->o:I

    iget v6, p0, Lcom/baidu/platform/comapi/map/o;->l:I

    iget v7, p0, Lcom/baidu/platform/comapi/map/o;->m:I

    iget-object v9, p0, Lcom/baidu/platform/comapi/map/o;->p:Landroid/graphics/Bitmap$Config;

    move-object v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/baidu/platform/comapi/map/GLTextureView;->captureImageFromSurface(IIIILjava/lang/Object;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 350
    new-instance v0, Lcom/baidu/platform/comapi/map/r;

    invoke-direct {v0, p0, p1}, Lcom/baidu/platform/comapi/map/r;-><init>(Lcom/baidu/platform/comapi/map/o;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/platform/comapi/util/k;->a(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method private c()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/o;->e:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/o;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/o;->x:Z

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/c;II)V
    .locals 1

    const/4 v0, 0x1

    .line 406
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/o;->k:Z

    .line 407
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/o;->j:Lcom/baidu/platform/comapi/map/c;

    .line 408
    iput p2, p0, Lcom/baidu/platform/comapi/map/o;->l:I

    .line 409
    iput p3, p0, Lcom/baidu/platform/comapi/map/o;->m:I

    const/4 p1, 0x0

    .line 410
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/o;->p:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/c;IIIILandroid/graphics/Bitmap$Config;)V
    .locals 1

    const/4 v0, 0x1

    .line 435
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/o;->k:Z

    .line 436
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/o;->j:Lcom/baidu/platform/comapi/map/c;

    .line 437
    iput p2, p0, Lcom/baidu/platform/comapi/map/o;->n:I

    .line 438
    iput p3, p0, Lcom/baidu/platform/comapi/map/o;->o:I

    .line 439
    iput p4, p0, Lcom/baidu/platform/comapi/map/o;->l:I

    .line 440
    iput p5, p0, Lcom/baidu/platform/comapi/map/o;->m:I

    .line 441
    iput-object p6, p0, Lcom/baidu/platform/comapi/map/o;->p:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/c;IILandroid/graphics/Bitmap$Config;)V
    .locals 1

    const/4 v0, 0x1

    .line 420
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/o;->k:Z

    .line 421
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/o;->j:Lcom/baidu/platform/comapi/map/c;

    .line 422
    iput p2, p0, Lcom/baidu/platform/comapi/map/o;->l:I

    .line 423
    iput p3, p0, Lcom/baidu/platform/comapi/map/o;->m:I

    .line 424
    iput-object p4, p0, Lcom/baidu/platform/comapi/map/o;->p:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/e;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/o;->q:Lcom/baidu/platform/comapi/map/e;

    return-void
.end method

.method public a(Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/o;->e:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/o;->f:Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/o;->x:Z

    return-void
.end method

.method public onDrawFrame(Ljava/lang/Object;)V
    .locals 5

    .line 177
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/o;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/o;->w:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 188
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/o;->w:Z

    .line 189
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/o;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/o;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz v0, :cond_1

    .line 194
    :try_start_0
    new-instance v2, Lcom/baidu/platform/comapi/map/p;

    invoke-direct {v2, p0, v0}, Lcom/baidu/platform/comapi/map/p;-><init>(Lcom/baidu/platform/comapi/map/o;Lcom/baidu/platform/comapi/map/MapSurfaceView;)V

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :catch_0
    :cond_1
    sget-boolean v0, Lcom/baidu/platform/comapi/map/o;->d:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 213
    sput-boolean v2, Lcom/baidu/platform/comapi/map/o;->d:Z

    return-void

    .line 217
    :cond_2
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/o;->x:Z

    if-eqz v0, :cond_3

    return-void

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/o;->e:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->Draw()I

    move-result v0

    .line 222
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/o;->h:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_5

    .line 223
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/o;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/platform/comapi/map/MapSurfaceView;

    if-eqz v3, :cond_5

    if-ne v0, v1, :cond_4

    .line 229
    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->requestRender()V

    goto :goto_0

    .line 231
    :cond_4
    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getRenderMode()I

    move-result v4

    if-eqz v4, :cond_5

    .line 232
    invoke-virtual {v3, v2}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setRenderMode(I)V

    .line 237
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/o;->i:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_7

    .line 238
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/o;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/platform/comapi/map/GLTextureView;

    if-eqz v3, :cond_7

    if-ne v0, v1, :cond_6

    .line 244
    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/GLTextureView;->requestRender()V

    goto :goto_1

    .line 246
    :cond_6
    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/GLTextureView;->getRenderMode()I

    move-result v0

    if-eqz v0, :cond_7

    .line 247
    invoke-virtual {v3, v2}, Lcom/baidu/platform/comapi/map/GLTextureView;->setRenderMode(I)V

    .line 253
    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/o;->k:Z

    if-eqz v0, :cond_8

    .line 254
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/map/o;->k:Z

    .line 255
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/o;->j:Lcom/baidu/platform/comapi/map/c;

    if-eqz v0, :cond_8

    .line 256
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/o;->a(Ljava/lang/Object;)V

    .line 260
    :cond_8
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/o;->r:Z

    if-nez p1, :cond_b

    .line 261
    iget p1, p0, Lcom/baidu/platform/comapi/map/o;->s:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/baidu/platform/comapi/map/o;->s:I

    .line 262
    iget p1, p0, Lcom/baidu/platform/comapi/map/o;->s:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/o;->q:Lcom/baidu/platform/comapi/map/e;

    if-eqz p1, :cond_9

    .line 263
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/o;->q:Lcom/baidu/platform/comapi/map/e;

    invoke-interface {p1}, Lcom/baidu/platform/comapi/map/e;->a()V

    .line 264
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 265
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object p1

    const-string v3, "BasicMap onDrawFirstFrame"

    .line 266
    invoke-virtual {p1, v3}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    .line 270
    :cond_9
    iget p1, p0, Lcom/baidu/platform/comapi/map/o;->s:I

    if-ne p1, v0, :cond_a

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/o;->r:Z

    .line 281
    :cond_b
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/o;->h:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/o;->h:Ljava/lang/ref/WeakReference;

    .line 282
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 283
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/o;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/platform/comapi/map/MapSurfaceView;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/c;

    move-result-object p1

    goto :goto_3

    :cond_c
    move-object p1, v0

    :goto_3
    if-eqz p1, :cond_f

    .line 286
    iget-object v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/c;->h:Ljava/util/List;

    if-eqz v1, :cond_f

    .line 288
    iget-object v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/c;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/ak;

    if-nez p1, :cond_e

    return-void

    .line 292
    :cond_e
    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->M()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v3

    if-eqz v2, :cond_d

    .line 295
    invoke-interface {v2, v0, v3}, Lcom/baidu/platform/comapi/map/ak;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/baidu/mapsdkplatform/comapi/map/x;)V

    goto :goto_4

    .line 302
    :cond_f
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/o;->i:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/o;->i:Ljava/lang/ref/WeakReference;

    .line 303
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 304
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/o;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/platform/comapi/map/MapTextureView;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapTextureView;->getBaseMap()Lcom/baidu/mapsdkplatform/comapi/map/c;

    move-result-object p1

    goto :goto_5

    :cond_10
    move-object p1, v0

    :goto_5
    if-eqz p1, :cond_13

    .line 307
    iget-object v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/c;->h:Ljava/util/List;

    if-eqz v1, :cond_13

    .line 309
    iget-object v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/c;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/ak;

    if-nez p1, :cond_12

    return-void

    .line 313
    :cond_12
    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->M()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v3

    if-eqz v2, :cond_11

    .line 316
    invoke-interface {v2, v0, v3}, Lcom/baidu/platform/comapi/map/ak;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/baidu/mapsdkplatform/comapi/map/x;)V

    goto :goto_6

    :cond_13
    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/o;->e:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/o;->e:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->renderResize(II)V

    .line 152
    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BasicMap onSurfaceChanged width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; height = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;III)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/o;->r:Z

    .line 114
    iput v0, p0, Lcom/baidu/platform/comapi/map/o;->s:I

    .line 115
    iput v0, p0, Lcom/baidu/platform/comapi/map/o;->u:I

    .line 116
    iput v0, p0, Lcom/baidu/platform/comapi/map/o;->t:I

    .line 118
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/o;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 126
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 129
    :cond_1
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/o;->e:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, p2, p3, v0, p4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->renderInit(IILandroid/view/Surface;I)V

    .line 139
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 140
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object p1

    const-string p2, "BasicMap onSurfaceCreated ok"

    .line 141
    invoke-virtual {p1, p2}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 162
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/o;->e:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/o;->e:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->surfaceDestroyed(Landroid/view/Surface;)V

    .line 167
    :cond_1
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 168
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object p1

    const-string v0, "BasicMap onSurfaceDestroyed"

    .line 169
    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
