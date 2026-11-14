.class abstract enum Lcom/baidu/location/e/m$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/e/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/location/e/m$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/location/e/m$b;

.field public static final enum b:Lcom/baidu/location/e/m$b;

.field public static final enum c:Lcom/baidu/location/e/m$b;

.field public static final enum d:Lcom/baidu/location/e/m$b;

.field private static final synthetic j:[Lcom/baidu/location/e/m$b;


# instance fields
.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v8, Lcom/baidu/location/e/o;

    const-string v1, "AREA"

    const-string v3, "RGCAREA"

    const-string v4, "area"

    const-string v5, "addrv"

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/baidu/location/e/o;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    sput-object v8, Lcom/baidu/location/e/m$b;->a:Lcom/baidu/location/e/m$b;

    new-instance v0, Lcom/baidu/location/e/p;

    const-string v10, "ROAD"

    const-string v12, "RGCROAD"

    const-string v13, "road"

    const-string v14, "addrv"

    const/4 v11, 0x1

    const/16 v15, 0x3e8

    const/16 v16, 0x2710

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/baidu/location/e/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/location/e/m$b;->b:Lcom/baidu/location/e/m$b;

    new-instance v0, Lcom/baidu/location/e/q;

    const-string v2, "SITE"

    const-string v4, "RGCSITE"

    const-string v5, "site"

    const-string v6, "addrv"

    const/4 v3, 0x2

    const/16 v7, 0x64

    const v8, 0xc350

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/baidu/location/e/q;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/location/e/m$b;->c:Lcom/baidu/location/e/m$b;

    new-instance v0, Lcom/baidu/location/e/r;

    const-string v10, "POI"

    const-string v12, "RGCPOI"

    const-string v13, "poi"

    const-string v14, "poiv"

    const/4 v11, 0x3

    const/16 v16, 0x1388

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/baidu/location/e/r;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/location/e/m$b;->d:Lcom/baidu/location/e/m$b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baidu/location/e/m$b;

    sget-object v1, Lcom/baidu/location/e/m$b;->a:Lcom/baidu/location/e/m$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/location/e/m$b;->b:Lcom/baidu/location/e/m$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/location/e/m$b;->c:Lcom/baidu/location/e/m$b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/location/e/m$b;->d:Lcom/baidu/location/e/m$b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/baidu/location/e/m$b;->j:[Lcom/baidu/location/e/m$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/baidu/location/e/m$b;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/location/e/m$b;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/location/e/m$b;->h:Ljava/lang/String;

    iput p6, p0, Lcom/baidu/location/e/m$b;->e:I

    iput p7, p0, Lcom/baidu/location/e/m$b;->i:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/location/e/n;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/baidu/location/e/m$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private a(IDD)Ljava/lang/String;
    .locals 15

    move-object v0, p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static/range {p1 .. p5}, Lcom/baidu/location/e/m;->a(IDD)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lcom/baidu/location/e/m$b;->e:I

    int-to-double v2, v2

    const-wide v4, 0x3ff69fbe76c8b439L    # 1.414

    mul-double v2, v2, v4

    iget v4, v0, Lcom/baidu/location/e/m$b;->e:I

    const/4 v5, 0x1

    const/4 v14, 0x0

    if-lez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-static {}, Lcom/baidu/location/e/m;->c()[D

    move-result-object v6

    array-length v6, v6

    if-ge v4, v6, :cond_0

    invoke-static {}, Lcom/baidu/location/e/m;->c()[D

    move-result-object v6

    aget-wide v12, v6, v4

    move-wide/from16 v6, p4

    move-wide/from16 v8, p2

    move-wide v10, v2

    invoke-static/range {v6 .. v13}, Lcom/baidu/location/e/m;->a(DDDD)[D

    move-result-object v6

    aget-wide v7, v6, v5

    aget-wide v9, v6, v14

    move/from16 v6, p1

    invoke-static {v6, v7, v8, v9, v10}, Lcom/baidu/location/e/m;->a(IDD)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    const-string v6, "\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string v1, "SELECT * FROM %s WHERE gridkey IN (%s);"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/baidu/location/e/m$b;->f:Ljava/lang/String;

    aput-object v4, v3, v14

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic a(Lcom/baidu/location/e/m$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/e/m$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/location/e/m$b;IDD)Ljava/lang/String;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/baidu/location/e/m$b;->a(IDD)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/location/e/m$b;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/e/m$b;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "DELETE FROM %s WHERE gridkey IN (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/location/e/m$b;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {p1, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/baidu/location/e/m$b;->b(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/e/m$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/e/m$b;->h:Ljava/lang/String;

    return-object p0
.end method

.method private static b(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v0, "(\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\",\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/32 v0, 0x5265c00

    div-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method static synthetic c(Lcom/baidu/location/e/m$b;)I
    .locals 0

    iget p0, p0, Lcom/baidu/location/e/m$b;->i:I

    return p0
.end method

.method static synthetic d(Lcom/baidu/location/e/m$b;)I
    .locals 0

    iget p0, p0, Lcom/baidu/location/e/m$b;->e:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/location/e/m$b;
    .locals 1

    const-class v0, Lcom/baidu/location/e/m$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/location/e/m$b;

    return-object p0
.end method

.method public static values()[Lcom/baidu/location/e/m$b;
    .locals 1

    sget-object v0, Lcom/baidu/location/e/m$b;->j:[Lcom/baidu/location/e/m$b;

    invoke-virtual {v0}, [Lcom/baidu/location/e/m$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/location/e/m$b;

    return-object v0
.end method


# virtual methods
.method abstract a(Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
