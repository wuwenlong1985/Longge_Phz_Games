.class public Lcom/baidu/mapsdkplatform/comapi/map/c;
.super Ljava/lang/Object;
.source "BaseMapInner.java"

# interfaces
.implements Lcom/baidu/mapsdkplatform/comjni/a/a/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapsdkplatform/comapi/map/c$a;
    }
.end annotation


# static fields
.field private static G:I = 0x0

.field private static H:I = 0x0

.field public static d:F = 1096.0f

.field static j:J = 0x0L

.field private static final l:Ljava/lang/String; = "c"


# instance fields
.field private A:Lcom/baidu/mapsdkplatform/comapi/map/aa;

.field private B:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

.field private C:Z

.field private D:Lcom/baidu/mapsdkplatform/comapi/map/k;

.field private E:Lcom/baidu/mapsdkplatform/comapi/map/m;

.field private F:Lcom/baidu/mapsdkplatform/comapi/map/l;

.field private I:I

.field private J:I

.field private K:Z

.field private L:Z

.field private M:J

.field private N:J

.field private O:Z

.field private P:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/baidu/mapsdkplatform/comapi/map/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Lcom/baidu/platform/comapi/map/MapController;

.field private U:Lcom/baidu/platform/comapi/map/LocationOverlay;

.field private V:Lcom/baidu/platform/comapi/map/d;

.field private W:Z

.field public a:F

.field public b:F

.field public c:F

.field e:Z

.field f:Z

.field g:Z

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/ak;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

.field public k:Lcom/baidu/mapapi/map/MapStatusUpdate;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Lcom/baidu/mapsdkplatform/comapi/map/ac;

.field private x:Lcom/baidu/mapsdkplatform/comapi/map/ab;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapsdkplatform/comapi/map/b;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/baidu/mapapi/map/MapLayer;",
            "Lcom/baidu/mapsdkplatform/comapi/map/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapSurfaceView;Lcom/baidu/mapsdkplatform/comapi/map/v;Ljava/lang/String;I)V
    .locals 2

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x41b00000    # 22.0f

    .line 73
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->a:F

    const/high16 p4, 0x40800000    # 4.0f

    .line 74
    iput p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->b:F

    .line 76
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->c:F

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->o:Z

    const/4 p4, 0x0

    .line 98
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->p:Z

    .line 99
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->q:Z

    .line 100
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->r:Z

    .line 101
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->s:Z

    .line 102
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->t:Z

    .line 103
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->e:Z

    .line 104
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->f:Z

    .line 105
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->g:Z

    .line 106
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->u:Z

    .line 107
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->v:Z

    .line 120
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->C:Z

    .line 167
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->K:Z

    .line 168
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->L:Z

    const-wide/16 v0, 0x0

    .line 173
    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->M:J

    .line 174
    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->N:J

    .line 189
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->O:Z

    .line 194
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->P:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 199
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->k:Lcom/baidu/mapapi/map/MapStatusUpdate;

    .line 205
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->Q:Z

    .line 211
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->R:Z

    .line 213
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->S:Z

    .line 221
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->W:Z

    .line 251
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->h:Ljava/util/List;

    .line 253
    new-instance p1, Lcom/baidu/platform/comapi/map/MapController;

    invoke-direct {p1}, Lcom/baidu/platform/comapi/map/MapController;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    .line 255
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->initAppBaseMap()V

    .line 256
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/platform/comapi/map/MapController;)V

    .line 257
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p2, p1}, Lcom/baidu/platform/comapi/map/MapSurfaceView;->setMapController(Lcom/baidu/platform/comapi/map/MapController;)V

    .line 258
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-string p1, "com.baidu.platform.comapi.wnplatform.walkmap.WNaviBaiduMap"

    const-string p2, "setId"

    .line 260
    iget-object p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    .line 261
    invoke-virtual {p4}, Lcom/baidu/platform/comapi/map/MapController;->getMapId()J

    move-result-wide p4

    .line 260
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 263
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->X()V

    .line 264
    invoke-direct {p0, p3}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapsdkplatform/comapi/map/v;)V

    .line 265
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, p0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetSDKLayerCallback(Lcom/baidu/mapsdkplatform/comjni/a/a/a;)Z

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->onResume()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/platform/comapi/map/MapTextureView;Lcom/baidu/mapsdkplatform/comapi/map/v;Ljava/lang/String;I)V
    .locals 2

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x41b00000    # 22.0f

    .line 73
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->a:F

    const/high16 p4, 0x40800000    # 4.0f

    .line 74
    iput p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->b:F

    .line 76
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->c:F

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->o:Z

    const/4 p4, 0x0

    .line 98
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->p:Z

    .line 99
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->q:Z

    .line 100
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->r:Z

    .line 101
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->s:Z

    .line 102
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->t:Z

    .line 103
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->e:Z

    .line 104
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->f:Z

    .line 105
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->g:Z

    .line 106
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->u:Z

    .line 107
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->v:Z

    .line 120
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->C:Z

    .line 167
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->K:Z

    .line 168
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->L:Z

    const-wide/16 v0, 0x0

    .line 173
    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->M:J

    .line 174
    iput-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->N:J

    .line 189
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->O:Z

    .line 194
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->P:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 199
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->k:Lcom/baidu/mapapi/map/MapStatusUpdate;

    .line 205
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->Q:Z

    .line 211
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->R:Z

    .line 213
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->S:Z

    .line 221
    iput-boolean p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->W:Z

    .line 231
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->h:Ljava/util/List;

    .line 233
    new-instance p1, Lcom/baidu/platform/comapi/map/MapController;

    invoke-direct {p1}, Lcom/baidu/platform/comapi/map/MapController;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    .line 234
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->initAppBaseMap()V

    .line 236
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/platform/comapi/map/MapController;)V

    .line 237
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p2, p1}, Lcom/baidu/platform/comapi/map/MapTextureView;->attachBaseMapController(Lcom/baidu/platform/comapi/map/MapController;)V

    .line 238
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getBaseMap()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    .line 240
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->X()V

    .line 241
    invoke-direct {p0, p3}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapsdkplatform/comapi/map/v;)V

    .line 242
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz p1, :cond_0

    .line 243
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, p0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetSDKLayerCallback(Lcom/baidu/mapsdkplatform/comjni/a/a/a;)Z

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->onResume()V

    return-void
.end method

