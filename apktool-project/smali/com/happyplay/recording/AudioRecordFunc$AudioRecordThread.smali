.class Lcom/happyplay/recording/AudioRecordFunc$AudioRecordThread;
.super Ljava/lang/Object;
.source "AudioRecordFunc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/happyplay/recording/AudioRecordFunc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioRecordThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/happyplay/recording/AudioRecordFunc;


# direct methods
.method constructor <init>(Lcom/happyplay/recording/AudioRecordFunc;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/happyplay/recording/AudioRecordFunc$AudioRecordThread;->this$0:Lcom/happyplay/recording/AudioRecordFunc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/happyplay/recording/AudioRecordFunc$AudioRecordThread;->this$0:Lcom/happyplay/recording/AudioRecordFunc;

    invoke-static {v0}, Lcom/happyplay/recording/AudioRecordFunc;->access$000(Lcom/happyplay/recording/AudioRecordFunc;)V

    .line 107
    iget-object v0, p0, Lcom/happyplay/recording/AudioRecordFunc$AudioRecordThread;->this$0:Lcom/happyplay/recording/AudioRecordFunc;

    iget-object v1, p0, Lcom/happyplay/recording/AudioRecordFunc$AudioRecordThread;->this$0:Lcom/happyplay/recording/AudioRecordFunc;

    invoke-static {v1}, Lcom/happyplay/recording/AudioRecordFunc;->access$100(Lcom/happyplay/recording/AudioRecordFunc;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/happyplay/recording/AudioRecordFunc$AudioRecordThread;->this$0:Lcom/happyplay/recording/AudioRecordFunc;

    invoke-static {v2}, Lcom/happyplay/recording/AudioRecordFunc;->access$200(Lcom/happyplay/recording/AudioRecordFunc;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/happyplay/recording/AudioRecordFunc;->access$300(Lcom/happyplay/recording/AudioRecordFunc;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
