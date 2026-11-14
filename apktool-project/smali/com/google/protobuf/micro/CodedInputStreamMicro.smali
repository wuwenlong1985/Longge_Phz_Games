.class public final Lcom/google/protobuf/micro/CodedInputStreamMicro;
.super Ljava/lang/Object;
.source "CodedInputStreamMicro.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DEFAULT_RECURSION_LIMIT:I = 0x40

.field private static final DEFAULT_SIZE_LIMIT:I = 0x4000000


# instance fields
.field private final buffer:[B

.field private bufferPos:I

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private final input:Ljava/io/InputStream;

.field private lastTag:I

.field private recursionDepth:I

.field private recursionLimit:I

.field private sizeLimit:I

.field private totalBytesRetired:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 450
    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    const/16 v0, 0x40

    .line 454
    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionLimit:I

    const/high16 v0, 0x4000000

    .line 457
    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->sizeLimit:I

    const/16 v0, 0x1000

    .line 471
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    const/4 v0, 0x0

    .line 472
    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 473
    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 474
    iput-object p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 450
    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    const/16 v0, 0x40

    .line 454
    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionLimit:I

    const/high16 v0, 0x4000000

    .line 457
    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->sizeLimit:I

    .line 464
    iput-object p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    add-int/2addr p3, p2

    .line 465
    iput p3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 466
    iput p2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    const/4 p1, 0x0

    .line 467
    iput-object p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    return-void
.end method

.method public static decodeZigZag32(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static decodeZigZag64(J)J
    .locals 6

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long v4, p0, v2

    neg-long p0, v4

    xor-long v2, v0, p0

    return-wide v2
.end method

.method public static newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .locals 1

    .line 53
    new-instance v0, Lcom/google/protobuf/micro/CodedInputStreamMicro;

    invoke-direct {v0, p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static newInstance([B)Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .locals 2

    .line 60
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->newInstance([BII)Lcom/google/protobuf/micro/CodedInputStreamMicro;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance([BII)Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .locals 1

    .line 68
    new-instance v0, Lcom/google/protobuf/micro/CodedInputStreamMicro;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;-><init>([BII)V

    return-object v0
.end method

.method static readRawVarint32(Ljava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    const/4 v3, -0x1

    if-ge v0, v2, :cond_2

    .line 336
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 338
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object p0

    throw p0

    :cond_0
    and-int/lit8 v3, v2, 0x7f

    shl-int/2addr v3, v0

    or-int/2addr v1, v3

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v2, 0x40

    if-ge v0, v2, :cond_5

    .line 347
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 349
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object p0

    throw p0

    :cond_3
    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_4

    return v1

    :cond_4
    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    .line 355
    :cond_5
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->malformedVarint()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object p0

    throw p0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 2

    .line 550
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 551
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    add-int/2addr v0, v1

    .line 552
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    if-le v0, v1, :cond_0

    .line 554
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSizeAfterLimit:I

    .line 555
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSizeAfterLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 557
    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSizeAfterLimit:I

    :goto_0
    return-void
.end method

.method private refillBuffer(Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    if-ge v0, v1, :cond_0

    .line 602
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "refillBuffer() called when buffer wasn\'t empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 606
    :cond_0
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    .line 609
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object p1

    throw p1

    :cond_1
    return v2

    .line 615
    :cond_2
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    .line 617
    iput v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 618
    iget-object v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 619
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    if-ge v0, v1, :cond_4

    goto :goto_2

    .line 624
    :cond_4
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    if-ne v0, v1, :cond_6

    .line 625
    iput v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    if-eqz p1, :cond_5

    .line 627
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object p1

    throw p1

    :cond_5
    return v2

    .line 632
    :cond_6
    invoke-direct {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recomputeBufferSizeAfterLimit()V

    .line 633
    iget p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSizeAfterLimit:I

    add-int/2addr p1, v0

    .line 635
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->sizeLimit:I

    if-gt p1, v0, :cond_8

    if-gez p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 p1, 0x1

    return p1

    .line 636
    :cond_8
    :goto_1
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->sizeLimitExceeded()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object p1

    throw p1

    .line 620
    :cond_9
    :goto_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nThe InputStream implementation is buggy."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 102
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->lastTag:I

    if-eq v0, p1, :cond_0

    .line 103
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->invalidEndTag()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object p1

    throw p1

    :cond_0
    return-void
.end method

.method public getBytesUntilLimit()I
    .locals 2

    .line 576
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 580
    :cond_0
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/2addr v0, v1

    .line 581
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public isAtEnd()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->refillBuffer(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public popLimit(I)V
    .locals 0

    .line 567
    iput p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    .line 568
    invoke-direct {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recomputeBufferSizeAfterLimit()V

    return-void
.end method

.method public pushLimit(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    if-gez p1, :cond_0

    .line 535
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->negativeSize()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object p1

    throw p1

    .line 537
    :cond_0
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 538
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    if-le p1, v0, :cond_1

    .line 540
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object p1

    throw p1

    .line 542
    :cond_1
    iput p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    .line 544
    invoke-direct {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recomputeBufferSizeAfterLimit()V

    return v0
.end method

.method public readBool()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readBytes()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v0

    .line 240
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 243
    iget-object v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([BII)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    .line 244
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    return-object v1

    .line 248
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v0

    return-object v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionLimit:I

    if-lt v0, v1, :cond_0

    .line 214
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->recursionLimitExceeded()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object p1

    throw p1

    .line 216
    :cond_0
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    .line 217
    invoke-virtual {p1, p0}, Lcom/google/protobuf/micro/MessageMicro;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;

    const/4 p1, 0x4

    .line 218
    invoke-static {p2, p1}, Lcom/google/protobuf/micro/WireFormatMicro;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->checkLastTagWas(I)V

    .line 220
    iget p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    return-void
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/google/protobuf/micro/MessageMicro;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v0

    .line 226
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionLimit:I

    if-lt v1, v2, :cond_0

    .line 227
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->recursionLimitExceeded()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object p1

    throw p1

    .line 229
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->pushLimit(I)I

    move-result v0

    .line 230
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    .line 231
    invoke-virtual {p1, p0}, Lcom/google/protobuf/micro/MessageMicro;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;

    const/4 p1, 0x0

    .line 232
    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->checkLastTagWas(I)V

    .line 233
    iget p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionDepth:I

    .line 234
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->popLimit(I)V

    return-void
.end method

.method public readRawByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 649
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 650
    invoke-direct {p0, v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->refillBuffer(Z)Z

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawBytes(I)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_0

    .line 663
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->negativeSize()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object p1

    throw p1

    .line 666
    :cond_0
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    if-le v0, v1, :cond_1

    .line 668
    iget p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->skipRawBytes(I)V

    .line 670
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object p1

    throw p1

    .line 673
    :cond_1
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-gt p1, v0, :cond_2

    .line 675
    new-array v0, p1, [B

    .line 676
    iget-object v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    invoke-static {v2, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 677
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    return-object v0

    :cond_2
    const/16 v0, 0x1000

    if-ge p1, v0, :cond_4

    .line 684
    new-array v0, p1, [B

    .line 685
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int/2addr v2, v3

    .line 686
    iget-object v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    iget v4, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 687
    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iput v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    const/4 v3, 0x1

    .line 692
    invoke-direct {p0, v3}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->refillBuffer(Z)Z

    :goto_0
    sub-int v4, p1, v2

    .line 694
    iget v5, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    if-le v4, v5, :cond_3

    .line 695
    iget-object v4, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    invoke-static {v4, v1, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 696
    iget v4, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    add-int/2addr v2, v4

    .line 697
    iget v4, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iput v4, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 698
    invoke-direct {p0, v3}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->refillBuffer(Z)Z

    goto :goto_0

    .line 701
    :cond_3
    iget-object p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    invoke-static {p1, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 702
    iput v4, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    return-object v0

    .line 716
    :cond_4
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 717
    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    .line 720
    iget v4, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v5, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    .line 721
    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 722
    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    sub-int/2addr v3, v2

    sub-int v4, p1, v3

    .line 728
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    :goto_1
    if-lez v4, :cond_8

    .line 731
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v6, v6, [B

    const/4 v7, 0x0

    .line 733
    :goto_2
    array-length v8, v6

    if-ge v7, v8, :cond_7

    .line 734
    iget-object v8, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    const/4 v9, -0x1

    if-nez v8, :cond_5

    const/4 v8, -0x1

    goto :goto_3

    :cond_5
    iget-object v8, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    array-length v10, v6

    sub-int/2addr v10, v7

    invoke-virtual {v8, v6, v7, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    :goto_3
    if-ne v8, v9, :cond_6

    .line 737
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object p1

    throw p1

    .line 739
    :cond_6
    iget v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    add-int/2addr v9, v8

    iput v9, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    add-int/2addr v7, v8

    goto :goto_2

    .line 742
    :cond_7
    array-length v7, v6

    sub-int/2addr v4, v7

    .line 743
    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 747
    :cond_8
    new-array p1, p1, [B

    .line 751
    iget-object v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    .line 754
    :goto_4
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 755
    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 756
    array-length v4, v2

    invoke-static {v2, v1, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 757
    array-length v2, v2

    add-int/2addr v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    return-object p1
.end method

.method public readRawLittleEndian32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v0

    .line 376
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v1

    .line 377
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v2

    .line 378
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public readRawLittleEndian64()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v0

    .line 388
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v1

    .line 389
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v2

    .line 390
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v3

    .line 391
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v4

    .line 392
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v5

    .line 393
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v6

    .line 394
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v7

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long v12, v8, v10

    int-to-long v0, v1

    and-long v8, v0, v10

    const/16 v0, 0x8

    shl-long v0, v8, v0

    or-long v8, v12, v0

    int-to-long v0, v2

    and-long v12, v0, v10

    const/16 v0, 0x10

    shl-long v0, v12, v0

    or-long v12, v8, v0

    int-to-long v0, v3

    and-long v2, v0, v10

    const/16 v0, 0x18

    shl-long v0, v2, v0

    or-long v2, v12, v0

    int-to-long v0, v4

    and-long v8, v0, v10

    const/16 v0, 0x20

    shl-long v0, v8, v0

    or-long v8, v2, v0

    int-to-long v0, v5

    and-long v2, v0, v10

    const/16 v0, 0x28

    shl-long v0, v2, v0

    or-long v2, v8, v0

    int-to-long v0, v6

    and-long v4, v0, v10

    const/16 v0, 0x30

    shl-long v0, v4, v0

    or-long v4, v2, v0

    int-to-long v0, v7

    and-long v2, v0, v10

    const/16 v0, 0x38

    shl-long v0, v2, v0

    or-long v2, v4, v0

    return-wide v2
.end method

.method public readRawVarint32()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 297
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_1

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 301
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_1

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 305
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_1

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 309
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 313
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    :cond_5
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->malformedVarint()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    :cond_6
    :goto_1
    return v0
.end method

.method public readRawVarint64()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long v6, v1, v4

    and-int/lit16 v1, v3, 0x80

    if-nez v1, :cond_0

    return-wide v6

    :cond_0
    add-int/lit8 v0, v0, 0x7

    move-wide v1, v6

    goto :goto_0

    .line 370
    :cond_1
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->malformedVarint()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0
.end method

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v0

    .line 198
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 201
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->buffer:[B

    iget v3, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 202
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    return-object v1

    .line 206
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawBytes(I)[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public readTag()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->lastTag:I

    return v0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->lastTag:I

    .line 85
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->lastTag:I

    if-nez v0, :cond_1

    .line 87
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->invalidTag()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object v0

    throw v0

    .line 89
    :cond_1
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->lastTag:I

    return v0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public resetSizeCounter()V
    .locals 1

    const/4 v0, 0x0

    .line 524
    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    return-void
.end method

.method public setRecursionLimit(I)I
    .locals 3

    if-gez p1, :cond_0

    .line 486
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recursion limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionLimit:I

    .line 490
    iput p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->recursionLimit:I

    return v0
.end method

.method public setSizeLimit(I)I
    .locals 3

    if-gez p1, :cond_0

    .line 512
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size limit cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_0
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->sizeLimit:I

    .line 516
    iput p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->sizeLimit:I

    return v0
.end method

.method public skipField(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-static {p1}, Lcom/google/protobuf/micro/WireFormatMicro;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 136
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->invalidWireType()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object p1

    throw p1

    .line 133
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawLittleEndian32()I

    return v1

    :pswitch_1
    const/4 p1, 0x0

    return p1

    .line 125
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->skipMessage()V

    .line 126
    invoke-static {p1}, Lcom/google/protobuf/micro/WireFormatMicro;->getTagFieldNumber(I)I

    move-result p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/protobuf/micro/WireFormatMicro;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->checkLastTagWas(I)V

    return v1

    .line 122
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->skipRawBytes(I)V

    return v1

    .line 119
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readRawLittleEndian64()J

    return v1

    .line 116
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public skipMessage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0, v0}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public skipRawBytes(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_0

    .line 773
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->negativeSize()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object p1

    throw p1

    .line 776
    :cond_0
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    if-le v0, v1, :cond_1

    .line 778
    iget p1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->currentLimit:I

    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->skipRawBytes(I)V

    .line 780
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object p1

    throw p1

    .line 783
    :cond_1
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 785
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    goto :goto_2

    .line 788
    :cond_2
    iget v0, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    sub-int/2addr v0, v1

    .line 789
    iget v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    const/4 v1, 0x0

    .line 790
    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferPos:I

    .line 791
    iput v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->bufferSize:I

    :goto_0
    if-ge v0, p1, :cond_5

    .line 795
    iget-object v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    if-nez v1, :cond_3

    const/4 v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->input:Ljava/io/InputStream;

    sub-int v2, p1, v0

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    long-to-int v1, v1

    :goto_1
    if-gtz v1, :cond_4

    .line 797
    invoke-static {}, Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;->truncatedMessage()Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;

    move-result-object p1

    throw p1

    :cond_4
    add-int/2addr v0, v1

    .line 800
    iget v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/micro/CodedInputStreamMicro;->totalBytesRetired:I

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method
