.class Lorg/cocos2dx/javascript/AppActivity$12;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/javascript/AppActivity;->startBufferedWrite(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/javascript/AppActivity;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/cocos2dx/javascript/AppActivity;Ljava/io/File;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lorg/cocos2dx/javascript/AppActivity$12;->this$0:Lorg/cocos2dx/javascript/AppActivity;

    iput-object p2, p0, Lorg/cocos2dx/javascript/AppActivity$12;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 715
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lorg/cocos2dx/javascript/AppActivity$12;->val$file:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 717
    :cond_0
    :try_start_1
    sget-boolean v1, Lorg/cocos2dx/javascript/AppActivity;->isRecording:Z

    if-eqz v1, :cond_1

    .line 718
    invoke-static {}, Lorg/cocos2dx/javascript/AppActivity;->access$200()Landroid/media/AudioRecord;

    move-result-object v1

    invoke-static {}, Lorg/cocos2dx/javascript/AppActivity;->access$100()[S

    move-result-object v3

    .line 719
    invoke-static {}, Lorg/cocos2dx/javascript/AppActivity;->access$100()[S

    move-result-object v4

    array-length v4, v4

    .line 718
    invoke-virtual {v1, v3, v0, v4}, Landroid/media/AudioRecord;->read([SII)I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 726
    invoke-static {}, Lorg/cocos2dx/javascript/AppActivity;->access$100()[S

    move-result-object v4

    aget-short v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 735
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 741
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v1

    .line 743
    iget-object v2, p0, Lorg/cocos2dx/javascript/AppActivity$12;->this$0:Lorg/cocos2dx/javascript/AppActivity;

    .line 744
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 743
    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 745
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 737
    :try_start_4
    iget-object v3, p0, Lorg/cocos2dx/javascript/AppActivity$12;->this$0:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 738
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 741
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6

    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 743
    iget-object v3, p0, Lorg/cocos2dx/javascript/AppActivity$12;->this$0:Lorg/cocos2dx/javascript/AppActivity;

    .line 744
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 743
    invoke-static {v3, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 745
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 746
    :goto_2
    throw v1

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_7

    :catch_4
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 730
    :goto_3
    :try_start_7
    iget-object v3, p0, Lorg/cocos2dx/javascript/AppActivity$12;->this$0:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 731
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v2, :cond_2

    .line 735
    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 741
    :try_start_9
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_6

    :catchall_2
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    .line 737
    :try_start_a
    iget-object v3, p0, Lorg/cocos2dx/javascript/AppActivity$12;->this$0:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 738
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 741
    :try_start_b
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_6

    :goto_4
    :try_start_c
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_5

    :catch_6
    move-exception v2

    .line 743
    iget-object v3, p0, Lorg/cocos2dx/javascript/AppActivity$12;->this$0:Lorg/cocos2dx/javascript/AppActivity;

    .line 744
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 743
    invoke-static {v3, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 745
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 746
    :goto_5
    throw v1

    :cond_2
    :goto_6
    return-void

    :catchall_3
    move-exception v1

    :goto_7
    if-eqz v2, :cond_3

    .line 735
    :try_start_d
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 741
    :try_start_e
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_a

    :catch_7
    move-exception v2

    .line 743
    iget-object v3, p0, Lorg/cocos2dx/javascript/AppActivity$12;->this$0:Lorg/cocos2dx/javascript/AppActivity;

    .line 744
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 743
    invoke-static {v3, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 745
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_a

    :catchall_4
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v3

    .line 737
    :try_start_f
    iget-object v4, p0, Lorg/cocos2dx/javascript/AppActivity$12;->this$0:Lorg/cocos2dx/javascript/AppActivity;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 738
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 741
    :try_start_10
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_a

    :goto_8
    :try_start_11
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_9

    :catch_9
    move-exception v2

    .line 743
    iget-object v3, p0, Lorg/cocos2dx/javascript/AppActivity$12;->this$0:Lorg/cocos2dx/javascript/AppActivity;

    .line 744
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 743
    invoke-static {v3, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 745
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 746
    :goto_9
    throw v1

    :cond_3
    :goto_a
    throw v1
.end method