.method private V()V
    .locals 5

    .line 403
    :try_start_0
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getDensity()F

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/baidu/mapsdkplatform/comapi/map/c;->G:I

    .line 404
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getDensity()F

    move-result v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/baidu/mapsdkplatform/comapi/map/c;->H:I

    .line 405
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 406
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 407
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "x"

    .line 408
    sget v4, Lcom/baidu/mapsdkplatform/comapi/map/c;->G:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "y"

    .line 409
    sget v4, Lcom/baidu/mapsdkplatform/comapi/map/c;->G:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "hidetime"

    const/16 v4, 0x3e8

    .line 410
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 411
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "dataset"

    .line 412
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 413
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/map/d;->setData(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/d;->UpdateOverlay()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 418
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private W()V
    .locals 2

    .line 552
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->q:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->n:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->m:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->s:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->c:F

    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->a:F

    .line 567
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_3

    .line 568
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    iget v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->a:F

    iput v1, v0, Lcom/baidu/platform/comapi/map/MapController;->mMaxZoomLevel:F

    goto :goto_1

    .line 553
    :cond_1
    :goto_0
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->a:F

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 554
    iput v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->a:F

    .line 555
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_2

    .line 556
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    iput v1, v0, Lcom/baidu/platform/comapi/map/MapController;->mMaxZoomLevel:F

    .line 560
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->G()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v0

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 561
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->G()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v0

    .line 562
    iput v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:F

    .line 563
    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapsdkplatform/comapi/map/x;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private X()V
    .locals 3

    .line 594
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->y:Ljava/util/List;

    .line 596
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->z:Ljava/util/HashMap;

    .line 598
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/aa;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/aa;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->A:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    .line 599
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->A:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapsdkplatform/comapi/map/b;)V

    .line 600
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->z:Ljava/util/HashMap;

    sget-object v1, Lcom/baidu/mapapi/map/MapLayer;->MAP_LAYER_OVERLAY:Lcom/baidu/mapapi/map/MapLayer;

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->A:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 603
    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->p(Z)V

    .line 604
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setDEMEnable(Z)V

    :cond_0
    return-void
.end method

