.class Lcom/baidu/location/f/e$e;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/location/f/e;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/baidu/location/f/e;


# direct methods
.method constructor <init>(Lcom/baidu/location/f/e;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/location/f/e$e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    sget-boolean v0, Lcom/baidu/location/f;->isServing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/f/e$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/f/e;

    iput-object v0, p0, Lcom/baidu/location/f/e$e;->b:Lcom/baidu/location/f/e;

    iget-object v0, p0, Lcom/baidu/location/f/e$e;->b:Lcom/baidu/location/f/e;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/baidu/location/f/e$e;->b:Lcom/baidu/location/f/e;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/baidu/location/f/e;->a(Lcom/baidu/location/f/e;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/baidu/location/f/e$e;->b:Lcom/baidu/location/f/e;

    const-string v1, "&og=2"

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/baidu/location/f/e$e;->b:Lcom/baidu/location/f/e;

    const-string v1, "&og=1"

    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, v1, p1}, Lcom/baidu/location/f/e;->a(Lcom/baidu/location/f/e;Ljava/lang/String;Landroid/location/Location;)V

    return-void

    :cond_2
    const/4 v0, -0x1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/location/Location;

    invoke-static {}, Lcom/baidu/location/b/e;->a()Lcom/baidu/location/b/e;

    move-result-object v2

    iget v2, v2, Lcom/baidu/location/b/e;->bZ:I

    if-ne v2, v1, :cond_3

    invoke-static {}, Lcom/baidu/location/b/n;->a()Lcom/baidu/location/b/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/b/n;->a(Landroid/location/Location;)I

    move-result v0

    :cond_3
    iget-object v1, p0, Lcom/baidu/location/f/e$e;->b:Lcom/baidu/location/f/e;

    invoke-static {v1, p1, v0}, Lcom/baidu/location/f/e;->a(Lcom/baidu/location/f/e;Landroid/location/Location;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
