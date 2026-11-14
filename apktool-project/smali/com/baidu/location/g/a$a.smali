.class public Lcom/baidu/location/g/a$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/location/g/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/baidu/location/g/a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/baidu/location/g/a$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/g/a$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/g/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/baidu/location/f;->isServing:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "foreground"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {}, Lcom/baidu/location/b/c;->a()Lcom/baidu/location/b/c;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/baidu/location/b/c;->a(Z)V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/baidu/location/b/s;->a()Lcom/baidu/location/b/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/s;->e()V

    goto :goto_0

    :sswitch_2
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/baidu/location/indoor/n;->a()Lcom/baidu/location/indoor/n;

    move-result-object v3

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Lcom/baidu/location/indoor/n;->a(Landroid/os/Bundle;)Z

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/baidu/location/indoor/n;->a()Lcom/baidu/location/indoor/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/indoor/n;->b()V

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/baidu/location/indoor/n;->a()Lcom/baidu/location/indoor/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/indoor/n;->d()V

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lcom/baidu/location/indoor/n;->a()Lcom/baidu/location/indoor/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/indoor/n;->c()V

    goto :goto_0

    :sswitch_7
    invoke-static {}, Lcom/baidu/location/b/aa;->c()Lcom/baidu/location/b/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/aa;->j()V

    goto :goto_0

    :sswitch_8
    invoke-static {}, Lcom/baidu/location/b/aa;->c()Lcom/baidu/location/b/aa;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/baidu/location/b/aa;->a(ZZ)V

    goto :goto_0

    :sswitch_9
    invoke-static {}, Lcom/baidu/location/b/aa;->c()Lcom/baidu/location/b/aa;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/location/b/aa;->b(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_a
    invoke-static {v0, p1}, Lcom/baidu/location/g/a;->c(Lcom/baidu/location/g/a;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_b
    invoke-static {v0, p1}, Lcom/baidu/location/g/a;->b(Lcom/baidu/location/g/a;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_c
    invoke-static {v0, p1}, Lcom/baidu/location/g/a;->a(Lcom/baidu/location/g/a;Landroid/os/Message;)V

    :catch_0
    :cond_1
    :goto_0
    :sswitch_d
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_2

    invoke-static {v0}, Lcom/baidu/location/g/a;->b(Lcom/baidu/location/g/a;)V

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/baidu/location/g/a;->c(Lcom/baidu/location/g/a;)V

    :cond_3
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_c
        0xc -> :sswitch_b
        0xf -> :sswitch_a
        0x16 -> :sswitch_9
        0x1c -> :sswitch_8
        0x29 -> :sswitch_7
        0x6e -> :sswitch_6
        0x6f -> :sswitch_5
        0x70 -> :sswitch_4
        0x71 -> :sswitch_d
        0x72 -> :sswitch_3
        0x191 -> :sswitch_2
        0x192 -> :sswitch_d
        0x193 -> :sswitch_d
        0x196 -> :sswitch_1
        0x197 -> :sswitch_d
        0x2c1 -> :sswitch_0
        0x322 -> :sswitch_d
        0x323 -> :sswitch_d
        0x325 -> :sswitch_d
        0x327 -> :sswitch_d
        0x328 -> :sswitch_d
        0x32a -> :sswitch_d
        0x385 -> :sswitch_d
        0x386 -> :sswitch_d
        0x388 -> :sswitch_d
        0x389 -> :sswitch_d
        0x38a -> :sswitch_d
        0x38b -> :sswitch_d
    .end sparse-switch
.end method
