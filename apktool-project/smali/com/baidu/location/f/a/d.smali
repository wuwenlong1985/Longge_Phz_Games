.class public Lcom/baidu/location/f/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/f/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/f/a/d$b;,
        Lcom/baidu/location/f/a/d$a;
    }
.end annotation


# instance fields
.field public a:J

.field private b:Z

.field private e:Landroid/net/wifi/WifiManager;

.field private f:Lcom/baidu/location/f/a/d$b;

.field private g:Lcom/baidu/location/f/p;

.field private h:Landroid/content/Context;

.field private i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private j:J

.field private k:J

.field private l:J

.field private m:Ljava/lang/String;

.field private final n:Ljava/lang/Object;

.field private final o:Ljava/lang/Object;

.field private p:Landroid/os/Handler;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/f/a/d;->b:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/f/a/d;->e:Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/baidu/location/f/a/d;->f:Lcom/baidu/location/f/a/d$b;

    iput-object v1, p0, Lcom/baidu/location/f/a/d;->g:Lcom/baidu/location/f/p;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/baidu/location/f/a/d;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/baidu/location/f/a/d;->a:J

    iput-wide v2, p0, Lcom/baidu/location/f/a/d;->j:J

    iput-wide v2, p0, Lcom/baidu/location/f/a/d;->k:J

    iput-wide v2, p0, Lcom/baidu/location/f/a/d;->l:J

    iput-object v1, p0, Lcom/baidu/location/f/a/d;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/f/a/d;->n:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/f/a/d;->o:Ljava/lang/Object;

    iput-object v1, p0, Lcom/baidu/location/f/a/d;->p:Landroid/os/Handler;

    iput-object v1, p0, Lcom/baidu/location/f/a/d;->q:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/baidu/location/f/a/d;
    .locals 1

    invoke-static {}, Lcom/baidu/location/f/a/d$a;->a()Lcom/baidu/location/f/a/d;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/baidu/location/f/p;)Lcom/baidu/location/f/p;
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Lcom/baidu/location/f/p;

    iget-object v1, p1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    iget-wide v2, p1, Lcom/baidu/location/f/p;->b:J

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/location/f/p;-><init>(Ljava/util/List;J)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/location/f/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/f/a/d;->i()V

    return-void
.end method

.method public static a(Lcom/baidu/location/f/p;Lcom/baidu/location/f/p;F)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    if-eqz p0, :cond_d

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    return v1

    :cond_3
    if-eqz v2, :cond_d

    if-nez v3, :cond_4

    return v0

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_b

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object v6, v7

    :goto_1
    if-nez v6, :cond_6

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_a

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    iget-object v9, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object v9, v7

    :goto_3
    if-nez v9, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_a
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_b
    sget-boolean p0, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz p0, :cond_c

    sget-boolean p0, Lcom/baidu/location/f/a/d;->d:Z

    if-eqz p0, :cond_c

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifi same!"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v3, v5

    int-to-float v4, v2

    div-float/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/location/f/g;->a(Ljava/lang/String;)V

    :cond_c
    int-to-float p0, v5

    int-to-float p1, v2

    mul-float p1, p1, p2

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "wpa|wep"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/baidu/location/f/a/d;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/f/a/d;->n:Ljava/lang/Object;

    return-object p0
.end method

