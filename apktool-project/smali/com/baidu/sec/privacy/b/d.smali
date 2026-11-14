.class public Lcom/baidu/sec/privacy/b/d;
.super Ljava/lang/Object;
.source "SDKPrvHelper.java"


# static fields
.field public static a:Z = false

.field public static b:Ljava/lang/String; = ""

.field public static c:Ljava/lang/String; = ""


# direct methods
.method public static a(Ljava/lang/String;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)Ljava/lang/String;
    .locals 2

    .line 12
    :try_start_0
    invoke-static {}, Lcom/baidu/sec/privacy/b/d;->c()Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_0

    .line 17
    invoke-static {}, Lcom/baidu/sec/privacy/a/b;->b()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/baidu/sec/privacy/b/d;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 20
    :cond_0
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 21
    sget-object p1, Lcom/baidu/sec/privacy/b/d;->b:Ljava/lang/String;

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 23
    invoke-static {p0}, Lcom/baidu/sec/privacy/d/c;->a(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method public static a(Ljava/lang/String;ZLcom/baidu/sec/privacy/b;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    return-void

    .line 24
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/baidu/sec/privacy/b;->b()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/sec/privacy/b/d;->c:Ljava/lang/String;

    .line 25
    invoke-interface {p2}, Lcom/baidu/sec/privacy/b;->c()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/sec/privacy/b/d;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "sofire"

    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    const-string p0, ""

    .line 30
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "leroad"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "cfg"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/sec/privacy/b/d;->c:Ljava/lang/String;

    const-string p0, "p_s_p_c"

    .line 31
    sput-object p0, Lcom/baidu/sec/privacy/b/d;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 34
    invoke-static {p0}, Lcom/baidu/sec/privacy/d/c;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static a()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/baidu/sec/privacy/b/d;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6
    invoke-static {}, Lcom/baidu/sec/privacy/a/b;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "leroadcfg"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    :cond_0
    const-string v2, "s_a_pl"

    .line 9
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 11
    invoke-static {v1}, Lcom/baidu/sec/privacy/d/c;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 9

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/baidu/sec/privacy/b/d;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-static {}, Lcom/baidu/sec/privacy/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/baidu/sec/privacy/a/b;->d()Lcom/baidu/sec/privacy/b;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 9
    invoke-interface {p0}, Lcom/baidu/sec/privacy/b;->a()Z

    move-result p0

    sput-boolean p0, Lcom/baidu/sec/privacy/b/d;->a:Z

    .line 11
    :cond_1
    sget-boolean p0, Lcom/baidu/sec/privacy/b/d;->a:Z

    return p0

    .line 14
    :cond_2
    invoke-static {}, Lcom/baidu/sec/privacy/a/b;->a()Lcom/baidu/sec/privacy/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16
    invoke-interface {v0}, Lcom/baidu/sec/privacy/a;->a()Z

    move-result p0

    sput-boolean p0, Lcom/baidu/sec/privacy/b/d;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return p0

    .line 21
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.baidu."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ac.F"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "getInstance"

    const/4 v3, 0x0

    .line 22
    :try_start_2
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 23
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.baidu."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".ac.FI"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v2, 0x0

    .line 27
    array-length v4, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, p0, v5

    .line 28
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "cp"

    .line 29
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v2, v6

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-nez v2, :cond_6

    .line 39
    invoke-static {}, Lcom/baidu/sec/privacy/b/d;->a()Z

    move-result p0

    sput-boolean p0, Lcom/baidu/sec/privacy/b/d;->a:Z

    goto :goto_2

    .line 44
    :cond_6
    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/baidu/sec/privacy/a/b;->b()Landroid/content/Context;

    move-result-object v1

    aput-object v1, p0, v3

    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/baidu/sec/privacy/b/d;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 50
    :catchall_0
    :try_start_3
    invoke-static {}, Lcom/baidu/sec/privacy/b/d;->a()Z

    move-result p0

    sput-boolean p0, Lcom/baidu/sec/privacy/b/d;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 54
    invoke-static {p0}, Lcom/baidu/sec/privacy/d/c;->a(Ljava/lang/Throwable;)V

    .line 56
    :goto_2
    sget-boolean p0, Lcom/baidu/sec/privacy/b/d;->a:Z

    return p0
.end method

.method public static b()Landroid/content/SharedPreferences;
    .locals 1

    const-string v0, "getPlatformSharedSharedPreferences"

    .line 1
    invoke-static {v0}, Lcom/baidu/sec/privacy/b/d;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 6

    :try_start_0
    const-string v0, "com.baidu.mshield.ac.F"

    .line 35
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    .line 36
    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 37
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    .line 38
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v2

    invoke-virtual {v0, p0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 40
    new-array v0, v3, [Ljava/lang/Object;

    .line 41
    invoke-static {}, Lcom/baidu/sec/privacy/a/b;->b()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 44
    invoke-static {p0}, Lcom/baidu/sec/privacy/d/c;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c()Landroid/content/SharedPreferences;
    .locals 1

    const-string v0, "getPlatformPrivateSharedPreferences"

    .line 57
    invoke-static {v0}, Lcom/baidu/sec/privacy/b/d;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
