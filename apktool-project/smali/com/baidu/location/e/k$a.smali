.class final Lcom/baidu/location/e/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Z

.field final d:Z

.field final e:Z

.field final f:I

.field final g:Lcom/baidu/location/BDLocation;

.field final h:Z

.field final i:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_0

    iput-object v3, v0, Lcom/baidu/location/e/k$a;->a:Ljava/lang/String;

    iput-object v3, v0, Lcom/baidu/location/e/k$a;->b:Ljava/lang/String;

    iput-object v3, v0, Lcom/baidu/location/e/k$a;->i:Ljava/util/LinkedHashMap;

    iput-boolean v4, v0, Lcom/baidu/location/e/k$a;->c:Z

    iput-boolean v4, v0, Lcom/baidu/location/e/k$a;->d:Z

    iput-boolean v4, v0, Lcom/baidu/location/e/k$a;->e:Z

    iput-object v3, v0, Lcom/baidu/location/e/k$a;->g:Lcom/baidu/location/BDLocation;

    iput-boolean v4, v0, Lcom/baidu/location/e/k$a;->h:Z

    iput v2, v0, Lcom/baidu/location/e/k$a;->f:I

    return-void

    :cond_0
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v7, v3

    move-object v8, v7

    move-object v9, v8

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x8

    :goto_0
    :try_start_0
    array-length v15, v1

    if-ge v2, v15, :cond_d

    aget-object v15, v1, v2

    const-string v3, "-loc"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v14, 0x3

    if-eqz v3, :cond_5

    add-int/lit8 v3, v2, 0x1

    aget-object v3, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    const-string v7, "&"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v17, v8

    const/4 v8, 0x0

    :goto_1
    :try_start_2
    array-length v4, v7

    if-ge v8, v4, :cond_4

    aget-object v4, v7, v8

    const-string v15, "cl="

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v4, :cond_1

    :try_start_3
    aget-object v4, v7, v8

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v19, v3

    move-object/from16 v17, v4

    goto :goto_3

    :catch_0
    move-object/from16 v16, v3

    move-object/from16 v8, v17

    goto/16 :goto_9

    :cond_1
    :try_start_4
    aget-object v4, v7, v8

    const-string v15, "wf="

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v4, v7, v8

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v15, "\\|"

    invoke-virtual {v4, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v15, 0x0

    :goto_2
    array-length v14, v4

    if-ge v15, v14, :cond_3

    aget-object v14, v4, v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v19, v3

    :try_start_5
    const-string v3, ";"

    invoke-virtual {v14, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v14, v3

    move-object/from16 v20, v4

    const/4 v4, 0x2

    if-lt v14, v4, :cond_2

    const/4 v4, 0x0

    aget-object v14, v3, v4

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v14, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    goto :goto_2

    :cond_3
    move-object/from16 v19, v3

    :goto_3
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v19

    const/4 v14, 0x3

    goto :goto_1

    :cond_4
    move-object/from16 v19, v3

    move-object/from16 v8, v17

    move-object/from16 v7, v19

    goto/16 :goto_6

    :catch_1
    move-object/from16 v19, v3

    :catch_2
    move-object/from16 v8, v17

    goto :goto_4

    :catch_3
    move-object/from16 v19, v3

    :goto_4
    move-object/from16 v16, v19

    goto/16 :goto_9

    :cond_5
    :try_start_6
    aget-object v3, v1, v2

    const-string v4, "-com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v3, v2, 0x1

    aget-object v3, v1, v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_6

    new-instance v4, Lcom/baidu/location/BDLocation;

    invoke-direct {v4}, Lcom/baidu/location/BDLocation;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    const/4 v14, 0x0

    :try_start_7
    aget-object v9, v3, v14

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const/16 v18, 0x1

    aget-object v9, v3, v18

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    const/4 v9, 0x2

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    const/4 v9, 0x3

    aget-object v3, v3, v9

    invoke-virtual {v4, v3}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    :catch_4
    move-object v9, v4

    goto/16 :goto_8

    :cond_6
    move-object v4, v9

    :goto_5
    move-object v9, v4

    goto/16 :goto_6

    :cond_7
    const/16 v18, 0x1

    :try_start_8
    aget-object v3, v1, v2

    const-string v4, "-log"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v3, v2, 0x1

    aget-object v3, v1, v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v6, 0x1

    goto :goto_6

    :cond_8
    aget-object v3, v1, v2

    const-string v4, "-rgc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v3, v2, 0x1

    aget-object v3, v1, v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v11, 0x1

    goto :goto_6

    :cond_9
    aget-object v3, v1, v2

    const-string v4, "-poi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    add-int/lit8 v3, v2, 0x1

    aget-object v3, v1, v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v10, 0x1

    goto :goto_6

    :cond_a
    aget-object v3, v1, v2

    const-string v4, "-minap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    if-eqz v3, :cond_b

    add-int/lit8 v3, v2, 0x1

    :try_start_9
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    move v13, v3

    goto :goto_6

    :cond_b
    :try_start_a
    aget-object v3, v1, v2

    const-string v4, "-des"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    add-int/lit8 v3, v2, 0x1

    aget-object v3, v1, v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    if-eqz v3, :cond_c

    const/4 v12, 0x1

    :catch_5
    :cond_c
    :goto_6
    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_d
    const/16 v18, 0x1

    if-nez v6, :cond_e

    const/16 v16, 0x0

    goto :goto_7

    :cond_e
    move-object/from16 v16, v7

    :goto_7
    move-object/from16 v2, v16

    const/4 v1, 0x1

    goto :goto_a

    :catch_6
    :goto_8
    move-object/from16 v16, v7

    :goto_9
    move-object/from16 v2, v16

    const/4 v1, 0x0

    :goto_a
    iput-object v2, v0, Lcom/baidu/location/e/k$a;->a:Ljava/lang/String;

    iput-object v8, v0, Lcom/baidu/location/e/k$a;->b:Ljava/lang/String;

    iput-object v5, v0, Lcom/baidu/location/e/k$a;->i:Ljava/util/LinkedHashMap;

    iput-boolean v1, v0, Lcom/baidu/location/e/k$a;->c:Z

    iput-boolean v10, v0, Lcom/baidu/location/e/k$a;->d:Z

    iput-boolean v11, v0, Lcom/baidu/location/e/k$a;->e:Z

    iput v13, v0, Lcom/baidu/location/e/k$a;->f:I

    iput-object v9, v0, Lcom/baidu/location/e/k$a;->g:Lcom/baidu/location/BDLocation;

    iput-boolean v12, v0, Lcom/baidu/location/e/k$a;->h:Z

    return-void
.end method