.method private Y()V
    .locals 3

    .line 2131
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 2134
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/MapController;->mIsMoving:Z

    if-nez v0, :cond_2

    .line 2135
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/platform/comapi/map/MapController;->mIsMoving:Z

    .line 2136
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/baidu/platform/comapi/map/MapController;->mIsAnimating:Z

    .line 2138
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->h:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2139
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->G()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v0

    .line 2140
    :goto_0
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2141
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/ak;

    if-eqz v2, :cond_1

    .line 2144
    invoke-interface {v2, v0}, Lcom/baidu/platform/comapi/map/ak;->a(Lcom/baidu/mapsdkplatform/comapi/map/x;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lcom/baidu/mapapi/map/MapLayer;)J
    .locals 3

    .line 864
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 868
    :cond_0
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/d;->a:[I

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapLayer;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 890
    :pswitch_0
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->A:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    if-eqz p1, :cond_1

    .line 891
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->E:Lcom/baidu/mapsdkplatform/comapi/map/m;

    iget-wide v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/m;->a:J

    goto :goto_0

    .line 885
    :pswitch_1
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->A:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    if-eqz p1, :cond_1

    .line 886
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    iget-wide v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/k;->a:J

    goto :goto_0

    .line 880
    :pswitch_2
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->B:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    if-eqz p1, :cond_1

    .line 881
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->B:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/bmsdk/BmLayer;->a()J

    move-result-wide v1

    goto :goto_0

    .line 875
    :pswitch_3
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->A:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    if-eqz p1, :cond_1

    .line 876
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->A:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    goto :goto_0

    .line 870
    :pswitch_4
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->U:Lcom/baidu/platform/comapi/map/LocationOverlay;

    if-eqz p1, :cond_1

    .line 871
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->U:Lcom/baidu/platform/comapi/map/LocationOverlay;

    iget-wide v1, p1, Lcom/baidu/platform/comapi/map/LocationOverlay;->mLayerID:J

    :cond_1
    :goto_0
    return-wide v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/baidu/mapsdkplatform/comapi/map/b;)V
    .locals 4

    .line 663
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget v1, p1, Lcom/baidu/mapsdkplatform/comapi/map/b;->c:I

    iget v2, p1, Lcom/baidu/mapsdkplatform/comapi/map/b;->d:I

    iget-object v3, p1, Lcom/baidu/mapsdkplatform/comapi/map/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->AddLayer(IILjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/b;->a:J

    .line 668
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->y:Ljava/util/List;

    monitor-enter v0

    .line 669
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->y:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/baidu/mapsdkplatform/comapi/map/v;)V
    .locals 4

    if-nez p1, :cond_0

    .line 346
    new-instance p1, Lcom/baidu/mapsdkplatform/comapi/map/v;

    invoke-direct {p1}, Lcom/baidu/mapsdkplatform/comapi/map/v;-><init>()V

    .line 350
    :cond_0
    iget-boolean v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/v;->f:Z

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->t:Z

    .line 351
    iget-boolean v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/v;->d:Z

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->u:Z

    .line 352
    iget-boolean v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/v;->e:Z

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->e:Z

    .line 353
    iget-boolean v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/v;->g:Z

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->f:Z

    .line 355
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->t:Z

    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->E(Z)V

    .line 356
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->u:Z

    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->D(Z)V

    .line 357
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->e:Z

    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->u(Z)V

    .line 358
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->f:Z

    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->v(Z)V

    .line 361
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_1

    return-void

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/u;->a:Lcom/baidu/mapsdkplatform/comapi/map/u;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/u;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetMapControlMode(I)I

    .line 366
    iget-boolean v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/v;->b:Z

    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->o:Z

    .line 367
    iget-boolean v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/v;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 368
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    if-nez v0, :cond_2

    .line 369
    new-instance v0, Lcom/baidu/platform/comapi/map/d;

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-direct {v0, v2}, Lcom/baidu/platform/comapi/map/d;-><init>(Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    .line 370
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 372
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    invoke-interface {v0, v2}, Lcom/baidu/platform/comapi/map/MapViewInterface;->addOverlay(Lcom/baidu/platform/comapi/map/Overlay;)Z

    .line 373
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->V()V

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    iget-wide v2, v2, Lcom/baidu/platform/comapi/map/d;->mLayerID:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    .line 377
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ResetImageRes()V

    .line 380
    :cond_3
    iget p1, p1, Lcom/baidu/mapsdkplatform/comapi/map/v;->c:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 382
    invoke-virtual {p0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->b(Z)V

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    .line 385
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->E()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 386
    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->F(Z)V

    .line 388
    :cond_5
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->F()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 389
    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->G(Z)V

    .line 391
    :cond_6
    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->k(Z)V

    .line 392
    invoke-virtual {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->p(Z)V

    :cond_7
    return-void
.end method

.method private a(Lcom/baidu/platform/comapi/map/MapController;)V
    .locals 4

    .line 282
    invoke-static {}, Lcom/baidu/platform/comapi/JNIInitializer;->isResourceInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    const-class v0, Lcom/baidu/platform/comapi/JNIInitializer;

    monitor-enter v0

    .line 284
    :try_start_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 286
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "animation"

    const/4 v2, 0x1

    .line 288
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "level"

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    .line 290
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "centerptx"

    const-wide v2, 0x4168b739bf5c28f6L    # 1.295815798E7

    .line 291
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "centerpty"

    const-wide v2, 0x415268e3ef5c28f6L    # 4825999.74

    .line 292
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "centerptz"

    const-wide/16 v2, 0x0

    .line 293
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "left"

    const/4 v2, 0x0

    .line 295
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "top"

    .line 296
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 299
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getScreenHeight()I

    move-result v1

    .line 300
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getScreenWidth()I

    move-result v2

    const-string v3, "right"

    .line 301
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "bottom"

    .line 302
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "modulePath"

    .line 305
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getOutputDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appSdcardPath"

    .line 306
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getExternalFilesDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appCachePath"

    .line 307
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getOutputCache()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appSecondCachePath"

    .line 308
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getOutputCache()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mapTmpMax"

    .line 309
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getMapTmpStgMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "domTmpMax"

    .line 310
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getDomTmpStgMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "itsTmpMax"

    .line 311
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getItsTmpStgMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ssgTmpMax"

    .line 312
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getSsgTmpStgMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/map/MapController;->initMapResources(Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    .line 318
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 319
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 320
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 321
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private l(Landroid/os/Bundle;)Z
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->addSDKTileData(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method private m(Landroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 994
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v1, :cond_1

    return v0

    .line 998
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->updateSDKTile(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1000
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->j(Z)V

    .line 1001
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->w:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    :cond_2
    return p1
.end method


# virtual methods
.method public A(Z)V
    .locals 1

    .line 1823
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1826
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setEnlargeCenterWithDoubleClickEnable(Z)V

    return-void
.end method

.method public A()Z
    .locals 1

    .line 1788
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->f:Z

    return v0
.end method

.method public B(Z)V
    .locals 1

    .line 1844
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1847
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setDoubleClickGesturesCenter(Z)V

    return-void
.end method

.method public B()Z
    .locals 1

    .line 1872
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->u:Z

    return v0
.end method

.method public C(Z)V
    .locals 1

    .line 1850
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1853
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setFlingEnable(Z)V

    return-void
.end method

.method public C()Z
    .locals 1

    .line 1884
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->t:Z

    return v0
.end method

.method D()V
    .locals 3

    .line 1946
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1949
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/MapController;->mIsMoving:Z

    if-nez v0, :cond_3

    .line 1950
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/MapController;->mIsAnimating:Z

    if-nez v0, :cond_3

    .line 1951
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/platform/comapi/map/MapController;->mIsAnimating:Z

    .line 1954
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->h:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 1957
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->G()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v0

    const/4 v1, 0x0

    .line 1958
    :goto_0
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1959
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/ak;

    if-eqz v2, :cond_2

    .line 1962
    invoke-interface {v2, v0}, Lcom/baidu/platform/comapi/map/ak;->a(Lcom/baidu/mapsdkplatform/comapi/map/x;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public D(Z)V
    .locals 1

    .line 1864
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1867
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->set3DGestureEnable(Z)V

    .line 1868
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->u:Z

    return-void
.end method

.method public E(Z)V
    .locals 1

    .line 1876
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1879
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setOverlookGestureEnable(Z)V

    .line 1880
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->t:Z

    return-void
.end method

.method public E()Z
    .locals 3

    .line 1987
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-string v2, "basepoi"

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->LayersIsShow(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public F(Z)V
    .locals 3

    .line 2003
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 2004
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-string v2, "basepoi"

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    :cond_0
    return-void
.end method

.method public F()Z
    .locals 3

    .line 1995
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 1996
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-string v2, "poiindoormarklayer"

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->LayersIsShow(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public G()Lcom/baidu/mapsdkplatform/comapi/map/x;
    .locals 2

    .line 2021
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2025
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetMapStatus()Landroid/os/Bundle;

    move-result-object v0

    .line 2026
    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/map/x;

    invoke-direct {v1}, Lcom/baidu/mapsdkplatform/comapi/map/x;-><init>()V

    .line 2027
    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/x;->a(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public G(Z)V
    .locals 3

    .line 2009
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 2010
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-string v2, "poiindoormarklayer"

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    :cond_0
    return-void
.end method

.method public H()Lcom/baidu/mapapi/model/LatLngBounds;
    .locals 6

    .line 2054
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2058
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getMapStatusLimits()Landroid/os/Bundle;

    move-result-object v0

    .line 2059
    new-instance v1, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    const-string v2, "maxCoorx"

    .line 2060
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "minCoorx"

    .line 2061
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "maxCoory"

    .line 2062
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "minCoory"

    .line 2063
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2065
    new-instance v5, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-direct {v5, v0, v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    invoke-static {v5}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    move-result-object v0

    new-instance v2, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-direct {v2, v4, v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    .line 2066
    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    .line 2067
    invoke-virtual {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v0

    return-object v0
.end method

.method public I()Lcom/baidu/mapapi/map/MapStatusUpdate;
    .locals 1

    .line 2075
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->k:Lcom/baidu/mapapi/map/MapStatusUpdate;

    return-object v0
.end method

.method public J()I
    .locals 1

    .line 2101
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 2102
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getFontSizeLevel()I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public K()I
    .locals 1

    .line 2109
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->I:I

    return v0
.end method

.method public L()I
    .locals 1

    .line 2113
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->J:I

    return v0
.end method

.method public M()Lcom/baidu/mapsdkplatform/comapi/map/x;
    .locals 2

    .line 2117
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2120
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetMapStatus(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 2121
    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/map/x;

    invoke-direct {v1}, Lcom/baidu/mapsdkplatform/comapi/map/x;-><init>()V

    .line 2122
    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/x;->a(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public N()D
    .locals 2

    .line 2127
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->G()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v0

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x;->m:D

    return-wide v0
.end method

.method public O()V
    .locals 0

    return-void
.end method

.method public P()[F
    .locals 1

    .line 2582
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2586
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getProjectionMatrix()[F

    move-result-object v0

    return-object v0
.end method

.method public Q()[F
    .locals 1

    .line 2594
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2598
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getViewMatrix()[F

    move-result-object v0

    return-object v0
.end method

.method public R()Ljava/lang/String;
    .locals 1

    .line 2602
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->W:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "GS(2022)460\u53f7"

    :goto_0
    return-object v0
.end method

.method public S()Ljava/lang/String;
    .locals 1

    .line 2606
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->W:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "\u7532\u6d4b\u8d44\u5b5711111342"

    :goto_0
    return-object v0
.end method

.method public T()Ljava/lang/String;
    .locals 1

    .line 2610
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->W:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "\u957f\u5730\u4e07\u65b9\nMapbox\nMapKin\n\u6a02\u5ba2LocalKing PalmCit\nESO DigitalGlobal spaceview\nOSRM Copyright \u00a92017, Project OSRMcontributors, all rights reserved\nHERE\u00a9 2019 HERE, all rights reserved\nOpenStreetMap\u00a9 OpenStreetMapContributor;(OSMF)"

    :goto_0
    return-object v0
.end method

.method public U()I
    .locals 1

    .line 3064
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3068
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getMapLanguage()I

    move-result v0

    return v0
.end method

.method public a(IIIIII)F
    .locals 2

    .line 1587
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    iget-boolean v0, v0, Lcom/baidu/platform/comapi/map/MapController;->mIsMapLoadFinish:Z

    if-nez v0, :cond_0

    const/high16 p1, 0x41400000    # 12.0f

    return p1

    .line 1591
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1595
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "left"

    .line 1596
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "right"

    .line 1597
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "bottom"

    .line 1598
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "top"

    .line 1599
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "hasHW"

    const/4 p2, 0x1

    .line 1601
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "width"

    .line 1602
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "height"

    .line 1603
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1605
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "left"

    const/4 p3, 0x0

    .line 1606
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "bottom"

    .line 1607
    invoke-virtual {p1, p2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "right"

    .line 1608
    invoke-virtual {p1, p2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "top"

    .line 1609
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1611
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p2, v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetFZoomToBoundF(Landroid/os/Bundle;Landroid/os/Bundle;)F

    move-result p1

    return p1
.end method

.method public a(Landroid/os/Bundle;JI)I
    .locals 2

    .line 2172
    iget-object p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    iget-wide v0, p4, Lcom/baidu/mapsdkplatform/comapi/map/k;->a:J

    cmp-long p4, p2, v0

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->F:Lcom/baidu/mapsdkplatform/comapi/map/l;

    if-eqz p4, :cond_0

    const-string p2, "zoom"

    .line 2173
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string p3, "index"

    .line 2174
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    .line 2175
    iget-object p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->F:Lcom/baidu/mapsdkplatform/comapi/map/l;

    invoke-interface {p4, p3, p2}, Lcom/baidu/mapsdkplatform/comapi/map/l;->a(II)Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "param"

    .line 2176
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2177
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    iget p1, p1, Lcom/baidu/mapsdkplatform/comapi/map/k;->e:I

    return p1

    .line 2178
    :cond_0
    iget-object p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->w:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->w:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    iget-wide v0, p4, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a:J

    cmp-long p4, p2, v0

    if-nez p4, :cond_1

    const-string p2, "x"

    .line 2179
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string p3, "y"

    .line 2180
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    const-string p4, "zoom"

    .line 2181
    invoke-virtual {p1, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p4

    .line 2182
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->x:Lcom/baidu/mapsdkplatform/comapi/map/ab;

    const/4 v1, 0x0

    invoke-interface {v0, p2, p3, p4, v1}, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a(IIILandroid/content/Context;)Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "param"

    .line 2183
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2184
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->w:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    iget p1, p1, Lcom/baidu/mapsdkplatform/comapi/map/ac;->e:I

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Landroid/graphics/Point;
    .locals 2

    .line 1084
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    .line 1085
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/baidu/platform/comapi/map/Projection;->toPixels(Lcom/baidu/platform/comapi/basestruct/GeoPoint;Lcom/baidu/platform/comapi/basestruct/Point;)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1087
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 1089
    :cond_0
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    return-object p1
.end method

.method public a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;I)Landroid/graphics/Point;
    .locals 2

    .line 1093
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    .line 1094
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/baidu/platform/comapi/map/Projection;->toPixels(Lcom/baidu/platform/comapi/basestruct/GeoPoint;ILcom/baidu/platform/comapi/basestruct/Point;)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1096
    new-instance p2, Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntX()I

    move-result v0

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/Point;->getIntY()I

    move-result p1

    invoke-direct {p2, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2

    .line 1098
    :cond_0
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    return-object p1
.end method

.method public a()Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    return-object v0
.end method

.method public a(FF)V
    .locals 2

    .line 529
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->a:F

    .line 530
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->c:F

    .line 531
    iput p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->b:F

    .line 532
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comapi/map/MapController;->setMaxAndMinZoomLevel(FF)V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    .line 536
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "maxLevel"

    float-to-int p1, p1

    .line 537
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "minLevel"

    float-to-int p2, p2

    .line 538
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 539
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setMaxAndMinZoomLevel(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 911
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->cleanCache(IZ)Z

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 397
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->I:I

    .line 398
    iput p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->J:I

    return-void
.end method

.method public a(JJJJZ)V
    .locals 0

    .line 1550
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez p1, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 7

    .line 460
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 464
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 465
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 466
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "type"

    const/4 v4, 0x0

    .line 469
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "x"

    .line 470
    sget v4, Lcom/baidu/mapsdkplatform/comapi/map/c;->G:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "y"

    .line 471
    sget v4, Lcom/baidu/mapsdkplatform/comapi/map/c;->H:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "hidetime"

    const/16 v4, 0x3e8

    .line 472
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 473
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "dataset"

    .line 474
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 476
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 483
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 484
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 486
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v3, v3, v4

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 487
    invoke-virtual {p1, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 488
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const-string v4, "imgData"

    .line 489
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v3, "imgKey"

    .line 490
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "imgH"

    .line 491
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "imgW"

    .line 492
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "hasIcon"

    const/4 v3, 0x1

    .line 493
    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "iconData"

    .line 494
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object p1, v1

    .line 497
    :goto_1
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    if-eqz v1, :cond_4

    .line 498
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 499
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comapi/map/d;->setData(Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 503
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/d;->setParam(Landroid/os/Bundle;)V

    .line 506
    :cond_3
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/d;->UpdateOverlay()V

    :cond_4
    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 1284
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "encodePointType"

    .line 1287
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1288
    invoke-static {}, Lcom/baidu/platform/comapi/util/h;->a()Lcom/baidu/platform/comapi/util/h;

    move-result-object v1

    .line 1289
    invoke-virtual {v1, p2, v0}, Lcom/baidu/platform/comapi/util/h;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1292
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 1295
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1296
    new-array v1, v0, [D

    .line 1297
    new-array v2, v0, [D

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 1299
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v5}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mcDirect(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v5

    .line 1300
    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v6

    aput-wide v6, v1, v4

    .line 1301
    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v5

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "x_array"

    .line 1303
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string v0, "y_array"

    .line 1304
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 1306
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {p2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mcDirect(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p2

    const-string v0, "location_x"

    .line 1307
    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "location_y"

    .line 1308
    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "has_dotted_stroke"

    .line 1311
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const-string v0, "dotted_stroke_location_x"

    .line 1313
    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "dotted_stroke_location_y"

    .line 1314
    invoke-virtual {p2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public a(Lcom/baidu/mapapi/map/MapLayer;Z)V
    .locals 4

    .line 849
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 853
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapapi/map/MapLayer;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    return-void

    .line 859
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, v0, v1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetLayersClickable(JZ)V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/map/MapStatusUpdate;)V
    .locals 0

    .line 2083
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->k:Lcom/baidu/mapapi/map/MapStatusUpdate;

    return-void
.end method

.method public a(Lcom/baidu/mapapi/map/ParticleEffectType;)V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/ParticleEffectType;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->closeParticleEffectByType(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/mapapi/map/PoiTagType;Z)V
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/PoiTagType;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setPoiTagEnable(IZ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 1

    .line 1837
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1840
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setLatLngGesturesCenter(Lcom/baidu/mapapi/model/LatLng;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/baidu/mapapi/model/LatLngBounds;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 2032
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2036
    :cond_0
    iget-object v0, p1, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    .line 2037
    iget-object p1, p1, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    .line 2038
    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 2039
    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    .line 2040
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v1

    double-to-int v1, v1

    .line 2041
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v2

    double-to-int v2, v2

    .line 2042
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v3

    double-to-int p1, v3

    .line 2043
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v3

    double-to-int v0, v3

    .line 2045
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "maxCoorx"

    .line 2046
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "minCoory"

    .line 2047
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "minCoorx"

    .line 2048
    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "maxCoory"

    .line 2049
    invoke-virtual {v3, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2050
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setMapStatusLimits(Landroid/os/Bundle;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/map/ab;)V
    .locals 0

    .line 1063
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->x:Lcom/baidu/mapsdkplatform/comapi/map/ab;

    return-void
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/map/l;)V
    .locals 0

    .line 1912
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->F:Lcom/baidu/mapsdkplatform/comapi/map/l;

    return-void
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/map/x;)V
    .locals 2

    .line 1916
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1920
    :cond_0
    invoke-virtual {p1, p0}, Lcom/baidu/mapsdkplatform/comapi/map/x;->a(Lcom/baidu/mapsdkplatform/comapi/map/c;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "animation"

    const/4 v1, 0x0

    .line 1921
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "animatime"

    .line 1922
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1923
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->Y()V

    .line 1924
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetMapStatus(Landroid/os/Bundle;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/map/x;I)V
    .locals 2

    .line 1928
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 1932
    :cond_0
    invoke-virtual {p1, p0}, Lcom/baidu/mapsdkplatform/comapi/map/x;->a(Lcom/baidu/mapsdkplatform/comapi/map/c;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "animation"

    const/4 v1, 0x1

    .line 1933
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "animatime"

    .line 1934
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1936
    iget-boolean p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->O:Z

    if-eqz p2, :cond_1

    .line 1937
    new-instance p2, Lcom/baidu/mapsdkplatform/comapi/map/c$a;

    invoke-direct {p2, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c$a;-><init>(Landroid/os/Bundle;)V

    .line 1938
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->P:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1940
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->D()V

    .line 1941
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SetMapStatus(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/bmsdk/BmLayer;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->B:Lcom/baidu/platform/comapi/bmsdk/BmLayer;

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/ak;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1889
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->h:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1893
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->registMapViewListener(Lcom/baidu/platform/comapi/map/ak;)V

    .line 1895
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/al;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1904
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setOverlayListener(Lcom/baidu/platform/comapi/map/al;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1656
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->U:Lcom/baidu/platform/comapi/map/LocationOverlay;

    if-nez v0, :cond_0

    return-void

    .line 1659
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->U:Lcom/baidu/platform/comapi/map/LocationOverlay;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/LocationOverlay;->setData(Ljava/lang/String;)V

    .line 1660
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->U:Lcom/baidu/platform/comapi/map/LocationOverlay;

    invoke-virtual {p1, p2}, Lcom/baidu/platform/comapi/map/LocationOverlay;->setParam(Landroid/os/Bundle;)V

    .line 1661
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->U:Lcom/baidu/platform/comapi/map/LocationOverlay;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/LocationOverlay;->UpdateOverlay()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/platform/comapi/map/OverlayLocationData;",
            ">;)V"
        }
    .end annotation

    .line 1637
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->U:Lcom/baidu/platform/comapi/map/LocationOverlay;

    if-nez v0, :cond_0

    return-void

    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->U:Lcom/baidu/platform/comapi/map/LocationOverlay;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/LocationOverlay;->setLocationLayerData(Ljava/util/List;)V

    .line 1641
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->U:Lcom/baidu/platform/comapi/map/LocationOverlay;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/LocationOverlay;->UpdateOverlay()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setSDKLayerBelowBmLayer(Z)V

    :cond_0
    return-void
.end method

.method public a([Landroid/os/Bundle;)V
    .locals 2

    .line 1355
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->addOverlayItems([Landroid/os/Bundle;I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public a(J)Z
    .locals 5

    .line 2194
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->y:Ljava/util/List;

    monitor-enter v0

    .line 2195
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapsdkplatform/comapi/map/b;

    .line 2196
    iget-wide v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/b;->a:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    const/4 p1, 0x1

    .line 2197
    monitor-exit v0

    return p1

    .line 2200
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/graphics/Point;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v1, :cond_1

    return v0

    .line 431
    :cond_1
    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_3

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ltz v1, :cond_3

    .line 432
    iget v1, p1, Landroid/graphics/Point;->x:I

    sput v1, Lcom/baidu/mapsdkplatform/comapi/map/c;->G:I

    .line 433
    iget p1, p1, Landroid/graphics/Point;->y:I

    sput p1, Lcom/baidu/mapsdkplatform/comapi/map/c;->H:I

    .line 434
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 435
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 436
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "x"

    .line 438
    sget v4, Lcom/baidu/mapsdkplatform/comapi/map/c;->G:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "y"

    .line 439
    sget v4, Lcom/baidu/mapsdkplatform/comapi/map/c;->H:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "hidetime"

    const/16 v4, 0x3e8

    .line 440
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 441
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "dataset"

    .line 442
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 444
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 446
    :goto_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    if-eqz v1, :cond_3

    .line 447
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/d;->setData(Ljava/lang/String;)V

    .line 451
    :cond_2
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/d;->UpdateOverlay()V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public a(Landroid/os/Bundle;)Z
    .locals 6

    .line 945
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 948
    :cond_0
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->w:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    .line 949
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->w:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    iget v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/ac;->c:I

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->w:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/ac;->d:I

    iget-object v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->w:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    iget-object v4, v4, Lcom/baidu/mapsdkplatform/comapi/map/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->AddLayer(IILjava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 952
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->w:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    iput-wide v2, v0, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a:J

    .line 953
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->y:Ljava/util/List;

    monitor-enter v0

    .line 954
    :try_start_0
    iget-object v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->y:Ljava/util/List;

    iget-object v5, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->w:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 955
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "sdktileaddr"

    .line 956
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 957
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->l(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 959
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->m(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 955
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    return v1
.end method

.method public a(Lcom/baidu/mapapi/map/MapLayer;Lcom/baidu/mapapi/map/MapLayer;)Z
    .locals 6

    .line 788
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 792
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapapi/map/MapLayer;)J

    move-result-wide v2

    .line 793
    invoke-direct {p0, p2}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapapi/map/MapLayer;)J

    move-result-wide p1

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    cmp-long v0, p1, v4

    if-nez v0, :cond_1

    goto :goto_0

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SwitchLayer(JJ)Z

    move-result v0

    .line 799
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public a(Lcom/baidu/mapapi/map/ParticleEffectType;Landroid/os/Bundle;)Z
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/ParticleEffectType;->getType()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->customParticleEffectByType(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/baidu/mapapi/map/PoiTagType;)Z
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/PoiTagType;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getPoiTagEnable(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1487
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1490
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SwitchBaseIndoorMapFloor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b()F
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    iget v0, v0, Lcom/baidu/platform/comapi/map/MapController;->mMaxZoomLevel:F

    return v0

    .line 548
    :cond_0
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->a:F

    return v0
.end method

.method public b(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/baidu/platform/comapi/map/Projection;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    return-object p1
.end method

.method public b(I)V
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setBackgroundColor(I)V

    return-void
.end method

.method public b(Landroid/graphics/Point;)V
    .locals 1

    .line 1830
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1833
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setPointGesturesCenter(Landroid/graphics/Point;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setMapBackgroundImage(Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1522
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1526
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->initCustomStyle(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 514
    :cond_0
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->n:Z

    .line 515
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->W()V

    .line 516
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->n:Z

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowSatelliteMap(Z)V

    .line 518
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 520
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    const/4 v0, 0x2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/comapi/map/MapController;->setMapTheme(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 522
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    const/4 v0, 0x1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/comapi/map/MapController;->setMapTheme(ILandroid/os/Bundle;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public b([Landroid/os/Bundle;)V
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->removeOverlayItems([Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Lcom/baidu/mapapi/map/ParticleEffectType;)Z
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/ParticleEffectType;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->showParticleEffectByType(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/os/Bundle;)Lcom/baidu/mapapi/model/LatLngBounds;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "type"

    .line 1199
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "encodedPoints"

    .line 1200
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1201
    new-instance v3, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v3}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    invoke-virtual {v3}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v3

    const-string v4, "encodePointType"

    .line 1203
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v2, :cond_6

    .line 1207
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 1208
    sget-object v4, Lcom/baidu/mapsdkplatform/comapi/map/h;->l:Lcom/baidu/mapsdkplatform/comapi/map/h;

    invoke-virtual {v4}, Lcom/baidu/mapsdkplatform/comapi/map/h;->ordinal()I

    move-result v4

    if-eq v1, v4, :cond_1

    sget-object v4, Lcom/baidu/mapsdkplatform/comapi/map/h;->j:Lcom/baidu/mapsdkplatform/comapi/map/h;

    invoke-virtual {v4}, Lcom/baidu/mapsdkplatform/comapi/map/h;->ordinal()I

    move-result v4

    if-ne v1, v4, :cond_6

    .line 1213
    :cond_1
    invoke-static {}, Lcom/baidu/platform/comapi/util/h;->a()Lcom/baidu/platform/comapi/util/h;

    move-result-object v1

    .line 1214
    invoke-virtual {v1, v2, p1}, Lcom/baidu/platform/comapi/util/h;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1215
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    goto/16 :goto_2

    .line 1219
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1220
    new-array v1, v0, [D

    .line 1221
    new-array v2, v0, [D

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    .line 1223
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v5}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mcDirect(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v5

    .line 1224
    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v6

    aput-wide v6, v1, v4

    .line 1225
    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v5

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1228
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1229
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    .line 1230
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    double-to-int v4, v4

    .line 1231
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v5

    double-to-int v5, v5

    .line 1232
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v6

    double-to-int v6, v6

    .line 1233
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v7

    double-to-int p1, v7

    invoke-direct {v3, v4, v5, v6, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p1, 0x1

    .line 1236
    :goto_1
    array-length v4, v1

    if-ge p1, v4, :cond_4

    .line 1237
    aget-wide v4, v1, p1

    double-to-int v4, v4

    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 1238
    aget-wide v4, v2, p1

    double-to-int v4, v4

    iput v4, v0, Landroid/graphics/Point;->y:I

    .line 1239
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1240
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1241
    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Point;->x:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1242
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1243
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1245
    :cond_4
    new-instance p1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v1, v3, Landroid/graphics/Rect;->left:I

    invoke-direct {p1, v0, v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    .line 1246
    new-instance v0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget v1, v3, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v1, v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    .line 1247
    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    .line 1248
    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    .line 1249
    new-instance v1, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v3

    goto :goto_3

    :cond_5
    :goto_2
    return-object v0

    :cond_6
    :goto_3
    return-object v3
.end method

.method public c()V
    .locals 6

    .line 677
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->y:Ljava/util/List;

    monitor-enter v0

    .line 682
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapsdkplatform/comapi/map/b;

    .line 683
    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-wide v4, v2, Lcom/baidu/mapsdkplatform/comapi/map/b;->a:J

    const/4 v2, 0x0

    invoke-virtual {v3, v4, v5, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    goto :goto_0

    .line 685
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(I)V
    .locals 3

    .line 1348
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/k;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setHeatMapFrameAnimationIndex(JI)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setDEMEnable(Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 7

    .line 693
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->y:Ljava/util/List;

    monitor-enter v0

    .line 697
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapsdkplatform/comapi/map/b;

    .line 698
    instance-of v4, v2, Lcom/baidu/mapsdkplatform/comapi/map/a;

    if-nez v4, :cond_2

    instance-of v4, v2, Lcom/baidu/mapsdkplatform/comapi/map/k;

    if-eqz v4, :cond_1

    goto :goto_1

    .line 702
    :cond_1
    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-wide v4, v2, Lcom/baidu/mapsdkplatform/comapi/map/b;->a:J

    const/4 v2, 0x1

    invoke-virtual {v3, v4, v5, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    goto :goto_0

    .line 700
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-wide v5, v2, Lcom/baidu/mapsdkplatform/comapi/map/b;->a:J

    invoke-virtual {v4, v5, v6, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    goto :goto_0

    .line 705
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowTrafficMap(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 705
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public d(I)V
    .locals 1

    .line 2091
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 2092
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setFontSizeLevel(I)V

    :cond_0
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1

    .line 1258
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1262
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->h(Landroid/os/Bundle;)V

    .line 1264
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->e(Landroid/os/Bundle;)V

    .line 1265
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->addOneOverlayItem(Landroid/os/Bundle;)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 659
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->v:Z

    return-void
.end method

.method public e()V
    .locals 3

    .line 1026
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->w:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->w:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->RemoveLayer(J)V

    .line 1031
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->y:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->w:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public e(I)V
    .locals 1

    .line 3052
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->W:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mapapi/map/MapLanguage;->ENGLISH:Lcom/baidu/mapapi/map/MapLanguage;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapLanguage;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3056
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setMapLanguage(I)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "baidumapsdk"

    const-string v0, "Opening English map is not supported after setting custom map"

    .line 3053
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_3

    const-string v0, "encodedPoints"

    .line 1269
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "encodePointType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "encodePointType"

    .line 1272
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1273
    sget-object v1, Lcom/baidu/mapapi/map/EncodePointType;->BUILDINGINFO:Lcom/baidu/mapapi/map/EncodePointType;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/EncodePointType;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/baidu/mapapi/map/EncodePointType;->AOI:Lcom/baidu/mapapi/map/EncodePointType;

    .line 1274
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/EncodePointType;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/baidu/mapapi/map/EncodePointType;->RECOGNIZE_AOI:Lcom/baidu/mapapi/map/EncodePointType;

    .line 1275
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/EncodePointType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_1
    const-string v0, "encodedPoints"

    .line 1276
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1278
    invoke-virtual {p0, p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public e(Z)V
    .locals 3

    .line 716
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-string v1, "opgrid"

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v0

    .line 720
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v2, v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    return-void
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 1

    .line 1363
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1367
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->h(Landroid/os/Bundle;)V

    .line 1369
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->e(Landroid/os/Bundle;)V

    .line 1370
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->updateOneOverlayItem(Landroid/os/Bundle;)V

    return-void
.end method

.method public f(Z)V
    .locals 4

    .line 732
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 738
    iget-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->Q:Z

    if-nez p1, :cond_2

    .line 739
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-string v1, "indoorlayer"

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->A:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SwitchLayer(JJ)Z

    const/4 p1, 0x1

    .line 740
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->Q:Z

    goto :goto_0

    .line 746
    :cond_1
    iget-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->Q:Z

    if-eqz p1, :cond_2

    .line 747
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->A:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-string v3, "indoorlayer"

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SwitchLayer(JJ)Z

    const/4 p1, 0x0

    .line 748
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->Q:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public f()Z
    .locals 3

    .line 1072
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->w:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->w:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->cleanSDKTileDataCache(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 1

    .line 1374
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1378
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/c;->h(Landroid/os/Bundle;)V

    .line 1379
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->removeOneOverlayItem(Landroid/os/Bundle;)V

    return-void
.end method

.method public g(Z)V
    .locals 4

    .line 760
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 765
    iget-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->R:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->U:Lcom/baidu/platform/comapi/map/LocationOverlay;

    if-eqz p1, :cond_2

    .line 766
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->A:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->U:Lcom/baidu/platform/comapi/map/LocationOverlay;

    iget-wide v2, v2, Lcom/baidu/platform/comapi/map/LocationOverlay;->mLayerID:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SwitchLayer(JJ)Z

    const/4 p1, 0x1

    .line 767
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->R:Z

    goto :goto_0

    .line 773
    :cond_1
    iget-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->R:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->U:Lcom/baidu/platform/comapi/map/LocationOverlay;

    if-eqz p1, :cond_2

    .line 774
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->U:Lcom/baidu/platform/comapi/map/LocationOverlay;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/LocationOverlay;->mLayerID:J

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->A:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v2, v2, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SwitchLayer(JJ)Z

    const/4 p1, 0x0

    .line 775
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->R:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public g()Z
    .locals 1

    .line 1102
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->m:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 1115
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    return-object v1
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "param"

    .line 1391
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "param"

    .line 1392
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "type"

    .line 1393
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1394
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/h;->d:Lcom/baidu/mapsdkplatform/comapi/map/h;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/h;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "layer_addr"

    .line 1395
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->A:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1396
    :cond_0
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/h;->f:Lcom/baidu/mapsdkplatform/comapi/map/h;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/h;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1

    const-string v0, "layer_addr"

    .line 1398
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->A:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1399
    :cond_1
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/h;->b:Lcom/baidu/mapsdkplatform/comapi/map/h;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/h;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    const-string v0, "layer_addr"

    .line 1401
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->A:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    const-string v0, "layer_addr"

    .line 1403
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->A:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    const-string v0, "type"

    .line 1406
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1407
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/h;->d:Lcom/baidu/mapsdkplatform/comapi/map/h;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/h;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    const-string v0, "layer_addr"

    .line 1408
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->A:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1409
    :cond_4
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/h;->f:Lcom/baidu/mapsdkplatform/comapi/map/h;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/h;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_5

    const-string v0, "layer_addr"

    .line 1411
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->A:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1412
    :cond_5
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/h;->b:Lcom/baidu/mapsdkplatform/comapi/map/h;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/h;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_6

    const-string v0, "layer_addr"

    .line 1414
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->A:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_6
    const-string v0, "layer_addr"

    .line 1416
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->A:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public h(Z)Z
    .locals 8

    .line 812
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-string v2, "carnavinode"

    invoke-virtual {v0, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v2

    .line 817
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-string v4, "android_sdk"

    invoke-virtual {v0, v4}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 825
    iget-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->S:Z

    if-nez p1, :cond_3

    .line 826
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SwitchLayer(JJ)Z

    move-result v1

    const/4 p1, 0x1

    .line 827
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->S:Z

    goto :goto_0

    .line 833
    :cond_2
    iget-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->S:Z

    if-eqz p1, :cond_3

    .line 834
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {p1, v4, v5, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->SwitchLayer(JJ)Z

    move-result p1

    .line 835
    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->S:Z

    move v1, p1

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method public i(Landroid/os/Bundle;)V
    .locals 3

    .line 1441
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1445
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/k;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->initHeatMapData(JLandroid/os/Bundle;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public i(Z)V
    .locals 3

    .line 922
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    if-nez v0, :cond_1

    .line 927
    new-instance v0, Lcom/baidu/platform/comapi/map/d;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/map/d;-><init>(Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    .line 928
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 930
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    invoke-interface {v0, v1}, Lcom/baidu/platform/comapi/map/MapViewInterface;->addOverlay(Lcom/baidu/platform/comapi/map/Overlay;)Z

    .line 931
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->V()V

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/d;->mLayerID:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    return-void
.end method

.method public i()Z
    .locals 1

    .line 1122
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->s:Z

    return v0
.end method

.method public j(Landroid/os/Bundle;)V
    .locals 3

    .line 1449
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1452
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/k;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->updateHeatMapData(JLandroid/os/Bundle;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public j(Z)V
    .locals 3

    .line 1014
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->w:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->w:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public j()Z
    .locals 2

    .line 1126
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    return v1
.end method

.method public k(Landroid/os/Bundle;)V
    .locals 3

    .line 1710
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->E:Lcom/baidu/mapsdkplatform/comapi/map/m;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1714
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->E:Lcom/baidu/mapsdkplatform/comapi/map/m;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/m;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->addHexagonMapData(JLandroid/os/Bundle;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public k(Z)V
    .locals 3

    .line 1051
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-string v2, "basemap"

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    return-void
.end method

.method public k()Z
    .locals 1

    .line 1143
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->n:Z

    return v0
.end method

.method public l(Z)V
    .locals 2

    .line 1106
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1110
    :cond_0
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->s:Z

    .line 1111
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->s:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowHotMap(ZI)V

    return-void
.end method

.method public l()Z
    .locals 3

    .line 1147
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const-string v2, "basemap"

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getLayerIDByTag(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->LayersIsShow(J)Z

    move-result v0

    return v0
.end method

.method public m(Z)V
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1138
    :cond_0
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->m:Z

    .line 1139
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->m:Z

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowTrafficMap(Z)V

    return-void
.end method

.method public m()Z
    .locals 1

    .line 1161
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->getDrawHouseHeightEnable()Z

    move-result v0

    return v0
.end method

.method public n()V
    .locals 3

    .line 1185
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->A:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ClearSDKLayer(J)V

    return-void
.end method

.method public n(Z)V
    .locals 1

    .line 1154
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setDrawHouseHeightEnable(Z)V

    return-void
.end method

.method public o()V
    .locals 3

    .line 1334
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1337
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/k;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->startHeatMapFrameAnimation(J)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public o(Z)V
    .locals 3

    .line 1168
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1172
    :cond_0
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->o:Z

    .line 1173
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    if-nez v0, :cond_1

    .line 1174
    new-instance v0, Lcom/baidu/platform/comapi/map/d;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/map/d;-><init>(Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    .line 1175
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1177
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    invoke-interface {v0, v1}, Lcom/baidu/platform/comapi/map/MapViewInterface;->addOverlay(Lcom/baidu/platform/comapi/map/Overlay;)Z

    .line 1178
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->V()V

    .line 1181
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->V:Lcom/baidu/platform/comapi/map/d;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/d;->mLayerID:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    return-void
.end method

.method public p()V
    .locals 3

    .line 1341
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1344
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/k;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->stopHeatMapFrameAnimation(J)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public p(Z)V
    .locals 2

    .line 1501
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x41b00000    # 22.0f

    if-eqz p1, :cond_1

    .line 1505
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->a:F

    .line 1506
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->c:F

    .line 1507
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v1, :cond_2

    .line 1508
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    iput v0, v1, Lcom/baidu/platform/comapi/map/MapController;->mMaxZoomLevel:F

    goto :goto_0

    .line 1511
    :cond_1
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->a:F

    .line 1512
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->c:F

    .line 1513
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v1, :cond_2

    .line 1514
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    iput v0, v1, Lcom/baidu/platform/comapi/map/MapController;->mMaxZoomLevel:F

    .line 1518
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowBaseIndoorMap(Z)V

    return-void
.end method

.method public q()V
    .locals 3

    .line 1422
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->E:Lcom/baidu/mapsdkplatform/comapi/map/m;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1426
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->E:Lcom/baidu/mapsdkplatform/comapi/map/m;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/m;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->clearHexagonLayerCache(J)V

    .line 1427
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->E:Lcom/baidu/mapsdkplatform/comapi/map/m;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/m;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public q(Z)V
    .locals 3

    .line 1531
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->U()I

    move-result v0

    sget-object v1, Lcom/baidu/mapapi/map/MapLanguage;->ENGLISH:Lcom/baidu/mapapi/map/MapLanguage;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapLanguage;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1536
    :cond_0
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->W:Z

    .line 1537
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->setCustomStyleEnable(Z)V

    .line 1539
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1540
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomMap setMapCustomEnable enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1541
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "baidumapsdk"

    const-string v0, "Opening custom map is not support after setting English map"

    .line 1532
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public r()V
    .locals 3

    .line 1432
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1436
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/k;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->clearHeatMapLayerCache(J)V

    .line 1437
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/k;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public r(Z)V
    .locals 3

    .line 1665
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1669
    :cond_0
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->p:Z

    .line 1671
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->U:Lcom/baidu/platform/comapi/map/LocationOverlay;

    if-nez v0, :cond_1

    .line 1672
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1674
    new-instance v0, Lcom/baidu/platform/comapi/map/LocationOverlay;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/map/LocationOverlay;-><init>(Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->U:Lcom/baidu/platform/comapi/map/LocationOverlay;

    .line 1675
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->U:Lcom/baidu/platform/comapi/map/LocationOverlay;

    invoke-interface {p1, v0}, Lcom/baidu/platform/comapi/map/MapViewInterface;->addOverlay(Lcom/baidu/platform/comapi/map/Overlay;)Z

    goto :goto_0

    .line 1678
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->U:Lcom/baidu/platform/comapi/map/LocationOverlay;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/LocationOverlay;->mLayerID:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public s()Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;
    .locals 7

    .line 1457
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1460
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->GetFocusedBaseIndoorMapInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v1, ""

    const-string v2, ""

    .line 1466
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1468
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "focusindoorid"

    .line 1469
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v1, "curfloor"

    .line 1470
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v2, "floorlist"

    .line 1471
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    .line 1473
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1474
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1475
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v6, v2

    move-object v2, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v6, v2

    move-object v2, v0

    move-object v0, v1

    :goto_1
    move-object v1, v6

    .line 1479
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1482
    :cond_2
    new-instance v2, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;

    invoke-direct {v2, v0, v1, v3}, Lcom/baidu/mapapi/map/MapBaseIndoorMapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v2
.end method

.method public s(Z)V
    .locals 3

    .line 1688
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1692
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    if-nez v0, :cond_1

    .line 1693
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/k;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/k;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    .line 1694
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapsdkplatform/comapi/map/b;)V

    .line 1697
    :cond_1
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->q:Z

    .line 1698
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/k;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    return-void
.end method

.method public t(Z)V
    .locals 3

    .line 1718
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    return-void

    .line 1722
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->E:Lcom/baidu/mapsdkplatform/comapi/map/m;

    if-nez v0, :cond_1

    .line 1723
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/m;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/m;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->E:Lcom/baidu/mapsdkplatform/comapi/map/m;

    .line 1724
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->E:Lcom/baidu/mapsdkplatform/comapi/map/m;

    invoke-direct {p0, v0}, Lcom/baidu/mapsdkplatform/comapi/map/c;->a(Lcom/baidu/mapsdkplatform/comapi/map/b;)V

    .line 1727
    :cond_1
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->r:Z

    .line 1728
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->E:Lcom/baidu/mapsdkplatform/comapi/map/m;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/m;->a:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->ShowLayers(JZ)V

    return-void
.end method

.method public t()Z
    .locals 1

    .line 1494
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1497
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->IsBaseIndoorMapMode()Z

    move-result v0

    return v0
.end method

.method public u(Z)V
    .locals 1

    .line 1763
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1766
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setCanTouchMove(Z)V

    .line 1767
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->e:Z

    return-void
.end method

.method public u()Z
    .locals 1

    .line 1546
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->W:Z

    return v0
.end method

.method public v(Z)V
    .locals 1

    .line 1771
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1774
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setEnableZoom(Z)V

    .line 1775
    iput-boolean p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->f:Z

    return-void
.end method

.method public v()Z
    .locals 1

    .line 1629
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->o:Z

    return v0
.end method

.method public w()V
    .locals 2

    .line 1650
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->U:Lcom/baidu/platform/comapi/map/LocationOverlay;

    if-eqz v0, :cond_0

    .line 1651
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->U:Lcom/baidu/platform/comapi/map/LocationOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/map/LocationOverlay;->clearLocationLayerData(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public w(Z)V
    .locals 1

    .line 1784
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setInertialAnimation(Z)V

    return-void
.end method

.method public x(Z)V
    .locals 1

    .line 1792
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1795
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setDoubleClickZoom(Z)V

    return-void
.end method

.method public x()Z
    .locals 1

    .line 1684
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->p:Z

    return v0
.end method

.method public y()V
    .locals 3

    .line 1737
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1741
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->i:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->D:Lcom/baidu/mapsdkplatform/comapi/map/k;

    iget-wide v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/k;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->UpdateLayers(J)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public y(Z)V
    .locals 1

    .line 1806
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1809
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setTwoTouchClickZoomEnabled(Z)V

    return-void
.end method

.method public z(Z)V
    .locals 1

    .line 1813
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    if-nez v0, :cond_0

    return-void

    .line 1816
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->T:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/MapController;->setDoubleClickMoveZoomEnable(Z)V

    return-void
.end method

.method public z()Z
    .locals 1

    .line 1759
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/c;->e:Z

    return v0
.end method
