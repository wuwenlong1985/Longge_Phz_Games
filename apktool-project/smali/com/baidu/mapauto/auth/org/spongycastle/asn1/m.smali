.class public final Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;
.super Lcom/baidu/mapauto/auth/org/spongycastle/asn1/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/r;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x1

    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_0
    array-length v12, v1

    if-eq v3, v12, :cond_8

    aget-byte v12, v1, v3

    and-int/lit16 v12, v12, 0xff

    const-wide v13, 0xffffffffffff80L

    cmp-long v15, v8, v13

    const/16 v4, 0x32

    const-wide/16 v5, 0x50

    if-gtz v15, :cond_4

    and-int/lit8 v7, v12, 0x7f

    int-to-long v13, v7

    add-long v16, v8, v13

    and-int/lit16 v7, v12, 0x80

    if-nez v7, :cond_3

    if-eqz v11, :cond_2

    const-wide/16 v7, 0x28

    cmp-long v9, v16, v7

    if-gez v9, :cond_0

    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    cmp-long v9, v16, v5

    if-gez v9, :cond_1

    const/16 v4, 0x31

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sub-long v4, v16, v7

    move-wide/from16 v16, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sub-long v7, v16, v5

    move-wide/from16 v16, v7

    :goto_1
    move-wide/from16 v4, v16

    const/16 v6, 0x2e

    const/4 v11, 0x0

    goto :goto_2

    :cond_2
    move-wide/from16 v4, v16

    const/16 v6, 0x2e

    :goto_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-wide/16 v8, 0x0

    goto :goto_4

    :cond_3
    const/4 v4, 0x7

    shl-long v4, v16, v4

    move-wide v8, v4

    goto :goto_4

    :cond_4
    if-nez v10, :cond_5

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    :cond_5
    and-int/lit8 v7, v12, 0x7f

    int-to-long v13, v7

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    and-int/lit16 v10, v12, 0x80

    if-nez v10, :cond_7

    if-eqz v11, :cond_6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    const/16 v4, 0x2e

    const/4 v11, 0x0

    goto :goto_3

    :cond_6
    const/16 v4, 0x2e

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    const/4 v4, 0x7

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    move-object v10, v4

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;->a:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/baidu/mapauto/auth/org/spongycastle/util/a;->a([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;->b:[B

    return-void
.end method

.method public static a(Lcom/baidu/mapauto/auth/org/spongycastle/asn1/d;)Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;
    .locals 2

    if-eqz p0, :cond_3

    instance-of v0, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/d;->c()Lcom/baidu/mapauto/auth/org/spongycastle/asn1/r;

    move-result-object v0

    instance-of v0, v0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/d;->c()Lcom/baidu/mapauto/auth/org/spongycastle/asn1/r;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;

    return-object p0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    check-cast p0, [B

    :try_start_0
    invoke-static {p0}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/r;->a([B)Lcom/baidu/mapauto/auth/org/spongycastle/asn1/r;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "failed to construct object identifier from byte[]: "

    .line 2
    invoke-static {v1}, Lcom/baidu/mapauto/auth/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal object in getInstance: "

    .line 4
    invoke-static {v1}, Lcom/baidu/mapauto/auth/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;

    return-object p0
.end method

.method public static a(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .locals 7

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    const/4 v1, 0x7

    div-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void

    :cond_0
    new-array v3, v0, [B

    add-int/lit8 v4, v0, -0x1

    move-object v5, p1

    move p1, v4

    :goto_0
    if-ltz p1, :cond_1

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    and-int/lit8 v6, v6, 0x7f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v3, p1

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    aget-byte p1, v3, v4

    and-int/lit8 p1, p1, 0x7f

    int-to-byte p1, p1

    aput-byte p1, v3, v4

    invoke-virtual {p0, v3, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/baidu/mapauto/auth/org/spongycastle/asn1/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;->i()[B

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/p;->a(I)V

    array-length v1, v0

    invoke-virtual {p1, v1}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/p;->b(I)V

    .line 1
    iget-object p1, p1, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/p;->a:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final a(Lcom/baidu/mapauto/auth/org/spongycastle/asn1/r;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;->a:Ljava/lang/String;

    check-cast p1, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;

    iget-object p1, p1, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final e()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;->i()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/u1;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized i()[B
    .locals 21

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;->b:[B

    if-nez v2, :cond_b

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1
    iget-object v3, v1, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;->a:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x2e

    .line 2
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-ne v6, v8, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    const/4 v6, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v6, v7

    .line 3
    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x28

    if-ne v6, v8, :cond_1

    move v11, v6

    const/4 v6, 0x0

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    if-ne v11, v8, :cond_2

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/4 v11, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v11, v7

    .line 5
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x7

    const-wide/16 v14, 0x80

    const/16 v16, 0x8

    const/16 v4, 0x12

    const/16 v7, 0x9

    if-gt v12, v4, :cond_4

    move/from16 v17, v11

    int-to-long v10, v9

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const/4 v6, 0x0

    add-long v4, v18, v10

    .line 6
    new-array v6, v7, [B

    long-to-int v9, v4

    and-int/lit8 v9, v9, 0x7f

    int-to-byte v9, v9

    aput-byte v9, v6, v16

    const/16 v9, 0x8

    :goto_2
    cmp-long v10, v4, v14

    if-ltz v10, :cond_3

    shr-long/2addr v4, v13

    add-int/lit8 v9, v9, -0x1

    long-to-int v10, v4

    and-int/lit8 v10, v10, 0x7f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    goto :goto_2

    :cond_3
    rsub-int/lit8 v4, v9, 0x9

    invoke-virtual {v2, v6, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    :cond_4
    move/from16 v17, v11

    .line 7
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    int-to-long v5, v9

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    :goto_3
    move/from16 v4, v17

    :goto_4
    if-eq v4, v8, :cond_5

    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_a

    if-ne v4, v8, :cond_6

    const/16 v5, 0x2e

    const/4 v10, 0x0

    goto :goto_6

    :cond_6
    const/16 v5, 0x2e

    .line 8
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ne v6, v8, :cond_7

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const/4 v4, -0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v4, v6, 0x1

    .line 9
    :goto_6
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v9, 0x12

    if-gt v6, v9, :cond_9

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 10
    new-array v6, v7, [B

    long-to-int v12, v10

    and-int/lit8 v12, v12, 0x7f

    int-to-byte v12, v12

    aput-byte v12, v6, v16

    const/16 v12, 0x8

    :goto_7
    cmp-long v17, v10, v14

    if-ltz v17, :cond_8

    shr-long/2addr v10, v13

    add-int/lit8 v12, v12, -0x1

    long-to-int v5, v10

    and-int/lit8 v5, v5, 0x7f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v6, v12

    const/16 v5, 0x2e

    goto :goto_7

    :cond_8
    rsub-int/lit8 v5, v12, 0x9

    invoke-virtual {v2, v6, v12, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    .line 11
    :cond_9
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_4

    .line 12
    :cond_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;->b:[B

    :cond_b
    iget-object v2, v1, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;->b:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 0
    monitor-exit p0

    throw v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/m;->a:Ljava/lang/String;

    return-object v0
.end method
