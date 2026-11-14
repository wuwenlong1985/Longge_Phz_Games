.class public Lcom/baidu/location/indoor/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/indoor/c$b;,
        Lcom/baidu/location/indoor/c$a;
    }
.end annotation


# instance fields
.field private A:D

.field private B:Z

.field private C:D

.field private D:Z

.field private E:Z

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:[D

.field private P:[D

.field private Q:I

.field private R:Ljava/lang/String;

.field private S:I

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:D

.field public d:D

.field public e:D

.field public f:D

.field public g:Ljava/lang/String;

.field public h:[Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Lcom/baidu/location/indoor/c$b;

.field private o:[Ljava/lang/String;

.field private p:[Ljava/lang/String;

.field private q:D

.field private r:D

.field private s:I

.field private t:J

.field private u:I

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/baidu/location/indoor/c;->s:I

    const-wide/16 v0, 0x9c4

    iput-wide v0, p0, Lcom/baidu/location/indoor/c;->t:J

    const/16 v0, 0x14

    iput v0, p0, Lcom/baidu/location/indoor/c;->u:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/indoor/c;->v:I

    const-string v1, "default"

    iput-object v1, p0, Lcom/baidu/location/indoor/c;->w:Ljava/lang/String;

    const-string v1, "default"

    iput-object v1, p0, Lcom/baidu/location/indoor/c;->x:Ljava/lang/String;

    const-string v1, "0|0"

    iput-object v1, p0, Lcom/baidu/location/indoor/c;->y:Ljava/lang/String;

    const/16 v1, 0x8

    iput v1, p0, Lcom/baidu/location/indoor/c;->z:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, p0, Lcom/baidu/location/indoor/c;->A:D

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/indoor/c;->B:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/baidu/location/indoor/c;->C:D

    iput-boolean v0, p0, Lcom/baidu/location/indoor/c;->D:Z

    iput-boolean v0, p0, Lcom/baidu/location/indoor/c;->E:Z

    const/4 v2, 0x2

    iput v2, p0, Lcom/baidu/location/indoor/c;->F:I

    iput v0, p0, Lcom/baidu/location/indoor/c;->G:I

    iput v0, p0, Lcom/baidu/location/indoor/c;->H:I

    iput v0, p0, Lcom/baidu/location/indoor/c;->I:I

    iput v0, p0, Lcom/baidu/location/indoor/c;->J:I

    iput v0, p0, Lcom/baidu/location/indoor/c;->K:I

    iput v0, p0, Lcom/baidu/location/indoor/c;->L:I

    const-string v3, ""

    iput-object v3, p0, Lcom/baidu/location/indoor/c;->M:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/baidu/location/indoor/c;->N:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/baidu/location/indoor/c;->O:[D

    iput-object v3, p0, Lcom/baidu/location/indoor/c;->P:[D

    iput v0, p0, Lcom/baidu/location/indoor/c;->Q:I

    iput v0, p0, Lcom/baidu/location/indoor/c;->S:I

    if-eqz p1, :cond_2c

    :try_start_0
    const-string v3, "rect_type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "rect_type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/baidu/location/indoor/c;->H:I

    const-string v3, "aoa_device_path"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "aoa_device_path"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/indoor/c;->R:Ljava/lang/String;

    :cond_0
    iget v3, p0, Lcom/baidu/location/indoor/c;->H:I

    sget-object v4, Lcom/baidu/location/indoor/c$a;->c:Lcom/baidu/location/indoor/c$a;

    invoke-virtual {v4}, Lcom/baidu/location/indoor/c$a;->a()I

    move-result v4

    and-int/2addr v3, v4

    sget-object v4, Lcom/baidu/location/indoor/c$a;->c:Lcom/baidu/location/indoor/c$a;

    invoke-virtual {v4}, Lcom/baidu/location/indoor/c$a;->a()I

    move-result v4

    if-ne v3, v4, :cond_1

    iput v1, p0, Lcom/baidu/location/indoor/c;->I:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/baidu/location/indoor/c;->I:I

    :goto_0
    iget v3, p0, Lcom/baidu/location/indoor/c;->H:I

    sget-object v4, Lcom/baidu/location/indoor/c$a;->d:Lcom/baidu/location/indoor/c$a;

    invoke-virtual {v4}, Lcom/baidu/location/indoor/c$a;->a()I

    move-result v4

    and-int/2addr v3, v4

    sget-object v4, Lcom/baidu/location/indoor/c$a;->d:Lcom/baidu/location/indoor/c$a;

    invoke-virtual {v4}, Lcom/baidu/location/indoor/c$a;->a()I

    move-result v4

    if-ne v3, v4, :cond_2

    iput v1, p0, Lcom/baidu/location/indoor/c;->J:I

    goto :goto_1

    :cond_2
    iput v0, p0, Lcom/baidu/location/indoor/c;->J:I

    :goto_1
    iget v3, p0, Lcom/baidu/location/indoor/c;->H:I

    sget-object v4, Lcom/baidu/location/indoor/c$a;->e:Lcom/baidu/location/indoor/c$a;

    invoke-virtual {v4}, Lcom/baidu/location/indoor/c$a;->a()I

    move-result v4

    and-int/2addr v3, v4

    sget-object v4, Lcom/baidu/location/indoor/c$a;->e:Lcom/baidu/location/indoor/c$a;

    invoke-virtual {v4}, Lcom/baidu/location/indoor/c$a;->a()I

    move-result v4

    if-ne v3, v4, :cond_3

    iput v1, p0, Lcom/baidu/location/indoor/c;->K:I

    goto :goto_2

    :cond_3
    iput v0, p0, Lcom/baidu/location/indoor/c;->K:I

    :goto_2
    iget v3, p0, Lcom/baidu/location/indoor/c;->H:I

    sget-object v4, Lcom/baidu/location/indoor/c$a;->b:Lcom/baidu/location/indoor/c$a;

    invoke-virtual {v4}, Lcom/baidu/location/indoor/c$a;->a()I

    move-result v4

    and-int/2addr v3, v4

    sget-object v4, Lcom/baidu/location/indoor/c$a;->b:Lcom/baidu/location/indoor/c$a;

    invoke-virtual {v4}, Lcom/baidu/location/indoor/c$a;->a()I

    move-result v4

    :cond_4
    iget v3, p0, Lcom/baidu/location/indoor/c;->H:I

    sget-object v4, Lcom/baidu/location/indoor/c$a;->f:Lcom/baidu/location/indoor/c$a;

    invoke-virtual {v4}, Lcom/baidu/location/indoor/c$a;->a()I

    move-result v4

    and-int/2addr v3, v4

    sget-object v4, Lcom/baidu/location/indoor/c$a;->f:Lcom/baidu/location/indoor/c$a;

    invoke-virtual {v4}, Lcom/baidu/location/indoor/c$a;->a()I

    move-result v4

    if-ne v3, v4, :cond_5

    iput v1, p0, Lcom/baidu/location/indoor/c;->v:I

    goto :goto_3

    :cond_5
    iput v0, p0, Lcom/baidu/location/indoor/c;->v:I

    :goto_3
    const-string v3, "bldg"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "bldg"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/indoor/c;->a:Ljava/lang/String;

    :cond_6
    const-string v3, "bid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "bid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/indoor/c;->b:Ljava/lang/String;

    :cond_7
    const-string v3, "inout_points"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "inout_points"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/indoor/c;->l:Ljava/lang/String;

    :cond_8
    const-string v3, "off_ble_ver"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "off_ble_ver"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/indoor/c;->m:Ljava/lang/String;

    :cond_9
    const-string v3, "max_scan_num"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "max_scan_num"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/baidu/location/indoor/c;->s:I

    :cond_a
    const-string v3, "scan_time_interval"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "scan_time_interval"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/baidu/location/indoor/c;->t:J

    :cond_b
    const-string v3, "offloc_top_count"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "offloc_top_count"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/baidu/location/indoor/c;->u:I

    :cond_c
    const-string v3, "scenario_detector"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "scenario_detector"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/indoor/c;->w:Ljava/lang/String;

    :cond_d
    const-string v3, "passageway_info"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "passageway_info"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/indoor/c;->x:Ljava/lang/String;

    :cond_e
    const-string v3, "offloc_parameter"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "offloc_parameter"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/indoor/c;->y:Ljava/lang/String;

    :cond_f
    const-string v3, "uuid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "uuid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/indoor/c;->g:Ljava/lang/String;

    :cond_10
    const-string v3, "uuids"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "uuids"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_4
    array-length v5, v3

    if-ge v4, v5, :cond_11

    aget-object v5, v3, v4

    const-string v6, "-"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_11
    iput-object v3, p0, Lcom/baidu/location/indoor/c;->h:[Ljava/lang/String;

    goto :goto_5

    :cond_12
    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/String;

    aput-object v3, v4, v0

    iput-object v4, p0, Lcom/baidu/location/indoor/c;->h:[Ljava/lang/String;

    :cond_13
    :goto_5
    const-string v3, "encrypt_uuids"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "encrypt_uuids"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_6
    array-length v5, v3

    if-ge v4, v5, :cond_14

    aget-object v5, v3, v4

    const-string v6, "-"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_14
    iput-object v3, p0, Lcom/baidu/location/indoor/c;->o:[Ljava/lang/String;

    goto :goto_7

    :cond_15
    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/String;

    aput-object v3, v4, v0

    iput-object v4, p0, Lcom/baidu/location/indoor/c;->o:[Ljava/lang/String;

    :cond_16
    :goto_7
    iget-object v3, p0, Lcom/baidu/location/indoor/c;->h:[Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/location/indoor/c;->o:[Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/baidu/location/indoor/c;->a([Ljava/lang/String;[Ljava/lang/String;)V

    const-string v3, "support_types"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "support_types"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/indoor/c;->i:Ljava/lang/String;

    :cond_17
    const-string v3, "conf_type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, "conf_type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/indoor/c;->j:Ljava/lang/String;

    :cond_18
    const-string v3, "offline_data_mode"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "offline_data_mode"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/baidu/location/indoor/c;->F:I

    :cond_19
    const-string v3, "algo_rects"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "algo_rects"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/indoor/c;->N:Ljava/lang/String;

    const-string v3, "zqxfbsd"

    iget-object v4, p0, Lcom/baidu/location/indoor/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/baidu/location/indoor/c;->N:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/baidu/location/indoor/c;->a(Ljava/lang/String;)V

    :cond_1a
    const-string v3, "is_need_walk_navi_link"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "is_need_walk_navi_link"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/baidu/location/indoor/c;->Q:I

    :cond_1b
    const-string v3, "indoor_file_info_v2"

    const-string v4, "is_support_off_ble_v2"

    iget v5, p0, Lcom/baidu/location/indoor/c;->F:I

    const/4 v6, 0x3

    if-ne v5, v2, :cond_1c

    const-string v3, "indoor_file_info_v2"

    const-string v4, "is_support_off_ble_v2"

    goto :goto_8

    :cond_1c
    iget v5, p0, Lcom/baidu/location/indoor/c;->F:I

    if-ne v5, v6, :cond_1d

    const-string v3, "indoor_file_info_v3"

    const-string v4, "is_support_off_ble_v3"

    :cond_1d
    :goto_8
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/baidu/location/indoor/c;->k:I

    :cond_1e
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_23

    new-instance v4, Lcom/baidu/location/indoor/c$b;

    invoke-direct {v4, p0}, Lcom/baidu/location/indoor/c$b;-><init>(Lcom/baidu/location/indoor/c;)V

    iput-object v4, p0, Lcom/baidu/location/indoor/c;->n:Lcom/baidu/location/indoor/c$b;

    iput-boolean v1, p0, Lcom/baidu/location/indoor/c;->E:Z

    const-string v4, "file_path"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "file_path"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/location/indoor/c;->n:Lcom/baidu/location/indoor/c$b;

    invoke-virtual {v5, v4}, Lcom/baidu/location/indoor/c$b;->a(Ljava/lang/String;)V

    goto :goto_9

    :cond_1f
    iput-boolean v0, p0, Lcom/baidu/location/indoor/c;->E:Z

    :goto_9
    const-string v4, "zip_md5"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v4, "zip_md5"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/location/indoor/c;->n:Lcom/baidu/location/indoor/c$b;

    invoke-virtual {v5, v4}, Lcom/baidu/location/indoor/c$b;->b(Ljava/lang/String;)V

    goto :goto_a

    :cond_20
    iput-boolean v0, p0, Lcom/baidu/location/indoor/c;->E:Z

    :goto_a
    const-string v4, "model_md5"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "model_md5"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/location/indoor/c;->n:Lcom/baidu/location/indoor/c$b;

    invoke-virtual {v5, v4}, Lcom/baidu/location/indoor/c$b;->c(Ljava/lang/String;)V

    goto :goto_b

    :cond_21
    iput-boolean v0, p0, Lcom/baidu/location/indoor/c;->E:Z

    :goto_b
    const-string v4, "data_md5"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v4, "data_md5"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/location/indoor/c;->n:Lcom/baidu/location/indoor/c$b;

    invoke-virtual {v5, v4}, Lcom/baidu/location/indoor/c$b;->d(Ljava/lang/String;)V

    goto :goto_c

    :cond_22
    iput-boolean v0, p0, Lcom/baidu/location/indoor/c;->E:Z

    :goto_c
    const-string v4, "dict_md5"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    const-string v4, "dict_md5"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/location/indoor/c;->n:Lcom/baidu/location/indoor/c$b;

    invoke-virtual {v4, v3}, Lcom/baidu/location/indoor/c$b;->e(Ljava/lang/String;)V

    goto :goto_d

    :cond_23
    iput-boolean v0, p0, Lcom/baidu/location/indoor/c;->E:Z

    :goto_d
    const-string v3, "rect"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v3, "rect"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_24

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    array-length v4, v3

    const/4 v5, 0x4

    if-lt v4, v5, :cond_24

    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/indoor/c;->c:D

    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/indoor/c;->e:D

    aget-object v4, v3, v6

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/indoor/c;->d:D

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/indoor/c;->f:D

    iget-wide v2, p0, Lcom/baidu/location/indoor/c;->c:D

    iget-wide v4, p0, Lcom/baidu/location/indoor/c;->e:D

    const/4 v6, 0x0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/baidu/location/indoor/c;->q:D

    iget-wide v2, p0, Lcom/baidu/location/indoor/c;->d:D

    iget-wide v6, p0, Lcom/baidu/location/indoor/c;->f:D

    const/4 v8, 0x0

    add-double/2addr v2, v6

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/baidu/location/indoor/c;->r:D

    iget-wide v2, p0, Lcom/baidu/location/indoor/c;->c:D

    iget-wide v4, p0, Lcom/baidu/location/indoor/c;->d:D

    const-string v6, "gps2gcj"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/baidu/location/Jni;->coorEncrypt(DDLjava/lang/String;)[D

    move-result-object v2

    aget-wide v3, v2, v0

    iput-wide v3, p0, Lcom/baidu/location/indoor/c;->c:D

    aget-wide v3, v2, v1

    iput-wide v3, p0, Lcom/baidu/location/indoor/c;->d:D

    iget-wide v2, p0, Lcom/baidu/location/indoor/c;->e:D

    iget-wide v4, p0, Lcom/baidu/location/indoor/c;->f:D

    const-string v6, "gps2gcj"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/baidu/location/Jni;->coorEncrypt(DDLjava/lang/String;)[D

    move-result-object v2

    aget-wide v3, v2, v0

    iput-wide v3, p0, Lcom/baidu/location/indoor/c;->e:D

    aget-wide v3, v2, v1

    iput-wide v3, p0, Lcom/baidu/location/indoor/c;->f:D

    :cond_24
    const-string v2, "indoor_log_rate"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v2, "indoor_log_rate"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/indoor/c;->A:D

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/indoor/c;->A:D

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_25

    iput-boolean v1, p0, Lcom/baidu/location/indoor/c;->B:Z

    goto :goto_e

    :cond_25
    iput-boolean v0, p0, Lcom/baidu/location/indoor/c;->B:Z

    :cond_26
    :goto_e
    const-string v2, "sensor_log_rate"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "sensor_log_rate"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/indoor/c;->C:D

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/indoor/c;->C:D

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_27

    iput-boolean v1, p0, Lcom/baidu/location/indoor/c;->D:Z

    goto :goto_f

    :cond_27
    iput-boolean v0, p0, Lcom/baidu/location/indoor/c;->D:Z

    :cond_28
    :goto_f
    const-string v0, "is_support_poi_data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "is_support_poi_data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/location/indoor/c;->G:I

    :cond_29
    const-string v0, "is_use_bms"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "is_use_bms"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/baidu/location/indoor/c;->L:I

    :cond_2a
    const-string v0, "new_indoorloc_param"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "new_indoorloc_param"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/indoor/c;->M:Ljava/lang/String;

    :cond_2b
    const-string v0, "is_support_reverse"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "is_support_reverse"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/location/indoor/c;->S:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2c
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aget-object v1, v1, v5

    if-ne v4, v3, :cond_0

    if-eqz v1, :cond_0

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/16 v6, 0x8

    if-lt v4, v6, :cond_0

    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const/4 v4, 0x1

    aget-object v8, v1, v4

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    aget-object v10, v1, v5

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    aget-object v12, v1, v3

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const/4 v14, 0x4

    aget-object v15, v1, v14

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    const/16 v17, 0x5

    aget-object v3, v1, v17

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    const/4 v3, 0x6

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    const/4 v3, 0x7

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    new-array v1, v14, [D

    aput-wide v6, v1, v2

    aput-wide v10, v1, v4

    aput-wide v15, v1, v5

    const/4 v3, 0x3

    aput-wide v20, v1, v3

    iput-object v1, v0, Lcom/baidu/location/indoor/c;->O:[D

    new-array v1, v14, [D

    aput-wide v8, v1, v2

    aput-wide v12, v1, v4

    aput-wide v18, v1, v5

    const/4 v2, 0x3

    aput-wide v22, v1, v2

    iput-object v1, v0, Lcom/baidu/location/indoor/c;->P:[D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    array-length v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    array-length v2, p2

    if-lez v2, :cond_1

    array-length v2, p2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int v3, v1, v2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/baidu/location/indoor/c;->p:[Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/baidu/location/indoor/c;->p:[Ljava/lang/String;

    invoke-static {p1, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/baidu/location/indoor/c;->p:[Ljava/lang/String;

    invoke-static {p2, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/indoor/c;->s:I

    return v0
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/indoor/c;->o:[Ljava/lang/String;

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/indoor/c;->p:[Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/indoor/c;->J:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlePdrEffectArea{bldg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/location/indoor/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/location/indoor/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lon0="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/baidu/location/indoor/c;->c:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", lat0="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/baidu/location/indoor/c;->d:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", lon1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/baidu/location/indoor/c;->e:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", lat1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/baidu/location/indoor/c;->f:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", uuid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/location/indoor/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uuids="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/location/indoor/c;->h:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", encryptUuids="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/location/indoor/c;->o:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", allUuids="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/location/indoor/c;->p:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", supportTypes=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/location/indoor/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", confType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/location/indoor/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isSupportOffBle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baidu/location/indoor/c;->k:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", inoutPoints=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/location/indoor/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", offBleVer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/location/indoor/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", offline_data_mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baidu/location/indoor/c;->F:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", offlineFileInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/location/indoor/c;->n:Lcom/baidu/location/indoor/c$b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", middlelon="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/baidu/location/indoor/c;->q:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", middlelat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/baidu/location/indoor/c;->r:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", bleNumlimit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baidu/location/indoor/c;->s:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", conf=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/location/indoor/c;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", passageWayInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/location/indoor/c;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", offLocParameter=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/location/indoor/c;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mThrYaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/location/indoor/c;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIndoorLogRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/location/indoor/c;->A:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", isIndoorLogReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/location/indoor/c;->B:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIndoorSensorLogRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/location/indoor/c;->C:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", isIndoorSensorLogReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/location/indoor/c;->D:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOfflineServerDataValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/baidu/location/indoor/c;->E:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNeedCompanyAuth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/location/indoor/c;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/location/indoor/c;->H:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isBigRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/location/indoor/c;->J:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isRingRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/location/indoor/c;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isUseBMS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/location/indoor/c;->L:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSupportPoiData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/location/indoor/c;->G:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", algoRects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/location/indoor/c;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isNeedWalkNaviLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/location/indoor/c;->Q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newIndoorLocParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/location/indoor/c;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scanTimeInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/baidu/location/indoor/c;->t:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", offlocTopCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/location/indoor/c;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSupportReverse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/location/indoor/c;->S:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
