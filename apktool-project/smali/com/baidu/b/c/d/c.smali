.class public final Lcom/baidu/b/c/d/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:[B


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/b/c/d/f;

.field private e:Ljavax/crypto/spec/OAEPParameterSpec;

.field private f:[B

.field private g:I

.field private h:I

.field private i:Lcom/baidu/b/c/d/d;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/baidu/b/c/d/c;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/b/c/d/c;->e:Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v0, "SHA-1"

    iput-object v0, p0, Lcom/baidu/b/c/d/c;->j:Ljava/lang/String;

    const-string v0, "PKCS1Padding"

    iput-object v0, p0, Lcom/baidu/b/c/d/c;->c:Ljava/lang/String;

    return-void
.end method

.method private a(ILcom/baidu/b/c/d/d;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p2, Ljava/security/InvalidKeyException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown mode: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    :goto_0
    instance-of v2, p2, Lcom/baidu/b/c/d/d;

    if-eqz v2, :cond_a

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x4

    :goto_1
    iput v3, p0, Lcom/baidu/b/c/d/c;->b:I

    iput-object p2, p0, Lcom/baidu/b/c/d/c;->i:Lcom/baidu/b/c/d/d;

    invoke-interface {p2}, Lcom/baidu/b/c/d/d;->a()Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {p2}, Lcom/baidu/b/c/d/b;->a(Ljava/math/BigInteger;)I

    move-result p2

    iput p2, p0, Lcom/baidu/b/c/d/c;->h:I

    iput v0, p0, Lcom/baidu/b/c/d/c;->g:I

    iget-object v0, p0, Lcom/baidu/b/c/d/c;->c:Ljava/lang/String;

    const-string v3, "NoPadding"

    const/4 v4, 0x3

    if-ne v0, v3, :cond_3

    if-nez p4, :cond_2

    invoke-static {v4, p2, p3}, Lcom/baidu/b/c/d/f;->a(IILjava/security/SecureRandom;)Lcom/baidu/b/c/d/f;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/b/c/d/c;->d:Lcom/baidu/b/c/d/f;

    :cond_1
    new-array p1, p2, [B

    :goto_2
    iput-object p1, p0, Lcom/baidu/b/c/d/c;->f:[B

    return-void

    :cond_2
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "Parameters not supported"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string v3, "PKCS1Padding"

    if-ne v0, v3, :cond_6

    if-nez p4, :cond_5

    iget p4, p0, Lcom/baidu/b/c/d/c;->b:I

    const/4 v0, 0x2

    if-gt p4, v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    :goto_3
    invoke-static {v0, p2, p3}, Lcom/baidu/b/c/d/f;->a(IILjava/security/SecureRandom;)Lcom/baidu/b/c/d/f;

    move-result-object p3

    iput-object p3, p0, Lcom/baidu/b/c/d/c;->d:Lcom/baidu/b/c/d/f;

    if-eqz p1, :cond_1

    :goto_4
    invoke-virtual {p3}, Lcom/baidu/b/c/d/f;->a()I

    move-result p1

    new-array p1, p1, [B

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "Parameters not supported"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iget v0, p0, Lcom/baidu/b/c/d/c;->b:I

    if-eq v0, v4, :cond_9

    if-eq v0, v2, :cond_9

    if-eqz p4, :cond_8

    instance-of v0, p4, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_7

    check-cast p4, Ljavax/crypto/spec/OAEPParameterSpec;

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "Wrong Parameters for OAEP Padding"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p4, Ljavax/crypto/spec/OAEPParameterSpec;

    iget-object v0, p0, Lcom/baidu/b/c/d/c;->j:Ljava/lang/String;

    sget-object v1, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v4, "MGF1"

    invoke-direct {p4, v0, v4, v1, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    :goto_5
    invoke-static {v2, p2, p3, p4}, Lcom/baidu/b/c/d/f;->a(IILjava/security/SecureRandom;Ljavax/crypto/spec/OAEPParameterSpec;)Lcom/baidu/b/c/d/f;

    move-result-object p3

    iput-object p3, p0, Lcom/baidu/b/c/d/c;->d:Lcom/baidu/b/c/d/f;

    if-eqz p1, :cond_1

    goto :goto_4

    return-void

    :cond_9
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "OAEP cannot be used to sign or verify signatures"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "only support helios key"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    iget v0, p0, Lcom/baidu/b/c/d/c;->g:I

    iget-object v1, p0, Lcom/baidu/b/c/d/c;->f:[B

    array-length v2, v1

    if-gt v0, v2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lcom/baidu/b/c/d/c;->b:I

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    goto :goto_0

    :pswitch_0
    invoke-static {v1, v2, v0}, Lcom/baidu/b/c/d/b;->a([BII)[B

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/b/c/d/c;->i:Lcom/baidu/b/c/d/d;

    invoke-static {v0, v1}, Lcom/baidu/b/c/d/b;->a([BLcom/baidu/b/c/d/d;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/b/c/d/c;->d:Lcom/baidu/b/c/d/f;

    invoke-virtual {v1, v0}, Lcom/baidu/b/c/d/f;->b([B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v2, p0, Lcom/baidu/b/c/d/c;->g:I

    return-object v0

    :pswitch_1
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "only verify supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "only verify supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    iget-object v3, p0, Lcom/baidu/b/c/d/c;->d:Lcom/baidu/b/c/d/f;

    invoke-virtual {v3, v1, v2, v0}, Lcom/baidu/b/c/d/f;->a([BII)[B

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/b/c/d/c;->i:Lcom/baidu/b/c/d/d;

    invoke-static {v0, v1}, Lcom/baidu/b/c/d/b;->a([BLcom/baidu/b/c/d/d;)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput v2, p0, Lcom/baidu/b/c/d/c;->g:I

    return-object v0

    :goto_0
    :try_start_2
    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    iput v2, p0, Lcom/baidu/b/c/d/c;->g:I

    throw v0

    :cond_0
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data must not be longer than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/b/c/d/c;->f:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b([BII)V
    .locals 4

    if-eqz p3, :cond_2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/baidu/b/c/d/c;->g:I

    add-int v1, v0, p3

    iget-object v2, p0, Lcom/baidu/b/c/d/c;->f:[B

    array-length v3, v2

    if-le v1, v3, :cond_1

    array-length p1, v2

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lcom/baidu/b/c/d/c;->g:I

    return-void

    :cond_1
    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/baidu/b/c/d/c;->g:I

    add-int/2addr p1, p3

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a(ILcom/baidu/b/c/d/d;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/b/c/d/c;->a(ILcom/baidu/b/c/d/d;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/InvalidKeyException;

    const-string p3, "Wrong parameters"

    invoke-direct {p2, p3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/security/InvalidKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    const-string v0, "NoPadding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "NoPadding"

    :goto_0
    iput-object p1, p0, Lcom/baidu/b/c/d/c;->c:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "PKCS1Padding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "PKCS1Padding"

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oaeppadding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "OAEP"

    goto :goto_0

    return-void

    :cond_2
    const-string v1, "oaepwith"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "andmgf1padding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "OAEP"

    iput-object v0, p0, Lcom/baidu/b/c/d/c;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0xe

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/c/d/c;->j:Ljava/lang/String;

    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageDigest not available for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a([BII)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/b/c/d/c;->b([BII)V

    invoke-direct {p0}, Lcom/baidu/b/c/d/c;->a()[B

    move-result-object p1

    return-object p1
.end method
