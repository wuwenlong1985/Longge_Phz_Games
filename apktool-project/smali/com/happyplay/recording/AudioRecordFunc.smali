.class public Lcom/happyplay/recording/AudioRecordFunc;
.super Ljava/lang/Object;
.source "AudioRecordFunc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/happyplay/recording/AudioRecordFunc$AudioRecordThread;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/happyplay/recording/AudioRecordFunc;


# instance fields
.field private AudioName:Ljava/lang/String;

.field private NewAudioName:Ljava/lang/String;

.field private audioRecord:Landroid/media/AudioRecord;

.field private bufferSizeInBytes:I

.field private isRecord:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/happyplay/recording/AudioRecordFunc;->bufferSizeInBytes:I

    const-string v1, ""

    .line 16
    iput-object v1, p0, Lcom/happyplay/recording/AudioRecordFunc;->AudioName:Ljava/lang/String;

    const-string v1, ""

    .line 19
    iput-object v1, p0, Lcom/happyplay/recording/AudioRecordFunc;->NewAudioName:Ljava/lang/String;

    .line 22
    iput-boolean v0, p0, Lcom/happyplay/recording/AudioRecordFunc;->isRecord:Z

    return-void
.end method

.method private WriteWaveFileHeader(Ljava/io/FileOutputStream;JJJIJ)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x2c

    .line 190
    new-array v8, v7, [B

    const/4 v9, 0x0

    const/16 v10, 0x52

    aput-byte v10, v8, v9

    const/4 v10, 0x1

    const/16 v11, 0x49

    aput-byte v11, v8, v10

    const/16 v11, 0x46

    const/4 v12, 0x2

    aput-byte v11, v8, v12

    const/4 v12, 0x3

    aput-byte v11, v8, v12

    const-wide/16 v11, 0xff

    and-long v13, p4, v11

    long-to-int v13, v13

    int-to-byte v13, v13

    const/4 v14, 0x4

    aput-byte v13, v8, v14

    const/16 v13, 0x8

    shr-long v15, p4, v13

    and-long v9, v15, v11

    long-to-int v9, v9

    int-to-byte v9, v9

    const/4 v10, 0x5

    aput-byte v9, v8, v10

    const/16 v9, 0x10

    shr-long v15, p4, v9

    and-long v9, v15, v11

    long-to-int v9, v9

    int-to-byte v9, v9

    const/4 v10, 0x6

    aput-byte v9, v8, v10

    const/16 v9, 0x18

    shr-long v2, p4, v9

    and-long v9, v2, v11

    long-to-int v2, v9

    int-to-byte v2, v2

    const/4 v3, 0x7

    aput-byte v2, v8, v3

    const/16 v2, 0x57

    aput-byte v2, v8, v13

    const/16 v2, 0x9

    const/16 v3, 0x41

    aput-byte v3, v8, v2

    const/16 v2, 0xa

    const/16 v3, 0x56

    aput-byte v3, v8, v2

    const/16 v2, 0xb

    const/16 v3, 0x45

    aput-byte v3, v8, v2

    const/16 v2, 0xc

    const/16 v3, 0x66

    aput-byte v3, v8, v2

    const/16 v2, 0xd

    const/16 v3, 0x6d

    aput-byte v3, v8, v2

    const/16 v2, 0x74

    const/16 v3, 0xe

    aput-byte v2, v8, v3

    const/16 v3, 0x20

    const/16 v9, 0xf

    aput-byte v3, v8, v9

    const/16 v9, 0x10

    aput-byte v9, v8, v9

    const/16 v9, 0x11

    const/4 v10, 0x0

    aput-byte v10, v8, v9

    const/16 v9, 0x12

    aput-byte v10, v8, v9

    const/16 v9, 0x13

    aput-byte v10, v8, v9

    const/16 v9, 0x14

    const/4 v15, 0x1

    aput-byte v15, v8, v9

    const/16 v9, 0x15

    aput-byte v10, v8, v9

    move/from16 v9, p8

    int-to-byte v9, v9

    const/16 v15, 0x16

    aput-byte v9, v8, v15

    const/16 v9, 0x17

    aput-byte v10, v8, v9

    and-long v9, p6, v11

    long-to-int v9, v9

    int-to-byte v9, v9

    const/16 v10, 0x18

    aput-byte v9, v8, v10

    shr-long v9, p6, v13

    and-long v2, v9, v11

    long-to-int v2, v2

    int-to-byte v2, v2

    const/16 v3, 0x19

    aput-byte v2, v8, v3

    const/16 v2, 0x10

    shr-long v9, p6, v2

    and-long v2, v9, v11

    long-to-int v2, v2

    int-to-byte v2, v2

    const/16 v3, 0x1a

    aput-byte v2, v8, v3

    const/16 v2, 0x18

    shr-long v3, p6, v2

    and-long v9, v3, v11

    long-to-int v2, v9

    int-to-byte v2, v2

    const/16 v3, 0x1b

    aput-byte v2, v8, v3

    and-long v2, p9, v11

    long-to-int v2, v2

    int-to-byte v2, v2

    const/16 v3, 0x1c

    aput-byte v2, v8, v3

    shr-long v2, p9, v13

    and-long v4, v2, v11

    long-to-int v2, v4

    int-to-byte v2, v2

    const/16 v3, 0x1d

    aput-byte v2, v8, v3

    const/16 v2, 0x10

    shr-long v3, p9, v2

    and-long v9, v3, v11

    long-to-int v2, v9

    int-to-byte v2, v2

    const/16 v3, 0x1e

    aput-byte v2, v8, v3

    const/16 v2, 0x18

    shr-long v3, p9, v2

    and-long v5, v3, v11

    long-to-int v2, v5

    int-to-byte v2, v2

    const/16 v3, 0x1f

    aput-byte v2, v8, v3

    const/16 v2, 0x20

    aput-byte v14, v8, v2

    const/16 v2, 0x21

    const/4 v3, 0x0

    aput-byte v3, v8, v2

    const/16 v2, 0x22

    const/16 v4, 0x10

    aput-byte v4, v8, v2

    const/16 v2, 0x23

    aput-byte v3, v8, v2

    const/16 v2, 0x24

    const/16 v3, 0x64

    aput-byte v3, v8, v2

    const/16 v2, 0x61

    const/16 v3, 0x25

    aput-byte v2, v8, v3

    const/16 v3, 0x26

    const/16 v4, 0x74

    aput-byte v4, v8, v3

    const/16 v3, 0x27

    aput-byte v2, v8, v3

    and-long v2, p2, v11

    long-to-int v2, v2

    int-to-byte v2, v2

    const/16 v3, 0x28

    aput-byte v2, v8, v3

    shr-long v2, p2, v13

    and-long v4, v2, v11

    long-to-int v2, v4

    int-to-byte v2, v2

    const/16 v3, 0x29

    aput-byte v2, v8, v3

    const/16 v2, 0x10

    shr-long v2, p2, v2

    and-long v4, v2, v11

    long-to-int v2, v4

    int-to-byte v2, v2

    const/16 v3, 0x2a

    aput-byte v2, v8, v3

    const/16 v2, 0x18

    shr-long v0, p2, v2

    and-long v2, v0, v11

    long-to-int v0, v2

    int-to-byte v0, v0

    const/16 v1, 0x2b

    aput-byte v0, v8, v1

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 235
    invoke-virtual {v0, v8, v1, v7}, Ljava/io/FileOutputStream;->write([BII)V

    return-void
.end method

.method static synthetic access$000(Lcom/happyplay/recording/AudioRecordFunc;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/happyplay/recording/AudioRecordFunc;->writeDateTOFile()V

    return-void
.end method

.method static synthetic access$100(Lcom/happyplay/recording/AudioRecordFunc;)Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/happyplay/recording/AudioRecordFunc;->AudioName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/happyplay/recording/AudioRecordFunc;)Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/happyplay/recording/AudioRecordFunc;->NewAudioName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/happyplay/recording/AudioRecordFunc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/happyplay/recording/AudioRecordFunc;->copyWaveFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private close()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/happyplay/recording/AudioRecordFunc;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "stopRecord"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/happyplay/recording/AudioRecordFunc;->isRecord:Z

    .line 81
    iget-object v0, p0, Lcom/happyplay/recording/AudioRecordFunc;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 82
    iget-object v0, p0, Lcom/happyplay/recording/AudioRecordFunc;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/happyplay/recording/AudioRecordFunc;->audioRecord:Landroid/media/AudioRecord;

    :cond_0
    return-void
.end method

.method private copyWaveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 152
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 154
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const-wide/32 v7, 0xac44

    const p2, 0x2b110

    int-to-long v10, p2

    .line 161
    iget p2, p0, Lcom/happyplay/recording/AudioRecordFunc;->bufferSizeInBytes:I

    new-array p2, p2, [B

    .line 163
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 164
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 165
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    const-wide/16 v0, 0x24

    add-long v5, v3, v0

    const/4 v9, 0x2

    move-object v1, p0

    move-object v2, p1

    .line 167
    invoke-direct/range {v1 .. v11}, Lcom/happyplay/recording/AudioRecordFunc;->WriteWaveFileHeader(Ljava/io/FileOutputStream;JJJIJ)V

    .line 169
    :goto_0
    invoke-virtual {v12, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 170
    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 173
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 175
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private creatAudioRecord(Ljava/lang/String;)V
    .locals 6

    .line 90
    invoke-static {}, Lcom/happyplay/recording/AudioFileFunc;->getRawFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/happyplay/recording/AudioRecordFunc;->AudioName:Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/happyplay/recording/AudioRecordFunc;->NewAudioName:Ljava/lang/String;

    const p1, 0xac44

    const/16 v0, 0xc

    const/4 v1, 0x2

    .line 94
    invoke-static {p1, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    iput p1, p0, Lcom/happyplay/recording/AudioRecordFunc;->bufferSizeInBytes:I

    .line 98
    new-instance p1, Landroid/media/AudioRecord;

    iget v5, p0, Lcom/happyplay/recording/AudioRecordFunc;->bufferSizeInBytes:I

    const/4 v1, 0x1

    const v2, 0xac44

    const/16 v3, 0xc

    const/4 v4, 0x2

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p1, p0, Lcom/happyplay/recording/AudioRecordFunc;->audioRecord:Landroid/media/AudioRecord;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/happyplay/recording/AudioRecordFunc;
    .locals 2

    const-class v0, Lcom/happyplay/recording/AudioRecordFunc;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/happyplay/recording/AudioRecordFunc;->mInstance:Lcom/happyplay/recording/AudioRecordFunc;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/happyplay/recording/AudioRecordFunc;

    invoke-direct {v1}, Lcom/happyplay/recording/AudioRecordFunc;-><init>()V

    sput-object v1, Lcom/happyplay/recording/AudioRecordFunc;->mInstance:Lcom/happyplay/recording/AudioRecordFunc;

    .line 34
    :cond_0
    sget-object v1, Lcom/happyplay/recording/AudioRecordFunc;->mInstance:Lcom/happyplay/recording/AudioRecordFunc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0

    throw v1
.end method

.method private writeDateTOFile()V
    .locals 5

    .line 118
    iget v0, p0, Lcom/happyplay/recording/AudioRecordFunc;->bufferSizeInBytes:I

    new-array v0, v0, [B

    .line 122
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/happyplay/recording/AudioRecordFunc;->AudioName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 126
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 128
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    .line 130
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/happyplay/recording/AudioRecordFunc;->isRecord:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 131
    iget-object v1, p0, Lcom/happyplay/recording/AudioRecordFunc;->audioRecord:Landroid/media/AudioRecord;

    const/4 v3, 0x0

    iget v4, p0, Lcom/happyplay/recording/AudioRecordFunc;->bufferSizeInBytes:I

    invoke-virtual {v1, v0, v3, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    const/4 v3, -0x3

    if-eq v3, v1, :cond_1

    if-eqz v2, :cond_1

    .line 134
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 136
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 142
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getRecordFileSize()J
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/happyplay/recording/AudioRecordFunc;->NewAudioName:Ljava/lang/String;

    invoke-static {v0}, Lcom/happyplay/recording/AudioFileFunc;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public startRecordAndFile(Ljava/lang/String;)I
    .locals 1

    .line 39
    invoke-static {}, Lcom/happyplay/recording/AudioFileFunc;->isSdcardExit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    iget-boolean v0, p0, Lcom/happyplay/recording/AudioRecordFunc;->isRecord:Z

    if-eqz v0, :cond_0

    const/16 p1, 0x3ea

    return p1

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/happyplay/recording/AudioRecordFunc;->audioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_1

    .line 48
    invoke-direct {p0, p1}, Lcom/happyplay/recording/AudioRecordFunc;->creatAudioRecord(Ljava/lang/String;)V

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/happyplay/recording/AudioRecordFunc;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->startRecording()V

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/happyplay/recording/AudioRecordFunc;->isRecord:Z

    .line 54
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/happyplay/recording/AudioRecordFunc$AudioRecordThread;

    invoke-direct {v0, p0}, Lcom/happyplay/recording/AudioRecordFunc$AudioRecordThread;-><init>(Lcom/happyplay/recording/AudioRecordFunc;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/16 p1, 0x3e8

    return p1

    :cond_2
    const/16 p1, 0x3e9

    return p1
.end method

.method public stopRecordAndFile()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/happyplay/recording/AudioRecordFunc;->close()V

    return-void
.end method
