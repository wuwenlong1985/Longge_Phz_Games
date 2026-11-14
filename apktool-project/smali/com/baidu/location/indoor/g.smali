.class Lcom/baidu/location/indoor/g;
.super Landroid/bluetooth/le/ScanCallback;


# instance fields
.field final synthetic a:Lcom/baidu/location/indoor/f;


# direct methods
.method constructor <init>(Lcom/baidu/location/indoor/f;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/indoor/g;->a:Lcom/baidu/location/indoor/f;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/location/indoor/g;->a:Lcom/baidu/location/indoor/f;

    invoke-static {v1}, Lcom/baidu/location/indoor/f;->a(Lcom/baidu/location/indoor/f;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v1

    const/16 v2, -0x5a

    if-le v1, v2, :cond_5

    iget-object v1, v0, Lcom/baidu/location/indoor/g;->a:Lcom/baidu/location/indoor/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/location/indoor/f;->b:J

    iget-object v1, v0, Lcom/baidu/location/indoor/g;->a:Lcom/baidu/location/indoor/f;

    invoke-static {v1}, Lcom/baidu/location/indoor/f;->a(Lcom/baidu/location/indoor/f;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v4, v0, Lcom/baidu/location/indoor/g;->a:Lcom/baidu/location/indoor/f;

    invoke-static {v4}, Lcom/baidu/location/indoor/f;->b(Lcom/baidu/location/indoor/f;)J

    move-result-wide v4

    sub-long v6, v1, v4

    const-wide/16 v1, 0x320

    cmp-long v4, v6, v1

    if-gtz v4, :cond_0

    const-wide/16 v1, -0x64

    cmp-long v4, v6, v1

    if-gez v4, :cond_5

    :cond_0
    iget-object v1, v0, Lcom/baidu/location/indoor/g;->a:Lcom/baidu/location/indoor/f;

    invoke-static {v1}, Lcom/baidu/location/indoor/f;->a(Lcom/baidu/location/indoor/f;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    iget-object v1, v0, Lcom/baidu/location/indoor/g;->a:Lcom/baidu/location/indoor/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/baidu/location/indoor/f;->a(Lcom/baidu/location/indoor/f;J)J

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    const-wide/16 v7, 0x0

    if-lt v5, v6, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    div-long/2addr v5, v3
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    move-wide v5, v7

    :goto_0
    iget-object v9, v0, Lcom/baidu/location/indoor/g;->a:Lcom/baidu/location/indoor/f;

    invoke-static {v9}, Lcom/baidu/location/indoor/f;->a(Lcom/baidu/location/indoor/f;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/le/ScanResult;

    invoke-virtual {v10}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v11

    div-long/2addr v11, v3

    sub-long v13, v1, v11

    const/4 v11, 0x0

    const-wide/16 v15, 0x9c4

    cmp-long v12, v13, v15

    if-lez v12, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    const/4 v11, 0x1

    :cond_3
    cmp-long v12, v5, v7

    if-eqz v12, :cond_2

    if-nez v11, :cond_2

    invoke-virtual {v10}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v10

    div-long/2addr v10, v3

    sub-long v12, v5, v10

    cmp-long v10, v12, v15

    if-lez v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/baidu/location/indoor/g;->a:Lcom/baidu/location/indoor/f;

    invoke-static {v1}, Lcom/baidu/location/indoor/f;->a(Lcom/baidu/location/indoor/f;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    iget-object v1, v0, Lcom/baidu/location/indoor/g;->a:Lcom/baidu/location/indoor/f;

    invoke-static {v1}, Lcom/baidu/location/indoor/f;->c(Lcom/baidu/location/indoor/f;)V

    :cond_5
    return-void
.end method
