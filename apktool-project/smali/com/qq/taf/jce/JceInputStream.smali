.class public final Lcom/qq/taf/jce/JceInputStream;
.super Ljava/lang/Object;
.source "JceInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/taf/jce/JceInputStream$HeadData;
    }
.end annotation


# instance fields
.field private bs:Ljava/nio/ByteBuffer;

.field protected sServerEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GBK"

    .line 998
    iput-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GBK"

    .line 998
    iput-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GBK"

    .line 998
    iput-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GBK"

    .line 998
    iput-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    .line 55
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private peakHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method private readArrayImpl(Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)[TT;"
        }
    .end annotation

    .line 825
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 826
    new-instance p2, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p2}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 827
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 828
    iget-byte p2, p2, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 p3, 0x9

    if-eq p2, p3, :cond_0

    .line 841
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 830
    invoke-virtual {p0, p3, p3, p2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    if-gez v0, :cond_1

    .line 832
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "size invalid: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 833
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 835
    invoke-virtual {p0, p1, p3, p2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v3

    .line 836
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    if-eqz p3, :cond_4

    .line 844
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public static readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;Ljava/nio/ByteBuffer;)I
    .locals 2

    .line 77
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit8 v1, v0, 0xf

    int-to-byte v1, v1

    .line 78
    iput-byte v1, p0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    .line 79
    iput v0, p0, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    .line 80
    iget v0, p0, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 81
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private readMap(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;IZ)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 500
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 507
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 508
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 509
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 510
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 512
    invoke-virtual {p0, p3}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 513
    new-instance p3, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p3}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 514
    invoke-virtual {p0, p3}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 515
    iget-byte p3, p3, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 p4, 0x8

    if-eq p3, p4, :cond_1

    .line 528
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p3, 0x0

    const/4 p4, 0x1

    .line 517
    invoke-virtual {p0, p3, p3, p4}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v1

    if-gez v1, :cond_2

    .line 519
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "size invalid: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 521
    invoke-virtual {p0, v0, p3, p4}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v3

    .line 522
    invoke-virtual {p0, p2, p4, p4}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v4

    .line 523
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    .line 531
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object p1

    .line 502
    :cond_5
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method private skip(I)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private skipField()V
    .locals 1

    .line 132
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 133
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 134
    iget-byte v0, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-direct {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->skipField(B)V

    return-void
.end method

.method private skipField(B)V
    .locals 5

    const/4 v0, 0x4

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 197
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v0, "invalid type."

    invoke-direct {p1, v0}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :pswitch_0
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 182
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 183
    iget-byte v1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    if-eqz v1, :cond_0

    .line 184
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skipField with invalid type, type value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_0
    invoke-virtual {p0, v4, v4, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result p1

    .line 187
    invoke-direct {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_2

    .line 191
    :pswitch_1
    invoke-virtual {p0}, Lcom/qq/taf/jce/JceInputStream;->skipToStructEnd()V

    goto :goto_2

    .line 175
    :pswitch_2
    invoke-virtual {p0, v4, v4, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result p1

    :goto_0
    if-ge v4, p1, :cond_2

    .line 177
    invoke-direct {p0}, Lcom/qq/taf/jce/JceInputStream;->skipField()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
    :pswitch_3
    invoke-virtual {p0, v4, v4, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result p1

    :goto_1
    mul-int/lit8 v0, p1, 0x2

    if-ge v4, v0, :cond_2

    .line 171
    invoke-direct {p0}, Lcom/qq/taf/jce/JceInputStream;->skipField()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 165
    :pswitch_4
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_2

    .line 158
    :pswitch_5
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    if-gez p1, :cond_1

    add-int/lit16 p1, p1, 0x100

    .line 161
    :cond_1
    invoke-direct {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_2

    .line 155
    :pswitch_6
    invoke-direct {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_2

    .line 152
    :pswitch_7
    invoke-direct {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_2

    .line 149
    :pswitch_8
    invoke-direct {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_2

    .line 146
    :pswitch_9
    invoke-direct {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_2

    .line 143
    :pswitch_a
    invoke-direct {p0, v2}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_2

    .line 140
    :pswitch_b
    invoke-direct {p0, v3}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    :cond_2
    :goto_2
    :pswitch_c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_c
        :pswitch_c
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public directRead(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;
    .locals 0

    .line 905
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 907
    :try_start_0
    invoke-virtual {p1}, Lcom/qq/taf/jce/JceStruct;->newInit()Lcom/qq/taf/jce/JceStruct;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    new-instance p2, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p2}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 913
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 914
    iget-byte p2, p2, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 p3, 0xa

    if-eq p2, p3, :cond_0

    .line 915
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 916
    :cond_0
    invoke-virtual {p1, p0}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 917
    invoke-virtual {p0}, Lcom/qq/taf/jce/JceInputStream;->skipToStructEnd()V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 909
    new-instance p2, Lcom/qq/taf/jce/JceDecodeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-eqz p3, :cond_2

    .line 919
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getBs()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1011
    iget-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public read(BIZ)B
    .locals 0

    .line 207
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 208
    new-instance p1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 209
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 210
    iget-byte p1, p1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    if-eqz p1, :cond_1

    const/16 p2, 0xc

    if-eq p1, p2, :cond_0

    .line 218
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 215
    :cond_1
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 221
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return p1
.end method

.method public read(DIZ)D
    .locals 0

    .line 325
    invoke-virtual {p0, p3}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 326
    new-instance p1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 327
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 328
    iget-byte p1, p1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 p2, 0xc

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 339
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 336
    :pswitch_0
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p1

    goto :goto_0

    .line 333
    :pswitch_1
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    float-to-double p1, p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 342
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-wide p1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public read(FIZ)F
    .locals 0

    .line 305
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 306
    new-instance p1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 307
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 308
    iget-byte p1, p1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/16 p2, 0xc

    if-eq p1, p2, :cond_0

    .line 316
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 313
    :cond_1
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 319
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return p1
.end method

.method public read(IIZ)I
    .locals 0

    .line 250
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 251
    new-instance p1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 252
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 253
    iget-byte p1, p1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 p2, 0xc

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 267
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 264
    :pswitch_0
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    goto :goto_0

    .line 261
    :pswitch_1
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    goto :goto_0

    .line 258
    :pswitch_2
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 270
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public read(JIZ)J
    .locals 0

    .line 276
    invoke-virtual {p0, p3}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 277
    new-instance p1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 278
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 279
    iget-byte p1, p1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 p2, 0xc

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 296
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :pswitch_0
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    goto :goto_0

    .line 290
    :pswitch_1
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long p1, p1

    goto :goto_0

    .line 287
    :pswitch_2
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    int-to-long p1, p1

    goto :goto_0

    .line 284
    :pswitch_3
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    int-to-long p1, p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 299
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-wide p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;
    .locals 0

    .line 927
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 929
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qq/taf/jce/JceStruct;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    new-instance p2, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p2}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 935
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 936
    iget-byte p2, p2, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 p3, 0xa

    if-eq p2, p3, :cond_0

    .line 937
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 938
    :cond_0
    invoke-virtual {p1, p0}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 939
    invoke-virtual {p0}, Lcom/qq/taf/jce/JceInputStream;->skipToStructEnd()V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 931
    new-instance p2, Lcom/qq/taf/jce/JceDecodeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-eqz p3, :cond_2

    .line 941
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public read(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 952
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 953
    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 954
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 955
    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 956
    :cond_1
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 957
    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 958
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 959
    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result p1

    .line 960
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 961
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    .line 962
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 963
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    .line 964
    invoke-virtual {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 965
    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x0

    .line 966
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(DIZ)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 967
    :cond_6
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 968
    invoke-virtual {p0, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 969
    :cond_7
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 970
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    .line 971
    :cond_8
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_9

    .line 972
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readArray(Ljava/util/List;IZ)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 973
    :cond_9
    instance-of v0, p1, Lcom/qq/taf/jce/JceStruct;

    if-eqz v0, :cond_a

    .line 974
    check-cast p1, Lcom/qq/taf/jce/JceStruct;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object p1

    return-object p1

    .line 975
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 976
    instance-of v0, p1, [B

    const/4 v1, 0x0

    if-nez v0, :cond_12

    instance-of v0, p1, [Ljava/lang/Byte;

    if-eqz v0, :cond_b

    goto :goto_0

    .line 978
    :cond_b
    instance-of v0, p1, [Z

    if-eqz v0, :cond_c

    .line 979
    check-cast v1, [Z

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read([ZIZ)[Z

    move-result-object p1

    return-object p1

    .line 980
    :cond_c
    instance-of v0, p1, [S

    if-eqz v0, :cond_d

    .line 981
    check-cast v1, [S

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read([SIZ)[S

    move-result-object p1

    return-object p1

    .line 982
    :cond_d
    instance-of v0, p1, [I

    if-eqz v0, :cond_e

    .line 983
    check-cast v1, [I

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read([IIZ)[I

    move-result-object p1

    return-object p1

    .line 984
    :cond_e
    instance-of v0, p1, [J

    if-eqz v0, :cond_f

    .line 985
    check-cast v1, [J

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read([JIZ)[J

    move-result-object p1

    return-object p1

    .line 986
    :cond_f
    instance-of v0, p1, [F

    if-eqz v0, :cond_10

    .line 987
    check-cast v1, [F

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read([FIZ)[F

    move-result-object p1

    return-object p1

    .line 988
    :cond_10
    instance-of v0, p1, [D

    if-eqz v0, :cond_11

    .line 989
    check-cast v1, [D

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read([DIZ)[D

    move-result-object p1

    return-object p1

    .line 991
    :cond_11
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readArray([Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 977
    :cond_12
    :goto_0
    check-cast v1, [B

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object p1

    return-object p1

    .line 994
    :cond_13
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "read object error: unsupport type."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 1

    .line 380
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 381
    new-instance p1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 382
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 383
    iget-byte p1, p1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch p1, :pswitch_data_0

    .line 413
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 399
    :pswitch_0
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    const/high16 p2, 0x6400000

    if-gt p1, p2, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    new-array p1, p1, [B

    .line 403
    iget-object p2, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 405
    :try_start_0
    new-instance p2, Ljava/lang/String;

    iget-object p3, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 408
    :catch_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    .line 401
    :cond_1
    :goto_0
    new-instance p2, Lcom/qq/taf/jce/JceDecodeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "String too long: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 385
    :pswitch_1
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    if-gez p1, :cond_2

    add-int/lit16 p1, p1, 0x100

    .line 388
    :cond_2
    new-array p1, p1, [B

    .line 389
    iget-object p2, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 391
    :try_start_1
    new-instance p2, Ljava/lang/String;

    iget-object p3, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 394
    :catch_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    :goto_1
    move-object p1, p2

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    .line 416
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public read(SIZ)S
    .locals 0

    .line 227
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 228
    new-instance p1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 229
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 230
    iget-byte p1, p1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 p2, 0xc

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 241
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 238
    :pswitch_0
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    goto :goto_0

    .line 235
    :pswitch_1
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    int-to-short p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 244
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public read(ZIZ)Z
    .locals 0

    const/4 p1, 0x0

    .line 202
    invoke-virtual {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public read([BIZ)[B
    .locals 4

    .line 647
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 648
    new-instance p1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 649
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 650
    iget-byte p3, p1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 v0, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p3, v0, :cond_3

    const/16 v0, 0xd

    if-eq p3, v0, :cond_0

    .line 674
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 652
    :cond_0
    new-instance p3, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p3}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 653
    invoke-virtual {p0, p3}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 654
    iget-byte v0, p3, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    if-eqz v0, :cond_1

    .line 655
    new-instance v0, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type mismatch, tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", type: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p3, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_1
    invoke-virtual {p0, v2, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    if-gez v0, :cond_2

    .line 659
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid size, tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", type: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p3, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 660
    :cond_2
    new-array p1, v0, [B

    .line 661
    iget-object p2, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 665
    :cond_3
    invoke-virtual {p0, v2, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result p1

    if-gez p1, :cond_4

    .line 667
    new-instance p2, Lcom/qq/taf/jce/JceDecodeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "size invalid: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 668
    :cond_4
    new-array p2, p1, [B

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_5

    .line 670
    aget-byte v0, p2, v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    move-object p1, p2

    goto :goto_1

    :cond_6
    if-eqz p3, :cond_7

    .line 677
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public read([DIZ)[D
    .locals 4

    .line 780
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 781
    new-instance p1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 782
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 783
    iget-byte p1, p1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 p2, 0x9

    if-eq p1, p2, :cond_0

    .line 794
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 785
    invoke-virtual {p0, p2, p2, p1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result p3

    if-gez p3, :cond_1

    .line 787
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "size invalid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 788
    :cond_1
    new-array v0, p3, [D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_4

    .line 790
    aget-wide v2, v0, p2

    invoke-virtual {p0, v2, v3, p2, p1}, Lcom/qq/taf/jce/JceInputStream;->read(DIZ)D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 797
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v0, 0x0

    :cond_4
    return-object v0
.end method

.method public read([FIZ)[F
    .locals 3

    .line 756
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 757
    new-instance p1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 758
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 759
    iget-byte p1, p1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 p2, 0x9

    if-eq p1, p2, :cond_0

    .line 770
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 761
    invoke-virtual {p0, p2, p2, p1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result p3

    if-gez p3, :cond_1

    .line 763
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "size invalid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 764
    :cond_1
    new-array v0, p3, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_4

    .line 766
    aget v2, v0, p2

    invoke-virtual {p0, v2, p2, p1}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 773
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v0, 0x0

    :cond_4
    return-object v0
.end method

.method public read([IIZ)[I
    .locals 3

    .line 708
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 709
    new-instance p1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 710
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 711
    iget-byte p1, p1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 p2, 0x9

    if-eq p1, p2, :cond_0

    .line 722
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 713
    invoke-virtual {p0, p2, p2, p1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result p3

    if-gez p3, :cond_1

    .line 715
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "size invalid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 716
    :cond_1
    new-array v0, p3, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_4

    .line 718
    aget v2, v0, p2

    invoke-virtual {p0, v2, p2, p1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 725
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v0, 0x0

    :cond_4
    return-object v0
.end method

.method public read([JIZ)[J
    .locals 4

    .line 732
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 733
    new-instance p1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 734
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 735
    iget-byte p1, p1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 p2, 0x9

    if-eq p1, p2, :cond_0

    .line 746
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 737
    invoke-virtual {p0, p2, p2, p1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result p3

    if-gez p3, :cond_1

    .line 739
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "size invalid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 740
    :cond_1
    new-array v0, p3, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_4

    .line 742
    aget-wide v2, v0, p2

    invoke-virtual {p0, v2, v3, p2, p1}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 749
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v0, 0x0

    :cond_4
    return-object v0
.end method

.method public read([Lcom/qq/taf/jce/JceStruct;IZ)[Lcom/qq/taf/jce/JceStruct;
    .locals 0

    .line 947
    invoke-virtual {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readArray([Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/qq/taf/jce/JceStruct;

    return-object p1
.end method

.method public read([Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 0

    .line 465
    invoke-virtual {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readArray([Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public read([SIZ)[S
    .locals 3

    .line 684
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 685
    new-instance p1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 686
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 687
    iget-byte p1, p1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 p2, 0x9

    if-eq p1, p2, :cond_0

    .line 698
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 689
    invoke-virtual {p0, p2, p2, p1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result p3

    if-gez p3, :cond_1

    .line 691
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "size invalid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 692
    :cond_1
    new-array v0, p3, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_4

    .line 694
    aget-short v2, v0, p2

    invoke-virtual {p0, v2, p2, p1}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 701
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v0, 0x0

    :cond_4
    return-object v0
.end method

.method public read([ZIZ)[Z
    .locals 3

    .line 623
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 624
    new-instance p1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 625
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 626
    iget-byte p1, p1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 p2, 0x9

    if-eq p1, p2, :cond_0

    .line 637
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 628
    invoke-virtual {p0, p2, p2, p1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result p3

    if-gez p3, :cond_1

    .line 630
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "size invalid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 631
    :cond_1
    new-array v0, p3, [Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_4

    .line 633
    aget-boolean v2, v0, p2

    invoke-virtual {p0, v2, p2, p1}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 640
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v0, 0x0

    :cond_4
    return-object v0
.end method

.method public readArray(Ljava/util/List;IZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;IZ)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 811
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 815
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readArrayImpl(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 817
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 818
    :goto_0
    array-length p3, p1

    if-ge v0, p3, :cond_2

    .line 819
    aget-object p3, p1, v0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2

    .line 812
    :cond_3
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public readArray([Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IZ)[TT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 804
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 806
    aget-object p1, p1, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readArrayImpl(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 805
    :cond_1
    :goto_0
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "unable to get type of key and value."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readByteString(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 1

    .line 348
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 349
    new-instance p1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 350
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 351
    iget-byte p1, p1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch p1, :pswitch_data_0

    .line 371
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :pswitch_0
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    const/high16 p2, 0x6400000

    if-gt p1, p2, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    new-array p1, p1, [B

    .line 366
    iget-object p2, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 367
    invoke-static {p1}, Lcom/qq/taf/jce/HexUtil;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 364
    :cond_1
    :goto_0
    new-instance p2, Lcom/qq/taf/jce/JceDecodeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "String too long: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 353
    :pswitch_1
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    if-gez p1, :cond_2

    add-int/lit16 p1, p1, 0x100

    .line 356
    :cond_2
    new-array p1, p1, [B

    .line 357
    iget-object p2, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 358
    invoke-static {p1}, Lcom/qq/taf/jce/HexUtil;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 374
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public readList(IZ)Ljava/util/List;
    .locals 6

    .line 538
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 539
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 540
    new-instance p1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 541
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 542
    iget-byte p1, p1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 p2, 0x9

    if-eq p1, p2, :cond_0

    .line 613
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 544
    invoke-virtual {p0, p2, p2, p1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v1

    if-gez v1, :cond_1

    .line 546
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "size invalid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 548
    new-instance v3, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v3}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 549
    invoke-virtual {p0, v3}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 550
    iget-byte v3, v3, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/4 v4, 0x4

    const/16 v5, 0x8

    packed-switch v3, :pswitch_data_0

    .line 605
    :pswitch_0
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 602
    :pswitch_1
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 590
    :pswitch_2
    :try_start_0
    const-class v3, Lcom/qq/taf/jce/JceStruct;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 591
    new-array v4, p2, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 592
    new-array v4, p2, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qq/taf/jce/JceStruct;

    .line 593
    invoke-virtual {v3, p0}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 594
    invoke-virtual {p0}, Lcom/qq/taf/jce/JceInputStream;->skipToStructEnd()V

    .line 595
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 597
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 598
    new-instance p2, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type mismatch."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 577
    :pswitch_3
    iget-object v3, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_1

    .line 570
    :pswitch_4
    iget-object v3, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    if-gez v3, :cond_2

    add-int/lit16 v3, v3, 0x100

    .line 573
    :cond_2
    invoke-direct {p0, v3}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_1

    .line 567
    :pswitch_5
    invoke-direct {p0, v5}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_1

    .line 564
    :pswitch_6
    invoke-direct {p0, v4}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_1

    .line 561
    :pswitch_7
    invoke-direct {p0, v5}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_1

    .line 558
    :pswitch_8
    invoke-direct {p0, v4}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_1

    :pswitch_9
    const/4 v3, 0x2

    .line 555
    invoke-direct {p0, v3}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_1

    .line 552
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    :goto_1
    :pswitch_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 616
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;IZ)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 495
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1
.end method

.method public readString(IZ)Ljava/lang/String;
    .locals 2

    .line 423
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 424
    new-instance p1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 425
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 426
    iget-byte p1, p1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch p1, :pswitch_data_0

    .line 456
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 442
    :pswitch_0
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    const/high16 p2, 0x6400000

    if-gt p1, p2, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    new-array p1, p1, [B

    .line 446
    iget-object p2, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 448
    :try_start_0
    new-instance p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 451
    :catch_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    .line 444
    :cond_1
    :goto_0
    new-instance p2, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "String too long: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 428
    :pswitch_1
    iget-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    if-gez p1, :cond_2

    add-int/lit16 p1, p1, 0x100

    .line 431
    :cond_2
    new-array p1, p1, [B

    .line 432
    iget-object p2, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 434
    :try_start_1
    new-instance p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 437
    :catch_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 459
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readStringMap(IZ)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 469
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 470
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 471
    new-instance p1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {p1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 472
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 473
    iget-byte p1, p1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    .line 486
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 475
    invoke-virtual {p0, p1, p1, p2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v1

    if-gez v1, :cond_1

    .line 477
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "size invalid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 479
    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v3

    .line 480
    invoke-virtual {p0, p2, p2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v4

    .line 481
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 489
    new-instance p1, Lcom/qq/taf/jce/JceDecodeException;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-object v0
.end method

.method public setServerEncoding(Ljava/lang/String;)I
    .locals 0

    .line 1000
    iput-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method

.method public skipToStructEnd()V
    .locals 3

    .line 123
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 125
    :cond_0
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 126
    iget-byte v1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-direct {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->skipField(B)V

    .line 127
    iget-byte v1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    return-void
.end method

.method public skipToTag(I)Z
    .locals 5

    const/4 v0, 0x0

    .line 104
    :try_start_0
    new-instance v1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 106
    :goto_0
    invoke-direct {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->peakHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)I

    move-result v2

    .line 107
    iget-byte v3, v1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    return v0

    .line 110
    :cond_0
    iget v3, v1, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    if-gt p1, v3, :cond_2

    .line 111
    iget v1, v1, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 112
    :cond_2
    invoke-direct {p0, v2}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    .line 113
    iget-byte v2, v1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-direct {p0, v2}, Lcom/qq/taf/jce/JceInputStream;->skipField(B)V
    :try_end_0
    .catch Lcom/qq/taf/jce/JceDecodeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v0
.end method

.method public warp([B)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    return-void
.end method

.method public wrap([B)V
    .locals 0

    .line 67
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    return-void
.end method
