.class public Lcom/baidu/mshield/x0/j/b;
.super Ljava/lang/Object;
.source "ReportConfigInfo.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/mshield/x0/j/b;
    .locals 2

    .line 1
    new-instance v0, Lcom/baidu/mshield/x0/j/b;

    invoke-direct {v0}, Lcom/baidu/mshield/x0/j/b;-><init>()V

    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "0"

    .line 4
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/baidu/mshield/x0/j/b;->a:Ljava/lang/String;

    const-string p0, "1"

    .line 5
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/baidu/mshield/x0/j/b;->c:Ljava/lang/String;

    const-string p0, "2"

    .line 6
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/baidu/mshield/x0/j/b;->d:Ljava/lang/String;

    const-string p0, "3"

    .line 7
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/baidu/mshield/x0/j/b;->e:Ljava/lang/String;

    const-string p0, "4"

    .line 8
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/baidu/mshield/x0/j/b;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 10
    invoke-static {p0}, Lcom/baidu/mshield/x0/b/d;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    check-cast p1, Lcom/baidu/mshield/x0/j/b;

    .line 5
    iget-object v2, p0, Lcom/baidu/mshield/x0/j/b;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 6
    iget-object v2, p1, Lcom/baidu/mshield/x0/j/b;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 9
    :cond_3
    iget-object v3, p1, Lcom/baidu/mshield/x0/j/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 12
    :cond_4
    iget-object v2, p0, Lcom/baidu/mshield/x0/j/b;->e:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 13
    iget-object v2, p1, Lcom/baidu/mshield/x0/j/b;->e:Ljava/lang/String;

    if-eqz v2, :cond_6

    return v1

    .line 16
    :cond_5
    iget-object v3, p1, Lcom/baidu/mshield/x0/j/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 19
    :cond_6
    iget-object v2, p0, Lcom/baidu/mshield/x0/j/b;->b:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 20
    iget-object p1, p1, Lcom/baidu/mshield/x0/j/b;->b:Ljava/lang/String;

    if-eqz p1, :cond_8

    return v1

    .line 23
    :cond_7
    iget-object p1, p1, Lcom/baidu/mshield/x0/j/b;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_8

    return v1

    :catchall_0
    move-exception p1

    .line 27
    invoke-static {p1}, Lcom/baidu/mshield/x0/b/d;->a(Ljava/lang/Throwable;)V

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 5

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/baidu/mshield/x0/j/b;->d:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    const/16 v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    .line 2
    :try_start_1
    iget-object v3, p0, Lcom/baidu/mshield/x0/j/b;->e:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int v0, v1, v3

    mul-int/lit8 v1, v0, 0x1f

    .line 3
    iget-object v3, p0, Lcom/baidu/mshield/x0/j/b;->b:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    add-int/2addr v1, v2

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x1

    .line 5
    :goto_3
    invoke-static {v0}, Lcom/baidu/mshield/x0/b/d;->a(Ljava/lang/Throwable;)V

    :goto_4
    return v1
.end method
