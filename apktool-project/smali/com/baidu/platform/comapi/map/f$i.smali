.class Lcom/baidu/platform/comapi/map/f$i;
.super Ljava/lang/Thread;
.source "GLRenderControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platform/comapi/map/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:Ljava/lang/Runnable;

.field private u:Lcom/baidu/platform/comapi/map/f$h;

.field private v:J

.field private w:J

.field private x:I

.field private y:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/f;",
            ">;)V"
        }
    .end annotation

    .line 1246
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1868
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/f$i;->r:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 1869
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->s:Z

    const/4 v1, 0x0

    .line 1870
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/f$i;->t:Ljava/lang/Runnable;

    const/16 v1, 0x3c

    .line 1877
    iput v1, p0, Lcom/baidu/platform/comapi/map/f$i;->x:I

    const/4 v1, 0x0

    .line 1247
    iput v1, p0, Lcom/baidu/platform/comapi/map/f$i;->l:I

    .line 1248
    iput v1, p0, Lcom/baidu/platform/comapi/map/f$i;->m:I

    .line 1249
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->o:Z

    .line 1250
    iput v0, p0, Lcom/baidu/platform/comapi/map/f$i;->n:I

    .line 1251
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->p:Z

    .line 1252
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/f$i;->y:Ljava/lang/ref/WeakReference;

    const/16 p1, 0xa

    .line 1253
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/f$i;->setPriority(I)V

    return-void
.end method

.method private a(J)V
    .locals 6

    .line 1637
    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/f$i;->v:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/baidu/platform/comapi/map/f$i;->v:J

    .line 1638
    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/f$i;->w:J

    add-long v2, v0, p1

    iput-wide v2, p0, Lcom/baidu/platform/comapi/map/f$i;->w:J

    .line 1639
    iget-wide p1, p0, Lcom/baidu/platform/comapi/map/f$i;->v:J

    const-wide/16 v0, 0xa

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 1640
    iget-wide p1, p0, Lcom/baidu/platform/comapi/map/f$i;->w:J

    long-to-float p1, p1

    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/f$i;->v:J

    long-to-float p2, v0

    div-float/2addr p1, p2

    float-to-int p1, p1

    const-wide/16 v0, 0x0

    if-lez p1, :cond_0

    .line 1642
    iget p2, p0, Lcom/baidu/platform/comapi/map/f$i;->x:I

    const/16 v2, 0x3e8

    div-int/2addr v2, p1

    add-int/2addr p2, v2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/baidu/platform/comapi/map/f$i;->x:I

    .line 1643
    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/f$i;->v:J

    .line 1644
    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/f$i;->w:J

    goto :goto_0

    .line 1646
    :cond_0
    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/f$i;->v:J

    .line 1647
    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/f$i;->w:J

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/comapi/map/f$i;Z)Z
    .locals 0

    .line 1244
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/f$i;->b:Z

    return p1
.end method

