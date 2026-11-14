.class final Lcom/baidu/vi/a;
.super Landroid/os/Handler;
.source "AudioRecorder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 47
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/vi/AudioRecorder$a;

    iget-object v0, v0, Lcom/baidu/vi/AudioRecorder$a;->a:Lcom/baidu/vi/AudioRecorder;

    .line 48
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 57
    :pswitch_0
    invoke-static {v0}, Lcom/baidu/vi/AudioRecorder;->a(Lcom/baidu/vi/AudioRecorder;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/baidu/vi/AudioRecorder;->onReadError()V

    goto :goto_0

    .line 50
    :pswitch_1
    invoke-static {v0}, Lcom/baidu/vi/AudioRecorder;->a(Lcom/baidu/vi/AudioRecorder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/baidu/vi/AudioRecorder$a;

    iget-object v1, v1, Lcom/baidu/vi/AudioRecorder$a;->b:[B

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/baidu/vi/AudioRecorder$a;

    iget p1, p1, Lcom/baidu/vi/AudioRecorder$a;->c:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/vi/AudioRecorder;->onReadData([BI)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
