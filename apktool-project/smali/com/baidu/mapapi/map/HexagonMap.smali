.class public Lcom/baidu/mapapi/map/HexagonMap;
.super Ljava/lang/Object;
.source "HexagonMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/HexagonMap$Builder;,
        Lcom/baidu/mapapi/map/HexagonMap$a;,
        Lcom/baidu/mapapi/map/HexagonMap$HexagonType;
    }
.end annotation


# static fields
.field public static final DEFAULT_GRADIENT:Lcom/baidu/mapapi/map/Gradient;

.field public static final DEFAULT_MAX_HIGH:I = 0x0

.field public static final DEFAULT_MAX_LEVEL:I = 0x16

.field public static final DEFAULT_MIN_LEVEL:I = 0x4

.field private static final m:[I

.field private static final n:[F


# instance fields
.field private a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;"
        }
    .end annotation
.end field

.field private b:F

.field private c:F

.field private d:Lcom/baidu/mapapi/map/HexagonMap$HexagonType;

.field private e:F

.field private f:F

.field private g:F

.field private h:Lcom/baidu/mapapi/map/Gradient;

.field protected hexagonMapLayerListener:Lcom/baidu/mapapi/map/HexagonMap$a;

.field private i:I

.field private j:I

.field private k:[I

.field private l:[F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    .line 54
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xfa

    .line 55
    invoke-static {v2, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v1, v2

    const/16 v3, 0xe1

    invoke-static {v2, v3, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v1, v4

    const/16 v3, 0xff

    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    sput-object v1, Lcom/baidu/mapapi/map/HexagonMap;->m:[I

    .line 62
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/mapapi/map/HexagonMap;->n:[F

    .line 67
    new-instance v0, Lcom/baidu/mapapi/map/Gradient;

    sget-object v1, Lcom/baidu/mapapi/map/HexagonMap;->m:[I

    sget-object v2, Lcom/baidu/mapapi/map/HexagonMap;->n:[F

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/map/Gradient;-><init>([I[F)V

    sput-object v0, Lcom/baidu/mapapi/map/HexagonMap;->DEFAULT_GRADIENT:Lcom/baidu/mapapi/map/Gradient;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>(Lcom/baidu/mapapi/map/HexagonMap$Builder;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lcom/baidu/mapapi/map/HexagonMap$Builder;->a(Lcom/baidu/mapapi/map/HexagonMap$Builder;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/HexagonMap;->a:Ljava/util/Collection;

    .line 74
    invoke-static {p1}, Lcom/baidu/mapapi/map/HexagonMap$Builder;->b(Lcom/baidu/mapapi/map/HexagonMap$Builder;)F

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/HexagonMap;->b:F

    .line 75
    invoke-static {p1}, Lcom/baidu/mapapi/map/HexagonMap$Builder;->c(Lcom/baidu/mapapi/map/HexagonMap$Builder;)F

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/HexagonMap;->c:F

    .line 76
    invoke-static {p1}, Lcom/baidu/mapapi/map/HexagonMap$Builder;->d(Lcom/baidu/mapapi/map/HexagonMap$Builder;)Lcom/baidu/mapapi/map/HexagonMap$HexagonType;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/HexagonMap;->d:Lcom/baidu/mapapi/map/HexagonMap$HexagonType;

    .line 77
    invoke-static {p1}, Lcom/baidu/mapapi/map/HexagonMap$Builder;->e(Lcom/baidu/mapapi/map/HexagonMap$Builder;)Lcom/baidu/mapapi/map/Gradient;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/HexagonMap;->h:Lcom/baidu/mapapi/map/Gradient;

    .line 78
    invoke-static {p1}, Lcom/baidu/mapapi/map/HexagonMap$Builder;->f(Lcom/baidu/mapapi/map/HexagonMap$Builder;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/HexagonMap;->i:I

    .line 79
    invoke-static {p1}, Lcom/baidu/mapapi/map/HexagonMap$Builder;->g(Lcom/baidu/mapapi/map/HexagonMap$Builder;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/HexagonMap;->j:I

    .line 80
    invoke-static {p1}, Lcom/baidu/mapapi/map/HexagonMap$Builder;->h(Lcom/baidu/mapapi/map/HexagonMap$Builder;)F

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/HexagonMap;->f:F

    .line 81
    invoke-static {p1}, Lcom/baidu/mapapi/map/HexagonMap$Builder;->i(Lcom/baidu/mapapi/map/HexagonMap$Builder;)F

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/HexagonMap;->g:F

    .line 82
    invoke-static {p1}, Lcom/baidu/mapapi/map/HexagonMap$Builder;->j(Lcom/baidu/mapapi/map/HexagonMap$Builder;)F

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/HexagonMap;->e:F

    .line 83
    iget-object p1, p0, Lcom/baidu/mapapi/map/HexagonMap;->h:Lcom/baidu/mapapi/map/Gradient;

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/HexagonMap;->a(Lcom/baidu/mapapi/map/Gradient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapapi/map/HexagonMap$Builder;Lcom/baidu/mapapi/map/y;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/HexagonMap;-><init>(Lcom/baidu/mapapi/map/HexagonMap$Builder;)V

    return-void
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 13
    invoke-static {p0}, Lcom/baidu/mapapi/map/HexagonMap;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/baidu/mapapi/map/Gradient;)V
    .locals 2

    .line 87
    iput-object p1, p0, Lcom/baidu/mapapi/map/HexagonMap;->h:Lcom/baidu/mapapi/map/Gradient;

    .line 88
    iget v0, p0, Lcom/baidu/mapapi/map/HexagonMap;->e:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/baidu/mapapi/map/Gradient;->a(D)[I

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/HexagonMap;->k:[I

    .line 89
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Gradient;->a()[F

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/map/HexagonMap;->l:[F

    return-void
.end method

.method private static b(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;"
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    .line 332
    new-instance v2, Lcom/baidu/mapapi/map/WeightedLatLng;

    invoke-direct {v2, v1}, Lcom/baidu/mapapi/map/WeightedLatLng;-><init>(Lcom/baidu/mapapi/model/LatLng;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public remove()V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/baidu/mapapi/map/HexagonMap;->a:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/baidu/mapapi/map/HexagonMap;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/HexagonMap;->hexagonMapLayerListener:Lcom/baidu/mapapi/map/HexagonMap$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/HexagonMap$a;->a(Lcom/baidu/mapapi/map/HexagonMap;)V

    return-void
.end method

.method public setShow(Z)V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/baidu/mapapi/map/HexagonMap;->hexagonMapLayerListener:Lcom/baidu/mapapi/map/HexagonMap$a;

    invoke-interface {v0, p0, p1}, Lcom/baidu/mapapi/map/HexagonMap$a;->a(Lcom/baidu/mapapi/map/HexagonMap;Z)V

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 387
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "radius"

    .line 388
    iget v2, p0, Lcom/baidu/mapapi/map/HexagonMap;->b:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "gap"

    .line 389
    iget v2, p0, Lcom/baidu/mapapi/map/HexagonMap;->c:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "alpha"

    .line 390
    iget v2, p0, Lcom/baidu/mapapi/map/HexagonMap;->e:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 392
    new-instance v1, Lcom/baidu/mapapi/map/HexagonMapData;

    iget-object v2, p0, Lcom/baidu/mapapi/map/HexagonMap;->a:Ljava/util/Collection;

    iget v3, p0, Lcom/baidu/mapapi/map/HexagonMap;->f:F

    invoke-direct {v1, v2, v3}, Lcom/baidu/mapapi/map/HexagonMapData;-><init>(Ljava/util/Collection;F)V

    .line 393
    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/HexagonMapData;->toBundle(Landroid/os/Bundle;)V

    const-string v1, "color_array"

    .line 395
    iget-object v2, p0, Lcom/baidu/mapapi/map/HexagonMap;->k:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v1, "hexagon_type"

    .line 396
    iget-object v2, p0, Lcom/baidu/mapapi/map/HexagonMap;->d:Lcom/baidu/mapapi/map/HexagonMap$HexagonType;

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/HexagonMap$HexagonType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "color_start_points"

    .line 398
    iget-object v2, p0, Lcom/baidu/mapapi/map/HexagonMap;->l:[F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    const-string v1, "max_intentity"

    .line 399
    iget v2, p0, Lcom/baidu/mapapi/map/HexagonMap;->f:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "min_intentity"

    .line 400
    iget v2, p0, Lcom/baidu/mapapi/map/HexagonMap;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "max_show_level"

    .line 401
    iget v2, p0, Lcom/baidu/mapapi/map/HexagonMap;->i:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "min_show_level"

    .line 402
    iget v2, p0, Lcom/baidu/mapapi/map/HexagonMap;->j:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method
