.class public Lcom/happyplay/httpClient/httpClient;
.super Ljava/lang/Object;
.source "httpClient.java"


# instance fields
.field private actionUrl:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public ok:I

.field private output:Ljava/io/OutputStream;

.field private path:Ljava/lang/String;

.field private srcPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/sdcard/mp3/FmChannels.txt"

    .line 26
    iput-object v0, p0, Lcom/happyplay/httpClient/httpClient;->srcPath:Ljava/lang/String;

    const-string v0, "http://127.0.0.1:3000"

    .line 27
    iput-object v0, p0, Lcom/happyplay/httpClient/httpClient;->actionUrl:Ljava/lang/String;

    const-string v0, "pipi"

    .line 28
    iput-object v0, p0, Lcom/happyplay/httpClient/httpClient;->path:Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/happyplay/httpClient/httpClient;->output:Ljava/io/OutputStream;

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/happyplay/httpClient/httpClient;->ok:I

    .line 33
    iput-object p1, p0, Lcom/happyplay/httpClient/httpClient;->srcPath:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/happyplay/httpClient/httpClient;->actionUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/sdcard/mp3/FmChannels.txt"

    .line 26
    iput-object v0, p0, Lcom/happyplay/httpClient/httpClient;->srcPath:Ljava/lang/String;

    const-string v0, "http://127.0.0.1:3000"

    .line 27
    iput-object v0, p0, Lcom/happyplay/httpClient/httpClient;->actionUrl:Ljava/lang/String;

    const-string v0, "pipi"

    .line 28
    iput-object v0, p0, Lcom/happyplay/httpClient/httpClient;->path:Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/happyplay/httpClient/httpClient;->output:Ljava/io/OutputStream;

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/happyplay/httpClient/httpClient;->ok:I

    .line 39
    iput-object p1, p0, Lcom/happyplay/httpClient/httpClient;->path:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/happyplay/httpClient/httpClient;->srcPath:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/happyplay/httpClient/httpClient;->actionUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public downLoadFile()V
    .locals 7

    const/4 v0, 0x0

    .line 102
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/happyplay/httpClient/httpClient;->actionUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/happyplay/httpClient/httpClient;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/happyplay/httpClient/httpClient;->srcPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    iput-object v2, p0, Lcom/happyplay/httpClient/httpClient;->filePath:Ljava/lang/String;

    .line 108
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 110
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "exits"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 116
    :cond_0
    iget-object v4, p0, Lcom/happyplay/httpClient/httpClient;->path:Ljava/lang/String;

    .line 117
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 118
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 119
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v5, p0, Lcom/happyplay/httpClient/httpClient;->output:Ljava/io/OutputStream;

    const/high16 v3, 0x100000

    .line 121
    new-array v3, v3, [B

    .line 123
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 124
    iget-object v6, p0, Lcom/happyplay/httpClient/httpClient;->output:Ljava/io/OutputStream;

    invoke-virtual {v6, v3, v0, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 127
    iget-object v1, p0, Lcom/happyplay/httpClient/httpClient;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    const-string v1, "dirdddd"

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "||"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 133
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 134
    iput v0, p0, Lcom/happyplay/httpClient/httpClient;->ok:I

    goto :goto_1

    :catch_1
    move-exception v1

    .line 130
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 131
    iput v0, p0, Lcom/happyplay/httpClient/httpClient;->ok:I

    :goto_1
    return-void
.end method

.method public uploadFile()V
    .locals 11

    .line 47
    iget-object v0, p0, Lcom/happyplay/httpClient/httpClient;->srcPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/happyplay/httpClient/httpClient;->filePath:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/happyplay/httpClient/httpClient;->actionUrl:Ljava/lang/String;

    const-string v1, "\r\n"

    const-string v2, "--"

    const-string v3, "******"

    const/4 v4, 0x0

    .line 53
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v5, 0x1

    .line 56
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 57
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 58
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v6, "POST"

    .line 59
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v6, "Connection"

    const-string v7, "Keep-Alive"

    .line 60
    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Charset"

    const-string v7, "UTF-8"

    .line 61
    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Content-Type"

    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "multipart/form-data;boundary="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 66
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 67
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Disposition: form-data; name=\"file\"; filename=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/happyplay/httpClient/httpClient;->srcPath:Ljava/lang/String;

    iget-object v9, p0, Lcom/happyplay/httpClient/httpClient;->srcPath:Ljava/lang/String;

    const-string v10, "/"

    .line 68
    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 72
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/happyplay/httpClient/httpClient;->srcPath:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x100000

    .line 73
    new-array v7, v7, [B

    .line 75
    :goto_0
    invoke-virtual {v5, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 76
    invoke-virtual {v6, v7, v4, v8}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 80
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "file send to server............"

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 86
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 88
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 89
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "result"

    .line 90
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 92
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    iput v4, p0, Lcom/happyplay/httpClient/httpClient;->ok:I

    :goto_1
    return-void
.end method
