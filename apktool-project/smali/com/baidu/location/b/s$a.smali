.class Lcom/baidu/location/b/s$a;
.super Lcom/baidu/location/h/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/b/s;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>(Lcom/baidu/location/b/s;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/s$a;->a:Lcom/baidu/location/b/s;

    invoke-direct {p0}, Lcom/baidu/location/h/h;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/location/b/s$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/location/b/s$a;->c:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/b/s$a;->d:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/location/b/s$a;->e:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/baidu/location/b/s$a;->el:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/b/s$a;->a:Lcom/baidu/location/b/s;

    invoke-static {v0}, Lcom/baidu/location/b/s;->c(Lcom/baidu/location/b/s;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/b/s$a;->a:Lcom/baidu/location/b/s;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/b/s;->a(Lcom/baidu/location/b/s;Z)Z

    iput-object p1, p0, Lcom/baidu/location/b/s$a;->b:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/b/w;->a()Lcom/baidu/location/b/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/b/w;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&enc=2"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/b/s$a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/baidu/location/b/s$a;->c:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/baidu/location/b/al;->a()Lcom/baidu/location/b/al;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/b/al;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object p2, Lcom/baidu/location/h/e;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/location/b/s$a;->a(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object p1, Lcom/baidu/location/h/e;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/baidu/location/b/s$a;->e(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 8

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/baidu/location/b/s$a;->ej:Ljava/lang/String;

    if-eqz p1, :cond_4

    :try_start_0
    iget-object p1, p0, Lcom/baidu/location/b/s$a;->ej:Ljava/lang/String;

    const-string v0, "enc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/b/w;->a()Lcom/baidu/location/b/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/w;->b()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "enc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "enc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/b/w;->a()Lcom/baidu/location/b/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/b/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v0, "enc3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/baidu/location/h/s;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/location/b/s$a;->d:Z

    if-eqz v0, :cond_5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "content"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string p1, "content"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_5

    const-string v0, "imo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "imo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "mac"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "imo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "mv"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v2, p0, Lcom/baidu/location/b/s$a;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/location/Jni;->encode3(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_5

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "tt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "hst"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v3, p0, Lcom/baidu/location/b/s$a;->a:Lcom/baidu/location/b/s;

    invoke-static {v3}, Lcom/baidu/location/b/s;->a(Lcom/baidu/location/b/s;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "hstdata"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id = \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_3

    const-string v3, "id"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/baidu/location/b/s$a;->a:Lcom/baidu/location/b/s;

    invoke-static {v0}, Lcom/baidu/location/b/s;->a(Lcom/baidu/location/b/s;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "hstdata"

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_3
    :try_start_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mac"

    iget-object v2, p0, Lcom/baidu/location/b/s$a;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "hotspot"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/baidu/location/b/s$a;->a:Lcom/baidu/location/b/s;

    invoke-static {p1, v0}, Lcom/baidu/location/b/s;->a(Lcom/baidu/location/b/s;Landroid/os/Bundle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :cond_4
    iget-boolean p1, p0, Lcom/baidu/location/b/s$a;->d:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/baidu/location/b/s$a;->a:Lcom/baidu/location/b/s;

    invoke-static {p1}, Lcom/baidu/location/b/s;->b(Lcom/baidu/location/b/s;)V

    :catch_2
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/baidu/location/b/s$a;->el:Ljava/util/Map;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/baidu/location/b/s$a;->el:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_6
    iget-object p1, p0, Lcom/baidu/location/b/s$a;->a:Lcom/baidu/location/b/s;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/baidu/location/b/s;->a(Lcom/baidu/location/b/s;Z)Z

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/b/s$a;->ei:I

    invoke-static {}, Lcom/baidu/location/f/h;->a()Lcom/baidu/location/f/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f/h;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/baidu/location/Jni;->encodeTp4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/s$a;->er:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/b/s$a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->encodeTp4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/b/s$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/b/s$a;->el:Ljava/util/Map;

    const-string v2, "bloc"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