.method private i()V
    .locals 1

    .line 1277
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1278
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->i:Z

    .line 1279
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$i;->u:Lcom/baidu/platform/comapi/map/f$h;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/f$h;->e()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    .line 1288
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->h:Z

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$i;->u:Lcom/baidu/platform/comapi/map/f$h;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/f$h;->f()V

    const/4 v0, 0x0

    .line 1290
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->h:Z

    .line 1291
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/map/f$j;->b(Lcom/baidu/platform/comapi/map/f$i;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1296
    new-instance v2, Lcom/baidu/platform/comapi/map/f$h;

    iget-object v3, v1, Lcom/baidu/platform/comapi/map/f$i;->y:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/baidu/platform/comapi/map/f$h;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, v1, Lcom/baidu/platform/comapi/map/f$i;->u:Lcom/baidu/platform/comapi/map/f$h;

    const/4 v2, 0x0

    .line 1297
    iput-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->h:Z

    .line 1298
    iput-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->i:Z

    .line 1299
    iput-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->p:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1317
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v17

    monitor-enter v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 1319
    :goto_1
    :try_start_1
    iget-boolean v3, v1, Lcom/baidu/platform/comapi/map/f$i;->a:Z

    if-eqz v3, :cond_0

    .line 1320
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 1629
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v2

    monitor-enter v2

    .line 1630
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->i()V

    .line 1631
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->j()V

    .line 1632
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move-object v3, v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1323
    :cond_0
    :try_start_3
    iget-object v3, v1, Lcom/baidu/platform/comapi/map/f$i;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1324
    iget-object v3, v1, Lcom/baidu/platform/comapi/map/f$i;->r:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    move-object v15, v3

    goto/16 :goto_8

    .line 1330
    :cond_1
    iget-boolean v3, v1, Lcom/baidu/platform/comapi/map/f$i;->d:Z

    iget-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->c:Z

    if-eq v3, v2, :cond_2

    .line 1331
    iget-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->c:Z

    .line 1332
    iget-boolean v3, v1, Lcom/baidu/platform/comapi/map/f$i;->c:Z

    iput-boolean v3, v1, Lcom/baidu/platform/comapi/map/f$i;->d:Z

    .line 1333
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 1340
    :goto_2
    iget-boolean v3, v1, Lcom/baidu/platform/comapi/map/f$i;->k:Z

    if-eqz v3, :cond_3

    .line 1344
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->i()V

    .line 1345
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->j()V

    const/4 v3, 0x0

    .line 1346
    iput-boolean v3, v1, Lcom/baidu/platform/comapi/map/f$i;->k:Z

    const/4 v6, 0x1

    :cond_3
    if-eqz v4, :cond_4

    .line 1352
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->i()V

    .line 1353
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->j()V

    const/4 v4, 0x0

    :cond_4
    if-eqz v2, :cond_5

    .line 1358
    iget-boolean v3, v1, Lcom/baidu/platform/comapi/map/f$i;->i:Z

    if-eqz v3, :cond_5

    .line 1362
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->i()V

    :cond_5
    if-eqz v2, :cond_7

    .line 1366
    iget-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->h:Z

    if-eqz v2, :cond_7

    .line 1367
    iget-object v2, v1, Lcom/baidu/platform/comapi/map/f$i;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/f;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_3

    .line 1369
    :cond_6
    invoke-static {v2}, Lcom/baidu/platform/comapi/map/f;->g(Lcom/baidu/platform/comapi/map/f;)Z

    move-result v2

    :goto_3
    if-nez v2, :cond_7

    .line 1371
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->j()V

    .line 1379
    :cond_7
    iget-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->e:Z

    if-nez v2, :cond_9

    iget-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->g:Z

    if-nez v2, :cond_9

    .line 1383
    iget-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->i:Z

    if-eqz v2, :cond_8

    .line 1384
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->i()V

    :cond_8
    const/4 v2, 0x1

    .line 1386
    iput-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->g:Z

    const/4 v2, 0x0

    .line 1387
    iput-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->f:Z

    .line 1388
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1392
    :cond_9
    iget-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->e:Z

    if-eqz v2, :cond_a

    iget-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->g:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    .line 1396
    iput-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->g:Z

    .line 1397
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :cond_a
    if-eqz v5, :cond_b

    const/4 v2, 0x0

    .line 1404
    iput-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->p:Z

    const/4 v2, 0x1

    .line 1406
    iput-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->q:Z

    .line 1407
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    const/4 v5, 0x0

    .line 1410
    :cond_b
    iget-object v2, v1, Lcom/baidu/platform/comapi/map/f$i;->t:Ljava/lang/Runnable;

    if-eqz v2, :cond_c

    .line 1411
    iget-object v2, v1, Lcom/baidu/platform/comapi/map/f$i;->t:Ljava/lang/Runnable;

    const/4 v3, 0x0

    .line 1412
    iput-object v3, v1, Lcom/baidu/platform/comapi/map/f$i;->t:Ljava/lang/Runnable;

    move-object v3, v2

    goto :goto_4

    :cond_c
    move-object v3, v7

    .line 1416
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->l()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1419
    iget-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->h:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    if-nez v2, :cond_e

    if-eqz v6, :cond_d

    const/4 v6, 0x0

    goto :goto_5

    .line 1424
    :cond_d
    :try_start_4
    iget-object v2, v1, Lcom/baidu/platform/comapi/map/f$i;->u:Lcom/baidu/platform/comapi/map/f$h;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/f$h;->a()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    const/4 v2, 0x1

    .line 1429
    :try_start_5
    iput-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->h:Z

    .line 1432
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    const/16 v16, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1426
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/baidu/platform/comapi/map/f$j;->b(Lcom/baidu/platform/comapi/map/f$i;)V

    .line 1427
    throw v2

    .line 1436
    :cond_e
    :goto_5
    iget-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->h:Z

    if-eqz v2, :cond_f

    iget-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->i:Z

    if-nez v2, :cond_f

    const/4 v2, 0x1

    .line 1437
    iput-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->i:Z

    const/4 v2, 0x1

    const/4 v9, 0x1

    const/4 v11, 0x1

    goto :goto_6

    :cond_f
    move v2, v8

    .line 1443
    :goto_6
    iget-boolean v7, v1, Lcom/baidu/platform/comapi/map/f$i;->i:Z

    if-eqz v7, :cond_21

    .line 1444
    iget-boolean v7, v1, Lcom/baidu/platform/comapi/map/f$i;->s:Z

    if-eqz v7, :cond_10

    .line 1446
    iget v13, v1, Lcom/baidu/platform/comapi/map/f$i;->l:I

    .line 1447
    iget v14, v1, Lcom/baidu/platform/comapi/map/f$i;->m:I

    const/4 v2, 0x1

    .line 1448
    iput-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->p:Z

    const/4 v2, 0x0

    .line 1457
    iput-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->s:Z

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x1

    goto :goto_7

    :cond_10
    const/4 v7, 0x0

    .line 1459
    :goto_7
    iput-boolean v7, v1, Lcom/baidu/platform/comapi/map/f$i;->o:Z

    .line 1460
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 1461
    iget-boolean v7, v1, Lcom/baidu/platform/comapi/map/f$i;->p:Z

    if-eqz v7, :cond_11

    move v8, v2

    move-object v7, v3

    const/4 v12, 0x1

    goto :goto_8

    :cond_11
    move v8, v2

    move-object v7, v3

    .line 1488
    :goto_8
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-eqz v15, :cond_12

    .line 1491
    :try_start_6
    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    const/4 v2, 0x0

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_12
    if-eqz v8, :cond_14

    .line 1500
    iget-object v2, v1, Lcom/baidu/platform/comapi/map/f$i;->u:Lcom/baidu/platform/comapi/map/f$h;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/f$h;->b()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1501
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    const/4 v3, 0x1

    .line 1502
    :try_start_7
    iput-boolean v3, v1, Lcom/baidu/platform/comapi/map/f$i;->j:Z

    .line 1503
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1504
    monitor-exit v2

    const/4 v8, 0x0

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v3, v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3

    .line 1506
    :cond_13
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v2

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    const/4 v3, 0x1

    .line 1507
    :try_start_9
    iput-boolean v3, v1, Lcom/baidu/platform/comapi/map/f$i;->j:Z

    .line 1508
    iput-boolean v3, v1, Lcom/baidu/platform/comapi/map/f$i;->f:Z

    .line 1509
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1510
    monitor-exit v2

    :goto_9
    const/4 v2, 0x0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v3, v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v3

    :cond_14
    :goto_a
    if-eqz v9, :cond_15

    .line 1517
    iget-object v2, v1, Lcom/baidu/platform/comapi/map/f$i;->u:Lcom/baidu/platform/comapi/map/f$h;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/f$h;->c()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    move-object v10, v2

    const/4 v9, 0x0

    :cond_15
    if-eqz v16, :cond_17

    .line 1526
    iget-object v2, v1, Lcom/baidu/platform/comapi/map/f$i;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/f;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    if-eqz v2, :cond_16

    .line 1531
    :try_start_b
    invoke-static {v2}, Lcom/baidu/platform/comapi/map/f;->h(Lcom/baidu/platform/comapi/map/f;)Lcom/baidu/platform/comapi/map/SurfaceRenderer;

    move-result-object v3

    move/from16 v21, v4

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/f;->c()I

    move-result v4

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/f;->d()I

    move-result v2

    move/from16 v22, v5

    move/from16 v23, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v6, v4, v2, v5}, Lcom/baidu/platform/comapi/map/SurfaceRenderer;->onSurfaceCreated(Landroid/view/SurfaceHolder;III)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    const-string v2, "GLRenderControl"

    const-string v3, "mRenderer.onSurfaceCreated"

    .line 1534
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v2, v0

    const-string v3, "GLRenderControl"

    const-string v4, "mRenderer.onSurfaceCreated"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    throw v2

    :cond_16
    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_b
    const/16 v16, 0x0

    goto :goto_c

    :cond_17
    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_c
    if-eqz v11, :cond_19

    .line 1544
    iget-object v2, v1, Lcom/baidu/platform/comapi/map/f$i;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/f;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    if-eqz v2, :cond_18

    .line 1549
    :try_start_d
    invoke-static {v2}, Lcom/baidu/platform/comapi/map/f;->h(Lcom/baidu/platform/comapi/map/f;)Lcom/baidu/platform/comapi/map/SurfaceRenderer;

    move-result-object v2

    invoke-interface {v2, v13, v14}, Lcom/baidu/platform/comapi/map/SurfaceRenderer;->onSurfaceChanged(II)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    const-string v2, "GLRenderControl"

    const-string v3, "mRenderer.onSurfaceChanged"

    .line 1552
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object v2, v0

    const-string v3, "GLRenderControl"

    const-string v4, "mRenderer.onSurfaceChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    throw v2

    :cond_18
    :goto_d
    const/4 v11, 0x0

    .line 1562
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1565
    iget-object v4, v1, Lcom/baidu/platform/comapi/map/f$i;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/platform/comapi/map/f;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    if-eqz v4, :cond_1b

    .line 1569
    :try_start_f
    invoke-static {v4}, Lcom/baidu/platform/comapi/map/f;->h(Lcom/baidu/platform/comapi/map/f;)Lcom/baidu/platform/comapi/map/SurfaceRenderer;

    move-result-object v6

    invoke-interface {v6, v10}, Lcom/baidu/platform/comapi/map/SurfaceRenderer;->onDrawFrame(Ljava/lang/Object;)V

    if-eqz v7, :cond_1a

    .line 1571
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    const/4 v7, 0x0

    .line 1574
    :cond_1a
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/f;->e()I

    move-result v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object v2, v0

    .line 1580
    :try_start_10
    throw v2

    :cond_1b
    const/16 v4, 0x3c

    .line 1583
    :goto_e
    iget-object v6, v1, Lcom/baidu/platform/comapi/map/f$i;->u:Lcom/baidu/platform/comapi/map/f$h;

    invoke-virtual {v6}, Lcom/baidu/platform/comapi/map/f$h;->d()I

    move-result v6

    const/16 v5, 0x3000

    if-eq v6, v5, :cond_1d

    const/16 v5, 0x300e

    if-eq v6, v5, :cond_1c

    const-string v5, "GLThread"

    move-object/from16 v24, v7

    const-string v7, "eglSwapBuffers"

    .line 1598
    invoke-static {v5, v7, v6}, Lcom/baidu/platform/comapi/map/f$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1600
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v5

    monitor-enter v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    const/4 v6, 0x1

    .line 1601
    :try_start_11
    iput-boolean v6, v1, Lcom/baidu/platform/comapi/map/f$i;->f:Z

    .line 1602
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 1603
    monitor-exit v5

    goto :goto_f

    :catchall_6
    move-exception v0

    move-object v2, v0

    monitor-exit v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    throw v2

    :cond_1c
    move-object/from16 v24, v7

    const/4 v6, 0x1

    const/16 v21, 0x1

    goto :goto_f

    :cond_1d
    move-object/from16 v24, v7

    const/4 v6, 0x1

    :goto_f
    if-eqz v12, :cond_1e

    const/4 v5, 0x1

    const/16 v6, 0x3c

    const/4 v12, 0x0

    goto :goto_10

    :cond_1e
    move/from16 v5, v22

    const/16 v6, 0x3c

    :goto_10
    if-gt v4, v6, :cond_1f

    if-lez v4, :cond_1f

    const/16 v6, 0x3e8

    .line 1615
    div-int/2addr v6, v4

    int-to-long v6, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const/4 v4, 0x0

    sub-long v19, v17, v2

    move/from16 v25, v5

    sub-long v4, v6, v19

    const-wide/16 v6, 0x1

    cmp-long v17, v4, v6

    if-lez v17, :cond_20

    .line 1617
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v6

    monitor-enter v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 1618
    :try_start_13
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 1619
    monitor-exit v6

    goto :goto_11

    :catchall_7
    move-exception v0

    move-object v2, v0

    monitor-exit v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :try_start_14
    throw v2

    :cond_1f
    move/from16 v25, v5

    .line 1622
    :cond_20
    :goto_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    sub-long v6, v4, v2

    invoke-direct {v1, v6, v7}, Lcom/baidu/platform/comapi/map/f$i;->a(J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    move/from16 v4, v21

    move/from16 v6, v23

    move-object/from16 v7, v24

    move/from16 v5, v25

    goto/16 :goto_9

    :cond_21
    move/from16 v19, v5

    move v8, v2

    move-object v7, v3

    goto :goto_12

    :cond_22
    move/from16 v19, v5

    move/from16 v20, v6

    if-eqz v3, :cond_23

    :try_start_15
    const-string v2, "GLRenderControl"

    const-string v5, "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    .line 1468
    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    move/from16 v6, v20

    const/4 v7, 0x0

    goto :goto_12

    :cond_23
    move-object v7, v3

    move/from16 v6, v20

    .line 1486
    :goto_12
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    move/from16 v5, v19

    const/4 v2, 0x0

    goto/16 :goto_1

    :catchall_8
    move-exception v0

    move-object v2, v0

    .line 1488
    monitor-exit v17
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :try_start_16
    throw v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    :catchall_9
    move-exception v0

    move-object v2, v0

    .line 1629
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v3

    monitor-enter v3

    .line 1630
    :try_start_17
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->i()V

    .line 1631
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->j()V

    .line 1632
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 1633
    throw v2

    :catchall_a
    move-exception v0

    move-object v2, v0

    .line 1632
    :try_start_18
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    throw v2
.end method

.method private l()Z
    .locals 2

    .line 1657
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->f:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/baidu/platform/comapi/map/f$i;->l:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/baidu/platform/comapi/map/f$i;->m:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->o:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/baidu/platform/comapi/map/f$i;->n:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1665
    :cond_0
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    .line 1666
    :try_start_0
    iput p1, p0, Lcom/baidu/platform/comapi/map/f$i;->n:I

    .line 1667
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1668
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1663
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(II)V
    .locals 1

    .line 1781
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    .line 1782
    :try_start_0
    iput p1, p0, Lcom/baidu/platform/comapi/map/f$i;->l:I

    .line 1783
    iput p2, p0, Lcom/baidu/platform/comapi/map/f$i;->m:I

    const/4 p1, 0x1

    .line 1784
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/f$i;->s:Z

    .line 1785
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/f$i;->o:Z

    const/4 p1, 0x0

    .line 1786
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/f$i;->q:Z

    .line 1793
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-ne p1, p0, :cond_0

    .line 1794
    monitor-exit v0

    return-void

    .line 1797
    :cond_0
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1800
    :goto_0
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/f$i;->b:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/f$i;->d:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/f$i;->q:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/f$i;->a()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 1805
    :try_start_1
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1807
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1810
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .line 1685
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    .line 1690
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1691
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1694
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->p:Z

    .line 1695
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->o:Z

    const/4 v1, 0x0

    .line 1696
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->q:Z

    .line 1697
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/f$i;->t:Ljava/lang/Runnable;

    .line 1699
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1700
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 1653
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/f$i;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()I
    .locals 2

    .line 1672
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    .line 1673
    :try_start_0
    iget v1, p0, Lcom/baidu/platform/comapi/map/f$i;->n:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1674
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1841
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1843
    :cond_0
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    .line 1844
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/f$i;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1845
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1846
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 2

    .line 1678
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1679
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->o:Z

    .line 1680
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1681
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 2

    .line 1704
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1708
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->e:Z

    const/4 v1, 0x0

    .line 1709
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->j:Z

    .line 1710
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1711
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->j:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1713
    :try_start_1
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1715
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1718
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 2

    .line 1722
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1726
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->e:Z

    .line 1727
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1728
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->g:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1730
    :try_start_1
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1732
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1735
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public f()V
    .locals 2

    .line 1739
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1743
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->c:Z

    .line 1744
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1745
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1750
    :try_start_1
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1752
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1755
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public g()V
    .locals 3

    .line 1759
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1763
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->c:Z

    const/4 v2, 0x1

    .line 1764
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/map/f$i;->o:Z

    .line 1765
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->q:Z

    .line 1766
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1767
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->d:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1772
    :try_start_1
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1774
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1777
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public h()V
    .locals 2

    .line 1816
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1817
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->a:Z

    .line 1818
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1819
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1821
    :try_start_1
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1823
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1826
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    .line 1258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/f$i;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/f$i;->setName(Ljava/lang/String;)V

    .line 1264
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/f$i;->k()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    :catch_0
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/map/f$j;->a(Lcom/baidu/platform/comapi/map/f$i;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/platform/comapi/map/f$j;->a(Lcom/baidu/platform/comapi/map/f$i;)V

    .line 1269
    throw v0

    :goto_0
    return-void
.end method
