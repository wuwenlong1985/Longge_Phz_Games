.class final Lcom/baidu/location/e/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/e/m$b;,
        Lcom/baidu/location/e/m$a;
    }
.end annotation


# static fields
.field private static final b:[D


# instance fields
.field private final a:Lcom/baidu/location/e/i;

.field private final c:I

.field private final d:Landroid/database/sqlite/SQLiteDatabase;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/location/e/m;->b:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x4046800000000000L    # 45.0
        0x4060e00000000000L    # 135.0
        0x406c200000000000L    # 225.0
        0x4073b00000000000L    # 315.0
    .end array-data
.end method

.method constructor <init>(Lcom/baidu/location/e/i;Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/location/e/m;->a:Lcom/baidu/location/e/i;

    const/4 p1, -0x1

    iput p1, p0, Lcom/baidu/location/e/m;->e:I

    iput p1, p0, Lcom/baidu/location/e/m;->f:I

    iput-object p2, p0, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    iput p3, p0, Lcom/baidu/location/e/m;->c:I

    iget-object p1, p0, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "CREATE TABLE IF NOT EXISTS RGCAREA(gridkey VARCHAR(10) PRIMARY KEY, country VARCHAR(100),countrycode VARCHAR(100), province VARCHAR(100), city VARCHAR(100), citycode VARCHAR(100), district VARCHAR(100), timestamp INTEGER, version VARCHAR(50))"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "CREATE TABLE IF NOT EXISTS RGCROAD(_id INTEGER PRIMARY KEY AUTOINCREMENT, gridkey VARCHAR(10), street VARCHAR(100), x1 DOUBLE, y1 DOUBLE, x2 DOUBLE, y2 DOUBLE)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "CREATE TABLE IF NOT EXISTS RGCSITE(_id INTEGER PRIMARY KEY AUTOINCREMENT, gridkey VARCHAR(10), street VARCHAR(100), streetnumber VARCHAR(100), x DOUBLE, y DOUBLE)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "CREATE TABLE IF NOT EXISTS RGCPOI(pid VARCHAR(50) PRIMARY KEY , gridkey VARCHAR(10), name VARCHAR(100), type VARCHAR(50), x DOUBLE, y DOUBLE, rank INTEGER)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "CREATE TABLE IF NOT EXISTS RGCUPDATE(gridkey VARCHAR(10), version VARCHAR(50), type INTEGER, timestamp INTEGER, PRIMARY KEY(gridkey, type))"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private a(DDDDDD)D
    .locals 22

    sub-double v9, p9, p5

    sub-double v11, p1, p5

    mul-double v13, v9, v11

    sub-double v15, p11, p7

    sub-double v17, p3, p7

    mul-double v19, v15, v17

    add-double v13, v13, v19

    const-wide/16 v19, 0x0

    cmpg-double v21, v13, v19

    if-gtz v21, :cond_0

    mul-double v11, v11, v11

    mul-double v17, v17, v17

    add-double v11, v11, v17

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    :cond_0
    mul-double v11, v9, v9

    mul-double v17, v15, v15

    const/16 v19, 0x0

    add-double v11, v11, v17

    cmpl-double v17, v13, v11

    if-ltz v17, :cond_1

    sub-double v0, p1, p9

    mul-double v0, v0, v0

    sub-double v2, p3, p11

    mul-double v2, v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    :cond_1
    div-double/2addr v13, v11

    mul-double v9, v9, v13

    const/4 v8, 0x0

    add-double v4, p5, v9

    mul-double v15, v15, v13

    add-double v6, p7, v15

    sub-double v0, p1, v4

    mul-double v0, v0, v0

    sub-double v6, v6, p3

    mul-double v6, v6, v6

    add-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static a(II)I
    .locals 5

    const/16 v0, 0x64

    if-le v0, p1, :cond_0

    const-wide v0, -0x4046666666666666L    # -0.1

    const v2, 0xea60

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    if-le v0, p1, :cond_1

    const-wide/high16 v0, -0x4018000000000000L    # -0.75

    const v2, 0xd8cc

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    const/4 v2, 0x0

    :goto_0
    int-to-double v3, p1

    mul-double v0, v0, v3

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int p1, v0

    add-int/2addr p1, p0

    return p1
.end method

.method static synthetic a(IDD)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/baidu/location/e/m;->b(IDD)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(DDDD)[D
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/baidu/location/e/m;->b(DDDD)[D

    move-result-object p0

    return-object p0
.end method

.method private static b(IDD)Ljava/lang/String;
    .locals 18

    move/from16 v0, p0

    mul-int/lit8 v1, v0, 0x5

    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [C

    new-instance v9, Lcom/baidu/location/e/m$a;

    const-wide v4, 0x4056800000000000L    # 90.0

    const-wide v6, -0x3fa9800000000000L    # -90.0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/baidu/location/e/m$a;-><init>(DDLcom/baidu/location/e/n;)V

    new-instance v3, Lcom/baidu/location/e/m$a;

    const-wide v11, 0x4066800000000000L    # 180.0

    const-wide v13, -0x3f99800000000000L    # -180.0

    const/4 v15, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lcom/baidu/location/e/m$a;-><init>(DDLcom/baidu/location/e/n;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_0
    if-gt v6, v1, :cond_3

    if-eqz v7, :cond_0

    move-wide/from16 v11, p1

    move-object v10, v3

    goto :goto_1

    :cond_0
    move-wide/from16 v11, p3

    move-object v10, v9

    :goto_1
    invoke-static {v10}, Lcom/baidu/location/e/m$a;->a(Lcom/baidu/location/e/m$a;)D

    move-result-wide v13

    invoke-static {v10}, Lcom/baidu/location/e/m$a;->b(Lcom/baidu/location/e/m$a;)D

    move-result-wide v15

    add-double/2addr v13, v15

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v15

    shl-int/2addr v8, v5

    const-wide v15, 0x412e848000000000L    # 1000000.0

    mul-double v11, v11, v15

    double-to-int v11, v11

    mul-double v4, v13, v15

    double-to-int v4, v4

    if-le v11, v4, :cond_1

    invoke-static {v10, v13, v14}, Lcom/baidu/location/e/m$a;->a(Lcom/baidu/location/e/m$a;D)D

    or-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    invoke-static {v10, v13, v14}, Lcom/baidu/location/e/m$a;->b(Lcom/baidu/location/e/m$a;D)D

    :goto_2
    rem-int/lit8 v4, v6, 0x5

    if-nez v4, :cond_2

    div-int/lit8 v4, v6, 0x5

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const-string v10, "0123456789bcdefghjkmnpqrstuvwxyz"

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v2, v4

    const/4 v8, 0x0

    goto :goto_3

    :cond_2
    const/4 v5, 0x1

    :goto_3
    xor-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    aput-char v4, v2, v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_4
    if-ge v4, v0, :cond_4

    aget-char v3, v2, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(DDDD)[D
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [D

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    invoke-static {p6, p7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p6

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    const-wide v3, 0x415854a640000000L    # 6378137.0

    div-double/2addr p4, v3

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    invoke-static {p6, p7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide p6

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double p6, p6, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double p6, p6, v3

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double p0, p0, v3

    sub-double/2addr p4, p0

    invoke-static {p6, p7, p4, p5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    add-double/2addr p2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    const/4 p4, 0x0

    aput-wide p0, v0, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    const/4 p2, 0x1

    aput-wide p0, v0, p2

    return-object v0
.end method

.method private c(DDDD)D
    .locals 4

    sub-double v0, p7, p3

    sub-double v2, p5, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    invoke-static {p5, p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p3

    invoke-static {p7, p8}, Ljava/lang/Math;->toRadians(D)D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p5

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p7

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p7, v0

    invoke-static {p7, p8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {p7, p8}, Ljava/lang/Math;->sin(D)D

    move-result-wide p7

    mul-double v2, v2, p7

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    div-double/2addr p5, v0

    invoke-static {p5, p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    invoke-static {p5, p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double p1, p1, p3

    add-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p3, v2

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    mul-double p1, p1, v0

    const-wide p3, 0x415854a640000000L    # 6378137.0

    mul-double p1, p1, p3

    return-wide p1
.end method

.method static synthetic c()[D
    .locals 1

    sget-object v0, Lcom/baidu/location/e/m;->b:[D

    return-object v0
.end method


# virtual methods
.method a(DD)Lcom/baidu/location/Address;
    .locals 34

    move-object/from16 v14, p0

    const/4 v15, 0x4

    const/4 v12, 0x5

    const/4 v13, 0x3

    const/4 v10, 0x2

    const-wide v16, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v11, 0x0

    :try_start_0
    sget-object v1, Lcom/baidu/location/e/m$b;->c:Lcom/baidu/location/e/m$b;

    iget v2, v14, Lcom/baidu/location/e/m;->c:I

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    invoke-static/range {v1 .. v6}, Lcom/baidu/location/e/m$b;->a(Lcom/baidu/location/e/m$b;IDD)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v14, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    move-object/from16 v18, v11

    move-object/from16 v21, v18

    move-wide/from16 v19, v16

    :goto_0
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v24
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v14

    move-wide/from16 v2, p3

    move-wide/from16 v4, p1

    move-object v12, v8

    move-wide/from16 v8, v24

    :try_start_3
    invoke-direct/range {v1 .. v9}, Lcom/baidu/location/e/m;->c(DDDD)D

    move-result-wide v1

    cmpg-double v3, v1, v19

    if-gez v3, :cond_0

    sget-object v3, Lcom/baidu/location/e/m$b;->c:Lcom/baidu/location/e/m$b;

    invoke-static {v3}, Lcom/baidu/location/e/m$b;->d(Lcom/baidu/location/e/m$b;)I

    move-result v3

    int-to-double v3, v3

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_0

    move-wide/from16 v19, v1

    move-object/from16 v21, v22

    move-object/from16 v18, v23

    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v8, v12

    const/4 v12, 0x5

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    move-object v12, v8

    goto :goto_1

    :catch_0
    move-object v12, v8

    goto :goto_5

    :cond_2
    move-object v12, v8

    move-object/from16 v18, v11

    move-object/from16 v21, v18

    :goto_1
    if-eqz v12, :cond_4

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v12, v8

    :goto_2
    move-object v1, v0

    goto :goto_3

    :catch_1
    move-object v12, v8

    move-object/from16 v18, v11

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v12, v11

    :goto_3
    if-eqz v12, :cond_3

    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_3
    throw v1

    :catch_3
    move-object v12, v11

    move-object/from16 v18, v12

    :goto_4
    move-object/from16 v21, v18

    :catch_4
    :goto_5
    if-eqz v12, :cond_4

    :goto_6
    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :cond_4
    move-object/from16 v12, v18

    const/4 v8, 0x0

    if-nez v12, :cond_8

    :try_start_6
    sget-object v1, Lcom/baidu/location/e/m$b;->b:Lcom/baidu/location/e/m$b;

    iget v2, v14, Lcom/baidu/location/e/m;->c:I

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    invoke-static/range {v1 .. v6}, Lcom/baidu/location/e/m$b;->a(Lcom/baidu/location/e/m$b;IDD)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v14, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "wgs842mc"

    move-wide/from16 v6, p1

    move-wide/from16 v4, p3

    invoke-static {v6, v7, v4, v5, v1}, Lcom/baidu/location/Jni;->coorEncrypt(DDLjava/lang/String;)[D

    move-result-object v18

    :goto_7
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    const-string v3, "wgs842mc"

    invoke-static {v1, v2, v10, v11, v3}, Lcom/baidu/location/Jni;->coorEncrypt(DDLjava/lang/String;)[D

    move-result-object v1

    const/4 v10, 0x5

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const/4 v11, 0x6

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    const-string v13, "wgs842mc"

    invoke-static {v2, v3, v10, v11, v13}, Lcom/baidu/location/Jni;->coorEncrypt(DDLjava/lang/String;)[D

    move-result-object v2

    aget-wide v10, v18, v8

    const/4 v3, 0x1

    aget-wide v22, v18, v3

    aget-wide v24, v1, v8

    aget-wide v26, v1, v3

    aget-wide v28, v2, v8

    aget-wide v30, v2, v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object v1, v14

    move-wide v2, v10

    move-wide/from16 v4, v22

    move-wide/from16 v6, v24

    move-object v13, v9

    const/4 v10, 0x0

    move-wide/from16 v8, v26

    const/4 v15, 0x0

    const/16 v20, 0x2

    const/16 v22, 0x5

    move-wide/from16 v10, v28

    move-object/from16 v32, v12

    move-object v15, v13

    const/16 v22, 0x3

    const/16 v23, 0x5

    move-wide/from16 v12, v30

    :try_start_8
    invoke-direct/range {v1 .. v13}, Lcom/baidu/location/e/m;->a(DDDDDD)D

    move-result-wide v1

    cmpg-double v3, v1, v16

    if-gez v3, :cond_5

    sget-object v3, Lcom/baidu/location/e/m$b;->b:Lcom/baidu/location/e/m$b;

    invoke-static {v3}, Lcom/baidu/location/e/m$b;->d(Lcom/baidu/location/e/m$b;)I

    move-result v3

    int-to-double v3, v3

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_5

    move-wide/from16 v16, v1

    move-object/from16 v21, v19

    :cond_5
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-wide/from16 v6, p1

    move-wide/from16 v4, p3

    move-object v9, v15

    move-object/from16 v12, v32

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v13, 0x3

    const/4 v15, 0x4

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_9

    :cond_6
    move-object v15, v9

    move-object/from16 v32, v12

    if-eqz v15, :cond_9

    :goto_8
    :try_start_9
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object v15, v9

    :goto_9
    move-object v1, v0

    goto :goto_a

    :catch_6
    move-object v15, v9

    move-object/from16 v32, v12

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v1, v0

    const/4 v15, 0x0

    :goto_a
    if-eqz v15, :cond_7

    :try_start_a
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :catch_7
    :cond_7
    throw v1

    :catch_8
    move-object/from16 v32, v12

    const/4 v15, 0x0

    :catch_9
    :goto_b
    if-eqz v15, :cond_9

    goto :goto_8

    :cond_8
    move-object/from16 v32, v12

    :catch_a
    :cond_9
    :goto_c
    move-object/from16 v1, v21

    sget-object v2, Lcom/baidu/location/e/m$b;->a:Lcom/baidu/location/e/m$b;

    iget v3, v14, Lcom/baidu/location/e/m;->c:I

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-static/range {v2 .. v7}, Lcom/baidu/location/e/m$b;->a(Lcom/baidu/location/e/m$b;IDD)Ljava/lang/String;

    move-result-object v2

    :try_start_b
    iget-object v3, v14, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_11
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    const/4 v4, 0x0

    :try_start_c
    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_12
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :try_start_d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "country"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_f
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :try_start_e
    const-string v3, "countrycode"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :try_start_f
    const-string v5, "province"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :try_start_10
    const-string v6, "city"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    const-string v7, "citycode"

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    const-string v8, "district"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_13
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    move-object v4, v5

    goto :goto_d

    :catch_b
    move-object v7, v4

    goto :goto_13

    :catch_c
    move-object v6, v4

    goto :goto_10

    :catch_d
    move-object v5, v4

    goto :goto_f

    :catch_e
    move-object v3, v4

    goto :goto_e

    :cond_a
    move-object v2, v4

    move-object v3, v2

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    :goto_d
    if-eqz v11, :cond_d

    :try_start_13
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_15

    goto :goto_14

    :catchall_6
    move-exception v0

    move-object v1, v0

    goto :goto_12

    :catch_f
    move-object v2, v4

    move-object v3, v2

    :goto_e
    move-object v5, v3

    :goto_f
    move-object v6, v5

    :goto_10
    move-object v7, v6

    goto :goto_13

    :catchall_7
    move-exception v0

    goto :goto_11

    :catchall_8
    move-exception v0

    const/4 v4, 0x0

    :goto_11
    move-object v1, v0

    move-object v11, v4

    :goto_12
    if-eqz v11, :cond_b

    :try_start_14
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_10

    :catch_10
    :cond_b
    throw v1

    :catch_11
    const/4 v4, 0x0

    :catch_12
    move-object v2, v4

    move-object v3, v2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v11, v7

    :catch_13
    :goto_13
    if-eqz v11, :cond_c

    :try_start_15
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_14

    :catch_14
    :cond_c
    move-object v8, v4

    move-object v4, v5

    :catch_15
    :cond_d
    :goto_14
    if-eqz v2, :cond_e

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v9, 0x0

    invoke-static {v2, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    move-object v2, v5

    goto :goto_15

    :cond_e
    const/4 v9, 0x0

    :goto_15
    if-eqz v3, :cond_f

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    move-object v3, v5

    :cond_f
    if-eqz v4, :cond_10

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    move-object v4, v5

    :cond_10
    if-eqz v6, :cond_11

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    goto :goto_16

    :cond_11
    move-object v5, v6

    :goto_16
    if-eqz v7, :cond_12

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    goto :goto_17

    :cond_12
    move-object v6, v7

    :goto_17
    if-eqz v8, :cond_13

    new-instance v7, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    goto :goto_18

    :cond_13
    move-object v7, v8

    :goto_18
    if-eqz v1, :cond_14

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_19

    :cond_14
    move-object v8, v1

    :goto_19
    move-object/from16 v1, v32

    if-eqz v1, :cond_15

    new-instance v12, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_1a

    :cond_15
    move-object v12, v1

    :goto_1a
    new-instance v1, Lcom/baidu/location/Address$Builder;

    invoke-direct {v1}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v1, v2}, Lcom/baidu/location/Address$Builder;->country(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/baidu/location/Address$Builder;->countryCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/baidu/location/Address$Builder;->province(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/baidu/location/Address$Builder;->city(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/baidu/location/Address$Builder;->cityCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/baidu/location/Address$Builder;->district(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/baidu/location/Address$Builder;->street(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/baidu/location/Address$Builder;->streetNumber(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v1

    return-object v1
.end method

.method a(Lorg/json/JSONObject;)V
    .locals 8

    iget-object v0, p0, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-static {}, Lcom/baidu/location/e/m$b;->values()[Lcom/baidu/location/e/m$b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/baidu/location/e/m$b;->a(Lcom/baidu/location/e/m$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    invoke-static {v3}, Lcom/baidu/location/e/m$b;->b(Lcom/baidu/location/e/m$b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v3}, Lcom/baidu/location/e/m$b;->b(Lcom/baidu/location/e/m$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Lcom/baidu/location/e/m$b;->a(Lcom/baidu/location/e/m$b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/baidu/location/e/m$b;->a(Lcom/baidu/location/e/m$b;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/baidu/location/e/m$b;->c(Lcom/baidu/location/e/m$b;)I

    move-result v7

    invoke-virtual {v3, v6, v4, v7}, Lcom/baidu/location/e/m$b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/baidu/location/e/m;->e:I

    iput p1, p0, Lcom/baidu/location/e/m;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    iget-object v0, p0, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    throw p1

    :catch_2
    :cond_3
    return-void
.end method

.method a()Z
    .locals 5

    iget-object v0, p0, Lcom/baidu/location/e/m;->a:Lcom/baidu/location/e/i;

    invoke-virtual {v0}, Lcom/baidu/location/e/i;->l()Lcom/baidu/location/e/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/e/f;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/baidu/location/e/m;->f:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/baidu/location/e/m;->e:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT COUNT(*) FROM RGCSITE;"

    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/baidu/location/e/m;->f:I

    iget-object v3, p0, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT COUNT(*) FROM RGCAREA;"

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/location/e/m;->e:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_0
    if-eqz v3, :cond_4

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :catch_1
    move-object v0, v3

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_1
    if-eqz v0, :cond_2

    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_2
    throw v1

    :catch_4
    move-object v2, v0

    :catch_5
    :goto_1
    if-eqz v2, :cond_3

    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_3
    if-eqz v0, :cond_4

    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_4
    :goto_2
    iget v0, p0, Lcom/baidu/location/e/m;->f:I

    if-nez v0, :cond_5

    iget v0, p0, Lcom/baidu/location/e/m;->e:I

    if-nez v0, :cond_5

    const/4 v0, 0x1

    return v0

    :cond_5
    return v1
.end method

.method b(DD)Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/List<",
            "Lcom/baidu/location/Poi;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/baidu/location/e/m$b;->d:Lcom/baidu/location/e/m$b;

    iget v2, v10, Lcom/baidu/location/e/m;->c:I

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    invoke-static/range {v1 .. v6}, Lcom/baidu/location/e/m$b;->a(Lcom/baidu/location/e/m$b;IDD)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v10, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    const/4 v13, 0x0

    move-object v14, v2

    const/4 v15, 0x0

    :goto_0
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x4

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    const/4 v1, 0x5

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    const/4 v1, 0x6

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object v1, v10

    move-wide/from16 v2, p3

    move/from16 v18, v4

    move-wide/from16 v4, p1

    move-object v13, v8

    move-object v10, v9

    move-wide/from16 v8, v16

    invoke-direct/range {v1 .. v9}, Lcom/baidu/location/e/m;->c(DDDD)D

    move-result-wide v1

    sget-object v3, Lcom/baidu/location/e/m$b;->d:Lcom/baidu/location/e/m$b;

    invoke-static {v3}, Lcom/baidu/location/e/m$b;->d(Lcom/baidu/location/e/m$b;)I

    move-result v3

    int-to-double v3, v3

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    new-instance v3, Lcom/baidu/location/Poi;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    const-string v24, ""

    const-string v25, ""

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-direct/range {v19 .. v25}, Lcom/baidu/location/Poi;-><init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move/from16 v2, v18

    invoke-static {v2, v1}, Lcom/baidu/location/e/m;->a(II)I

    move-result v1

    if-le v1, v15, :cond_1

    move v15, v1

    move-object v14, v3

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :cond_1
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v10, p0

    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    move-object v14, v2

    :cond_3
    if-eqz v12, :cond_5

    :goto_2
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catch_0
    move-object v14, v2

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v12, v2

    :goto_3
    if-eqz v12, :cond_4

    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_4
    throw v1

    :catch_2
    move-object v12, v2

    move-object v14, v12

    :catch_3
    :goto_4
    if-eqz v12, :cond_5

    goto :goto_2

    :catch_4
    :cond_5
    :goto_5
    if-eqz v14, :cond_6

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v11
.end method

.method b()Lorg/json/JSONObject;
    .locals 20

    move-object/from16 v1, p0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    div-long/2addr v5, v7

    long-to-int v5, v5

    const-string v6, "SELECT * FROM RGCUPDATE WHERE type=%d AND %d > timestamp+%d ORDER BY gridkey"

    const-string v7, "UPDATE RGCUPDATE SET timestamp=timestamp+1 WHERE type = %d AND gridkey IN (%s)"

    :try_start_0
    iget-object v9, v1, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v12, 0x0

    if-eqz v9, :cond_8

    iget-object v9, v1, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_8

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    iget-object v8, v1, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v11, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v17, 0x1

    aput-object v18, v11, v17

    iget-object v12, v1, Lcom/baidu/location/e/m;->a:Lcom/baidu/location/e/i;

    invoke-virtual {v12}, Lcom/baidu/location/e/i;->l()Lcom/baidu/location/e/f;

    move-result-object v12

    invoke-virtual {v12}, Lcom/baidu/location/e/f;->p()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v16, 0x2

    aput-object v12, v11, v16

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v11, v1, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v10, v18

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v12

    iget-object v5, v1, Lcom/baidu/location/e/m;->a:Lcom/baidu/location/e/i;

    invoke-virtual {v5}, Lcom/baidu/location/e/i;->l()Lcom/baidu/location/e/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/location/e/f;->q()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v12, 0x2

    aput-object v5, v10, v12

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x1

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v6, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_0

    const-string v10, ","

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v10, "\""

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "\""

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v6, 0x0

    :goto_1
    array-length v11, v10

    if-ge v6, v11, :cond_2

    aget-object v11, v10, v6

    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, 0x0

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x1

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v6, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_3

    const-string v10, ","

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string v10, "\""

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "\""

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v6, 0x0

    :goto_3
    array-length v11, v10

    if-ge v6, v11, :cond_5

    aget-object v11, v10, v6

    invoke-virtual {v13, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "gk"

    invoke-virtual {v6, v10, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "ver"

    invoke-virtual {v6, v10, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "addr"

    invoke-virtual {v2, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "gk"

    invoke-virtual {v6, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "ver"

    invoke-virtual {v6, v9, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "poi"

    invoke-virtual {v2, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    move-object/from16 v19, v8

    move-object v8, v5

    move-object/from16 v5, v19

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v5, 0x0

    goto/16 :goto_5

    :catch_0
    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_8
    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_4
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_9

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v10, v9

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v6, :cond_9

    iget-object v6, v1, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_a

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v6, v11

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v9

    invoke-static {v4, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_a

    iget-object v4, v1, Lcom/baidu/location/e/m;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_a
    if-eqz v5, :cond_b

    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_b
    if-eqz v8, :cond_f

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object/from16 v19, v8

    move-object v8, v5

    move-object/from16 v5, v19

    goto :goto_5

    :catch_2
    move-object/from16 v19, v8

    move-object v8, v5

    move-object/from16 v5, v19

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v2, v0

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_c

    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_c
    if-eqz v5, :cond_d

    :try_start_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    :cond_d
    throw v2

    :catch_5
    const/4 v5, 0x0

    const/4 v8, 0x0

    :catch_6
    :goto_6
    if-eqz v8, :cond_e

    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_e
    if-eqz v5, :cond_f

    :try_start_9
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :cond_f
    :goto_7
    const-string v3, "poi"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "addr"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const/4 v2, 0x0

    :cond_10
    return-object v2
.end method
