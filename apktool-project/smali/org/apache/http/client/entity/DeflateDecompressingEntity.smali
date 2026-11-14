.class public Lorg/apache/http/client/entity/DeflateDecompressingEntity;
.super Lorg/apache/http/client/entity/DecompressingEntity;
.source "DeflateDecompressingEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/client/entity/DeflateDecompressingEntity$DeflateStream;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lorg/apache/http/client/entity/DecompressingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    return-void
.end method


# virtual methods
.method decorate(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 101
    new-array v0, v0, [B

    .line 103
    new-instance v1, Ljava/io/PushbackInputStream;

    array-length v2, v0

    invoke-direct {v1, p1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 105
    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->read([B)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 108
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unable to read the response"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v3, 0x1

    .line 112
    new-array v4, v3, [B

    .line 114
    new-instance v5, Ljava/util/zip/Inflater;

    invoke-direct {v5}, Ljava/util/zip/Inflater;-><init>()V

    :cond_1
    :goto_0
    const/4 v6, 0x0

    .line 118
    :try_start_0
    invoke-virtual {v5, v4}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v7

    if-nez v7, :cond_4

    .line 119
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->finished()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 122
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Unable to read the response"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_2
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 131
    :cond_3
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 132
    invoke-virtual {v5, v0}, Ljava/util/zip/Inflater;->setInput([B)V

    goto :goto_0

    :cond_4
    :goto_1
    if-ne v7, v2, :cond_5

    .line 137
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Unable to read the response"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_5
    invoke-virtual {v1, v0, v6, p1}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 145
    new-instance v2, Lorg/apache/http/client/entity/DeflateDecompressingEntity$DeflateStream;

    new-instance v4, Ljava/util/zip/Inflater;

    invoke-direct {v4}, Ljava/util/zip/Inflater;-><init>()V

    invoke-direct {v2, v1, v4}, Lorg/apache/http/client/entity/DeflateDecompressingEntity$DeflateStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->end()V

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 150
    :catch_0
    :try_start_1
    invoke-virtual {v1, v0, v6, p1}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 151
    new-instance p1, Lorg/apache/http/client/entity/DeflateDecompressingEntity$DeflateStream;

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p1, v1, v0}, Lorg/apache/http/client/entity/DeflateDecompressingEntity$DeflateStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->end()V

    return-object p1

    :goto_2
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->end()V

    throw p1
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method
