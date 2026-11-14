.class public final Lcom/baidu/b/c/d/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private final c:I

.field private d:Ljava/security/SecureRandom;

.field private final e:I

.field private f:Ljava/security/MessageDigest;

.field private g:Ljava/security/MessageDigest;

.field private h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/baidu/b/c/d/f;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(IILjava/security/SecureRandom;Ljavax/crypto/spec/OAEPParameterSpec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/b/c/d/f;->b:I

    iput p2, p0, Lcom/baidu/b/c/d/f;->c:I

    iput-object p3, p0, Lcom/baidu/b/c/d/f;->d:Ljava/security/SecureRandom;

    const/16 p3, 0x40

    if-lt p2, p3, :cond_4

    packed-switch p1, :pswitch_data_0

    new-instance p2, Ljava/security/InvalidKeyException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid padding: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const-string p1, "SHA-1"

    const-string p3, "SHA-1"

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    :try_start_0
    invoke-virtual {p4}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p4}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MGF1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    check-cast p1, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object p4

    invoke-virtual {p4}, Ljavax/crypto/spec/PSource;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PSpecified"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p4, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {p4}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported pSource algo: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported MGF algo: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p2

    move-object p3, p1

    move-object p1, p2

    goto :goto_1

    :cond_2
    move-object v2, p3

    move-object p3, p1

    move-object p1, v2

    :goto_0
    invoke-static {p3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p4

    iput-object p4, p0, Lcom/baidu/b/c/d/f;->f:Ljava/security/MessageDigest;

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p4

    iput-object p4, p0, Lcom/baidu/b/c/d/f;->g:Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object p4, p0, Lcom/baidu/b/c/d/f;->f:Ljava/security/MessageDigest;

    invoke-static {p4, v0}, Lcom/baidu/b/c/d/f;->a(Ljava/security/MessageDigest;[B)[B

    move-result-object p4

    iput-object p4, p0, Lcom/baidu/b/c/d/f;->h:[B

    array-length p4, p4

    add-int/lit8 p2, p2, -0x2

    mul-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    iput p2, p0, Lcom/baidu/b/c/d/f;->e:I

    if-lez p2, :cond_3

    return-void

    :cond_3
    new-instance p2, Ljava/security/InvalidKeyException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key is too short for encryption using OAEPPadding with "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " and MGF1"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    :goto_1
    new-instance p2, Ljava/security/InvalidKeyException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Digest "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not available"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :pswitch_1
    add-int/lit8 p2, p2, -0xb

    :pswitch_2
    iput p2, p0, Lcom/baidu/b/c/d/f;->e:I

    return-void

    :cond_4
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "Padded size must be at least 64"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static a(IILjava/security/SecureRandom;)Lcom/baidu/b/c/d/f;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance v0, Lcom/baidu/b/c/d/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/baidu/b/c/d/f;-><init>(IILjava/security/SecureRandom;Ljavax/crypto/spec/OAEPParameterSpec;)V

    return-object v0
.end method

.method public static a(IILjava/security/SecureRandom;Ljavax/crypto/spec/OAEPParameterSpec;)Lcom/baidu/b/c/d/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance v0, Lcom/baidu/b/c/d/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/baidu/b/c/d/f;-><init>(IILjava/security/SecureRandom;Ljavax/crypto/spec/OAEPParameterSpec;)V

    return-object v0
.end method

.method private a([BII[BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v1, 0x14

    new-array v2, v1, [B

    :cond_0
    if-lez p6, :cond_2

    iget-object v3, p0, Lcom/baidu/b/c/d/f;->g:Ljava/security/MessageDigest;

    invoke-virtual {v3, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v3, p0, Lcom/baidu/b/c/d/f;->g:Ljava/security/MessageDigest;

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V

    :try_start_0
    iget-object v3, p0, Lcom/baidu/b/c/d/f;->g:Ljava/security/MessageDigest;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-ge v4, v1, :cond_1

    if-lez p6, :cond_1

    add-int/lit8 v3, p5, 0x1

    aget-byte v5, p4, p5

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, v2, v4

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p4, p5

    add-int/lit8 p6, p6, -0x1

    move p5, v3

    move v4, v6

    goto :goto_0

    :cond_1
    if-lez p6, :cond_0

    const/4 v3, 0x3

    :goto_1
    aget-byte v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    if-nez v4, :cond_0

    if-lez v3, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Ljava/security/DigestException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    return-void
.end method

.method private static a(Ljava/security/MessageDigest;[B)[B
    .locals 1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/baidu/b/c/d/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    sget-object v0, Lcom/baidu/b/c/d/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_2
    move-object p0, v0

    return-object p0
.end method

.method private c([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    iget v0, p0, Lcom/baidu/b/c/d/f;->c:I

    new-array v1, v0, [B

    array-length v2, p1

    sub-int/2addr v0, v2

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/baidu/b/c/d/f;->c:I

    add-int/lit8 v0, v0, -0x3

    array-length p1, p1

    sub-int/2addr v0, p1

    aput-byte v3, v1, v3

    iget p1, p0, Lcom/baidu/b/c/d/f;->b:I

    int-to-byte v2, p1

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/4 v2, -0x1

    const/4 v4, 0x2

    if-ne p1, v3, :cond_0

    :goto_0
    add-int/lit8 p1, v0, -0x1

    if-lez v0, :cond_4

    add-int/lit8 v0, v4, 0x1

    aput-byte v2, v1, v4

    move v4, v0

    move v0, p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/baidu/b/c/d/f;->d:Ljava/security/SecureRandom;

    if-nez p1, :cond_1

    sget-object p1, Lcom/baidu/b/c/d/b;->a:Ljava/security/SecureRandom;

    iput-object p1, p0, Lcom/baidu/b/c/d/f;->d:Ljava/security/SecureRandom;

    :cond_1
    const/16 p1, 0x40

    new-array p1, p1, [B

    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_4

    :goto_2
    if-gez v2, :cond_2

    iget-object v0, p0, Lcom/baidu/b/c/d/f;->d:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v2, 0x3f

    :cond_2
    add-int/lit8 v0, v2, -0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    if-eqz v2, :cond_3

    add-int/lit8 v5, v4, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    move v2, v0

    move v0, v3

    move v4, v5

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method private d([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-nez v1, :cond_6

    const/4 v1, 0x2

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    iget v4, p0, Lcom/baidu/b/c/d/f;->b:I

    if-ne v3, v4, :cond_5

    :goto_0
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p1, v1

    const/16 v4, 0xff

    and-int/2addr v1, v4

    if-nez v1, :cond_1

    array-length v1, p1

    sub-int/2addr v1, v3

    iget v2, p0, Lcom/baidu/b/c/d/f;->e:I

    if-gt v1, v2, :cond_0

    new-array v2, v1, [B

    array-length v3, p1

    sub-int/2addr v3, v1

    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_0
    new-instance p1, Ljavax/crypto/BadPaddingException;

    const-string v0, "Padding string too short"

    invoke-direct {p1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    array-length v5, p1

    if-eq v3, v5, :cond_4

    iget v5, p0, Lcom/baidu/b/c/d/f;->b:I

    if-ne v5, v2, :cond_3

    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljavax/crypto/BadPaddingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Padding byte not 0xff: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    move v1, v3

    goto :goto_0

    :cond_4
    new-instance p1, Ljavax/crypto/BadPaddingException;

    const-string v0, "Padding string not terminated"

    invoke-direct {p1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance v0, Ljavax/crypto/BadPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blocktype mismatch: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance p1, Ljavax/crypto/BadPaddingException;

    const-string v0, "Data must start with zero"

    invoke-direct {p1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e([B)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/b/c/d/f;->d:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/b/c/d/b;->a:Ljava/security/SecureRandom;

    iput-object v0, p0, Lcom/baidu/b/c/d/f;->d:Ljava/security/SecureRandom;

    :cond_0
    iget-object v0, p0, Lcom/baidu/b/c/d/f;->h:[B

    array-length v0, v0

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/baidu/b/c/d/f;->d:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget v2, p0, Lcom/baidu/b/c/d/f;->c:I

    new-array v8, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v8, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v0, 0x1

    sub-int v10, v2, v9

    iget v1, p0, Lcom/baidu/b/c/d/f;->c:I

    array-length v2, p1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/baidu/b/c/d/f;->h:[B

    invoke-static {v2, v3, v8, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v1, -0x1

    aput-byte v4, v8, v2

    array-length v2, p1

    invoke-static {p1, v3, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, v8

    move v4, v0

    move-object v5, v8

    move v6, v9

    move v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/baidu/b/c/d/f;->a([BII[BII)V

    const/4 v6, 0x1

    move v3, v9

    move v4, v10

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/b/c/d/f;->a([BII[BII)V

    return-object v8
.end method

.method private f([B)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/b/c/d/f;->h:[B

    array-length v0, v0

    const/4 v8, 0x0

    aget-byte v1, p1, v8

    if-nez v1, :cond_5

    add-int/lit8 v9, v0, 0x1

    array-length v1, p1

    sub-int v10, v1, v9

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, v9

    move v4, v10

    move-object v5, p1

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/baidu/b/c/d/f;->a([BII[BII)V

    const/4 v3, 0x1

    move v4, v0

    move v6, v9

    move v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/baidu/b/c/d/f;->a([BII[BII)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/baidu/b/c/d/f;->h:[B

    aget-byte v2, v2, v1

    add-int v3, v9, v1

    aget-byte v3, p1, v3

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljavax/crypto/BadPaddingException;

    const-string v0, "lHash mismatch"

    invoke-direct {p1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/2addr v9, v0

    :goto_1
    aget-byte v0, p1, v9

    if-nez v0, :cond_3

    add-int/lit8 v9, v9, 0x1

    array-length v0, p1

    if-ge v9, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljavax/crypto/BadPaddingException;

    const-string v0, "Padding string not terminated"

    invoke-direct {p1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    add-int/lit8 v0, v9, 0x1

    aget-byte v1, p1, v9

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    array-length v1, p1

    sub-int/2addr v1, v0

    new-array v2, v1, [B

    invoke-static {p1, v0, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_4
    new-instance p1, Ljavax/crypto/BadPaddingException;

    const-string v0, "Padding string not terminated by 0x01 byte"

    invoke-direct {p1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljavax/crypto/BadPaddingException;

    const-string v0, "Data must start with zero"

    invoke-direct {p1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/baidu/b/c/d/f;->e:I

    return v0
.end method

.method public a([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    array-length v0, p1

    iget v1, p0, Lcom/baidu/b/c/d/f;->e:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/b/c/d/f;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/baidu/b/c/d/f;->e([B)[B

    move-result-object p1

    :pswitch_1
    return-object p1

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/baidu/b/c/d/f;->c([B)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljavax/crypto/BadPaddingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data must be shorter than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/b/c/d/f;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a([BII)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/baidu/b/c/d/b;->a([BII)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/b/c/d/f;->a([B)[B

    move-result-object p1

    return-object p1
.end method

.method public b([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    array-length v0, p1

    iget v1, p0, Lcom/baidu/b/c/d/f;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/b/c/d/f;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/baidu/b/c/d/f;->f([B)[B

    move-result-object p1

    :pswitch_1
    return-object p1

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/baidu/b/c/d/f;->d([B)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljavax/crypto/BadPaddingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Padded length must be "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/b/c/d/f;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
