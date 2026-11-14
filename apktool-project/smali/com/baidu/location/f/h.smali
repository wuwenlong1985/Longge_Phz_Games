.class public Lcom/baidu/location/f/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/f/h$d;,
        Lcom/baidu/location/f/h$b;,
        Lcom/baidu/location/f/h$c;,
        Lcom/baidu/location/f/h$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Lcom/baidu/location/f/k;

.field private f:Lcom/baidu/location/f/h$b;

.field private g:Landroid/telephony/TelephonyManager;

.field private h:Landroid/net/ConnectivityManager;

.field private i:Landroid/net/wifi/WifiManager;

.field private j:Landroid/os/Handler;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:Z

.field private r:Z

.field private s:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NetLocDataManager"

    iput-object v0, p0, Lcom/baidu/location/f/h;->a:Ljava/lang/String;

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/baidu/location/f/h;->b:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/baidu/location/f/h;->c:I

    const/16 v0, 0x7530

    iput v0, p0, Lcom/baidu/location/f/h;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/f/h;->h:Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/baidu/location/f/h;->i:Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/location/f/h;->j:Landroid/os/Handler;

    iput-object v0, p0, Lcom/baidu/location/f/h;->k:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/f/h;->l:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/location/f/h;->m:J

    iput-wide v1, p0, Lcom/baidu/location/f/h;->n:J

    iput-wide v1, p0, Lcom/baidu/location/f/h;->o:J

    iput-wide v1, p0, Lcom/baidu/location/f/h;->p:J

    iput-boolean v0, p0, Lcom/baidu/location/f/h;->q:Z

    iput-boolean v0, p0, Lcom/baidu/location/f/h;->r:Z

    iput-wide v1, p0, Lcom/baidu/location/f/h;->s:J

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/f/h;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/f/h;->n:J

    return-wide p1
.end method

