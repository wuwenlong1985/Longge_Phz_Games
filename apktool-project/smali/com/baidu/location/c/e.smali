.class public Lcom/baidu/location/c/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/c/e$a;
    }
.end annotation


# static fields
.field private static i:Lcom/baidu/location/c/e; = null

.field private static final l:Ljava/lang/String;

.field private static m:I = -0x1

.field private static n:I = -0x1

.field private static o:I


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field private j:Lcom/baidu/location/c/e$a;

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/h/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/conlts.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/c/e;->l:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c/e;->j:Lcom/baidu/location/c/e$a;

    const-wide/32 v0, 0x93a80

    iput-wide v0, p0, Lcom/baidu/location/c/e;->k:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c/e;->a:Z

    iput-boolean v0, p0, Lcom/baidu/location/c/e;->b:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/c/e;->c:Z

    iput-boolean v0, p0, Lcom/baidu/location/c/e;->d:Z

    iput-boolean v0, p0, Lcom/baidu/location/c/e;->e:Z

    iput-boolean v0, p0, Lcom/baidu/location/c/e;->f:Z

    iput-boolean v0, p0, Lcom/baidu/location/c/e;->g:Z

    iput-boolean v1, p0, Lcom/baidu/location/c/e;->h:Z

    return-void
.end method

