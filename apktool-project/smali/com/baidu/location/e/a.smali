.class public final Lcom/baidu/location/e/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/e/a$a;,
        Lcom/baidu/location/e/a$b;
    }
.end annotation


# static fields
.field private static b:Lcom/baidu/location/e/a;

.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String;


# instance fields
.field public a:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:D

.field private g:D

.field private h:D

.field private i:D

.field private j:D

.field private volatile k:Z

.field private n:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/baidu/location/h/r;->a:Ljava/lang/String;

    sput-object v0, Lcom/baidu/location/e/a;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/h/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ls.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/e/a;->m:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/e/a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/e/a;->d:Z

    iput-boolean v1, p0, Lcom/baidu/location/e/a;->e:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/baidu/location/e/a;->f:D

    iput-wide v2, p0, Lcom/baidu/location/e/a;->g:D

    iput-wide v2, p0, Lcom/baidu/location/e/a;->h:D

    iput-wide v2, p0, Lcom/baidu/location/e/a;->i:D

    iput-wide v2, p0, Lcom/baidu/location/e/a;->j:D

    iput-boolean v1, p0, Lcom/baidu/location/e/a;->k:Z

    iput-object v0, p0, Lcom/baidu/location/e/a;->n:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/baidu/location/e/a;->a:Z

    invoke-virtual {p0}, Lcom/baidu/location/e/a;->b()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/baidu/location/e/a;
    .locals 2

    const-class v0, Lcom/baidu/location/e/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/location/e/a;->b:Lcom/baidu/location/e/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/location/e/a;

    invoke-direct {v1}, Lcom/baidu/location/e/a;-><init>()V

    sput-object v1, Lcom/baidu/location/e/a;->b:Lcom/baidu/location/e/a;

    :cond_0
    sget-object v1, Lcom/baidu/location/e/a;->b:Lcom/baidu/location/e/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/baidu/location/e/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/e/a;->e()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/e/a;Lcom/baidu/location/f/p;Lcom/baidu/location/BDLocation;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/location/e/a;->a(Lcom/baidu/location/f/p;Lcom/baidu/location/BDLocation;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/e/a;Ljava/lang/String;Lcom/baidu/location/f/a;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/location/e/a;->a(Ljava/lang/String;Lcom/baidu/location/f/a;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private a(Lcom/baidu/location/f/p;Lcom/baidu/location/BDLocation;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 32

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-eqz p2, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    const/16 v3, 0xa1

    if-ne v2, v3, :cond_a

    const-string v2, "wf"

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v2

    const/high16 v3, 0x43960000    # 300.0f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x1c

    shr-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, v0, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget v6, v5, Landroid/net/wifi/ScanResult;->level:I

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x6

    if-le v4, v6, :cond_3

    return-void

    :cond_3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/location/Jni;->encode2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    const-string v7, "select * from wof where id = ?"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/String;

    aput-object v5, v9, v3

    invoke-virtual {v1, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const-wide/16 v9, 0x0

    const-wide v11, 0x407b01fb15b573ebL    # 432.1238

    const-wide v13, 0x405c4f089a027525L    # 113.2349

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    const/4 v15, 0x0

    sub-double/2addr v9, v13

    const/4 v3, 0x2

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v17

    const/4 v3, 0x0

    sub-double v17, v17, v11

    const/4 v3, 0x4

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v8, 0x5

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move/from16 v28, v3

    const/4 v3, 0x1

    move-wide/from16 v30, v9

    move-wide/from16 v9, v17

    move-wide/from16 v17, v30

    goto :goto_1

    :cond_4
    move-wide/from16 v17, v9

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/16 v28, 0x0

    :goto_1
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    const/4 v7, 0x0

    if-nez v3, :cond_6

    const-string v3, "mktime"

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v8

    const/4 v10, 0x0

    add-double/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v3, "time"

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v8

    const/4 v10, 0x0

    add-double/2addr v8, v11

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v3, "bc"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "cc"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "ac"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "id"

    invoke-virtual {v6, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "wof"

    invoke-virtual {v1, v3, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_2

    :cond_6
    if-nez v8, :cond_7

    :catch_0
    :goto_2
    move/from16 v29, v4

    goto/16 :goto_6

    :cond_7
    const/4 v3, 0x1

    new-array v7, v3, [F

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v23

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v25

    move-wide/from16 v19, v9

    move-wide/from16 v21, v17

    move-object/from16 v27, v7

    invoke-static/range {v19 .. v27}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v3, 0x0

    aget v7, v7, v3

    const v15, 0x44bb8000    # 1500.0f

    cmpl-float v7, v7, v15

    if-lez v7, :cond_9

    add-int/lit8 v8, v8, 0x1

    const/16 v7, 0xa

    if-le v8, v7, :cond_8

    move/from16 v7, v28

    mul-int/lit8 v7, v7, 0x3

    if-le v8, v7, :cond_8

    const-string v7, "mktime"

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v8

    const/4 v10, 0x0

    add-double/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v7, "time"

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v8

    const/4 v10, 0x0

    add-double/2addr v8, v11

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v7, "bc"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "cc"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "ac"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_3
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    :cond_8
    const-string v7, "cc"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_4
    move/from16 v29, v4

    goto :goto_5

    :cond_9
    move/from16 v29, v4

    move/from16 v7, v28

    int-to-double v3, v7

    mul-double v17, v17, v3

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v15

    const/4 v8, 0x0

    add-double v17, v17, v15

    add-int/lit8 v7, v7, 0x1

    int-to-double v11, v7

    div-double v17, v17, v11

    mul-double v9, v9, v3

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v3

    const/4 v8, 0x0

    add-double/2addr v9, v3

    div-double/2addr v9, v11

    const-string v3, "mktime"

    const/4 v4, 0x0

    add-double v11, v17, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v3, "time"

    const/4 v4, 0x0

    const-wide v11, 0x407b01fb15b573ebL    # 432.1238

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v3, "bc"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "ac"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_5
    const-string v3, "wof"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id = \""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v6, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_6
    move/from16 v4, v29

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/baidu/location/e/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/e/a;->d:Z

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "select * from bdcltb09 where id = ?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v0

    invoke-virtual {p2, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object p1, p0, Lcom/baidu/location/e/a;->c:Ljava/lang/String;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    const-wide v4, 0x40934dbaacd9e83eL    # 1235.4323

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lcom/baidu/location/e/a;->g:D

    const/4 p1, 0x2

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    const-wide v4, 0x40b0e60000000000L    # 4326.0

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lcom/baidu/location/e/a;->f:D

    const/4 p1, 0x3

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    const-wide v4, 0x40a27ea4b5dcc63fL    # 2367.3217

    sub-double/2addr v0, v4

    iput-wide v0, p0, Lcom/baidu/location/e/a;->h:D

    iput-boolean v3, p0, Lcom/baidu/location/e/a;->d:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz p2, :cond_3

    :goto_0
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p2, v1

    :goto_1
    if-eqz p2, :cond_2

    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_2
    throw p1

    :catch_1
    move-object p2, v1

    :catch_2
    if-eqz p2, :cond_3

    goto :goto_0

    :catch_3
    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/baidu/location/f/a;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    invoke-virtual {p2}, Lcom/baidu/location/f/a;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/baidu/location/b/aa;->c()Lcom/baidu/location/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/aa;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x1c

    shr-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/baidu/location/f/h;->d(Lcom/baidu/location/f/a;)Ljava/lang/String;

    move-result-object p2

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "result"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v3, 0xa1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-ne p1, v3, :cond_3

    const-string p1, "content"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "clf"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string v0, "clf"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "point"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v2, "y"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-string v0, "radius"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    move v0, p1

    move-wide v2, v4

    goto :goto_0

    :cond_1
    const-string p1, "\\|"

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    aget-object v0, p1, v4

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    move v0, p1

    move-wide v2, v5

    :goto_0
    move-wide v5, v8

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    move-wide v2, v5

    goto :goto_1

    :cond_3
    const/16 v2, 0xa7

    if-ne p1, v2, :cond_2

    const-string p1, "bdcltb09"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    if-eqz v4, :cond_4

    return-void

    :cond_4
    const-wide v8, 0x40934dbaacd9e83eL    # 1235.4323

    add-double/2addr v2, v8

    const-wide v8, 0x40a27ea4b5dcc63fL    # 2367.3217

    add-double/2addr v5, v8

    const p1, 0x45873000    # 4326.0f

    add-float/2addr v0, p1

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "time"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "tag"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v0, "type"

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v0, "ac"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_1
    const-string v0, "bdcltb09"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, p1, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_5

    const-string v0, "id"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "bdcltb09"

    invoke-virtual {p3, p2, v7, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/e/a;->d:Z

    iput-boolean v0, p0, Lcom/baidu/location/e/a;->e:Z

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/baidu/location/e/a;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/baidu/location/e/a;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, v0}, Lcom/baidu/location/e/a;->a(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    return-void
.end method

.method private a(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/baidu/location/e/a;->e:Z

    if-eqz p1, :cond_12

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    if-eqz v3, :cond_12

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/16 v5, 0x8

    new-array v6, v5, [D

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    const/16 v10, 0xa

    if-le v8, v10, :cond_2

    goto :goto_1

    :cond_2
    if-lez v8, :cond_3

    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v8, v8, 0x1

    iget-object v9, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v10, ":"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/baidu/location/Jni;->encode2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v2, 0x0

    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "select * from wof where id in ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ");"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_10

    const-wide/16 v7, 0x0

    move-wide v11, v7

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-wide v8, v11

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v14

    const/4 v15, 0x1

    if-nez v14, :cond_f

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    const-wide v18, 0x405c4f089a027525L    # 113.2349

    sub-double v16, v16, v18

    const/4 v14, 0x2

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    const-wide v20, 0x407b01fb15b573ebL    # 432.1238

    sub-double v18, v18, v20

    const/4 v14, 0x4

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v14, 0x5

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-le v14, v5, :cond_5

    if-le v14, v4, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-object/from16 v29, v6

    move/from16 v30, v13

    goto :goto_4

    :cond_5
    iget-boolean v4, v1, Lcom/baidu/location/e/a;->d:Z

    if-eqz v4, :cond_7

    new-array v4, v15, [F

    move-object/from16 v29, v6

    iget-wide v5, v1, Lcom/baidu/location/e/a;->h:D

    move/from16 v30, v13

    iget-wide v13, v1, Lcom/baidu/location/e/a;->g:D

    move-wide/from16 v20, v18

    move-wide/from16 v22, v16

    move-wide/from16 v24, v5

    move-wide/from16 v26, v13

    move-object/from16 v28, v4

    invoke-static/range {v20 .. v28}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-double v4, v4

    iget-wide v13, v1, Lcom/baidu/location/e/a;->f:D

    const-wide v20, 0x409f400000000000L    # 2000.0

    add-double v13, v13, v20

    cmpl-double v6, v4, v13

    if-lez v6, :cond_6

    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    add-double v11, v11, v16

    add-double v8, v8, v18

    add-int/lit8 v10, v10, 0x1

    move/from16 v13, v30

    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    move-object/from16 v29, v6

    move/from16 v30, v13

    const/high16 v4, 0x447a0000    # 1000.0f

    if-eqz v2, :cond_9

    new-array v5, v15, [F

    int-to-double v13, v10

    div-double v24, v8, v13

    div-double v26, v11, v13

    move-wide/from16 v20, v18

    move-wide/from16 v22, v16

    move-object/from16 v28, v5

    invoke-static/range {v20 .. v28}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v6, 0x0

    aget v5, v5, v6

    cmpl-float v4, v5, v4

    if-lez v4, :cond_8

    goto :goto_3

    :goto_4
    move-object/from16 v6, v29

    move/from16 v13, v30

    :goto_5
    const/4 v4, 0x0

    const/16 v5, 0x8

    goto/16 :goto_2

    :cond_8
    move/from16 v13, v30

    :goto_6
    const/16 v4, 0x8

    const/4 v5, 0x4

    goto :goto_7

    :cond_9
    if-nez v7, :cond_a

    add-int/lit8 v13, v30, 0x1

    aput-wide v16, v29, v30

    add-int/lit8 v4, v13, 0x1

    aput-wide v18, v29, v13

    move v13, v4

    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v7, 0x1

    :goto_7
    const/16 v20, 0x0

    goto :goto_a

    :cond_a
    move v6, v2

    move/from16 v2, v30

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v2, :cond_c

    new-array v13, v15, [F

    add-int/lit8 v14, v5, 0x1

    aget-wide v24, v29, v14

    aget-wide v26, v29, v5

    move-wide/from16 v20, v18

    move-wide/from16 v22, v16

    move-object/from16 v28, v13

    invoke-static/range {v20 .. v28}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/16 v20, 0x0

    aget v13, v13, v20

    cmpg-float v13, v13, v4

    if-gez v13, :cond_b

    aget-wide v21, v29, v5

    const/4 v6, 0x0

    add-double v11, v11, v21

    aget-wide v13, v29, v14

    const/4 v6, 0x0

    add-double/2addr v8, v13

    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x1

    :cond_b
    add-int/lit8 v5, v5, 0x2

    goto :goto_8

    :cond_c
    const/16 v20, 0x0

    if-eqz v6, :cond_d

    add-double v11, v11, v16

    add-double v8, v8, v18

    add-int/lit8 v10, v10, 0x1

    move v13, v2

    move v2, v6

    const/16 v4, 0x8

    :goto_9
    const/4 v5, 0x4

    goto :goto_a

    :cond_d
    const/16 v4, 0x8

    if-ge v2, v4, :cond_f

    add-int/lit8 v13, v2, 0x1

    aput-wide v16, v29, v2

    add-int/lit8 v2, v13, 0x1

    aput-wide v18, v29, v13

    move v13, v2

    move v2, v6

    goto :goto_9

    :goto_a
    if-le v10, v5, :cond_e

    goto :goto_b

    :cond_e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-object/from16 v6, v29

    goto :goto_5

    :cond_f
    :goto_b
    if-lez v10, :cond_10

    iput-boolean v15, v1, Lcom/baidu/location/e/a;->e:Z

    int-to-double v4, v10

    div-double/2addr v11, v4

    iput-wide v11, v1, Lcom/baidu/location/e/a;->i:D

    div-double/2addr v8, v4

    iput-wide v8, v1, Lcom/baidu/location/e/a;->j:D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_10
    if-eqz v3, :cond_12

    :goto_c
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    return-void

    :catchall_0
    move-exception v0

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object v3, v2

    :goto_d
    move-object v2, v0

    if-eqz v3, :cond_11

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_11
    throw v2

    :catch_1
    move-object v3, v2

    :catch_2
    if-eqz v3, :cond_12

    goto :goto_c

    :catch_3
    :cond_12
    return-void
.end method

.method static synthetic a(Lcom/baidu/location/e/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/e/a;->k:Z

    return p1
.end method

.method private b(Z)Ljava/lang/String;
    .locals 13

    iget-boolean v0, p0, Lcom/baidu/location/e/a;->e:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/baidu/location/e/a;->i:D

    iget-wide v5, p0, Lcom/baidu/location/e/a;->j:D

    const-wide v7, 0x406ecccccccccccdL    # 246.4

    :goto_0
    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/baidu/location/e/a;->d:Z

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/baidu/location/e/a;->g:D

    iget-wide v5, p0, Lcom/baidu/location/e/a;->h:D

    iget-wide v7, p0, Lcom/baidu/location/e/a;->f:D

    goto :goto_0

    :cond_1
    move-wide v5, v1

    move-wide v7, v5

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_1
    if-eqz v0, :cond_3

    const/4 v0, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x4

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "{\"result\":{\"time\":\""

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/h/s;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\",\"error\":\"66\"},\"content\":{\"point\":{\"x\":\"%f\",\"y\":\"%f\"},\"radius\":\"%f\",\"isCellChanged\":\"%b\"}}"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v11, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v11, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v11, v10

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v11, v0

    invoke-static {v9, p1, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "{\"result\":{\"time\":\""

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/h/s;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\",\"error\":\"66\"},\"content\":{\"point\":{\"x\":\"%f\",\"y\":\"%f\"},\"radius\":\"%f\",\"isCellChanged\":\"%b\"}}"

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v12, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v11, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v11, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v11, v10

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v11, v0

    invoke-static {v12, p1, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\"result\":{\"time\":\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/h/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"error\":\"67\"}}"

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\"result\":{\"time\":\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/h/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"error\":\"63\"}}"

    goto :goto_2

    return-object p1
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/e/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/baidu/location/e/a;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_1
    const-string v2, "wof"

    invoke-static {v1, v2}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "bdcltb09"

    invoke-static {v1, v4}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    cmp-long v8, v2, v6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    cmp-long v9, v4, v6

    if-lez v9, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    if-nez v8, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    new-instance v1, Lcom/baidu/location/e/a$a;

    invoke-direct {v1, p0, v0}, Lcom/baidu/location/e/a$a;-><init>(Lcom/baidu/location/e/a;Lcom/baidu/location/e/b;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Lcom/baidu/location/e/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;Z)Lcom/baidu/location/BDLocation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;Z)",
            "Lcom/baidu/location/BDLocation;"
        }
    .end annotation

    iget-boolean p3, p0, Lcom/baidu/location/e/a;->a:Z

    if-nez p3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "{\"result\":{\"time\":\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/h/s;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\",\"error\":\"67\"}}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/baidu/location/BDLocation;

    invoke-direct {p2, p1}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\"result\":{\"time\":\""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/h/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"error\":\"67\"}}"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/baidu/location/e/a;->a(Ljava/lang/String;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/baidu/location/e/a;->b(Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    move-object p3, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    new-instance p1, Lcom/baidu/location/BDLocation;

    invoke-direct {p1, p3}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public a(Z)Lcom/baidu/location/BDLocation;
    .locals 11

    iget-boolean p1, p0, Lcom/baidu/location/e/a;->a:Z

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\"result\":{\"time\":\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/h/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"error\":\"67\"}}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p1}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/f/h;->f()Lcom/baidu/location/f/a;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/baidu/location/f/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/location/f/h;->d(Lcom/baidu/location/f/a;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/f/h;->u()Lcom/baidu/location/f/p;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v0, v2, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-virtual {p0, v1, v0, v3}, Lcom/baidu/location/e/a;->a(Ljava/lang/String;Ljava/util/List;Z)Lcom/baidu/location/BDLocation;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v4, 0x42

    if-ne v1, v4, :cond_5

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v4, 0x400

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "&ofl=%f|%f|%f"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/baidu/location/f/p;->a()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "&wf="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v3, v4, v2}, Lcom/baidu/location/f/h;->a(ILcom/baidu/location/f/p;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/location/f/h;->b(Lcom/baidu/location/f/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string p1, "&uptype=oldoff"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/location/h/s;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/h/b;->a()Lcom/baidu/location/h/b;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/baidu/location/h/b;->a(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/b/c;->a()Lcom/baidu/location/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/b/c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    :cond_5
    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/baidu/location/f/a;Lcom/baidu/location/f/p;Lcom/baidu/location/BDLocation;)V
    .locals 5

    iget-boolean v0, p0, Lcom/baidu/location/e/a;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/baidu/location/f/a;->b()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/baidu/location/b/aa;->c()Lcom/baidu/location/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/aa;->i()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v4, 0xa1

    if-ne v3, v4, :cond_4

    const-string v3, "wf"

    invoke-virtual {p4}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p4}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v3

    const/high16 v4, 0x43960000    # 300.0f

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x1

    :goto_3
    iget-object v4, p3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    if-nez v4, :cond_5

    const/4 v3, 0x1

    :cond_5
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    return-void

    :cond_6
    iget-boolean v0, p0, Lcom/baidu/location/e/a;->k:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iput-boolean v2, p0, Lcom/baidu/location/e/a;->k:Z

    new-instance v0, Lcom/baidu/location/e/a$b;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/baidu/location/e/a$b;-><init>(Lcom/baidu/location/e/a;Lcom/baidu/location/e/b;)V

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v2

    const/4 p1, 0x2

    aput-object p3, v3, p1

    const/4 p1, 0x3

    aput-object p4, v3, p1

    invoke-virtual {v0, v3}, Lcom/baidu/location/e/a$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public b()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/e/a;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/baidu/location/e/a;->m:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "CREATE TABLE IF NOT EXISTS bdcltb09(id CHAR(40) PRIMARY KEY,time DOUBLE,tag DOUBLE, type DOUBLE , ac INT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE IF NOT EXISTS wof(id CHAR(15) PRIMARY KEY,mktime DOUBLE,time DOUBLE, ac INT, bc INT, cc INT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    iput-boolean v2, p0, Lcom/baidu/location/e/a;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/e/a;->a:Z

    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/e/a;->n:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/e/a;->n:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/e/a;->n:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/location/e/b;

    invoke-direct {v1, p0}, Lcom/baidu/location/e/b;-><init>(Lcom/baidu/location/e/a;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