.method static synthetic a(Lcom/baidu/location/f/h;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/f/h;->j:Landroid/os/Handler;

    return-object p0
.end method

.method public static a()Lcom/baidu/location/f/h;
    .locals 1

    invoke-static {}, Lcom/baidu/location/f/h$a;->a()Lcom/baidu/location/f/h;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/telephony/CellInfo;Landroid/telephony/TelephonyManager;)Lcom/baidu/location/f/m;
    .locals 12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    instance-of v2, p1, Landroid/telephony/CellInfoGsm;

    const/16 v3, 0x1c

    const-wide/32 v4, 0xf4240

    const/16 v6, 0x1e

    const/4 v7, 0x1

    const v8, 0x7fffffff

    if-eqz v2, :cond_6

    new-instance p2, Lcom/baidu/location/f/m;

    invoke-direct {p2}, Lcom/baidu/location/f/m;-><init>()V

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v2

    iput v7, p2, Lcom/baidu/location/f/m;->a:I

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v9

    if-eqz v9, :cond_1

    iput v7, p2, Lcom/baidu/location/f/m;->d:I

    :cond_1
    if-lt v0, v3, :cond_2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getMccString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/baidu/location/f/m;->b:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getMncString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/baidu/location/f/m;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellConnectionStatus()I

    move-result v1

    iput v1, p2, Lcom/baidu/location/f/m;->f:I

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v3

    if-ne v3, v8, :cond_3

    move-object v3, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p2, Lcom/baidu/location/f/m;->b:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v3

    if-ne v3, v8, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p2, Lcom/baidu/location/f/m;->c:Ljava/lang/String;

    :goto_2
    if-lt v0, v6, :cond_5

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getTimestampMillis()J

    move-result-wide v2

    const/4 p1, 0x0

    sub-long v4, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 p1, 0x0

    sub-long v2, v0, v4

    iput-wide v2, p2, Lcom/baidu/location/f/m;->e:J

    return-object p2

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide v2

    const/4 p1, 0x0

    sub-long v6, v0, v2

    div-long/2addr v6, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 p1, 0x0

    sub-long v2, v0, v6

    iput-wide v2, p2, Lcom/baidu/location/f/m;->e:J
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/baidu/location/f/m;->e:J

    return-object p2

    :cond_6
    instance-of v2, p1, Landroid/telephony/CellInfoCdma;

    const/4 v9, 0x3

    if-eqz v2, :cond_c

    new-instance v2, Lcom/baidu/location/f/m;

    invoke-direct {v2}, Lcom/baidu/location/f/m;-><init>()V

    move-object v10, p1

    check-cast v10, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v10}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v10

    const/4 v11, 0x2

    iput v11, v2, Lcom/baidu/location/f/m;->a:I

    invoke-virtual {v10}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v11

    if-ne v11, v8, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v10}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, v2, Lcom/baidu/location/f/m;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_8

    iput v7, v2, Lcom/baidu/location/f/m;->d:I

    :cond_8
    if-lt v0, v3, :cond_9

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellConnectionStatus()I

    move-result v1

    iput v1, v2, Lcom/baidu/location/f/m;->f:I

    :cond_9
    :try_start_1
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v9, :cond_a

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lcom/baidu/location/f/m;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_a
    if-lt v0, v6, :cond_b

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getTimestampMillis()J

    move-result-wide p1

    const/4 v3, 0x0

    sub-long v3, v0, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const/4 v0, 0x0

    sub-long v0, p1, v3

    iput-wide v0, v2, Lcom/baidu/location/f/m;->e:J

    goto :goto_4

    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide p1

    const/4 v3, 0x0

    sub-long v6, v0, p1

    div-long/2addr v6, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const/4 v0, 0x0

    sub-long v0, p1, v6

    iput-wide v0, v2, Lcom/baidu/location/f/m;->e:J
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/baidu/location/f/m;->e:J

    :goto_4
    move-object p2, v2

    return-object p2

    :cond_c
    instance-of p2, p1, Landroid/telephony/CellInfoWcdma;

    if-eqz p2, :cond_12

    new-instance p2, Lcom/baidu/location/f/m;

    invoke-direct {p2}, Lcom/baidu/location/f/m;-><init>()V

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    const/4 v9, 0x4

    iput v9, p2, Lcom/baidu/location/f/m;->a:I

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v9

    if-eqz v9, :cond_d

    iput v7, p2, Lcom/baidu/location/f/m;->d:I

    :cond_d
    if-lt v0, v3, :cond_e

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getMccString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/baidu/location/f/m;->b:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getMncString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/baidu/location/f/m;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellConnectionStatus()I

    move-result v1

    iput v1, p2, Lcom/baidu/location/f/m;->f:I

    goto :goto_7

    :cond_e
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v3

    if-ne v3, v8, :cond_f

    move-object v3, v1

    goto :goto_5

    :cond_f
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_5
    iput-object v3, p2, Lcom/baidu/location/f/m;->b:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v3

    if-ne v3, v8, :cond_10

    goto :goto_6

    :cond_10
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_6
    iput-object v1, p2, Lcom/baidu/location/f/m;->c:Ljava/lang/String;

    :goto_7
    if-lt v0, v6, :cond_11

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getTimestampMillis()J

    move-result-wide v2

    const/4 p1, 0x0

    sub-long v4, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 p1, 0x0

    sub-long v2, v0, v4

    iput-wide v2, p2, Lcom/baidu/location/f/m;->e:J

    return-object p2

    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide v2

    const/4 p1, 0x0

    sub-long v6, v0, v2

    div-long/2addr v6, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 p1, 0x0

    sub-long v2, v0, v6

    iput-wide v2, p2, Lcom/baidu/location/f/m;->e:J
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0

    return-object p2

    :cond_12
    const/16 p2, 0x1d

    if-lt v0, p2, :cond_15

    instance-of v2, p1, Landroid/telephony/CellInfoTdscdma;

    if-eqz v2, :cond_15

    new-instance v1, Lcom/baidu/location/f/m;

    invoke-direct {v1}, Lcom/baidu/location/f/m;-><init>()V

    move-object p2, p1

    check-cast p2, Landroid/telephony/CellInfoTdscdma;

    invoke-virtual {p2}, Landroid/telephony/CellInfoTdscdma;->getCellIdentity()Landroid/telephony/CellIdentityTdscdma;

    move-result-object p2

    const/4 v2, 0x5

    iput v2, v1, Lcom/baidu/location/f/m;->a:I

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_13

    iput v7, v1, Lcom/baidu/location/f/m;->d:I

    :cond_13
    invoke-virtual {p2}, Landroid/telephony/CellIdentityTdscdma;->getMccString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/location/f/m;->b:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/telephony/CellIdentityTdscdma;->getMncString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/baidu/location/f/m;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellConnectionStatus()I

    move-result p2

    iput p2, v1, Lcom/baidu/location/f/m;->f:I

    if-lt v0, v6, :cond_14

    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getTimestampMillis()J

    move-result-wide p1

    const/4 v0, 0x0

    sub-long v4, v2, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const/4 v0, 0x0

    sub-long v2, p1, v4

    iput-wide v2, v1, Lcom/baidu/location/f/m;->e:J

    goto/16 :goto_a

    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide p1

    const/4 v0, 0x0

    sub-long v6, v2, p1

    div-long/2addr v6, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const/4 v0, 0x0

    sub-long v2, p1, v6

    iput-wide v2, v1, Lcom/baidu/location/f/m;->e:J
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_a

    :catch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v1, Lcom/baidu/location/f/m;->e:J

    goto/16 :goto_a

    :cond_15
    instance-of v2, p1, Landroid/telephony/CellInfoLte;

    if-eqz v2, :cond_1f

    new-instance v1, Lcom/baidu/location/f/n;

    invoke-direct {v1}, Lcom/baidu/location/f/n;-><init>()V

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v10

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v2

    move-object v11, v1

    check-cast v11, Lcom/baidu/location/f/n;

    iput v9, v11, Lcom/baidu/location/f/n;->a:I

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v9

    if-eqz v9, :cond_16

    iput v7, v11, Lcom/baidu/location/f/n;->d:I

    :cond_16
    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v7

    iput v7, v11, Lcom/baidu/location/f/n;->h:I

    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v7

    iput v7, v11, Lcom/baidu/location/f/n;->i:I

    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v7

    iput v7, v11, Lcom/baidu/location/f/n;->j:I

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->getTimingAdvance()I

    move-result v7

    iput v7, v11, Lcom/baidu/location/f/n;->r:I

    if-lt v0, v3, :cond_17

    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getMccString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/baidu/location/f/n;->b:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getMncString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/baidu/location/f/n;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellConnectionStatus()I

    move-result v3

    iput v3, v11, Lcom/baidu/location/f/n;->f:I

    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getBandwidth()I

    move-result v3

    iput v3, v11, Lcom/baidu/location/f/n;->l:I

    goto :goto_8

    :cond_17
    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v3

    if-eq v3, v8, :cond_18

    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/baidu/location/f/n;->b:Ljava/lang/String;

    :cond_18
    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v3

    if-eq v3, v8, :cond_19

    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/baidu/location/f/n;->c:Ljava/lang/String;

    :cond_19
    :goto_8
    const/16 v3, 0x18

    if-lt v0, v3, :cond_1a

    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result v3

    iput v3, v11, Lcom/baidu/location/f/n;->k:I

    :cond_1a
    if-lt v0, p2, :cond_1b

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->getRssi()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, v11, Lcom/baidu/location/f/n;->m:I

    :cond_1b
    const/16 p2, 0x1a

    if-lt v0, p2, :cond_1d

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, v11, Lcom/baidu/location/f/n;->n:I

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, v11, Lcom/baidu/location/f/n;->g:I

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->getRsrq()I

    move-result p2

    iput p2, v11, Lcom/baidu/location/f/n;->o:I

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->getRssnr()I

    move-result p2

    if-ne p2, v8, :cond_1c

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-direct {p0}, Lcom/baidu/location/f/h;->w()I

    move-result p2

    :cond_1c
    iput p2, v11, Lcom/baidu/location/f/n;->p:I

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->getCqi()I

    move-result p2

    iput p2, v11, Lcom/baidu/location/f/n;->q:I

    :cond_1d
    if-lt v0, v6, :cond_1e

    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getTimestampMillis()J

    move-result-wide p1

    const/4 v0, 0x0

    sub-long v4, v2, p1

    move-object p1, v1

    check-cast p1, Lcom/baidu/location/f/n;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 p2, 0x0

    sub-long v6, v2, v4

    iput-wide v6, p1, Lcom/baidu/location/f/n;->e:J

    goto/16 :goto_a

    :cond_1e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide p1

    const/4 v0, 0x0

    sub-long v6, v2, p1

    div-long/2addr v6, v4

    move-object p1, v1

    check-cast p1, Lcom/baidu/location/f/n;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 p2, 0x0

    sub-long v4, v2, v6

    iput-wide v4, p1, Lcom/baidu/location/f/n;->e:J
    :try_end_5
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_a

    :catch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v11, Lcom/baidu/location/f/n;->e:J

    goto/16 :goto_a

    :cond_1f
    if-lt v0, p2, :cond_25

    instance-of p2, p1, Landroid/telephony/CellInfoNr;

    if-eqz p2, :cond_25

    new-instance p2, Lcom/baidu/location/f/o;

    invoke-direct {p2}, Lcom/baidu/location/f/o;-><init>()V

    :try_start_6
    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoNr;

    invoke-virtual {v2}, Landroid/telephony/CellInfoNr;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellIdentityNr;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    move-object v1, v2

    goto :goto_9

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_9
    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoNr;

    invoke-virtual {v2}, Landroid/telephony/CellInfoNr;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellSignalStrengthNr;

    if-eqz v1, :cond_22

    move-object v3, p2

    check-cast v3, Lcom/baidu/location/f/o;

    const/4 v9, 0x6

    iput v9, v3, Lcom/baidu/location/f/o;->a:I

    invoke-virtual {v1}, Landroid/telephony/CellIdentityNr;->getMccString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/baidu/location/f/o;->b:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityNr;->getMncString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/baidu/location/f/o;->c:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide v9

    iput-wide v9, v3, Lcom/baidu/location/f/o;->h:J

    invoke-virtual {v1}, Landroid/telephony/CellIdentityNr;->getPci()I

    move-result v9

    iput v9, v3, Lcom/baidu/location/f/o;->i:I

    invoke-virtual {v1}, Landroid/telephony/CellIdentityNr;->getTac()I

    move-result v9

    iput v9, v3, Lcom/baidu/location/f/o;->j:I

    iget v9, v3, Lcom/baidu/location/f/o;->j:I

    if-ne v9, v8, :cond_20

    :try_start_7
    invoke-virtual {p0, v1}, Lcom/baidu/location/f/h;->a(Landroid/telephony/CellIdentityNr;)I

    move-result v9

    move-object v10, p2

    check-cast v10, Lcom/baidu/location/f/o;

    iput v9, v10, Lcom/baidu/location/f/o;->j:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_20
    iget v9, v3, Lcom/baidu/location/f/o;->j:I

    if-ne v9, v8, :cond_21

    :try_start_8
    invoke-virtual {v1}, Landroid/telephony/CellIdentityNr;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/baidu/location/f/h;->a(Ljava/lang/String;)I

    move-result v8

    move-object v9, p2

    check-cast v9, Lcom/baidu/location/f/o;

    iput v8, v9, Lcom/baidu/location/f/o;->j:I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_21
    invoke-virtual {v1}, Landroid/telephony/CellIdentityNr;->getNrarfcn()I

    move-result v1

    iput v1, v3, Lcom/baidu/location/f/o;->k:I

    :cond_22
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_23

    move-object v1, p2

    check-cast v1, Lcom/baidu/location/f/o;

    iput v7, v1, Lcom/baidu/location/f/o;->d:I

    :cond_23
    move-object v1, p2

    check-cast v1, Lcom/baidu/location/f/o;

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellConnectionStatus()I

    move-result v3

    iput v3, v1, Lcom/baidu/location/f/o;->f:I

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthNr;->getSsRsrp()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/location/f/o;->l:I

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthNr;->getSsRsrp()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/location/f/o;->g:I

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthNr;->getSsRsrq()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/location/f/o;->m:I

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthNr;->getSsSinr()I

    move-result v3

    iput v3, v1, Lcom/baidu/location/f/o;->n:I

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthNr;->getCsiRsrp()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/location/f/o;->o:I

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthNr;->getCsiRsrq()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, v1, Lcom/baidu/location/f/o;->p:I

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthNr;->getCsiSinr()I

    move-result v2

    iput v2, v1, Lcom/baidu/location/f/o;->q:I

    if-lt v0, v6, :cond_24

    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getTimestampMillis()J

    move-result-wide v4

    const/4 p1, 0x0

    sub-long v6, v2, v4

    move-object p1, p2

    check-cast p1, Lcom/baidu/location/f/o;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    sub-long v4, v2, v6

    iput-wide v4, p1, Lcom/baidu/location/f/o;->e:J

    return-object p2

    :cond_24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide v6

    const/4 p1, 0x0

    sub-long v8, v2, v6

    div-long/2addr v8, v4

    move-object p1, p2

    check-cast p1, Lcom/baidu/location/f/o;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    sub-long v4, v2, v8

    iput-wide v4, p1, Lcom/baidu/location/f/o;->e:J
    :try_end_9
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_8

    return-object p2

    :catch_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/location/f/o;->e:J

    return-object p2

    :cond_25
    :goto_a
    move-object p2, v1

    return-object p2
