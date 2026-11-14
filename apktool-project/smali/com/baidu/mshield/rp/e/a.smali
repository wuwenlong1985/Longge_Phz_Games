.class public Lcom/baidu/mshield/rp/e/a;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mshield/rp/e/a$a;
    }
.end annotation


# static fields
.field public static a:J


# instance fields
.field public b:Lcom/baidu/mshield/rp/e/a$a;

.field public c:Lcom/baidu/mshield/sharedpreferences/a;

.field public d:Landroid/content/Context;

.field public e:Lcom/baidu/mshield/rp/d/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/baidu/mshield/rp/e/a$a;

    invoke-static {}, Lcom/baidu/mshield/utility/e;->a()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/mshield/rp/e/a$a;-><init>(Lcom/baidu/mshield/rp/e/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/mshield/rp/e/a;->b:Lcom/baidu/mshield/rp/e/a$a;

    .line 4
    invoke-static {p1}, Lcom/baidu/mshield/sharedpreferences/a;->a(Landroid/content/Context;)Lcom/baidu/mshield/sharedpreferences/a;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    .line 5
    new-instance p1, Lcom/baidu/mshield/rp/d/a/a;

    iget-object v0, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/baidu/mshield/rp/d/a/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/baidu/mshield/rp/e/a;->e:Lcom/baidu/mshield/rp/d/a/a;

    return-void
.end method

.method public static synthetic a(Lcom/baidu/mshield/rp/e/a;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/baidu/mshield/rp/e/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/baidu/mshield/rp/e/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/baidu/mshield/rp/e/a;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/baidu/mshield/rp/e/a;II)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/baidu/mshield/rp/e/a;->a(II)V

    return-void
.end method

.method public static synthetic a(Lcom/baidu/mshield/rp/e/a;Lcom/baidu/mshield/rp/a/a;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/baidu/mshield/rp/e/a;->b(Lcom/baidu/mshield/rp/a/a;)V

    return-void
.end method

.method public static synthetic b(Lcom/baidu/mshield/rp/e/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/baidu/mshield/rp/e/a;->d()V

    return-void
.end method

.method public static synthetic c(Lcom/baidu/mshield/rp/e/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/baidu/mshield/rp/e/a;->f()V

    return-void
.end method

.method public static synthetic d(Lcom/baidu/mshield/rp/e/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic e(Lcom/baidu/mshield/rp/e/a;)Lcom/baidu/mshield/rp/d/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/mshield/rp/e/a;->e:Lcom/baidu/mshield/rp/d/a/a;

    return-object p0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "Common_section"

    .line 9
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "12"

    .line 10
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "12"

    const-string v2, ""

    .line 13
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_2
    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    .line 16
    invoke-static {p1}, Lcom/baidu/mshield/utility/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public a()V
    .locals 2

    .line 2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x7

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    invoke-virtual {p0, v0}, Lcom/baidu/mshield/rp/e/a;->a(Landroid/os/Message;)V

    return-void
.end method

.method public final a(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-nez v2, :cond_0

    :try_start_0
    const-string v1, "sj-trigger EVENT_NETWORK_NONE "

    .line 2
    invoke-static {v1}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    .line 7
    iget-object v6, v0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    invoke-static {v6}, Lcom/baidu/mshield/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/mshield/rp/b/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/mshield/rp/b/a;->a()Ljava/util/List;

    move-result-object v6

    if-ne v5, v2, :cond_4

    .line 9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sj-trigger report 3g "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne v1, v4, :cond_2

    .line 12
    iget-object v6, v0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    invoke-static {v6}, Lcom/baidu/mshield/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/mshield/rp/b/a;

    move-result-object v6

    invoke-virtual {v6, v3, v2}, Lcom/baidu/mshield/rp/b/a;->a(ZI)Ljava/util/List;

    move-result-object v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x4

    if-ne v1, v6, :cond_3

    .line 14
    iget-object v6, v0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    invoke-static {v6}, Lcom/baidu/mshield/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/mshield/rp/b/a;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Lcom/baidu/mshield/rp/b/a;->a(ZI)Ljava/util/List;

    move-result-object v6

    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sj-trigger report 3g to report "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_3
    iget-object v6, v0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    invoke-static {v6}, Lcom/baidu/mshield/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/mshield/rp/b/a;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/baidu/mshield/rp/b/a;->b(I)Ljava/util/List;

    move-result-object v6

    :cond_4
    :goto_0
    if-eqz v6, :cond_c

    .line 19
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_5

    goto/16 :goto_2

    .line 22
    :cond_5
    iget-object v7, v0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    invoke-virtual {v7}, Lcom/baidu/mshield/sharedpreferences/a;->F()J

    move-result-wide v7

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 24
    iget-object v11, v0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    invoke-virtual {v11}, Lcom/baidu/mshield/sharedpreferences/a;->G()J

    move-result-wide v11

    .line 25
    iget-object v13, v0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    invoke-virtual {v13}, Lcom/baidu/mshield/sharedpreferences/a;->C()I

    move-result v13

    const-wide/16 v14, 0x0

    cmp-long v16, v11, v14

    if-nez v16, :cond_6

    .line 28
    iget-object v11, v0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    invoke-virtual {v11, v9, v10}, Lcom/baidu/mshield/sharedpreferences/a;->d(J)V

    move-wide v11, v9

    .line 32
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "begintime : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "last rp len : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    const/4 v3, 0x0

    sub-long v14, v9, v11

    const-wide/32 v11, 0x5265c00

    cmp-long v3, v14, v11

    if-gez v3, :cond_9

    if-ne v1, v4, :cond_8

    .line 37
    iget-object v3, v0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    invoke-virtual {v3}, Lcom/baidu/mshield/sharedpreferences/a;->J()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_7

    return-void

    .line 41
    :cond_7
    iget-object v4, v0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    add-int/2addr v3, v5

    invoke-virtual {v4, v3}, Lcom/baidu/mshield/sharedpreferences/a;->o(I)V

    :cond_8
    const/high16 v3, 0x100000

    mul-int v13, v13, v3

    int-to-long v3, v13

    cmp-long v5, v7, v3

    if-lez v5, :cond_a

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rp over limit : maxday :  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    return-void

    .line 50
    :cond_9
    iget-object v3, v0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    const-wide/16 v11, 0x0

    invoke-virtual {v3, v11, v12}, Lcom/baidu/mshield/sharedpreferences/a;->c(J)V

    .line 51
    iget-object v3, v0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    invoke-virtual {v3, v9, v10}, Lcom/baidu/mshield/sharedpreferences/a;->d(J)V

    if-ne v1, v4, :cond_a

    .line 53
    iget-object v3, v0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/baidu/mshield/sharedpreferences/a;->o(I)V

    .line 57
    :cond_a
    invoke-virtual {v0, v6, v2, v7, v8}, Lcom/baidu/mshield/rp/e/a;->a(Ljava/util/List;IJ)V

    .line 59
    invoke-virtual/range {p0 .. p2}, Lcom/baidu/mshield/rp/e/a;->b(II)Ljava/util/List;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_c

    .line 60
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_c

    .line 61
    invoke-virtual {v0, v3, v2, v7, v8}, Lcom/baidu/mshield/rp/e/a;->a(Ljava/util/List;IJ)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/mshield/rp/e/a;->e()Z

    move-result v3

    if-nez v3, :cond_b

    const-string v1, "324 checkReportFail"

    .line 63
    invoke-static {v1}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    return-void

    .line 66
    :cond_b
    invoke-virtual/range {p0 .. p2}, Lcom/baidu/mshield/rp/e/a;->b(II)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :cond_c
    :goto_2
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/baidu/mshield/rp/e/a;->b:Lcom/baidu/mshield/rp/e/a$a;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/baidu/mshield/rp/a/a;)V
    .locals 8

    .line 152
    :try_start_0
    invoke-static {}, Lcom/baidu/mshield/utility/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    invoke-virtual {v1}, Lcom/baidu/mshield/sharedpreferences/a;->D()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4.2.6"

    .line 154
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "same version=4.2.6"

    .line 155
    invoke-static {v1}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    iget-object v2, p1, Lcom/baidu/mshield/rp/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/mshield/sharedpreferences/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "same version has reported!"

    .line 158
    invoke-static {p1}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "same version new report"

    .line 161
    invoke-static {v1}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "new version set=4.2.6"

    .line 163
    invoke-static {v1}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    const-string v2, "4.2.6"

    invoke-virtual {v1, v2}, Lcom/baidu/mshield/sharedpreferences/a;->k(Ljava/lang/String;)V

    .line 167
    :goto_0
    iget-object v1, p0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    iget-object v2, p1, Lcom/baidu/mshield/rp/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/mshield/sharedpreferences/a;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    new-instance v2, Lcom/baidu/mshield/rp/c/a;

    invoke-direct {v2}, Lcom/baidu/mshield/rp/c/a;-><init>()V

    .line 170
    iget-object v3, p1, Lcom/baidu/mshield/rp/a/a;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/mshield/rp/c/a;->b:Ljava/lang/String;

    const/4 v3, 0x0

    .line 171
    iput v3, v2, Lcom/baidu/mshield/rp/c/a;->g:I

    const/4 v4, 0x2

    .line 172
    iput v4, v2, Lcom/baidu/mshield/rp/c/a;->c:I

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/baidu/mshield/rp/c/a;->e:J

    const/4 v4, 0x1

    .line 174
    iput v4, v2, Lcom/baidu/mshield/rp/c/a;->f:I

    const/4 v5, 0x5

    .line 175
    iput v5, v2, Lcom/baidu/mshield/rp/c/a;->i:I

    .line 176
    iget-object v5, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    invoke-static {v5, p1, v1, v4}, Lcom/baidu/mshield/utility/a;->a(Landroid/content/Context;Lcom/baidu/mshield/rp/a/a;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/mshield/rp/c/a;->d:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/mshield/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/mshield/rp/b/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/baidu/mshield/rp/b/a;->a(Lcom/baidu/mshield/rp/c/a;)J

    .line 180
    iget-object v1, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/mshield/utility/a;->e(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mshield/b/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    iget-object v4, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    .line 183
    invoke-static {v4}, Lcom/baidu/mshield/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/mshield/rp/b/a;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/baidu/mshield/rp/b/a;->b(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    const-string v4, "1067001"

    .line 186
    :try_start_1
    iput-object v4, v2, Lcom/baidu/mshield/rp/c/a;->b:Ljava/lang/String;

    .line 187
    iput v3, v2, Lcom/baidu/mshield/rp/c/a;->i:I

    .line 188
    iget-object v3, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    iget-object v5, p1, Lcom/baidu/mshield/rp/a/a;->a:Ljava/lang/String;

    iget-object v6, p1, Lcom/baidu/mshield/rp/a/a;->c:Ljava/lang/String;

    .line 191
    invoke-static {v3}, Lcom/baidu/mshield/utility/a;->e(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 192
    invoke-static {v3, v5, v6, v4, v7}, Lcom/baidu/mshield/utility/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 194
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/mshield/rp/c/a;->d:Ljava/lang/String;

    .line 195
    iget-object v3, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/mshield/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/mshield/rp/b/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mshield/rp/b/a;->a(Lcom/baidu/mshield/rp/c/a;)J

    .line 196
    iget-object v2, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/mshield/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/mshield/rp/b/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mshield/rp/b/a;->a(Ljava/lang/String;)J

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    iget-object p1, p1, Lcom/baidu/mshield/rp/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lcom/baidu/mshield/sharedpreferences/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 201
    invoke-static {p1}, Lcom/baidu/mshield/utility/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final a(Ljava/util/List;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mshield/rp/c/a;",
            ">;IJ)V"
        }
    .end annotation

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    invoke-virtual {v0}, Lcom/baidu/mshield/sharedpreferences/a;->B()I

    move-result v0

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mshield/rp/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 30
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, v5, Lcom/baidu/mshield/rp/c/a;->d:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    :try_start_2
    iget-object v7, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/baidu/mshield/utility/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 39
    :try_start_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    const/high16 v8, 0x100000

    mul-int v8, v8, v0

    if-lt v6, v8, :cond_0

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rp once over limit : maxOnece : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 55
    :cond_0
    iget v4, v5, Lcom/baidu/mshield/rp/c/a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v4, Lcom/baidu/mshield/rp/c/b;

    iget-object v8, v5, Lcom/baidu/mshield/rp/c/a;->j:Ljava/lang/String;

    iget v5, v5, Lcom/baidu/mshield/rp/c/a;->a:I

    invoke-direct {v4, v7, v8, v5}, Lcom/baidu/mshield/rp/c/b;-><init>(Lorg/json/JSONObject;Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_0

    :catchall_0
    move-exception v5

    .line 57
    invoke-static {v5}, Lcom/baidu/mshield/utility/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception v5

    .line 58
    invoke-static {v5}, Lcom/baidu/mshield/utility/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 85
    :cond_1
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 89
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 90
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 91
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/mshield/rp/c/b;

    if-nez v6, :cond_2

    goto :goto_4

    .line 96
    :cond_2
    invoke-virtual {v6}, Lcom/baidu/mshield/rp/c/b;->b()Ljava/lang/String;

    move-result-object v7

    .line 97
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 98
    invoke-virtual {v6}, Lcom/baidu/mshield/rp/c/b;->a()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 99
    invoke-virtual {v6}, Lcom/baidu/mshield/rp/c/b;->c()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 101
    :cond_3
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 102
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONArray;

    if-nez v8, :cond_4

    .line 104
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 106
    :cond_4
    invoke-virtual {v6}, Lcom/baidu/mshield/rp/c/b;->a()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 107
    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 109
    :cond_5
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 110
    invoke-virtual {v6}, Lcom/baidu/mshield/rp/c/b;->a()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 111
    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :goto_3
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_6

    .line 116
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 118
    :cond_6
    invoke-virtual {v6}, Lcom/baidu/mshield/rp/c/b;->c()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 122
    :cond_7
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 123
    iget-object v2, p0, Lcom/baidu/mshield/rp/e/a;->e:Lcom/baidu/mshield/rp/d/a/a;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const-string v6, "1"

    invoke-virtual {v2, v1, v3, v6}, Lcom/baidu/mshield/rp/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 124
    iget-object v1, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/mshield/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/mshield/rp/b/a;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/baidu/mshield/rp/b/a;->a(Ljava/util/List;)I

    goto :goto_5

    .line 126
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/baidu/mshield/rp/e/a;->a:J

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "427 report fail,sFailTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/baidu/mshield/rp/e/a;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    .line 131
    :cond_9
    :goto_5
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 132
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 133
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    if-eqz v3, :cond_a

    .line 134
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 135
    iget-object v5, p0, Lcom/baidu/mshield/rp/e/a;->e:Lcom/baidu/mshield/rp/d/a/a;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "2"

    invoke-virtual {v5, v3, v2, v6}, Lcom/baidu/mshield/rp/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 136
    iget-object v3, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/mshield/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/mshield/rp/b/a;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v3, v2}, Lcom/baidu/mshield/rp/b/a;->a(Ljava/util/List;)I

    goto :goto_6

    .line 138
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/baidu/mshield/rp/e/a;->a:J

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "441 report fail,sFailTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/baidu/mshield/rp/e/a;->a:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    goto :goto_6

    .line 145
    :cond_c
    iget-object p1, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/baidu/mshield/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/mshield/rp/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mshield/rp/b/a;->c()I

    const/4 p1, 0x2

    if-eq p1, p2, :cond_d

    .line 148
    iget-object p1, p0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    int-to-long v0, v4

    add-long v2, v0, p3

    invoke-virtual {p1, v2, v3}, Lcom/baidu/mshield/sharedpreferences/a;->c(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p1

    .line 151
    invoke-static {p1}, Lcom/baidu/mshield/utility/a;->a(Ljava/lang/Throwable;)V

    :cond_d
    :goto_7
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 5
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x5

    .line 6
    iput v0, p1, Landroid/os/Message;->what:I

    .line 7
    invoke-virtual {p0, p1}, Lcom/baidu/mshield/rp/e/a;->a(Landroid/os/Message;)V

    return-void
.end method

.method public final b(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/baidu/mshield/rp/c/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    return-object v0

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/baidu/mshield/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/mshield/rp/b/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/mshield/rp/b/a;->b(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/baidu/mshield/rp/e/a;->e:Lcom/baidu/mshield/rp/d/a/a;

    invoke-virtual {v0}, Lcom/baidu/mshield/rp/d/a/a;->a()V

    .line 3
    iget-object v0, p0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mshield/sharedpreferences/a;->b(J)V

    return-void
.end method

.method public final b(Lcom/baidu/mshield/rp/a/a;)V
    .locals 6

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    iget-object v1, p1, Lcom/baidu/mshield/rp/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mshield/sharedpreferences/a;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/baidu/mshield/rp/c/a;

    invoke-direct {v1}, Lcom/baidu/mshield/rp/c/a;-><init>()V

    .line 80
    iget-object v2, p1, Lcom/baidu/mshield/rp/a/a;->e:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/mshield/rp/c/a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    .line 81
    iput v2, v1, Lcom/baidu/mshield/rp/c/a;->g:I

    const/4 v3, 0x1

    .line 82
    iput v3, v1, Lcom/baidu/mshield/rp/c/a;->c:I

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/baidu/mshield/rp/c/a;->e:J

    .line 84
    iput v3, v1, Lcom/baidu/mshield/rp/c/a;->f:I

    .line 85
    iget-object v4, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    .line 86
    invoke-static {v4, p1, v0, v2}, Lcom/baidu/mshield/utility/a;->a(Landroid/content/Context;Lcom/baidu/mshield/rp/a/a;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/mshield/rp/c/a;->d:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mshield/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/mshield/rp/b/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/mshield/rp/b/a;->a(Lcom/baidu/mshield/rp/c/a;)J

    .line 90
    iget-object v0, p0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    iget-object v2, p1, Lcom/baidu/mshield/rp/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mshield/sharedpreferences/a;->a(Ljava/lang/String;Z)V

    .line 92
    iget-object v0, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mshield/utility/a;->e(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mshield/b/f/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v2, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    .line 95
    invoke-static {v2}, Lcom/baidu/mshield/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/mshield/rp/b/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mshield/rp/b/a;->b(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const-string v2, "1067001"

    .line 98
    :try_start_1
    iput-object v2, v1, Lcom/baidu/mshield/rp/c/a;->b:Ljava/lang/String;

    .line 99
    iget-object v3, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    iget-object v4, p1, Lcom/baidu/mshield/rp/a/a;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/baidu/mshield/rp/a/a;->c:Ljava/lang/String;

    .line 102
    invoke-static {v3}, Lcom/baidu/mshield/utility/a;->e(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-static {v3, v4, p1, v2, v5}, Lcom/baidu/mshield/utility/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/baidu/mshield/rp/c/a;->d:Ljava/lang/String;

    .line 106
    iget-object p1, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/baidu/mshield/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/mshield/rp/b/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/baidu/mshield/rp/b/a;->a(Lcom/baidu/mshield/rp/c/a;)J

    .line 107
    iget-object p1, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/baidu/mshield/rp/b/a;->a(Landroid/content/Context;)Lcom/baidu/mshield/rp/b/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/baidu/mshield/rp/b/a;->a(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 110
    invoke-static {p1}, Lcom/baidu/mshield/utility/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 6

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    invoke-virtual {v2}, Lcom/baidu/mshield/sharedpreferences/a;->E()J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/32 v0, 0x5265c00

    cmp-long v2, v4, v0

    if-gez v2, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mshield/rp/e/a;->b()V

    return-void
.end method

.method public final d()V
    .locals 8

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/baidu/mshield/sharedpreferences/a;->a(Landroid/content/Context;)Lcom/baidu/mshield/sharedpreferences/a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/baidu/mshield/sharedpreferences/a;->v()I

    move-result v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " 2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 7
    invoke-virtual {v0}, Lcom/baidu/mshield/sharedpreferences/a;->w()J

    move-result-wide v4

    const/4 v6, 0x0

    sub-long v6, v2, v4

    const v2, 0x36ee80

    mul-int v1, v1, v2

    int-to-long v1, v1

    cmp-long v3, v6, v1

    if-ltz v3, :cond_0

    .line 10
    iget-object v3, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/mshield/utility/b;->a(Landroid/content/Context;)Lcom/baidu/mshield/utility/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mshield/utility/b;->b()V

    .line 11
    iget-object v3, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/baidu/mshield/utility/a;->a(Landroid/content/Context;J)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mshield/sharedpreferences/a;->a(J)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/baidu/mshield/rp/e/a;->d:Landroid/content/Context;

    const/4 v3, 0x0

    sub-long v3, v1, v6

    invoke-static {v0, v3, v4}, Lcom/baidu/mshield/utility/a;->a(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 17
    invoke-static {v0}, Lcom/baidu/mshield/utility/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final e()Z
    .locals 8

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkReportFail,sFailTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/baidu/mshield/rp/e/a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    .line 68
    sget-wide v0, Lcom/baidu/mshield/rp/e/a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lcom/baidu/mshield/rp/e/a;->a:J

    sub-long v6, v0, v4

    const-wide/32 v0, 0x493e0

    cmp-long v4, v6, v0

    if-gez v4, :cond_0

    const-string v0, "checkReportFail:false"

    .line 70
    invoke-static {v0}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 73
    :cond_0
    sput-wide v2, Lcom/baidu/mshield/rp/e/a;->a:J

    :cond_1
    const-string v0, "checkReportFail:true"

    .line 76
    invoke-static {v0}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final f()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mshield/rp/e/a;->c:Lcom/baidu/mshield/sharedpreferences/a;

    invoke-virtual {v0}, Lcom/baidu/mshield/sharedpreferences/a;->u()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mshield/rp/a/a;

    .line 7
    invoke-virtual {p0, v1}, Lcom/baidu/mshield/rp/e/a;->a(Lcom/baidu/mshield/rp/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/baidu/mshield/utility/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
