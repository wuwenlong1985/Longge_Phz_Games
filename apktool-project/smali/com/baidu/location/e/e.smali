.class Lcom/baidu/location/e/e;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/location/e/c$c;


# direct methods
.method constructor <init>(Lcom/baidu/location/e/c$c;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_24

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->c(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_24

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->c(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_17

    :cond_0
    :try_start_0
    iget-object v4, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v4, v4, Lcom/baidu/location/e/c$c;->ej:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v4, v4, Lcom/baidu/location/e/c$c;->ej:Ljava/lang/String;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v4, "model"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "model"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    :try_start_2
    const-string v6, "rgc"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "rgc"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v6, v4

    move-object v4, v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v4, v0

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v6

    :cond_3
    :goto_3
    const/4 v6, 0x0

    :goto_4
    :try_start_3
    iget-object v7, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v7, v7, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v7}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v7, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v7, v7, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v7}, Lcom/baidu/location/e/c;->c(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    if-eqz v6, :cond_4

    :try_start_4
    iget-object v7, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v7, v7, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v7}, Lcom/baidu/location/e/c;->a(Lcom/baidu/location/e/c;)Lcom/baidu/location/e/i;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/location/e/i;->k()Lcom/baidu/location/e/m;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/baidu/location/e/m;->a(Lorg/json/JSONObject;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_16

    :cond_4
    :goto_5
    if-eqz v5, :cond_5

    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/baidu/location/e/c$c;->a(Lcom/baidu/location/e/c$c;J)J

    :cond_5
    if-eqz v5, :cond_6

    const-string v6, "bdlist"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "bdlist"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    invoke-static {v7}, Lcom/baidu/location/e/c$c;->a(Lcom/baidu/location/e/c$c;)Lcom/baidu/location/e/c;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/baidu/location/e/c;->a(Lcom/baidu/location/e/c;[Ljava/lang/String;)V

    :cond_6
    if-eqz v5, :cond_7

    const-string v6, "loadurl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    invoke-static {v6}, Lcom/baidu/location/e/c$c;->a(Lcom/baidu/location/e/c$c;)Lcom/baidu/location/e/c;

    move-result-object v6

    const-string v7, "loadurl"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "host"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "loadurl"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "module"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "loadurl"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v9, "req"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v8, v5}, Lcom/baidu/location/e/c;->a(Lcom/baidu/location/e/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/16 v8, 0x28

    const-wide/16 v9, 0x0

    const/4 v11, 0x3

    const/16 v12, 0x2c

    if-eqz v4, :cond_12

    const-string v15, "cell"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_12

    const-string v15, "cell"

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v15}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v5, v23

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v11

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    if-eqz v18, :cond_8

    const/16 v18, 0x0

    goto :goto_7

    :cond_8
    invoke-virtual {v14, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_7
    invoke-virtual {v14, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v11, v17, 0x1

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    cmpl-double v7, v26, v9

    if-lez v7, :cond_a

    if-eqz v21, :cond_9

    const/16 v21, 0x0

    goto :goto_8

    :cond_9
    invoke-virtual {v13, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_8
    invoke-virtual {v13, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v24, 0x3e8

    div-long v6, v6, v24

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v5, 0x29

    invoke-virtual {v13, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    :cond_a
    if-eqz v22, :cond_b

    const/16 v22, 0x0

    goto :goto_9

    :cond_b
    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_9
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v20, v20, 0x1

    :goto_a
    move/from16 v5, v19

    move/from16 v6, v20

    const/16 v7, 0x64

    if-lt v11, v7, :cond_c

    iget-object v7, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v7, v7, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v7}, Lcom/baidu/location/e/c;->c(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const-string v8, "DELETE FROM CL WHERE id IN (%s);"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    aput-object v9, v10, v12

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuffer;->setLength(I)V

    add-int/lit8 v11, v11, -0x64

    move/from16 v17, v11

    const/16 v7, 0x64

    const/16 v18, 0x1

    goto :goto_b

    :cond_c
    move/from16 v17, v11

    :goto_b
    if-lt v5, v7, :cond_d

    iget-object v7, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v7, v7, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v7}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const-string v8, "INSERT OR REPLACE INTO CL (id,x,y,r,cl,timestamp) VALUES %s;"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v10, v11

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    add-int/lit8 v5, v5, -0x64

    move/from16 v19, v5

    const/16 v5, 0x64

    const/16 v21, 0x1

    goto :goto_c

    :cond_d
    move/from16 v19, v5

    const/16 v5, 0x64

    :goto_c
    if-lt v6, v5, :cond_e

    iget-object v5, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v5, v5, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v5}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v7, "DELETE FROM CL WHERE id IN (%s);"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    add-int/lit8 v6, v6, -0x64

    move/from16 v20, v6

    const/16 v22, 0x1

    goto :goto_d

    :cond_e
    move/from16 v20, v6

    :goto_d
    const/16 v8, 0x28

    const-wide/16 v9, 0x0

    const/4 v11, 0x3

    const/16 v12, 0x2c

    goto/16 :goto_6

    :cond_f
    if-lez v17, :cond_10

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->c(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v5, "DELETE FROM CL WHERE id IN (%s);"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_10
    if-lez v19, :cond_11

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v5, "INSERT OR REPLACE INTO CL (id,x,y,r,cl,timestamp) VALUES %s;"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_11
    if-lez v20, :cond_12

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v5, "DELETE FROM CL WHERE id IN (%s);"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_12
    if-eqz v4, :cond_1d

    const-string v2, "ap"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "ap"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v28, v2

    const-string v2, ","

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/16 v17, 0x3

    aget-object v2, v2, v17

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    if-eqz v9, :cond_13

    move-object/from16 v29, v3

    const/4 v9, 0x0

    goto :goto_f

    :cond_13
    move-object/from16 v29, v3

    const/16 v3, 0x2c

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_f
    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v17, 0x0

    cmpl-double v19, v2, v17

    if-lez v19, :cond_15

    if-eqz v12, :cond_14

    const/16 v2, 0x2c

    const/16 v3, 0x28

    const/4 v12, 0x0

    goto :goto_10

    :cond_14
    const/16 v2, 0x2c

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v3, 0x28

    :goto_10
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ","

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v19, 0x3e8

    div-long v14, v14, v19

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x29

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v10, 0x1

    move v14, v12

    const/16 v12, 0x64

    const/16 v15, 0x2c

    goto :goto_12

    :cond_15
    const/16 v2, 0x29

    const/16 v3, 0x28

    const-wide/16 v19, 0x3e8

    if-eqz v13, :cond_16

    const/4 v13, 0x0

    const/16 v15, 0x2c

    goto :goto_11

    :cond_16
    const/16 v15, 0x2c

    invoke-virtual {v5, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_11
    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v11, v11, 0x1

    move v14, v12

    const/16 v12, 0x64

    :goto_12
    if-lt v8, v12, :cond_17

    iget-object v9, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v9, v9, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v9}, Lcom/baidu/location/e/c;->c(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v12, "DELETE FROM AP WHERE id IN (%s);"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x0

    aput-object v2, v3, v15

    invoke-static {v12, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->setLength(I)V

    add-int/lit8 v8, v8, -0x64

    const/16 v2, 0x64

    const/4 v9, 0x1

    goto :goto_13

    :cond_17
    const/16 v2, 0x64

    :goto_13
    if-lt v10, v2, :cond_18

    iget-object v3, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v3, v3, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v3}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v12, "INSERT OR REPLACE INTO AP (id,x,y,r,cl,timestamp) VALUES %s;"

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v2, 0x0

    aput-object v14, v15, v2

    invoke-static {v12, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    add-int/lit8 v10, v10, -0x64

    const/4 v12, 0x1

    goto :goto_14

    :cond_18
    move v12, v14

    :goto_14
    if-lez v11, :cond_19

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "DELETE FROM AP WHERE id IN (%s);"

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v15, v16

    invoke-static {v3, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_19
    move-object/from16 v2, v28

    move-object/from16 v3, v29

    goto/16 :goto_e

    :cond_1a
    if-lez v8, :cond_1b

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->c(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "DELETE FROM AP WHERE id IN (%s);"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v9, v8

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1b
    if-lez v10, :cond_1c

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "INSERT OR REPLACE INTO AP (id,x,y,r,cl,timestamp) VALUES %s;"

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v8, v7

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1c
    if-lez v11, :cond_1d

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "DELETE FROM AP WHERE id IN (%s);"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v7, v6

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1d
    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "DELETE FROM %s WHERE id NOT IN (SELECT id FROM %s ORDER BY timestamp DESC, frequency DESC LIMIT %d);"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    const-string v5, "AP"

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const-string v5, "AP"

    const/4 v7, 0x1

    aput-object v5, v6, v7

    const v5, 0x30d40

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "DELETE FROM %s WHERE id NOT IN (SELECT id FROM %s ORDER BY timestamp DESC, frequency DESC LIMIT %d);"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;

    const-string v6, "CL"

    const/4 v9, 0x0

    aput-object v6, v7, v9

    const-string v6, "CL"

    const/4 v9, 0x1

    aput-object v6, v7, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->c(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "DELETE FROM %s WHERE id NOT IN (SELECT id FROM %s ORDER BY frequency DESC LIMIT %d);"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    const-string v5, "AP"

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const-string v5, "AP"

    const/4 v7, 0x1

    aput-object v5, v6, v7

    const/16 v5, 0x2710

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->c(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "DELETE FROM %s WHERE id NOT IN (SELECT id FROM %s ORDER BY frequency DESC LIMIT %d);"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "CL"

    const/4 v9, 0x0

    aput-object v7, v6, v9

    const-string v7, "CL"

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-eqz v4, :cond_1e

    const-string v2, "ap"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "cell"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    invoke-static {v2}, Lcom/baidu/location/e/c$c;->b(Lcom/baidu/location/e/c$c;)V

    :cond_1e
    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->c(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1f
    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->c(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_21

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->c(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->c(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_15

    :catch_4
    :try_start_6
    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    invoke-static {v2}, Lcom/baidu/location/e/c$c;->b(Lcom/baidu/location/e/c$c;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_20

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_20
    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->c(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_21

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->c(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v2, v2, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v2}, Lcom/baidu/location/e/c;->c(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    :goto_15
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    :cond_21
    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/baidu/location/e/c$c;->ej:Ljava/lang/String;

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/baidu/location/e/c$c;->a(Lcom/baidu/location/e/c$c;Z)Z

    return-void

    :goto_16
    :try_start_8
    iget-object v3, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v3, v3, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v3}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v3, :cond_22

    iget-object v3, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v3, v3, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v3}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v3, v3, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v3}, Lcom/baidu/location/e/c;->b(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_22
    iget-object v3, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v3, v3, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v3}, Lcom/baidu/location/e/c;->c(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-eqz v3, :cond_23

    iget-object v3, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v3, v3, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v3}, Lcom/baidu/location/e/c;->c(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v3, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    iget-object v3, v3, Lcom/baidu/location/e/c$c;->a:Lcom/baidu/location/e/c;

    invoke-static {v3}, Lcom/baidu/location/e/c;->c(Lcom/baidu/location/e/c;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    :cond_23
    iget-object v3, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/baidu/location/e/c$c;->ej:Ljava/lang/String;

    iget-object v3, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/baidu/location/e/c$c;->a(Lcom/baidu/location/e/c$c;Z)Z

    throw v2

    :cond_24
    :goto_17
    const/4 v4, 0x0

    iget-object v2, v1, Lcom/baidu/location/e/e;->a:Lcom/baidu/location/e/c$c;

    invoke-static {v2, v4}, Lcom/baidu/location/e/c$c;->a(Lcom/baidu/location/e/c$c;Z)Z

    return-void
.end method