.end method

.method private a(Ljava/util/List;Landroid/telephony/TelephonyManager;I[IZI)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;",
            "Landroid/telephony/TelephonyManager;",
            "I[IZI)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-eq p3, v1, :cond_1

    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object p3

    iget p3, p3, Lcom/baidu/location/b/e;->cb:I

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object p3

    iget p3, p3, Lcom/baidu/location/b/e;->cb:I

    if-eq p3, v1, :cond_2

    if-eqz p5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/CellInfo;

    invoke-direct {p0, p3, p2}, Lcom/baidu/location/f/h;->a(Landroid/telephony/CellInfo;Landroid/telephony/TelephonyManager;)Lcom/baidu/location/f/m;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v0, p6}, Lcom/baidu/location/f/h;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p4, v1}, Lcom/baidu/location/f/h;->a(Ljava/util/List;[IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/List;[IZ)Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/location/f/m;",
            ">;[IZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_32

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v2, Lcom/baidu/location/pb/CellValueList;

    invoke-direct {v2}, Lcom/baidu/location/pb/CellValueList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/f/m;

    new-instance v5, Lcom/baidu/location/pb/CellValue;

    invoke-direct {v5}, Lcom/baidu/location/pb/CellValue;-><init>()V

    new-instance v6, Lcom/baidu/location/pb/CellCommonValue;

    invoke-direct {v6}, Lcom/baidu/location/pb/CellCommonValue;-><init>()V

    iget v7, v3, Lcom/baidu/location/f/m;->a:I

    invoke-virtual {v6, v7}, Lcom/baidu/location/pb/CellCommonValue;->setCellType(I)Lcom/baidu/location/pb/CellCommonValue;

    iget-object v7, v3, Lcom/baidu/location/f/m;->b:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v3, Lcom/baidu/location/f/m;->b:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/location/pb/CellCommonValue;->setMcc(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/baidu/location/pb/CellCommonValue;

    :cond_1
    iget-object v7, v3, Lcom/baidu/location/f/m;->c:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, v3, Lcom/baidu/location/f/m;->c:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/location/pb/CellCommonValue;->setMnc(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/baidu/location/pb/CellCommonValue;

    :cond_2
    iget v7, v3, Lcom/baidu/location/f/m;->d:I

    invoke-virtual {v6, v7}, Lcom/baidu/location/pb/CellCommonValue;->setRegistered(I)Lcom/baidu/location/pb/CellCommonValue;

    iget-wide v7, v3, Lcom/baidu/location/f/m;->e:J

    invoke-virtual {v6, v7, v8}, Lcom/baidu/location/pb/CellCommonValue;->setTimestamp(J)Lcom/baidu/location/pb/CellCommonValue;

    iget v7, v3, Lcom/baidu/location/f/m;->f:I

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_3

    iget v7, v3, Lcom/baidu/location/f/m;->f:I

    invoke-virtual {v6, v7}, Lcom/baidu/location/pb/CellCommonValue;->setCellconnectionstatus(I)Lcom/baidu/location/pb/CellCommonValue;

    :cond_3
    if-nez p3, :cond_4

    invoke-virtual {v5, v6}, Lcom/baidu/location/pb/CellValue;->setCellCommonValue(Lcom/baidu/location/pb/CellCommonValue;)Lcom/baidu/location/pb/CellValue;

    :cond_4
    instance-of v6, v3, Lcom/baidu/location/f/n;

    const/4 v7, 0x2

    const/4 v9, 0x1

    if-eqz v6, :cond_1b

    new-instance v6, Lcom/baidu/location/pb/LteCellValue;

    invoke-direct {v6}, Lcom/baidu/location/pb/LteCellValue;-><init>()V

    check-cast v3, Lcom/baidu/location/f/n;

    iget v10, v3, Lcom/baidu/location/f/n;->h:I

    if-eq v10, v8, :cond_6

    if-eqz p3, :cond_5

    aget v4, p2, v4

    if-ne v4, v9, :cond_6

    :cond_5
    iget v4, v3, Lcom/baidu/location/f/n;->h:I

    invoke-virtual {v6, v4}, Lcom/baidu/location/pb/LteCellValue;->setCi(I)Lcom/baidu/location/pb/LteCellValue;

    :cond_6
    iget v4, v3, Lcom/baidu/location/f/n;->i:I

    if-eq v4, v8, :cond_8

    if-eqz p3, :cond_7

    aget v4, p2, v9

    if-ne v4, v9, :cond_8

    :cond_7
    iget v4, v3, Lcom/baidu/location/f/n;->i:I

    invoke-virtual {v6, v4}, Lcom/baidu/location/pb/LteCellValue;->setPci(I)Lcom/baidu/location/pb/LteCellValue;

    :cond_8
    iget v4, v3, Lcom/baidu/location/f/n;->j:I

    if-eq v4, v8, :cond_a

    if-eqz p3, :cond_9

    aget v4, p2, v7

    if-ne v4, v9, :cond_a

    :cond_9
    iget v4, v3, Lcom/baidu/location/f/n;->j:I

    invoke-virtual {v6, v4}, Lcom/baidu/location/pb/LteCellValue;->setTac(I)Lcom/baidu/location/pb/LteCellValue;

    :cond_a
    iget v4, v3, Lcom/baidu/location/f/n;->k:I

    if-eq v4, v8, :cond_c

    if-eqz p3, :cond_b

    const/4 v4, 0x3

    aget v4, p2, v4

    if-ne v4, v9, :cond_c

    :cond_b
    iget v4, v3, Lcom/baidu/location/f/n;->k:I

    invoke-virtual {v6, v4}, Lcom/baidu/location/pb/LteCellValue;->setEarfcn(I)Lcom/baidu/location/pb/LteCellValue;

    :cond_c
    iget v4, v3, Lcom/baidu/location/f/n;->l:I

    if-eq v4, v8, :cond_e

    if-eqz p3, :cond_d

    const/4 v4, 0x4

    aget v4, p2, v4

    if-ne v4, v9, :cond_e

    :cond_d
    iget v4, v3, Lcom/baidu/location/f/n;->l:I

    invoke-virtual {v6, v4}, Lcom/baidu/location/pb/LteCellValue;->setBandwidth(I)Lcom/baidu/location/pb/LteCellValue;

    :cond_e
    iget v4, v3, Lcom/baidu/location/f/n;->m:I

    if-eq v4, v8, :cond_10

    if-eqz p3, :cond_f

    const/4 v4, 0x5

    aget v4, p2, v4

    if-ne v4, v9, :cond_10

    :cond_f
    iget v4, v3, Lcom/baidu/location/f/n;->m:I

    invoke-virtual {v6, v4}, Lcom/baidu/location/pb/LteCellValue;->setRssi(I)Lcom/baidu/location/pb/LteCellValue;

    :cond_10
    iget v4, v3, Lcom/baidu/location/f/n;->n:I

    if-eq v4, v8, :cond_12

    if-eqz p3, :cond_11

    const/4 v4, 0x6

    aget v4, p2, v4

    if-ne v4, v9, :cond_12

    :cond_11
    iget v4, v3, Lcom/baidu/location/f/n;->n:I

    invoke-virtual {v6, v4}, Lcom/baidu/location/pb/LteCellValue;->setRsrp(I)Lcom/baidu/location/pb/LteCellValue;

    :cond_12
    iget v4, v3, Lcom/baidu/location/f/n;->o:I

    if-eq v4, v8, :cond_14

    if-eqz p3, :cond_13

    const/4 v4, 0x7

    aget v4, p2, v4

    if-ne v4, v9, :cond_14

    :cond_13
    iget v4, v3, Lcom/baidu/location/f/n;->o:I

    invoke-virtual {v6, v4}, Lcom/baidu/location/pb/LteCellValue;->setRsrq(I)Lcom/baidu/location/pb/LteCellValue;

    :cond_14
    iget v4, v3, Lcom/baidu/location/f/n;->p:I

    if-eq v4, v8, :cond_16

    if-eqz p3, :cond_15

    const/16 v4, 0x8

    aget v4, p2, v4

    if-ne v4, v9, :cond_16

    :cond_15
    iget v4, v3, Lcom/baidu/location/f/n;->p:I

    invoke-virtual {v6, v4}, Lcom/baidu/location/pb/LteCellValue;->setRssnr(I)Lcom/baidu/location/pb/LteCellValue;

    :cond_16
    iget v4, v3, Lcom/baidu/location/f/n;->q:I

    if-eq v4, v8, :cond_18

    if-eqz p3, :cond_17

    const/16 v4, 0x9

    aget v4, p2, v4

    if-ne v4, v9, :cond_18

    :cond_17
    iget v4, v3, Lcom/baidu/location/f/n;->q:I

    invoke-virtual {v6, v4}, Lcom/baidu/location/pb/LteCellValue;->setCqi(I)Lcom/baidu/location/pb/LteCellValue;

    :cond_18
    iget v4, v3, Lcom/baidu/location/f/n;->r:I

    if-eq v4, v8, :cond_1a

    if-eqz p3, :cond_19

    const/16 v4, 0xa

    aget v4, p2, v4

    if-ne v4, v9, :cond_1a

    :cond_19
    iget v3, v3, Lcom/baidu/location/f/n;->r:I

    invoke-virtual {v6, v3}, Lcom/baidu/location/pb/LteCellValue;->setTimingadvance(I)Lcom/baidu/location/pb/LteCellValue;

    :cond_1a
    invoke-virtual {v5, v6}, Lcom/baidu/location/pb/CellValue;->setLteCellValue(Lcom/baidu/location/pb/LteCellValue;)Lcom/baidu/location/pb/CellValue;

    goto/16 :goto_1

    :cond_1b
    instance-of v6, v3, Lcom/baidu/location/f/o;

    if-eqz v6, :cond_30

    new-instance v6, Lcom/baidu/location/pb/NrCellValue;

    invoke-direct {v6}, Lcom/baidu/location/pb/NrCellValue;-><init>()V

    check-cast v3, Lcom/baidu/location/f/o;

    iget-wide v10, v3, Lcom/baidu/location/f/o;->h:J

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v14, v10, v12

    if-eqz v14, :cond_1d

    if-eqz p3, :cond_1c

    aget v4, p2, v4

    if-ne v4, v9, :cond_1d

    :cond_1c
    iget-wide v10, v3, Lcom/baidu/location/f/o;->h:J

    invoke-virtual {v6, v10, v11}, Lcom/baidu/location/pb/NrCellValue;->setCi(J)Lcom/baidu/location/pb/NrCellValue;

    :cond_1d
    iget v4, v3, Lcom/baidu/location/f/o;->i:I

    if-eq v4, v8, :cond_1f

    if-eqz p3, :cond_1e

    aget v4, p2, v9

    if-ne v4, v9, :cond_1f

    :cond_1e
    iget v4, v3, Lcom/baidu/location/f/o;->i:I

    invoke-virtual {v6, v4}, Lcom/baidu/location/pb/NrCellValue;->setPci(I)Lcom/baidu/location/pb/NrCellValue;

    :cond_1f
    iget v4, v3, Lcom/baidu/location/f/o;->j:I

    if-eq v4, v8, :cond_21

    if-eqz p3, :cond_20

    aget v4, p2, v7

    if-ne v4, v9, :cond_21

    :cond_20
    iget v4, v3, Lcom/baidu/location/f/o;->j:I

    invoke-virtual {v6, v4}, Lcom/baidu/location/pb/NrCellValue;->setTac(I)Lcom/baidu/location/pb/NrCellValue;

    :cond_21
    iget v4, v3, Lcom/baidu/location/f/o;->k:I

    if-eq v4, v8, :cond_23

    if-eqz p3, :cond_22

    const/16 v4, 0xb

    aget v4, p2, v4

    if-ne v4, v9, :cond_23

    :cond_22
    iget v4, v3, Lcom/baidu/location/f/o;->k:I

    invoke-virtual {v6, v4}, Lcom/baidu/location/pb/NrCellValue;->setNrarfcn(I)Lcom/baidu/location/pb/NrCellValue;

    :cond_23
    iget v4, v3, Lcom/baidu/location/f/o;->l:I

    if-eq v4, v8, :cond_25

    if-eqz p3, :cond_24

    const/16 v4, 0xc

    aget v4, p2, v4

    if-ne v4, v9, :cond_25

    :cond_24
    iget v4, v3, Lcom/baidu/location/f/o;->l:I

    invoke-virtual {v6, v4}, Lcom/baidu/location/pb/NrCellValue;->setSsrsrp(I)Lcom/baidu/location/pb/NrCellValue;

    :cond_25
    iget v4, v3, Lcom/baidu/location/f/o;->m:I

    if-eq v4, v8, :cond_27

    if-eqz p3, :cond_26

    const/16 v4, 0xd

    aget v4, p2, v4

    if-ne v4, v9, :cond_27

    :cond_26
    iget v4, v3, Lcom/baidu/location/f/o;->m:I

    invoke-virtual {v6, v4}, Lcom/baidu/location/pb/NrCellValue;->setSsrsrq(I)Lcom/baidu/location/pb/NrCellValue;

    :cond_27
    iget v4, v3, Lcom/baidu/location/f/o;->n:I

    if-eq v4, v8, :cond_29

    if-eqz p3, :cond_28

    const/16 v4, 0xe

    aget v4, p2, v4

    if-ne v4, v9, :cond_29

    :cond_28
    iget v4, v3, Lcom/baidu/location/f/o;->n:I

    invoke-virtual {v6, v4}, Lcom/baidu/location/pb/NrCellValue;->setSssinr(I)Lcom/baidu/location/pb/NrCellValue;

    :cond_29
    iget v4, v3, Lcom/baidu/location/f/o;->o:I

    if-eq v4, v8, :cond_2b

    if-eqz p3, :cond_2a

    const/16 v4, 0xf

    aget v4, p2, v4

    if-ne v4, v9, :cond_2b

    :cond_2a
    iget v4, v3, Lcom/baidu/location/f/o;->o:I

    invoke-virtual {v6, v4}, Lcom/baidu/location/pb/NrCellValue;->setCsirsrp(I)Lcom/baidu/location/pb/NrCellValue;

    :cond_2b
    iget v4, v3, Lcom/baidu/location/f/o;->p:I

    if-eq v4, v8, :cond_2d

    if-eqz p3, :cond_2c

    const/16 v4, 0x10

    aget v4, p2, v4

    if-ne v4, v9, :cond_2d

    :cond_2c
    iget v4, v3, Lcom/baidu/location/f/o;->p:I

    invoke-virtual {v6, v4}, Lcom/baidu/location/pb/NrCellValue;->setCsirsrq(I)Lcom/baidu/location/pb/NrCellValue;

    :cond_2d
    iget v4, v3, Lcom/baidu/location/f/o;->q:I

    if-eq v4, v8, :cond_2f

    if-eqz p3, :cond_2e

    const/16 v4, 0x11

    aget v4, p2, v4

    if-ne v4, v9, :cond_2f

    :cond_2e
    iget v3, v3, Lcom/baidu/location/f/o;->q:I

    invoke-virtual {v6, v3}, Lcom/baidu/location/pb/NrCellValue;->setCsisinr(I)Lcom/baidu/location/pb/NrCellValue;

    :cond_2f
    invoke-virtual {v5, v6}, Lcom/baidu/location/pb/CellValue;->setNrCellValue(Lcom/baidu/location/pb/NrCellValue;)Lcom/baidu/location/pb/CellValue;

    :cond_30
    :goto_1
    invoke-virtual {v2, v5}, Lcom/baidu/location/pb/CellValueList;->addCellValue(Lcom/baidu/location/pb/CellValue;)Lcom/baidu/location/pb/CellValueList;

    goto/16 :goto_0

    :cond_31
    invoke-virtual {v2}, Lcom/baidu/location/pb/CellValueList;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_32
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/location/f/m;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/baidu/location/f/m;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/baidu/location/f/h$d;

    invoke-direct {v2, v1}, Lcom/baidu/location/f/h$d;-><init>(Lcom/baidu/location/f/i;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/telephony/TelephonyManager;I[IZI)V
    .locals 7

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/baidu/location/f/h;->a(Ljava/util/List;Landroid/telephony/TelephonyManager;I[IZI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/f/h;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private a(Lcom/baidu/location/f/a;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/baidu/location/f/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/f/h;->l:Z

    return p1
.end method

.method private a(Lcom/baidu/location/f/p;J)Z
    .locals 19

    move-object/from16 v0, p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0x11

    if-lt v1, v8, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    div-long/2addr v8, v3
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v8, v6

    :goto_0
    cmp-long v1, v8, v6

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    move-wide v8, v6

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    return v5

    :cond_2
    iget-object v10, v0, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    if-eqz v10, :cond_b

    iget-object v10, v0, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_3

    return v5

    :cond_3
    iget-object v10, v0, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/16 v11, 0x10

    if-le v10, v11, :cond_4

    const/16 v10, 0x10

    :cond_4
    move-wide v12, v6

    move-wide v14, v12

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_8

    iget-object v2, v0, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_7

    :try_start_1
    iget-object v2, v0, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-wide v6, v2, Landroid/net/wifi/ScanResult;->timestamp:J

    const/4 v2, 0x0

    sub-long v17, v8, v6

    const-wide/32 v6, 0xf4240

    div-long v6, v17, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const-wide/16 v6, 0x0

    :goto_3
    const/4 v2, 0x0

    add-long v17, v12, v6

    cmp-long v2, v6, v14

    if-lez v2, :cond_6

    move-wide v14, v6

    :cond_6
    move-wide/from16 v12, v17

    :cond_7
    :goto_4
    add-int/lit8 v11, v11, 0x1

    const-wide/16 v6, 0x0

    goto :goto_2

    :cond_8
    int-to-long v1, v10

    div-long/2addr v12, v1

    mul-long v14, v14, v3

    cmp-long v0, v14, p2

    if-gtz v0, :cond_a

    mul-long v12, v12, v3

    cmp-long v0, v12, p2

    if-lez v0, :cond_9

    goto :goto_5

    :cond_9
    const/16 v16, 0x0

    return v16

    :cond_a
    :goto_5
    const/16 v16, 0x1

    return v16

    :cond_b
    return v5
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object v1

    iget v1, v1, Lcom/baidu/location/b/e;->dm:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object v1

    iget v1, v1, Lcom/baidu/location/b/e;->dm:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "&"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ";"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method static synthetic b(Lcom/baidu/location/f/h;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/f/h;->l:Z

    return p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
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

.method private declared-synchronized v()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/f/h;->k:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/f/h;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f/h;->k:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private w()I
    .locals 3

    const v0, 0x7fffffff

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/f/h;->g:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/f/h;->g:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    const-string v2, "getLteRssnr"

    invoke-static {v1, v2}, Lcom/baidu/location/h/s;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public a(Landroid/telephony/CellIdentityNr;)I
    .locals 1

    :try_start_0
    const-string v0, "getHwTac"

    invoke-static {p1, v0}, Lcom/baidu/location/h/s;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method public a(Lcom/baidu/location/f/p;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/baidu/location/f/p;->a()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    neg-int v2, v2

    if-lez v2, :cond_1

    return v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    const-string v1, "mNrTac"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "mNrTac=(.+?)\\}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :catch_0
    const/4 v1, -0x1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method public a(Lcom/baidu/location/f/a;Landroid/telephony/TelephonyManager;)Lcom/baidu/location/f/a;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/location/f/k;->a(Lcom/baidu/location/f/a;Landroid/telephony/TelephonyManager;)Lcom/baidu/location/f/a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)Lcom/baidu/location/f/p;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v0, p1}, Lcom/baidu/location/f/k;->e(I)Lcom/baidu/location/f/p;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILcom/baidu/location/f/p;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p2}, Lcom/baidu/location/f/p;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v3, 0x200

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v3, p2, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_1
    if-ge v4, p1, :cond_6

    iget-object v6, p2, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p2, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget v6, v6, Landroid/net/wifi/ScanResult;->level:I

    if-eqz v6, :cond_5

    iget-object v6, p2, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const-string v6, "|"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    iget-object v6, p2, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p2, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget v6, v6, Landroid/net/wifi/ScanResult;->level:I

    if-gez v6, :cond_4

    neg-int v6, v6

    :cond_4
    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v8, ";%d;"

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v3

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    if-nez v5, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v1
.end method

.method public a(IZLcom/baidu/location/f/p;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/location/f/k;->a(IZLcom/baidu/location/f/p;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/location/f/k;->a(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/baidu/location/f/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v0, p1}, Lcom/baidu/location/f/k;->a(Lcom/baidu/location/f/a;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/baidu/location/f/p;ILjava/lang/String;ZI)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/location/f/k;->a(Lcom/baidu/location/f/p;ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/baidu/location/f/h;->g:Landroid/telephony/TelephonyManager;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/location/f/h;->i:Landroid/net/wifi/WifiManager;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/baidu/location/f/h;->h:Landroid/net/ConnectivityManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/f/h;->j:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    sget-object v1, Lcom/baidu/location/f/k$a;->c:Lcom/baidu/location/f/k$a;

    invoke-virtual {v0, v1}, Lcom/baidu/location/f/k;->a(Lcom/baidu/location/f/k$a;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/location/f/h;->a(Z)V

    iget-object v1, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v1, v0}, Lcom/baidu/location/f/k;->b(Z)V

    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v1, v0}, Lcom/baidu/location/f/k;->c(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v1, v0}, Lcom/baidu/location/f/k;->a(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v1, p1, v0}, Lcom/baidu/location/f/k;->a(Landroid/content/Context;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/location/f/h;->r:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x64

    iget-object v1, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v1, v0}, Lcom/baidu/location/f/k;->a(I)V

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    const/16 v1, 0x7d0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/baidu/location/f/k;->b(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/location/f/k;->a(I)V

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    goto :goto_0

    :goto_1
    iput-boolean p1, p0, Lcom/baidu/location/f/h;->r:Z

    :cond_1
    return-void
.end method

.method public a(J)Z
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/f/h;->o:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    const-wide/16 v6, 0x7d0

    cmp-long v2, v4, v6

    if-gtz v2, :cond_0

    return v3

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/f/h;->o:J

    sget v2, Lcom/baidu/location/h/s;->f:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/baidu/location/f/h;->a(I)Lcom/baidu/location/f/p;

    :cond_1
    iget-object v2, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v2}, Lcom/baidu/location/f/k;->c()J

    move-result-wide v4

    sub-long v6, v4, p1

    cmp-long p1, v6, v0

    if-lez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v3
.end method

.method public a(Lcom/baidu/location/f/a;Lcom/baidu/location/f/a;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/location/f/k;->a(Lcom/baidu/location/f/a;Lcom/baidu/location/f/a;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/baidu/location/f/p;Lcom/baidu/location/f/p;F)Z
    .locals 6

    invoke-virtual {p2, p1, p3}, Lcom/baidu/location/f/p;->a(Lcom/baidu/location/f/p;F)Z

    move-result p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/baidu/location/b/c;->c:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    const-wide/16 v0, 0x7530

    cmp-long v2, v4, v0

    if-gez v2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/baidu/location/f/h;->d(Lcom/baidu/location/f/p;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/baidu/location/f/h;->d(Lcom/baidu/location/f/p;)J

    move-result-wide p1

    sub-long v2, v0, p1

    const-wide/16 p1, 0x1e

    cmp-long v0, v2, p1

    if-lez v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    return p3
.end method

.method public b(Lcom/baidu/location/f/p;)J
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const-wide/32 v3, 0x7fffffff

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    const/4 v6, 0x0

    if-lt v0, v5, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v7, v1

    :goto_0
    cmp-long v0, v7, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move-wide v7, v1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    return-wide v1

    :cond_3
    iget-object v5, p1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v9, 0x10

    if-le v5, v9, :cond_4

    const/16 v5, 0x10

    :cond_4
    :goto_2
    if-ge v6, v5, :cond_7

    iget-object v9, p1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_6

    iget-object v9, p1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    iget v9, v9, Landroid/net/wifi/ScanResult;->level:I

    if-nez v9, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_6

    :try_start_1
    iget-object v9, p1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    iget-wide v9, v9, Landroid/net/wifi/ScanResult;->timestamp:J

    const/4 v11, 0x0

    sub-long v11, v7, v9

    const-wide/32 v9, 0xf4240

    div-long v9, v11, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-wide v9, v1

    :goto_3
    cmp-long v11, v9, v3

    if-gez v11, :cond_6

    move-wide v3, v9

    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    move-wide v3, v1

    :goto_5
    cmp-long p1, v3, v1

    if-gez p1, :cond_9

    return-wide v1

    :cond_9
    move-wide v1, v3

    :cond_a
    return-wide v1
.end method

.method public b(ILcom/baidu/location/f/p;)Ljava/lang/String;
    .locals 8

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcom/baidu/location/f/p;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x100

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v2, p2, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/baidu/location/h/s;->N:I

    if-le v2, v3, :cond_1

    sget v2, Lcom/baidu/location/h/s;->N:I

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    iget-object v5, p2, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    and-int v5, v1, p1

    if-eqz v5, :cond_4

    iget-object v5, p2, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v5, :cond_4

    if-nez v4, :cond_3

    const-string v5, "&ssid="

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    const-string v5, "|"

    goto :goto_1

    :goto_2
    iget-object v5, p2, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p2, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/baidu/location/f/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    :cond_4
    shl-int/lit8 v1, v1, 0x1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/baidu/location/f/a;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v1, p1}, Lcom/baidu/location/f/k;->c(Lcom/baidu/location/f/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&cl_list="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/baidu/location/f/h;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/f/k;

    invoke-direct {v0}, Lcom/baidu/location/f/k;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/baidu/location/f/h$b;

    invoke-direct {v0, p0}, Lcom/baidu/location/f/h$b;-><init>(Lcom/baidu/location/f/h;)V

    iput-object v0, p0, Lcom/baidu/location/f/h;->f:Lcom/baidu/location/f/h$b;

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    iget-object v1, p0, Lcom/baidu/location/f/h;->f:Lcom/baidu/location/f/h$b;

    invoke-virtual {v0, v1}, Lcom/baidu/location/f/k;->a(Lcom/baidu/location/f/g;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(J)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/f/h;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/baidu/location/f/h;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/location/f/h;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/location/f/h;->u()Lcom/baidu/location/f/p;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1, p1, p2}, Lcom/baidu/location/f/h;->a(Lcom/baidu/location/f/p;J)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :catch_0
    :cond_2
    return v0
.end method

.method public c(Lcom/baidu/location/f/p;)J
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    const/4 v4, 0x0

    if-lt v0, v3, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v5, v1

    :goto_0
    cmp-long v0, v5, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move-wide v5, v1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    return-wide v1

    :cond_3
    iget-object v3, p1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v7, 0x10

    if-le v3, v7, :cond_4

    const/16 v3, 0x10

    :cond_4
    move-wide v7, v1

    :goto_2
    if-ge v4, v3, :cond_7

    iget-object v9, p1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_6

    iget-object v9, p1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    iget v9, v9, Landroid/net/wifi/ScanResult;->level:I

    if-nez v9, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_6

    :try_start_1
    iget-object v9, p1, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    iget-wide v9, v9, Landroid/net/wifi/ScanResult;->timestamp:J

    const/4 v11, 0x0

    sub-long v11, v5, v9

    const-wide/32 v9, 0xf4240

    div-long v9, v11, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-wide v9, v1

    :goto_3
    cmp-long v11, v9, v7

    if-lez v11, :cond_6

    move-wide v7, v9

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    return-wide v7

    :cond_8
    return-wide v1
.end method

.method public c(Lcom/baidu/location/f/a;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/location/f/a;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v0, p1}, Lcom/baidu/location/f/k;->b(Lcom/baidu/location/f/a;)Ljava/util/HashSet;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v0}, Lcom/baidu/location/f/k;->b()V

    :cond_0
    return-void
.end method

.method public d(Lcom/baidu/location/f/p;)J
    .locals 18

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/f/p;->a()I

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    return-wide v2

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    const/4 v5, 0x0

    if-lt v1, v4, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v6, v2

    :goto_0
    cmp-long v1, v6, v2

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move-wide v6, v2

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    return-wide v2

    :cond_3
    iget-object v4, v0, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v8, 0x10

    if-le v4, v8, :cond_4

    const/16 v4, 0x10

    :cond_4
    move-wide v8, v2

    move-wide v10, v8

    move-wide v12, v10

    :goto_2
    const-wide/16 v14, 0x1

    if-ge v5, v4, :cond_8

    iget-object v2, v0, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_7

    :try_start_1
    iget-object v2, v0, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-wide v2, v2, Landroid/net/wifi/ScanResult;->timestamp:J

    const/16 v16, 0x0

    sub-long v16, v6, v2

    const-wide/32 v2, 0xf4240

    div-long v2, v16, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const-wide/16 v2, 0x0

    :goto_3
    const/16 v16, 0x0

    add-long v16, v10, v2

    add-long v10, v8, v14

    cmp-long v8, v2, v12

    if-lez v8, :cond_6

    move-wide v12, v2

    :cond_6
    move-wide v8, v10

    move-wide/from16 v10, v16

    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_8
    cmp-long v0, v8, v14

    if-lez v0, :cond_9

    sub-long v0, v10, v12

    sub-long v2, v8, v14

    div-long v12, v0, v2

    :cond_9
    return-wide v12
.end method

.method public d(Lcom/baidu/location/f/a;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-wide v1, p1, Lcom/baidu/location/f/a;->b:J

    const-wide/16 v3, 0x17

    add-long v5, v1, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, "H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p1, Lcom/baidu/location/f/a;->a:I

    add-int/lit8 v1, v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p1, Lcom/baidu/location/f/a;->d:I

    add-int/lit8 v1, v1, 0x36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "Q"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p1, Lcom/baidu/location/f/a;->c:I

    add-int/lit16 p1, p1, 0xcb

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/location/f/h;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/f/h;->g:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/baidu/location/f/h;->i:Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/location/f/h;->f:Lcom/baidu/location/f/h$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v0}, Lcom/baidu/location/f/k;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized f()Lcom/baidu/location/f/a;
    .locals 8

    monitor-enter p0

    const/16 v0, 0x7530

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/baidu/location/f/h;->g:Landroid/telephony/TelephonyManager;

    sget v4, Lcom/baidu/location/h/s;->aJ:I

    sget-object v5, Lcom/baidu/location/h/s;->aK:[I

    sget-boolean v6, Lcom/baidu/location/h/s;->aL:Z

    sget v7, Lcom/baidu/location/h/s;->aM:I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/baidu/location/f/h;->a(Landroid/telephony/TelephonyManager;I[IZI)V

    iget-object v1, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v1, v0}, Lcom/baidu/location/f/k;->d(I)Lcom/baidu/location/f/a;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object v2

    iget v2, v2, Lcom/baidu/location/b/e;->dI:I

    invoke-direct {p0, v1, v0, v2}, Lcom/baidu/location/f/h;->a(Lcom/baidu/location/f/a;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/location/f/h;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/f/h;->h:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/f/h;->h:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :catch_0
    :cond_0
    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/f/h;->g:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/f/h;->g:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :catch_0
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&sim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/f/h;->s:J

    return-void
.end method

.method public j()Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/f/h;->m:J

    sub-long v4, v0, v2

    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    iget-wide v2, p0, Lcom/baidu/location/f/h;->m:J

    sub-long v4, v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v6, v4, v2

    if-gtz v6, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iput-wide v0, p0, Lcom/baidu/location/f/h;->m:J

    invoke-virtual {p0}, Lcom/baidu/location/f/h;->i()V

    invoke-virtual {p0}, Lcom/baidu/location/f/h;->k()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v2}, Lcom/baidu/location/f/k;->c()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const/4 v2, 0x0

    sub-long v7, v0, v5

    cmp-long v2, v7, v3

    if-lez v2, :cond_4

    iget-wide v2, p0, Lcom/baidu/location/f/h;->s:J

    const-wide/16 v9, 0x1388

    add-long v11, v2, v9

    cmp-long v2, v7, v11

    const/4 v3, 0x0

    if-gtz v2, :cond_1

    return v3

    :cond_1
    iget-wide v11, p0, Lcom/baidu/location/f/h;->n:J

    const-wide/16 v13, 0x3e8

    mul-long v11, v11, v13

    sub-long v13, v0, v11

    iget-wide v0, p0, Lcom/baidu/location/f/h;->s:J

    add-long v11, v0, v9

    cmp-long v0, v13, v11

    if-gtz v0, :cond_2

    return v3

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_3

    const-wide/16 v0, 0x61a8

    cmp-long v2, v7, v0

    if-gez v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/baidu/location/f/h;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/baidu/location/f/h;->n()Z

    move-result v0

    if-nez v0, :cond_4

    const-wide/16 v0, 0x2710

    iget-wide v9, p0, Lcom/baidu/location/f/h;->s:J

    add-long v11, v9, v0

    cmp-long v0, v7, v11

    if-gtz v0, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0, v5, v6}, Lcom/baidu/location/f/h;->a(J)Z

    move-result v0

    return v0
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v0}, Lcom/baidu/location/f/k;->c()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public m()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/f/h;->h:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/f/h;->h:Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_0
    return v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/f/h;->i:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/f/h;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, ""

    iget-object v1, p0, Lcom/baidu/location/f/h;->i:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/f/h;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/baidu/location/f/h;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "&wifio=1"
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    return-object v0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    if-eqz v0, :cond_0

    sget v0, Lcom/baidu/location/h/s;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v0}, Lcom/baidu/location/f/k;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public r()Landroid/net/wifi/WifiInfo;
    .locals 2

    sget v0, Lcom/baidu/location/h/s;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v0}, Lcom/baidu/location/f/k;->f()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/f/h;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/location/f/h;->i:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object v0

    iget v0, v0, Lcom/baidu/location/b/e;->dl:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/location/f/h;->u()Lcom/baidu/location/f/p;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/baidu/location/f/p;->a()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/baidu/location/f/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    if-eqz v2, :cond_2

    iget v3, v2, Landroid/net/wifi/ScanResult;->level:I

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/baidu/location/f/h$c;

    invoke-direct {v0}, Lcom/baidu/location/f/h$c;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object v2

    iget v2, v2, Lcom/baidu/location/b/e;->dn:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v5, ":"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/baidu/location/f/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget v6, v6, Landroid/net/wifi/ScanResult;->level:I

    if-gez v6, :cond_5

    neg-int v6, v6

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    return-object v1
.end method

.method public u()Lcom/baidu/location/f/p;
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    if-eqz v0, :cond_0

    sget v0, Lcom/baidu/location/h/s;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f/h;->e:Lcom/baidu/location/f/k;

    invoke-virtual {v0}, Lcom/baidu/location/f/k;->g()Lcom/baidu/location/f/p;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/baidu/location/f/p;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/location/f/p;-><init>(Ljava/util/List;J)V

    return-object v0
.end method
