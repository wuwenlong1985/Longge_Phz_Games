.class public Lcom/baidu/location/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/c/a$a;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/Object;

.field private static c:Lcom/baidu/location/c/a;

.field private static final d:Ljava/lang/String;

.field private static f:Ljava/util/concurrent/locks/Lock;


# instance fields
.field a:Lcom/baidu/location/c/a$a;

.field private e:Landroid/database/sqlite/SQLiteDatabase;

.field private g:Z

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:D

.field private m:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/location/c/a;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/location/h/s;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/gal.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/c/a;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/baidu/location/c/a;->f:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/c/a;->g:Z

    iput-object v0, p0, Lcom/baidu/location/c/a;->a:Lcom/baidu/location/c/a$a;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/c/a;->h:Ljava/util/Map;

    iput-object v0, p0, Lcom/baidu/location/c/a;->i:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/baidu/location/c/a;->j:I

    iput-object v0, p0, Lcom/baidu/location/c/a;->k:Ljava/lang/String;

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/baidu/location/c/a;->l:D

    iput-wide v0, p0, Lcom/baidu/location/c/a;->m:D

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/a;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method public static a()Lcom/baidu/location/c/a;
    .locals 2

    sget-object v0, Lcom/baidu/location/c/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/location/c/a;->c:Lcom/baidu/location/c/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/location/c/a;

    invoke-direct {v1}, Lcom/baidu/location/c/a;-><init>()V

    sput-object v1, Lcom/baidu/location/c/a;->c:Lcom/baidu/location/c/a;

    :cond_0
    sget-object v1, Lcom/baidu/location/c/a;->c:Lcom/baidu/location/c/a;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private a(DDD)V
    .locals 8

    iget-object v0, p0, Lcom/baidu/location/c/a;->a:Lcom/baidu/location/c/a$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/c/a$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/c/a$a;-><init>(Lcom/baidu/location/c/a;)V

    iput-object v0, p0, Lcom/baidu/location/c/a;->a:Lcom/baidu/location/c/a$a;

    :cond_0
    iget-object v1, p0, Lcom/baidu/location/c/a;->a:Lcom/baidu/location/c/a$a;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/location/c/a$a;->a(DDD)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/a;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/location/c/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/c/a;->g:Z

    return p0
.end method