.method private b(J)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-wide/16 v1, 0xff

    and-long v3, p1, v1

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v4, 0x8

    shr-long v4, p1, v4

    and-long v6, v4, v1

    long-to-int v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v4, 0x10

    shr-long v4, p1, v4

    and-long v6, v4, v1

    long-to-int v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v3, 0x18

    shr-long/2addr p1, v3

    and-long v3, p1, v1

    long-to-int p1, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "&"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ";"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method static synthetic c(Lcom/baidu/location/f/a/d;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/f/a/d;->p:Landroid/os/Handler;

    return-object p0
.end method

.method private g()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/f/a/d;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f/a/d;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/f/a/d;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    sget-boolean v0, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/baidu/location/f/a/d;->d:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object v0

    const-string v1, "wifimanager start scan ..."

    invoke-virtual {v0, v1}, Lcom/baidu/location/f/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/f/a/d;->j:J

    iget-object v0, p0, Lcom/baidu/location/f/a/d;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/baidu/location/f/a/d;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/baidu/location/f/a/d;->n:Ljava/lang/Object;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/f/a/d;->e:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f/a/d;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/net/DhcpInfo;->gateway:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/baidu/location/f/a/d;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private i()V
    .locals 18

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/baidu/location/f/a/d;->e:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/baidu/location/f/a/d;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    sget-boolean v3, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/baidu/location/f/a/d;->d:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v10, v13, :cond_2

    const-wide/32 v13, 0xf4240

    if-nez v10, :cond_1

    :try_start_1
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    iget-wide v11, v11, Landroid/net/wifi/ScanResult;->timestamp:J

    const/4 v15, 0x0

    sub-long v15, v4, v11

    div-long v11, v15, v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v11, v0

    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v11, 0x0

    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Landroid/net/wifi/ScanResult;

    iget-object v7, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    iget v7, v7, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    iget-object v7, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    iget v7, v7, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "|"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    iget-wide v7, v7, Landroid/net/wifi/ScanResult;->timestamp:J

    const/4 v15, 0x0

    sub-long v15, v4, v7

    div-long/2addr v15, v13

    const/4 v7, 0x0

    sub-long v7, v15, v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/ScanResult;

    iget-object v14, v14, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/ScanResult;

    iget v14, v14, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/ScanResult;

    iget-object v14, v14, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/ScanResult;

    iget v14, v14, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "|"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_2
    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\tnull\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/location/f/g;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    if-eqz v2, :cond_6

    new-instance v3, Lcom/baidu/location/f/p;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v2, v4, v5}, Lcom/baidu/location/f/p;-><init>(Ljava/util/List;J)V

    iget-object v2, v1, Lcom/baidu/location/f/a/d;->o:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v4, v1, Lcom/baidu/location/f/a/d;->g:Lcom/baidu/location/f/p;

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/baidu/location/f/a/d;->g:Lcom/baidu/location/f/p;

    invoke-virtual {v1, v3, v4}, Lcom/baidu/location/f/a/d;->a(Lcom/baidu/location/f/p;Lcom/baidu/location/f/p;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    iput-object v3, v1, Lcom/baidu/location/f/a/d;->g:Lcom/baidu/location/f/p;

    :cond_5
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move-object v3, v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :cond_6
    return-void

    :catch_1
    move-exception v0

    move-object v2, v0

    sget-boolean v3, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    return-void
.end method


# virtual methods
.method public a(J)Lcom/baidu/location/f/p;
    .locals 6

    iget-object v0, p0, Lcom/baidu/location/f/a/d;->e:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_4

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gez v2, :cond_4

    sget-boolean v0, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/baidu/location/f/a/d;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wi-Fi diffTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "mLastDiffTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/baidu/location/f/a/d;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/f/g;->a(Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Lcom/baidu/location/f/a/d;->k:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    sget-boolean v0, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/baidu/location/f/a/d;->d:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System.currentTimeMillis() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "wifi diffTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mScanTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/baidu/location/f/a/d;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/f/g;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/f/a/d;->j:J

    sub-long v4, v0, v2

    cmp-long v0, v4, p1

    if-lez v0, :cond_4

    sget-boolean v0, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/baidu/location/f/a/d;->d:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object v0

    const-string v1, "time is over"

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/baidu/location/f/a/d;->d:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object v0

    const-string v1, "diffTime is changed"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/baidu/location/f/g;->a(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/baidu/location/f/a/d;->g()V

    :cond_4
    iput-wide p1, p0, Lcom/baidu/location/f/a/d;->k:J

    iget-object p1, p0, Lcom/baidu/location/f/a/d;->g:Lcom/baidu/location/f/p;

    return-object p1
.end method

.method public a(IZLcom/baidu/location/f/p;I)Ljava/lang/String;
    .locals 34
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    if-eqz v3, :cond_2f

    invoke-virtual/range {p3 .. p3}, Lcom/baidu/location/f/p;->a()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_0

    goto/16 :goto_19

    :cond_0
    :try_start_0
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    const/16 v9, 0x200

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/location/f/a/d;->f()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v1, v11, v5}, Lcom/baidu/location/f/a/d;->a(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v11, :cond_2

    if-eqz v12, :cond_2

    const-string v14, ":"

    const-string v15, ""

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v11

    invoke-static {}, Lcom/baidu/location/f/a/d;->a()Lcom/baidu/location/f/a/d;

    move-result-object v14

    invoke-direct {v14}, Lcom/baidu/location/f/a/d;->h()Ljava/lang/String;

    move-result-object v14

    if-gez v11, :cond_1

    neg-int v11, v11

    :cond_1
    sget-boolean v15, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v15, :cond_3

    sget-boolean v15, Lcom/baidu/location/f/a/d;->d:Z

    if-eqz v15, :cond_3

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object v15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "wifi connected mac = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/baidu/location/f/g;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "wifi connected mac rssi= "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/baidu/location/f/g;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    :cond_3
    :goto_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    const/16 v13, 0x11

    const-wide/16 v16, 0x0

    if-lt v5, v13, :cond_4

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_1

    :catch_0
    move-wide/from16 v18, v16

    :goto_1
    cmp-long v5, v18, v16

    if-lez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    move-wide/from16 v18, v16

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_7

    if-eqz v5, :cond_6

    if-eqz p2, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :cond_7
    :goto_3
    :try_start_2
    iget-object v13, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-le v13, v2, :cond_8

    if-ge v2, v4, :cond_9

    const/4 v13, 0x1

    goto :goto_4

    :cond_8
    move v2, v13

    :cond_9
    const/4 v13, 0x0

    :goto_4
    move-object/from16 v26, v14

    move-wide/from16 v22, v16

    const/4 v7, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_5
    if-ge v15, v2, :cond_1b

    add-int/lit8 v20, v20, 0x1

    move/from16 v27, v2

    iget-object v2, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget-object v2, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    if-nez v2, :cond_a

    goto/16 :goto_11

    :cond_a
    if-eqz v5, :cond_e

    :try_start_3
    iget-object v2, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_6

    move/from16 v28, v5

    :try_start_4
    iget-wide v4, v2, Landroid/net/wifi/ScanResult;->timestamp:J

    const/4 v2, 0x0

    sub-long v29, v18, v4

    const-wide/32 v4, 0xf4240

    div-long v4, v29, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move/from16 v28, v5

    :goto_6
    move-object v2, v0

    :try_start_5
    sget-boolean v4, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v4, :cond_b

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    move-wide/from16 v4, v16

    :goto_7
    sget-boolean v2, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v2, :cond_c

    sget-boolean v2, Lcom/baidu/location/f/a/d;->d:Z

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object v2

    move/from16 v31, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v32, v13

    const-string v13, "wifi noUpdateTime = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/baidu/location/f/g;->a(Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    move/from16 v31, v11

    move/from16 v32, v13

    :goto_8
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmp-long v2, v4, v22

    if-lez v2, :cond_f

    sget-boolean v2, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "wifi maxScanTime = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/baidu/location/f/g;->a(Ljava/lang/String;)V

    :cond_d
    move-wide/from16 v22, v4

    goto :goto_9

    :cond_e
    move/from16 v28, v5

    move/from16 v31, v11

    move/from16 v32, v13

    :cond_f
    :goto_9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_5
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    const/16 v4, 0x17

    if-lt v2, v4, :cond_11

    :try_start_6
    iget-object v2, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    invoke-virtual {v2}, Landroid/net/wifi/ScanResult;->is80211mcResponder()Z

    move-result v2

    if-eqz v2, :cond_11

    if-nez v7, :cond_10

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_a

    :cond_10
    move-object v2, v7

    :goto_a
    :try_start_7
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-object v7, v2

    goto :goto_c

    :catch_3
    move-exception v0

    move-object v7, v2

    goto :goto_b

    :catch_4
    move-exception v0

    :goto_b
    move-object v2, v0

    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11
    :goto_c
    if-eqz v21, :cond_12

    const-string v2, "&wf="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v21, 0x0

    goto :goto_d

    :cond_12
    const-string v2, "|"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "|"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    iget-object v2, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v2, :cond_19

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    if-gez v4, :cond_13

    neg-int v4, v4

    :cond_13
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v11, ";%d;"

    move-object/from16 v33, v7

    const/4 v13, 0x1

    new-array v7, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v13, 0x0

    aput-object v4, v7, v13

    invoke-static {v5, v11, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v25, 0x1

    if-eqz v12, :cond_14

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/baidu/location/f/a/d;->a(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v3, Lcom/baidu/location/f/p;->e:Z
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move/from16 v24, v4

    const/4 v2, 0x1

    goto :goto_e

    :cond_14
    const/4 v2, 0x0

    :goto_e
    if-nez v2, :cond_17

    const/16 v2, 0x1e

    const/4 v7, 0x2

    if-nez v14, :cond_15

    const/16 v5, 0xa

    :try_start_9
    invoke-virtual {v6, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-ne v5, v7, :cond_16

    iget-object v5, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_16

    iget-object v5, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v2, :cond_16

    iget-object v2, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/baidu/location/f/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/baidu/location/f/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x1

    goto :goto_10

    :catch_5
    move-exception v0

    move-object v2, v0

    goto :goto_f

    :cond_15
    const/4 v5, 0x1

    if-ne v14, v5, :cond_16

    const/16 v11, 0x14

    invoke-virtual {v6, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    if-ne v11, v5, :cond_16

    iget-object v5, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_16

    iget-object v5, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v2, :cond_16

    iget-object v2, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/baidu/location/f/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/baidu/location/f/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_6

    const/4 v14, 0x2

    goto :goto_10

    :goto_f
    :try_start_a
    sget-boolean v5, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v5, :cond_16

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16
    :goto_10
    move/from16 v25, v4

    move-object/from16 v7, v33

    goto :goto_12

    :cond_17
    sget-boolean v2, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v2, :cond_18

    sget-boolean v2, Lcom/baidu/location/f/a/d;->d:Z

    if-eqz v2, :cond_18

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wifi str add connected ssid = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    iget-object v7, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/baidu/location/f/g;->a(Ljava/lang/String;)V

    :cond_18
    iget-object v2, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/baidu/location/f/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/baidu/location/f/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_19
    move-object/from16 v33, v7

    goto :goto_12

    :cond_1a
    :goto_11
    move/from16 v28, v5

    move/from16 v31, v11

    move/from16 v32, v13

    :goto_12
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v27

    move/from16 v5, v28

    move/from16 v11, v31

    move/from16 v13, v32

    move/from16 v4, p4

    goto/16 :goto_5

    :cond_1b
    move/from16 v27, v2

    move/from16 v31, v11

    move/from16 v32, v13

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/location/f/a/d;->q:Ljava/lang/String;

    sget-boolean v2, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v2, :cond_1c

    sget-boolean v2, Lcom/baidu/location/f/a/d;->d:Z

    if-eqz v2, :cond_1c

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last wifi str = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/baidu/location/f/a/d;->q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/baidu/location/f/g;->a(Ljava/lang/String;)V

    :cond_1c
    if-eqz v32, :cond_23

    move/from16 v2, v27

    const/4 v15, 0x1

    :goto_13
    iget-object v4, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_23

    const/4 v4, 0x1

    add-int/lit8 v5, v20, 0x1

    iget-object v4, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_21

    iget-object v4, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    if-nez v4, :cond_1d

    goto :goto_15

    :cond_1d
    if-eqz v15, :cond_1e

    const-string v4, "&wf2="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v15, 0x0

    goto :goto_14

    :cond_1e
    const-string v4, "|"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_14
    iget-object v4, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v4, :cond_20

    const-string v6, ":"

    const-string v9, ""

    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v3, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    if-gez v4, :cond_1f

    neg-int v4, v4

    :cond_1f
    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v9, ";%d;"

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v11, 0x0

    aput-object v4, v13, v11

    invoke-static {v6, v9, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_20
    move/from16 v4, p4

    if-lt v5, v4, :cond_22

    goto :goto_16

    :cond_21
    :goto_15
    move/from16 v4, p4

    :cond_22
    add-int/lit8 v2, v2, 0x1

    move/from16 v20, v5

    goto :goto_13

    :cond_23
    :goto_16
    if-nez v21, :cond_2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&wf_n="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v24

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v7, :cond_24

    const-string v2, "&wf_mc="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_24
    if-eqz v12, :cond_25

    move/from16 v11, v31

    const/4 v2, -0x1

    if-eq v11, v2, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&wf_rs="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_25
    const-wide/16 v4, 0xa

    cmp-long v2, v22, v4

    if-lez v2, :cond_2a

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2a

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v16

    if-lez v2, :cond_2a

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v4, 0x80

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v4, "&wf_ut="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x1

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_28

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v7, :cond_26

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    goto :goto_18

    :cond_26
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const/4 v13, 0x0

    sub-long v13, v9, v11

    cmp-long v9, v13, v16

    if-eqz v9, :cond_27

    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :cond_27
    :goto_18
    const-string v9, "|"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_17

    :cond_28
    sget-boolean v4, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v4, :cond_29

    sget-boolean v4, Lcom/baidu/location/f/a/d;->d:Z

    if-eqz v4, :cond_29

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wifi scantime list str = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/location/f/g;->a(Ljava/lang/String;)V

    :cond_29
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2a
    const-string v2, "&wf_st="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v4, v3, Lcom/baidu/location/f/p;->b:J

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, "&wf_et="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v4, v3, Lcom/baidu/location/f/p;->c:J

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, "&wf_vt="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v4, v1, Lcom/baidu/location/f/a/d;->a:J

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    if-lez v15, :cond_2b

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/baidu/location/f/p;->d:Z

    const-string v2, "&wf_en="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v2, v3, Lcom/baidu/location/f/p;->e:Z

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2b
    if-eqz v26, :cond_2c

    const-string v2, "&wf_gw="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v14, v26

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2c
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    return-object v2

    :cond_2d
    const/4 v2, 0x0

    return-object v2

    :catch_6
    move-exception v0

    move-object v2, v0

    sget-boolean v3, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v3, :cond_2e

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2e
    const/4 v2, 0x0

    return-object v2

    :cond_2f
    :goto_19
    move-object v2, v5

    return-object v2
.end method

.method public declared-synchronized a(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    monitor-enter p0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/f/a/d;->l:J

    const/4 v4, 0x0

    sub-long v4, v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v6, v4, v2

    if-lez v6, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/f/a/d;->m:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/baidu/location/f/a/d;->m:Ljava/lang/String;

    :goto_0
    iput-wide v0, p0, Lcom/baidu/location/f/a/d;->l:J

    :cond_2
    iget-object p1, p0, Lcom/baidu/location/f/a/d;->m:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/baidu/location/f/p;ILjava/lang/String;ZI)Ljava/lang/String;
    .locals 23

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/f/p;->a()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v5, v7, :cond_0

    return-object v6

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    const-wide/16 v10, 0x0

    if-lt v8, v9, :cond_2

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    const-wide/16 v13, 0x3e8

    div-long/2addr v8, v13
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v8, v10

    :goto_0
    cmp-long v13, v8, v10

    if-lez v13, :cond_1

    move-wide v13, v8

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    move-wide v13, v8

    goto :goto_1

    :cond_2
    move-wide v13, v10

    :goto_1
    const/4 v8, 0x0

    :goto_2
    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v15, 0x200

    invoke-direct {v9, v15}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v15, v1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    move-wide/from16 v19, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_3
    if-ge v10, v15, :cond_e

    iget-object v6, v1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v6, v1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget v6, v6, Landroid/net/wifi/ScanResult;->level:I

    if-nez v6, :cond_3

    goto/16 :goto_8

    :cond_3
    add-int/lit8 v11, v11, 0x1

    if-eqz v16, :cond_4

    const-string v6, "&wf="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v16, 0x0

    goto :goto_4

    :cond_4
    const-string v6, "|"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    iget-object v6, v1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v12, ":"

    const-string v7, ""

    invoke-virtual {v6, v12, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v3, :cond_5

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move/from16 v18, v11

    :cond_5
    iget-object v6, v1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget v6, v6, Landroid/net/wifi/ScanResult;->level:I

    if-gez v6, :cond_6

    neg-int v6, v6

    :cond_6
    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v12, ";%d;"

    move/from16 v21, v11

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v11, v6

    invoke-static {v7, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v17, 0x1

    if-eqz v8, :cond_a

    :try_start_1
    iget-object v6, v1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-wide v6, v6, Landroid/net/wifi/ScanResult;->timestamp:J

    const/4 v11, 0x0

    sub-long v11, v13, v6

    const-wide/32 v6, 0xf4240

    div-long v6, v11, v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v6, v0

    sget-boolean v7, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    const-wide/16 v6, 0x0

    :goto_5
    sget-boolean v11, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v11, :cond_8

    sget-boolean v11, Lcom/baidu/location/f/a/d;->d:Z

    if-eqz v11, :cond_8

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v8

    const-string v8, "wifi noUpdateTime = "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Lcom/baidu/location/f/g;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    move/from16 v22, v8

    :goto_6
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmp-long v8, v6, v19

    if-lez v8, :cond_b

    sget-boolean v8, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v8, :cond_9

    sget-boolean v8, Lcom/baidu/location/f/a/d;->d:Z

    if-eqz v8, :cond_9

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wifi maxScanTime = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/baidu/location/f/g;->a(Ljava/lang/String;)V

    :cond_9
    move-wide/from16 v19, v6

    goto :goto_7

    :cond_a
    move/from16 v22, v8

    :cond_b
    :goto_7
    if-le v3, v2, :cond_c

    move v7, v3

    goto :goto_a

    :cond_c
    move/from16 v17, v3

    move/from16 v11, v21

    goto :goto_9

    :cond_d
    :goto_8
    move/from16 v22, v8

    :goto_9
    add-int/lit8 v10, v10, 0x1

    move/from16 v8, v22

    move-object/from16 v3, p3

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_3

    :cond_e
    move/from16 v7, v17

    :goto_a
    move/from16 v6, v18

    if-eqz p4, :cond_f

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_f
    if-lez v6, :cond_10

    const-string v3, "&wf_n="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_10
    if-le v7, v2, :cond_14

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-le v4, v2, :cond_14

    move v2, v7

    :goto_b
    if-ge v2, v15, :cond_14

    if-ne v2, v7, :cond_11

    const-string v3, "&wf2="

    :goto_c
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    :cond_11
    const-string v3, "|"

    goto :goto_c

    :goto_d
    iget-object v3, v1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v6, ":"

    const-string v8, ""

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget v3, v3, Landroid/net/wifi/ScanResult;->level:I

    if-gez v3, :cond_12

    neg-int v3, v3

    :cond_12
    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v8, ";%d;"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-static {v6, v8, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-lt v2, v4, :cond_13

    goto :goto_e

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_14
    const/4 v10, 0x1

    :goto_e
    if-eqz v16, :cond_15

    const/4 v1, 0x0

    return-object v1

    :cond_15
    const-wide/16 v1, 0xa

    cmp-long v3, v19, v1

    if-lez v3, :cond_1a

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1a

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-lez v4, :cond_1a

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v3, "&wf_ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v10, :cond_16

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-wide/16 v5, 0x0

    const/4 v10, 0x0

    goto :goto_10

    :cond_16
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v11, v5, v7

    const-wide/16 v5, 0x0

    cmp-long v7, v11, v5

    if-eqz v7, :cond_17

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_17
    :goto_10
    const-string v7, "|"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    :cond_18
    sget-boolean v1, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v1, :cond_19

    sget-boolean v1, Lcom/baidu/location/f/a/d;->d:Z

    if-eqz v1, :cond_19

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifi scantime list str = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/location/f/g;->a(Ljava/lang/String;)V

    :cond_19
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1a
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f/a/d;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/baidu/location/f/a/d;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/baidu/location/f/a/d;->h:Landroid/content/Context;

    iget-object p1, p0, Lcom/baidu/location/f/a/d;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/baidu/location/f/a/d;->e:Landroid/net/wifi/WifiManager;

    new-instance p1, Lcom/baidu/location/f/a/d$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/baidu/location/f/a/d$b;-><init>(Lcom/baidu/location/f/a/d;Lcom/baidu/location/f/a/e;)V

    iput-object p1, p0, Lcom/baidu/location/f/a/d;->f:Lcom/baidu/location/f/a/d$b;

    iget-object p1, p0, Lcom/baidu/location/f/a/d;->p:Landroid/os/Handler;

    if-nez p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/baidu/location/f/a/d;->p:Landroid/os/Handler;

    :cond_1
    if-nez p2, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    const-string p1, "android.net.wifi.SCAN_RESULTS"

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "android.net.wifi.SCAN_RESULTS"

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/f/a/d;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/location/f/a/d;->f:Lcom/baidu/location/f/a/d$b;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-boolean p2, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/f/a/d;->b:Z

    sget-boolean p1, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/baidu/location/f/a/d;->d:Z

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object p1

    const-string p2, "wifimanager start ..."

    invoke-virtual {p1, p2}, Lcom/baidu/location/f/g;->a(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public a(Lcom/baidu/location/f/p;Lcom/baidu/location/f/p;)Z
    .locals 6

    iget-object v0, p1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    iget-object v0, p2, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p2, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    :try_start_0
    iget-object v3, p1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v4, p2, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    sget-boolean p2, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/location/f/a/d;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/f/a/d;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/location/f/a/d;->f:Lcom/baidu/location/f/a/d$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/f/a/d;->a:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/f/a/d;->f:Lcom/baidu/location/f/a/d$b;

    iput-object v0, p0, Lcom/baidu/location/f/a/d;->e:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/f/a/d;->b:Z

    sget-boolean v0, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/baidu/location/f/a/d;->d:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object v0

    const-string v1, "wifimanager stop ..."

    invoke-virtual {v0, v1}, Lcom/baidu/location/f/g;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/f/a/d;->j:J

    return-wide v0
.end method

.method public d()Lcom/baidu/location/f/p;
    .locals 5

    iget-object v0, p0, Lcom/baidu/location/f/a/d;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/f/a/d;->g:Lcom/baidu/location/f/p;

    invoke-direct {p0, v1}, Lcom/baidu/location/f/a/d;->a(Lcom/baidu/location/f/p;)Lcom/baidu/location/f/p;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/baidu/location/f/p;->b()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/location/f/a/d;->e:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/baidu/location/f/p;

    iget-object v2, p0, Lcom/baidu/location/f/a/d;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    iget-wide v3, p0, Lcom/baidu/location/f/a/d;->j:J

    invoke-direct {v0, v2, v3, v4}, Lcom/baidu/location/f/p;-><init>(Ljava/util/List;J)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/baidu/location/f/p;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/baidu/location/f/p;-><init>(Ljava/util/List;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move-object v1, v0

    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/baidu/location/f/a/d;->c:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public e()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/baidu/location/f/a/d;->a()Lcom/baidu/location/f/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/f/a/d;->f()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/baidu/location/f/a/d;->a(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    invoke-static {}, Lcom/baidu/location/f/a/d;->a()Lcom/baidu/location/f/a/d;

    move-result-object v5

    invoke-direct {v5}, Lcom/baidu/location/f/a/d;->h()Ljava/lang/String;

    move-result-object v5

    if-gez v4, :cond_0

    neg-int v4, v4

    :cond_0
    if-eqz v3, :cond_4

    const/16 v6, 0x64

    if-ge v4, v6, :cond_4

    const-string v6, "020000000000"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v2, "&wf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "&"

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&wf_n=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v5, :cond_3

    const-string v1, "&wf_gw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method public f()Landroid/net/wifi/WifiInfo;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/f/a/d;->e:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/f/a/d;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/baidu/location/f/a/d;->a(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    const/16 v4, -0x64

    if-gt v3, v4, :cond_1

    return-object v0

    :cond_1
    if-eqz v2, :cond_3

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "000000000000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "020000000000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    :cond_2
    return-object v0

    :cond_3
    return-object v1

    :catch_0
    :cond_4
    return-object v0
.end method
