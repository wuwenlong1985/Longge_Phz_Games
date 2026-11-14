.class public Lcom/baidu/mshield/sharedpreferences/b;
.super Ljava/lang/Object;
.source "SharedPreferencesEditorWarpper.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# instance fields
.field public a:Landroid/content/SharedPreferences$Editor;

.field public b:Landroid/content/Context;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baidu/mshield/sharedpreferences/b;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/baidu/mshield/sharedpreferences/b;->a:Landroid/content/SharedPreferences$Editor;

    .line 4
    iput p5, p0, Lcom/baidu/mshield/sharedpreferences/b;->c:I

    .line 5
    iput-object p3, p0, Lcom/baidu/mshield/sharedpreferences/b;->d:Ljava/lang/String;

    .line 6
    iput-boolean p4, p0, Lcom/baidu/mshield/sharedpreferences/b;->e:Z

    .line 7
    iput-object p6, p0, Lcom/baidu/mshield/sharedpreferences/b;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPT callProviderPut:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "pref_name"

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/baidu/mshield/sharedpreferences/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->e:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->b:Landroid/content/Context;

    const-string v1, "CallPreferences"

    invoke-static {v0, v1, p1}, Lcom/baidu/mshield/utility/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->b:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "CallPreferences"

    :try_start_2
    iget-object v2, p0, Lcom/baidu/mshield/sharedpreferences/b;->f:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/baidu/mshield/utility/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->b:Landroid/content/Context;

    const-string v1, "CallPreferences"

    invoke-static {v0, v1, p1}, Lcom/baidu/mshield/utility/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 21
    invoke-static {p1}, Lcom/baidu/mshield/utility/a;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public apply()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->f:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This editor not allow to call clear."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public commit()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->f:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 1
    :try_start_0
    iget v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->f:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->a:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const-string v0, "SPT putBoolean:put by mBase"

    .line 7
    invoke-static {v0}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 13
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "operation"

    const-string v2, "putBoolean"

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key"

    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 21
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/baidu/mshield/sharedpreferences/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 27
    invoke-static {p1}, Lcom/baidu/mshield/utility/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 1
    :try_start_0
    iget v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->f:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->a:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const-string v0, "SPT putFloat:put by mBase"

    .line 7
    invoke-static {v0}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 13
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "operation"

    const-string v2, "putFloat"

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key"

    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 21
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/baidu/mshield/sharedpreferences/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 27
    invoke-static {p1}, Lcom/baidu/mshield/utility/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 1
    :try_start_0
    iget v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->f:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->a:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const-string v0, "SPT putInt:put by mBase"

    .line 7
    invoke-static {v0}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 13
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "operation"

    const-string v2, "putInt"

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key"

    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 21
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/baidu/mshield/sharedpreferences/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 27
    invoke-static {p1}, Lcom/baidu/mshield/utility/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 1
    :try_start_0
    iget v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->f:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->a:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const-string v0, "SPT putLong:put by mBase"

    .line 7
    invoke-static {v0}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 13
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "operation"

    const-string v2, "putLong"

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key"

    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 21
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/baidu/mshield/sharedpreferences/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 27
    invoke-static {p1}, Lcom/baidu/mshield/utility/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 1
    :try_start_0
    iget v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->f:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->a:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const-string v0, "SPT putString:put by mBase"

    .line 7
    invoke-static {v0}, Lcom/baidu/mshield/b/c/a;->b(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/baidu/mshield/sharedpreferences/b;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 13
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "operation"

    const-string v2, "putString"

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key"

    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 21
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/baidu/mshield/sharedpreferences/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 27
    invoke-static {p1}, Lcom/baidu/mshield/utility/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "This editor not allow to call putStringSet."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "This editor not allow to call remove."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