.method static synthetic d()Ljava/util/concurrent/locks/Lock;
    .locals 1

    sget-object v0, Lcom/baidu/location/c/a;->f:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/location/BDLocation;)I
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v3

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAltitude()D

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v0

    const/4 v3, 0x0

    :goto_0
    iget-object v6, p0, Lcom/baidu/location/c/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    cmpl-float v2, v3, v2

    if-lez v2, :cond_3

    cmpl-double v2, v4, v0

    if-lez v2, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v8

    invoke-virtual {p0, v0, v1, v8, v9}, Lcom/baidu/location/c/a;->a(DD)[D

    move-result-object p1

    aget-wide v0, p1, v7

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double p1, v0, v8

    if-eqz p1, :cond_3

    invoke-static {v3, v4, v5, v0, v1}, Lcom/baidu/location/Jni;->getGpsSwiftRadius(FDD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    const/4 v7, 0x3

    return v7

    :cond_1
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_2

    const/4 v7, 0x2

    return v7

    :cond_2
    const/4 v7, 0x1

    :cond_3
    return v7
.end method

.method public a(DD)[D
    .locals 24

    move-object/from16 v8, p0

    const/4 v1, 0x2

    new-array v9, v1, [D

    iget-object v6, v8, Lcom/baidu/location/c/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v6, :cond_9

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpl-double v16, p1, v6

    if-lez v16, :cond_9

    cmpl-double v16, p3, v6

    if-lez v16, :cond_9

    sget-object v6, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string v7, "%d,%d"

    new-array v12, v1, [Ljava/lang/Object;

    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    mul-double v14, p1, v19

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v10

    mul-double v13, p3, v19

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v11

    invoke-static {v6, v7, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v6, v8, Lcom/baidu/location/c/a;->k:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v8, Lcom/baidu/location/c/a;->k:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-wide v12, v8, Lcom/baidu/location/c/a;->l:D

    iget-wide v1, v8, Lcom/baidu/location/c/a;->m:D

    :goto_0
    const-wide v3, 0x40c3880000000000L    # 10000.0

    goto/16 :goto_c

    :cond_0
    sget-object v6, Lcom/baidu/location/c/a;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, v8, Lcom/baidu/location/c/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "select * from galdata_new where id = \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v13, :cond_4

    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v13, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x3

    :try_start_3
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide v19, 0x40c3880000000000L    # 10000.0

    cmpl-double v16, v6, v19

    if-nez v16, :cond_1

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_1
    const-wide/16 v19, 0x0

    cmpg-double v16, v14, v19

    if-gtz v16, :cond_2

    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_2
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    int-to-long v10, v1

    sub-long v18, v16, v10

    iget-boolean v1, v8, Lcom/baidu/location/c/a;->g:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_3

    const-wide/32 v10, 0x93a80

    cmp-long v1, v18, v10

    if-lez v1, :cond_3

    const-wide v10, 0x4023483120000000L    # 9.640999794006348

    move-object v1, v8

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v21, v13

    move-wide/from16 v22, v14

    move-wide v13, v6

    move-wide v6, v10

    :try_start_5
    invoke-direct/range {v1 .. v7}, Lcom/baidu/location/c/a;->a(DDD)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_0
    move-wide/from16 v17, v13

    move-object/from16 v6, v21

    move-wide/from16 v1, v22

    goto/16 :goto_a

    :cond_3
    move-object/from16 v21, v13

    move-wide/from16 v22, v14

    move-wide v13, v6

    :goto_1
    :try_start_6
    iput-object v12, v8, Lcom/baidu/location/c/a;->k:Ljava/lang/String;

    iput-wide v13, v8, Lcom/baidu/location/c/a;->l:D
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-wide/from16 v1, v22

    :try_start_7
    iput-wide v1, v8, Lcom/baidu/location/c/a;->m:D
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-wide/from16 v17, v1

    goto :goto_6

    :catch_1
    move-wide/from16 v1, v22

    goto :goto_2

    :catch_2
    move-object/from16 v21, v13

    move-wide v1, v14

    move-wide v13, v6

    :catch_3
    :goto_2
    move-wide/from16 v17, v13

    goto :goto_3

    :catch_4
    move-object/from16 v21, v13

    move-wide/from16 v17, v6

    move-wide v1, v14

    :goto_3
    move-object/from16 v6, v21

    goto/16 :goto_a

    :catch_5
    move-object/from16 v21, v13

    move-wide/from16 v17, v6

    move-object/from16 v6, v21

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object/from16 v21, v13

    :goto_4
    move-object v1, v0

    move-object/from16 v6, v21

    goto :goto_8

    :catch_6
    move-object/from16 v21, v13

    :catch_7
    move-object/from16 v6, v21

    goto :goto_9

    :cond_4
    move-object/from16 v21, v13

    :try_start_8
    iget-boolean v1, v8, Lcom/baidu/location/c/a;->g:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-nez v1, :cond_5

    const-wide v6, 0x4023483120000000L    # 9.640999794006348

    move-object v1, v8

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    :try_start_9
    invoke-direct/range {v1 .. v7}, Lcom/baidu/location/c/a;->a(DDD)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_5
    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v17, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_6
    if-eqz v21, :cond_6

    move-object/from16 v1, v21

    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    :catch_8
    :cond_6
    move-wide v12, v13

    move-wide/from16 v1, v17

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object/from16 v1, v21

    move-object v6, v1

    goto :goto_7

    :catch_9
    move-object/from16 v1, v21

    move-object v6, v1

    goto :goto_9

    :catchall_3
    move-exception v0

    :goto_7
    move-object v1, v0

    :goto_8
    if-eqz v6, :cond_7

    :try_start_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    :catch_a
    :cond_7
    throw v1

    :catch_b
    :goto_9
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v17, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_a
    if-eqz v6, :cond_8

    :try_start_c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :cond_8
    move-wide/from16 v12, v17

    :goto_b
    sget-object v3, Lcom/baidu/location/c/a;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :cond_9
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v3, 0x40c3880000000000L    # 10000.0

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_c
    cmpl-double v5, v12, v3

    if-lez v5, :cond_a

    const/4 v5, 0x0

    aput-wide v3, v9, v5

    goto :goto_d

    :cond_a
    const/4 v5, 0x0

    aput-wide v12, v9, v5

    :goto_d
    cmpl-double v5, v1, v3

    if-lez v5, :cond_b

    const/4 v5, 0x1

    aput-wide v3, v9, v5

    return-object v9

    :cond_b
    const/4 v5, 0x1

    aput-wide v1, v9, v5

    return-object v9
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/baidu/location/c/a;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/c/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/baidu/location/c/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT count(*) FROM sqlite_master WHERE type=\'table\' AND name=\'galdata\'"

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/baidu/location/c/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "CREATE TABLE IF NOT EXISTS galdata_new(id CHAR(40) PRIMARY KEY,aldata DOUBLE, sigma DOUBLE,tt INT);"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/location/c/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    :goto_0
    const-string v3, "CREATE TABLE IF NOT EXISTS locStateData(id CHAR(40) PRIMARY KEY,state INT);"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/baidu/location/c/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "DROP TABLE galdata"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/location/c/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "CREATE TABLE galdata_new(id CHAR(40) PRIMARY KEY,aldata DOUBLE, sigma DOUBLE,tt INT);"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/location/c/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/baidu/location/c/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iput-object v0, p0, Lcom/baidu/location/c/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    :cond_3
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/c/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/c/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/baidu/location/c/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    throw v1

    :catch_0
    :goto_0
    iput-object v0, p0, Lcom/baidu/location/c/a;->e:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    return-void
.end method
