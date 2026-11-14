.class final Lcom/baidu/vi/d;
.super Landroid/os/Handler;
.source "VCompass.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 30
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/vi/VCompass;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 51
    :pswitch_0
    invoke-static {v0}, Lcom/baidu/vi/VCompass;->a(Lcom/baidu/vi/VCompass;)Landroid/hardware/SensorManager;

    move-result-object p1

    invoke-static {v0}, Lcom/baidu/vi/VCompass;->b(Lcom/baidu/vi/VCompass;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 37
    :pswitch_1
    invoke-static {}, Lcom/baidu/vi/VIContext;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 38
    invoke-static {v0}, Lcom/baidu/vi/VCompass;->a(Lcom/baidu/vi/VCompass;)Landroid/hardware/SensorManager;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "sensor"

    .line 39
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    invoke-static {v0, p1}, Lcom/baidu/vi/VCompass;->a(Lcom/baidu/vi/VCompass;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;

    .line 41
    :cond_1
    invoke-static {v0}, Lcom/baidu/vi/VCompass;->a(Lcom/baidu/vi/VCompass;)Landroid/hardware/SensorManager;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 43
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Sensor;

    .line 44
    invoke-static {v0}, Lcom/baidu/vi/VCompass;->a(Lcom/baidu/vi/VCompass;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-static {v0}, Lcom/baidu/vi/VCompass;->b(Lcom/baidu/vi/VCompass;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
