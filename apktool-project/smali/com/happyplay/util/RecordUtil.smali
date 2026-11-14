.class public Lcom/happyplay/util/RecordUtil;
.super Ljava/lang/Object;
.source "RecordUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "record"

.field static canSend:Z = true

.field private static ccActivity:Lorg/cocos2dx/javascript/AppActivity; = null

.field static isRecording:Z = false

.field static isStartRecording:Z = false

.field private static mBuffer:[S

.field private static mRecorder:Landroid/media/AudioRecord;

.field static mp3Path:Ljava/lang/String;

.field static tempFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogD(Ljava/lang/String;)V
    .locals 1

    const-string v0, "record"

    .line 41
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000()Lorg/cocos2dx/javascript/AppActivity;
    .locals 1

    .line 25
    sget-object v0, Lcom/happyplay/util/RecordUtil;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    return-object v0
.end method

.method static synthetic access$100()[S
    .locals 1

    .line 25
    sget-object v0, Lcom/happyplay/util/RecordUtil;->mBuffer:[S

    return-object v0
.end method

.method static synthetic access$200()Landroid/media/AudioRecord;
    .locals 1

    .line 25
    sget-object v0, Lcom/happyplay/util/RecordUtil;->mRecorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method public static endRecord(Ljava/lang/String;)V
    .locals 1

    .line 102
    sget-boolean v0, Lcom/happyplay/util/RecordUtil;->isStartRecording:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/happyplay/util/RecordUtil;->isRecording:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 107
    :try_start_0
    sput-boolean v0, Lcom/happyplay/util/RecordUtil;->isRecording:Z

    .line 108
    sget-object v0, Lcom/happyplay/util/RecordUtil;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 109
    sget-object v0, Lcom/happyplay/util/RecordUtil;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 110
    sput-object v0, Lcom/happyplay/util/RecordUtil;->mRecorder:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 116
    :goto_0
    new-instance v0, Lcom/happyplay/util/RecordUtil$1;

    invoke-direct {v0, p0}, Lcom/happyplay/util/RecordUtil$1;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Lcom/happyplay/util/RecordUtil$1;->start()V

    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method public static getFilesDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 139
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 152
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 155
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Lorg/cocos2dx/javascript/AppActivity;)V
    .locals 1

    const-string v0, "RecordUtil init"

    .line 45
    invoke-static {v0}, Lcom/happyplay/util/RecordUtil;->LogD(Ljava/lang/String;)V

    .line 47
    sput-object p0, Lcom/happyplay/util/RecordUtil;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    const-string p0, "RecordUtil init end"

    .line 49
    invoke-static {p0}, Lcom/happyplay/util/RecordUtil;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public static initRecorder()V
    .locals 9

    const/16 v0, 0x3e80

    const/16 v1, 0x10

    const/4 v2, 0x2

    .line 162
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v8

    .line 164
    new-array v0, v8, [S

    sput-object v0, Lcom/happyplay/util/RecordUtil;->mBuffer:[S

    .line 165
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v4, 0x1

    const/16 v5, 0x3e80

    const/16 v6, 0x10

    const/4 v7, 0x2

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    sput-object v0, Lcom/happyplay/util/RecordUtil;->mRecorder:Landroid/media/AudioRecord;

    return-void
.end method

.method public static startBufferedWrite(Ljava/io/File;)V
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/happyplay/util/RecordUtil$2;

    invoke-direct {v1, p0}, Lcom/happyplay/util/RecordUtil$2;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 213
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static startRecord(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 55
    sget-boolean v0, Lcom/happyplay/util/RecordUtil;->isStartRecording:Z

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".temp.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/happyplay/util/RecordUtil;->tempFile:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".mp3"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/happyplay/util/RecordUtil;->mp3Path:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/happyplay/util/RecordUtil;->initRecorder()V

    const/4 p0, 0x1

    .line 67
    sput-boolean p0, Lcom/happyplay/util/RecordUtil;->isRecording:Z

    .line 68
    sput-boolean p0, Lcom/happyplay/util/RecordUtil;->isStartRecording:Z

    .line 69
    sput-boolean p0, Lcom/happyplay/util/RecordUtil;->canSend:Z

    .line 72
    :try_start_0
    sget-object p0, Lcom/happyplay/util/RecordUtil;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {p0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 74
    sput-boolean p1, Lcom/happyplay/util/RecordUtil;->canSend:Z

    const-string p1, "\u60a8\u5c1a\u672a\u5f00\u542f\u8bed\u97f3\u6743\u9650"

    .line 75
    sget-object v0, Lcom/happyplay/util/RecordUtil;->ccActivity:Lorg/cocos2dx/javascript/AppActivity;

    invoke-static {p1, v0}, Lcom/happyplay/pop/popAlert;->showToast(Ljava/lang/String;Landroid/app/Activity;)V

    .line 76
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    :goto_0
    new-instance p0, Ljava/io/File;

    sget-object p1, Lcom/happyplay/util/RecordUtil;->tempFile:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 81
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 83
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const/4 p1, 0x0

    .line 86
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    move-object p0, p1

    :cond_1
    :goto_1
    if-nez p0, :cond_2

    .line 90
    new-instance p0, Ljava/io/File;

    sget-object p1, Lcom/happyplay/util/RecordUtil;->tempFile:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2
    invoke-static {p0}, Lcom/happyplay/util/RecordUtil;->startBufferedWrite(Ljava/io/File;)V

    const-string p0, "record"

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startRecord"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/happyplay/util/RecordUtil;->tempFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "||"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/happyplay/util/RecordUtil;->mp3Path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object p0, Lcom/happyplay/util/RecordUtil;->mp3Path:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method