.method public static a()Lcom/baidu/location/c/e;
    .locals 1

    sget-object v0, Lcom/baidu/location/c/e;->i:Lcom/baidu/location/c/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/c/e;

    invoke-direct {v0}, Lcom/baidu/location/c/e;-><init>()V

    sput-object v0, Lcom/baidu/location/c/e;->i:Lcom/baidu/location/c/e;

    :cond_0
    sget-object v0, Lcom/baidu/location/c/e;->i:Lcom/baidu/location/c/e;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/baidu/location/c/e;->a:Z

    and-int/lit8 v0, p1, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/baidu/location/c/e;->b:Z

    and-int/lit8 v0, p1, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/baidu/location/c/e;->c:Z

    and-int/lit8 v0, p1, 0x8

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/baidu/location/c/e;->d:Z

    const/high16 v0, 0x10000

    and-int v3, p1, v0

    if-ne v3, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/baidu/location/c/e;->f:Z

    const/high16 v0, 0x20000

    and-int v3, p1, v0

    if-ne v3, v0, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    iput-boolean v2, p0, Lcom/baidu/location/c/e;->g:Z

    const/16 v0, 0x10

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_6

    iput-boolean v1, p0, Lcom/baidu/location/c/e;->e:Z

    :cond_6
    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/c/e;->e()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/e;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->a([B)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const v1, 0xdbba00

    const/16 v2, 0xa

    :try_start_0
    const-string v3, "ipen"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string v3, "ipen"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :cond_1
    const-string v3, "ipvt"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "ipvt"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :cond_2
    const-string v3, "ipvn"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "ipvn"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    :cond_3
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "MapCoreServicePre"

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v3, "ipLocInfoUpload"

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "ipValidTime"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "ipLocInfoUploadTimesPerDay"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private a([B)V
    .locals 19

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    array-length v3, v0

    const/16 v4, 0x280

    if-ge v3, v4, :cond_1

    sput-boolean v1, Lcom/baidu/location/h/s;->w:Z

    sget-wide v0, Lcom/baidu/location/h/s;->r:D

    const-wide v3, 0x3f9999999999999aL    # 0.025

    add-double/2addr v0, v3

    sput-wide v0, Lcom/baidu/location/h/s;->t:D

    sget-wide v0, Lcom/baidu/location/h/s;->q:D

    const/4 v5, 0x0

    sub-double/2addr v0, v3

    sput-wide v0, Lcom/baidu/location/h/s;->s:D

    goto/16 :goto_1

    :cond_1
    sput-boolean v2, Lcom/baidu/location/h/s;->w:Z

    const/4 v3, 0x7

    aget-byte v3, v0, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long v7, v3, v5

    const/16 v3, 0x38

    shl-long/2addr v7, v3

    const/4 v4, 0x6

    aget-byte v4, v0, v4

    int-to-long v9, v4

    and-long v11, v9, v5

    const/16 v4, 0x30

    shl-long v9, v11, v4

    or-long v11, v7, v9

    const/4 v7, 0x5

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long v9, v7, v5

    const/16 v7, 0x28

    shl-long v8, v9, v7

    or-long v13, v11, v8

    const/4 v8, 0x4

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long v10, v8, v5

    const/16 v8, 0x20

    shl-long v9, v10, v8

    or-long v11, v13, v9

    const/4 v9, 0x3

    aget-byte v9, v0, v9

    int-to-long v9, v9

    and-long v13, v9, v5

    const/16 v9, 0x18

    shl-long/2addr v13, v9

    or-long v15, v11, v13

    const/4 v10, 0x2

    aget-byte v10, v0, v10

    int-to-long v10, v10

    and-long v12, v10, v5

    const/16 v10, 0x10

    shl-long v11, v12, v10

    or-long v13, v15, v11

    aget-byte v11, v0, v2

    int-to-long v11, v11

    and-long v15, v11, v5

    const/16 v11, 0x8

    shl-long/2addr v15, v11

    or-long v17, v13, v15

    aget-byte v12, v0, v1

    int-to-long v12, v12

    and-long v14, v12, v5

    or-long v12, v17, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    sput-wide v12, Lcom/baidu/location/h/s;->s:D

    const/16 v12, 0xf

    aget-byte v12, v0, v12

    int-to-long v12, v12

    and-long v14, v12, v5

    shl-long v12, v14, v3

    const/16 v3, 0xe

    aget-byte v3, v0, v3

    int-to-long v14, v3

    and-long v16, v14, v5

    shl-long v3, v16, v4

    or-long v14, v12, v3

    const/16 v3, 0xd

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long v12, v3, v5

    shl-long v3, v12, v7

    or-long v12, v14, v3

    const/16 v3, 0xc

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long v14, v3, v5

    shl-long v3, v14, v8

    or-long v7, v12, v3

    const/16 v3, 0xb

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long v12, v3, v5

    shl-long v3, v12, v9

    or-long v12, v7, v3

    const/16 v3, 0xa

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long v7, v3, v5

    shl-long v3, v7, v10

    or-long v7, v12, v3

    const/16 v3, 0x9

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long v9, v3, v5

    shl-long v3, v9, v11

    or-long v9, v7, v3

    aget-byte v3, v0, v11

    int-to-long v3, v3

    and-long v7, v3, v5

    or-long v3, v9, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sput-wide v3, Lcom/baidu/location/h/s;->t:D

    const/16 v3, 0x271

    new-array v4, v3, [B

    sput-object v4, Lcom/baidu/location/h/s;->v:[B

    :goto_0
    if-ge v1, v3, :cond_2

    sget-object v4, Lcom/baidu/location/h/s;->v:[B

    add-int/lit8 v5, v1, 0x10

    aget-byte v5, v0, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/baidu/location/c/e;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "ipconf"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p1, :cond_0

    :try_start_1
    const-string p1, "ipconf"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    :try_start_2
    const-string p1, "is_check_Per"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p1, :cond_1

    :try_start_3
    const-string p1, "is_check_Per"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    sput-boolean v0, Lcom/baidu/location/h/s;->ax:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_1
    :try_start_4
    const-string p1, "ver"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sget v3, Lcom/baidu/location/h/s;->x:I

    if-le p1, v3, :cond_2b

    sput p1, Lcom/baidu/location/h/s;->x:I

    const-string p1, "gps"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz p1, :cond_c

    const-string p1, "gps"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "\\|"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v7, p1

    const/16 v8, 0xa

    if-le v7, v8, :cond_c

    aget-object v7, p1, v1

    if-eqz v7, :cond_2

    aget-object v7, p1, v1

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    aget-object v7, p1, v1

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->y:F

    :cond_2
    aget-object v7, p1, v0

    if-eqz v7, :cond_3

    aget-object v7, p1, v0

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    aget-object v7, p1, v0

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->z:F

    :cond_3
    aget-object v7, p1, v6

    if-eqz v7, :cond_4

    aget-object v7, p1, v6

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    aget-object v7, p1, v6

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->A:F

    :cond_4
    aget-object v7, p1, v5

    if-eqz v7, :cond_5

    aget-object v7, p1, v5

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    aget-object v7, p1, v5

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->B:F

    :cond_5
    aget-object v7, p1, v4

    if-eqz v7, :cond_6

    aget-object v7, p1, v4

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    aget-object v7, p1, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->C:I

    :cond_6
    aget-object v7, p1, v3

    if-eqz v7, :cond_7

    aget-object v7, p1, v3

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    aget-object v7, p1, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->D:I

    :cond_7
    const/4 v7, 0x6

    aget-object v9, p1, v7

    if-eqz v9, :cond_8

    aget-object v9, p1, v7

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    aget-object v7, p1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->E:I

    :cond_8
    const/4 v7, 0x7

    aget-object v9, p1, v7

    if-eqz v9, :cond_9

    aget-object v9, p1, v7

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    aget-object v7, p1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->F:I

    :cond_9
    const/16 v7, 0x8

    aget-object v9, p1, v7

    if-eqz v9, :cond_a

    aget-object v9, p1, v7

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    aget-object v7, p1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->G:I

    :cond_a
    const/16 v7, 0x9

    aget-object v9, p1, v7

    if-eqz v9, :cond_b

    aget-object v9, p1, v7

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    aget-object v7, p1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->H:I

    :cond_b
    aget-object v7, p1, v8

    if-eqz v7, :cond_c

    aget-object v7, p1, v8

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    aget-object p1, p1, v8

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/baidu/location/h/s;->I:I

    :cond_c
    const-string p1, "up"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "up"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "\\|"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v7, p1

    if-le v7, v5, :cond_10

    aget-object v7, p1, v1

    if-eqz v7, :cond_d

    aget-object v7, p1, v1

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    aget-object v7, p1, v1

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->J:F

    :cond_d
    aget-object v7, p1, v0

    if-eqz v7, :cond_e

    aget-object v7, p1, v0

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    aget-object v7, p1, v0

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->K:F

    :cond_e
    aget-object v7, p1, v6

    if-eqz v7, :cond_f

    aget-object v7, p1, v6

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    aget-object v7, p1, v6

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->L:F

    :cond_f
    aget-object v7, p1, v5

    if-eqz v7, :cond_10

    aget-object v7, p1, v5

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    sput p1, Lcom/baidu/location/h/s;->M:F

    :cond_10
    const-string p1, "wf"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "wf"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "\\|"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v7, p1

    if-le v7, v5, :cond_14

    aget-object v7, p1, v1

    if-eqz v7, :cond_11

    aget-object v7, p1, v1

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    aget-object v7, p1, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->N:I

    :cond_11
    aget-object v7, p1, v0

    if-eqz v7, :cond_12

    aget-object v7, p1, v0

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    aget-object v7, p1, v0

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->P:F

    :cond_12
    aget-object v7, p1, v6

    if-eqz v7, :cond_13

    aget-object v7, p1, v6

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    aget-object v7, p1, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->Q:I

    :cond_13
    aget-object v7, p1, v5

    if-eqz v7, :cond_14

    aget-object v7, p1, v5

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    sput p1, Lcom/baidu/location/h/s;->R:F

    :cond_14
    const-string p1, "ab"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "ab"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "\\|"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v7, p1

    if-le v7, v5, :cond_18

    aget-object v7, p1, v1

    if-eqz v7, :cond_15

    aget-object v7, p1, v1

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    aget-object v7, p1, v1

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->S:F

    :cond_15
    aget-object v7, p1, v0

    if-eqz v7, :cond_16

    aget-object v7, p1, v0

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    aget-object v7, p1, v0

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->T:F

    :cond_16
    aget-object v7, p1, v6

    if-eqz v7, :cond_17

    aget-object v7, p1, v6

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    aget-object v7, p1, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->U:I

    :cond_17
    aget-object v7, p1, v5

    if-eqz v7, :cond_18

    aget-object v7, p1, v5

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/baidu/location/h/s;->V:I

    :cond_18
    const-string p1, "zxd"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const-string p1, "zxd"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "\\|"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v7, p1

    if-le v7, v4, :cond_1d

    aget-object v7, p1, v1

    if-eqz v7, :cond_19

    aget-object v7, p1, v1

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    aget-object v7, p1, v1

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->ar:F

    :cond_19
    aget-object v7, p1, v0

    if-eqz v7, :cond_1a

    aget-object v7, p1, v0

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    aget-object v7, p1, v0

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->as:F

    :cond_1a
    aget-object v7, p1, v6

    if-eqz v7, :cond_1b

    aget-object v7, p1, v6

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    aget-object v7, p1, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->at:I

    :cond_1b
    aget-object v7, p1, v5

    if-eqz v7, :cond_1c

    aget-object v7, p1, v5

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    aget-object v7, p1, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->au:I

    :cond_1c
    aget-object v7, p1, v4

    if-eqz v7, :cond_1d

    aget-object v7, p1, v4

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/baidu/location/h/s;->av:I

    :cond_1d
    const-string p1, "gpc"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    const-string p1, "gpc"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v7, "\\|"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v7, p1

    if-le v7, v3, :cond_26

    aget-object v7, p1, v1

    if-eqz v7, :cond_1f

    aget-object v7, p1, v1

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    aget-object v7, p1, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_1e

    sput-boolean v0, Lcom/baidu/location/h/s;->aa:Z

    goto :goto_0

    :cond_1e
    sput-boolean v1, Lcom/baidu/location/h/s;->aa:Z

    :cond_1f
    :goto_0
    aget-object v7, p1, v0

    if-eqz v7, :cond_21

    aget-object v7, p1, v0

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    aget-object v7, p1, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_20

    sput-boolean v0, Lcom/baidu/location/h/s;->ab:Z

    goto :goto_1

    :cond_20
    sput-boolean v1, Lcom/baidu/location/h/s;->ab:Z

    :cond_21
    :goto_1
    aget-object v7, p1, v6

    if-eqz v7, :cond_22

    aget-object v7, p1, v6

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_22

    aget-object v7, p1, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/baidu/location/h/s;->ac:I

    :cond_22
    aget-object v7, p1, v5

    if-eqz v7, :cond_23

    aget-object v7, p1, v5

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/baidu/location/h/s;->ae:I

    :cond_23
    aget-object v5, p1, v4

    if-eqz v5, :cond_25

    aget-object v5, p1, v4

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_24

    int-to-long v4, v4

    sput-wide v4, Lcom/baidu/location/h/s;->ak:J

    sget-wide v4, Lcom/baidu/location/h/s;->ak:J

    const-wide/16 v7, 0x3e8

    mul-long v4, v4, v7

    const-wide/16 v7, 0x3c

    mul-long v4, v4, v7

    sput-wide v4, Lcom/baidu/location/h/s;->ag:J

    sget-wide v4, Lcom/baidu/location/h/s;->ag:J

    shr-long/2addr v4, v6

    sput-wide v4, Lcom/baidu/location/h/s;->al:J

    goto :goto_2

    :cond_24
    sput-boolean v1, Lcom/baidu/location/h/s;->o:Z

    :cond_25
    :goto_2
    aget-object v4, p1, v3

    if-eqz v4, :cond_26

    aget-object v4, p1, v3

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/baidu/location/h/s;->an:I

    :cond_26
    const-string p1, "shak"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_29

    const-string p1, "shak"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "\\|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v3, p1

    if-le v3, v6, :cond_29

    aget-object v3, p1, v1

    if-eqz v3, :cond_27

    aget-object v3, p1, v1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/baidu/location/h/s;->ao:I

    :cond_27
    aget-object v3, p1, v0

    if-eqz v3, :cond_28

    aget-object v3, p1, v0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/baidu/location/h/s;->ap:I

    :cond_28
    aget-object v3, p1, v6

    if-eqz v3, :cond_29

    aget-object v3, p1, v6

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    aget-object p1, p1, v6

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    sput p1, Lcom/baidu/location/h/s;->aq:F

    :cond_29
    const-string p1, "dmx"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2a

    const-string p1, "dmx"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/baidu/location/h/s;->am:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2a
    const/4 v1, 0x1

    :catch_2
    :cond_2b
    return v1
.end method

.method private b(I)V
    .locals 5

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/c/e;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/baidu/location/c/e;->i()V

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    sget v3, Lcom/baidu/location/c/e;->o:I

    mul-int v0, v0, v3

    add-int/lit16 v0, v0, 0x80

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/baidu/location/h/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    array-length v4, v0

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    sget p1, Lcom/baidu/location/c/e;->o:I

    if-ne v2, p1, :cond_1

    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :cond_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    sput v0, Lcom/baidu/location/c/e;->n:I

    if-eqz p1, :cond_4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/baidu/location/c/e;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "ctr"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ctr"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/baidu/location/c/e;->n:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/baidu/location/c/e;->j()V

    sget p1, Lcom/baidu/location/c/e;->n:I

    if-eq p1, v0, :cond_2

    sget p1, Lcom/baidu/location/c/e;->n:I

    sget v1, Lcom/baidu/location/c/e;->n:I

    invoke-direct {p0, v1}, Lcom/baidu/location/c/e;->b(I)V

    goto :goto_0

    :cond_2
    sget p1, Lcom/baidu/location/c/e;->m:I

    if-eq p1, v0, :cond_3

    sget p1, Lcom/baidu/location/c/e;->m:I

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    :goto_0
    if-eq p1, v0, :cond_4

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->a(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_4
    return-void
.end method

.method private e()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/baidu/location/h/s;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&usr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/h/b;->a()Lcom/baidu/location/h/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/h/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/location/h/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&prod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/location/h/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&cnloc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/b/t;->a()Lcom/baidu/location/b/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/t;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/c/e;->j:Lcom/baidu/location/c/e$a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/location/c/e$a;

    invoke-direct {v1, p0}, Lcom/baidu/location/c/e$a;-><init>(Lcom/baidu/location/c/e;)V

    iput-object v1, p0, Lcom/baidu/location/c/e;->j:Lcom/baidu/location/c/e$a;

    :cond_0
    invoke-static {}, Lcom/baidu/location/h/s;->b()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/baidu/location/c/e;->j:Lcom/baidu/location/c/e$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/baidu/location/c/e$a;->a(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/h/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/config.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/baidu/location/h/s;->aa:Z

    sget-boolean v2, Lcom/baidu/location/h/s;->ab:Z

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "{\"ver\":\"%d\",\"gps\":\"%.1f|%.1f|%.1f|%.1f|%d|%d|%d|%d|%d|%d|%d\",\"up\":\"%.1f|%.1f|%.1f|%.1f\",\"wf\":\"%d|%.1f|%d|%.1f\",\"ab\":\"%.2f|%.2f|%d|%d\",\"gpc\":\"%d|%d|%d|%d|%d|%d\",\"zxd\":\"%.1f|%.1f|%d|%d|%d\",\"shak\":\"%d|%d|%.1f\",\"dmx\":%d}"

    const/16 v5, 0x27

    new-array v5, v5, [Ljava/lang/Object;

    sget v6, Lcom/baidu/location/h/s;->x:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget v6, Lcom/baidu/location/h/s;->y:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const/4 v6, 0x2

    sget v9, Lcom/baidu/location/h/s;->z:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x3

    sget v9, Lcom/baidu/location/h/s;->A:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x4

    sget v9, Lcom/baidu/location/h/s;->B:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x5

    sget v9, Lcom/baidu/location/h/s;->C:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x6

    sget v9, Lcom/baidu/location/h/s;->D:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x7

    sget v9, Lcom/baidu/location/h/s;->E:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x8

    sget v9, Lcom/baidu/location/h/s;->F:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x9

    sget v9, Lcom/baidu/location/h/s;->G:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0xa

    sget v9, Lcom/baidu/location/h/s;->H:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0xb

    sget v9, Lcom/baidu/location/h/s;->I:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0xc

    sget v9, Lcom/baidu/location/h/s;->J:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0xd

    sget v9, Lcom/baidu/location/h/s;->K:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0xe

    sget v9, Lcom/baidu/location/h/s;->L:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0xf

    sget v9, Lcom/baidu/location/h/s;->M:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x10

    sget v9, Lcom/baidu/location/h/s;->N:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x11

    sget v9, Lcom/baidu/location/h/s;->P:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x12

    sget v9, Lcom/baidu/location/h/s;->Q:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x13

    sget v9, Lcom/baidu/location/h/s;->R:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x14

    sget v9, Lcom/baidu/location/h/s;->S:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x15

    sget v9, Lcom/baidu/location/h/s;->T:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x16

    sget v9, Lcom/baidu/location/h/s;->U:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x17

    sget v9, Lcom/baidu/location/h/s;->V:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/16 v6, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/16 v1, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x1a

    sget v2, Lcom/baidu/location/h/s;->ac:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x1b

    sget v2, Lcom/baidu/location/h/s;->ae:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x1c

    sget-wide v9, Lcom/baidu/location/h/s;->ak:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x1d

    sget v2, Lcom/baidu/location/h/s;->an:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x1e

    sget v2, Lcom/baidu/location/h/s;->ar:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x1f

    sget v2, Lcom/baidu/location/h/s;->as:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x20

    sget v2, Lcom/baidu/location/h/s;->at:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x21

    sget v2, Lcom/baidu/location/h/s;->au:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x22

    sget v2, Lcom/baidu/location/h/s;->av:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x23

    sget v2, Lcom/baidu/location/h/s;->ao:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x24

    sget v2, Lcom/baidu/location/h/s;->ap:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x25

    sget v2, Lcom/baidu/location/h/s;->aq:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x26

    sget v2, Lcom/baidu/location/h/s;->am:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v3, 0x0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/baidu/location/h/r;->a:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v0, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v7}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v0, v7}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v0, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private g()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/h/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/config.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/baidu/location/h/r;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-wide v1, Lcom/baidu/location/h/s;->s:D

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeDouble(D)V

    sget-wide v1, Lcom/baidu/location/h/s;->t:D

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeDouble(D)V

    sget-boolean v1, Lcom/baidu/location/h/s;->w:Z

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    sget-boolean v1, Lcom/baidu/location/h/s;->w:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/baidu/location/h/s;->v:[B

    if-eqz v1, :cond_3

    sget-object v1, Lcom/baidu/location/h/s;->v:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private h()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/h/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/config.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-wide/16 v3, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    new-array v3, v1, [B

    invoke-virtual {v0, v3, v2, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v1}, Lcom/baidu/location/c/e;->a(Ljava/lang/String;)Z

    :cond_0
    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v3, 0x400

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readDouble()D

    move-result-wide v3

    sput-wide v3, Lcom/baidu/location/h/s;->s:D

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readDouble()D

    move-result-wide v3

    sput-wide v3, Lcom/baidu/location/h/s;->t:D

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v1

    sput-boolean v1, Lcom/baidu/location/h/s;->w:Z

    sget-boolean v1, Lcom/baidu/location/h/s;->w:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x271

    new-array v3, v1, [B

    sput-object v3, Lcom/baidu/location/h/s;->v:[B

    sget-object v3, Lcom/baidu/location/h/s;->v:[B

    invoke-virtual {v0, v3, v2, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    :cond_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    sget-boolean v0, Lcom/baidu/location/h/s;->o:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/baidu/location/f;->isServing:Z

    :cond_3
    return-void
.end method

.method private i()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/c/e;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/baidu/location/h/r;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private j()V
    .locals 8

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/c/e;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    const/16 v2, 0xbb8

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    sput v3, Lcom/baidu/location/c/e;->o:I

    invoke-direct {p0}, Lcom/baidu/location/c/e;->i()V

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const-wide/16 v4, 0x80

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array v4, v0, [B

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    mul-int v6, v0, v5

    add-int/lit16 v6, v6, 0x80

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    if-lez v6, :cond_1

    if-ge v6, v0, :cond_1

    invoke-virtual {v1, v4, v3, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    add-int/lit8 v6, v6, -0x1

    aget-byte v7, v4, v6

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4, v3, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-static {}, Lcom/baidu/location/h/b;->a()Lcom/baidu/location/h/b;

    sget-object v6, Lcom/baidu/location/h/b;->e:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    sput v0, Lcom/baidu/location/c/e;->m:I

    sput v5, Lcom/baidu/location/c/e;->o:I

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v5, v2, :cond_3

    sput v2, Lcom/baidu/location/c/e;->o:I

    :cond_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/c/e;->h()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/baidu/location/h/f;->a()Lcom/baidu/location/h/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/h/f;->c()J

    move-result-wide v2

    sub-long v4, v0, v2

    iget-wide v0, p0, Lcom/baidu/location/c/e;->k:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    invoke-static {}, Lcom/baidu/location/h/f;->a()Lcom/baidu/location/h/f;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/baidu/location/h/f;->b(J)V

    invoke-static {}, Lcom/baidu/location/g/a;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/location/c/f;

    invoke-direct {v1, p0}, Lcom/baidu/location/c/f;-><init>(Lcom/baidu/location/c/e;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
