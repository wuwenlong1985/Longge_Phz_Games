.class public Lcom/tencent/mid/util/AESHelper;
.super Ljava/lang/Object;
.source "AESHelper.java"


# static fields
.field private static final CipherMode:Ljava/lang/String; = "AES/CFB/NoPadding"

.field private static final KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field public static final TWO_POWER_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private iv:Ljavax/crypto/spec/IvParameterSpec;

.field private key:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x2

    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/tencent/mid/util/AESHelper;->TWO_POWER_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/tencent/mid/util/AESHelper;->key:Ljavax/crypto/SecretKey;

    .line 77
    iput-object v0, p0, Lcom/tencent/mid/util/AESHelper;->iv:Ljavax/crypto/spec/IvParameterSpec;

    return-void
.end method

.method public static byte2hex([B)Ljava/lang/String;
    .locals 5

    .line 289
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    .line 291
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 293
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v3, "0"

    .line 295
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createIvParameterSpec()Ljavax/crypto/spec/IvParameterSpec;
    .locals 2

    .line 141
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    .line 142
    new-array v1, v1, [B

    .line 143
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 144
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0
.end method

.method public static createIvParameterString()Ljava/lang/String;
    .locals 1

    .line 133
    invoke-static {}, Lcom/tencent/mid/util/AESHelper;->createIvParameterSpec()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mid/util/AESHelper;->byte2hex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createSecretKey()Ljavax/crypto/SecretKey;
    .locals 3

    :try_start_0
    const-string v0, "AES"

    .line 101
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x80

    .line 108
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 110
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 111
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createSecretKeyString()Ljava/lang/String;
    .locals 1

    .line 89
    invoke-static {}, Lcom/tencent/mid/util/AESHelper;->createSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mid/util/AESHelper;->byte2hex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private fillBytes(Ljava/lang/String;I)[B
    .locals 2

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 170
    array-length v0, p1

    if-ge v0, p2, :cond_0

    .line 172
    new-array p2, p2, [B

    const/4 v1, 0x0

    .line 173
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 174
    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_0
    return-object p1
.end method

.method public static hex2byte(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 309
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 312
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 313
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/2addr v1, v2

    .line 314
    new-array v2, v1, [B

    :goto_0
    if-ge v0, v1, :cond_1

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 316
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    .line 317
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    .line 310
    :cond_2
    :goto_1
    new-array p0, v0, [B

    return-object p0
.end method

.method private searchTwoPowerLength(II)I
    .locals 2

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 158
    :goto_0
    sget-object p2, Lcom/tencent/mid/util/AESHelper;->TWO_POWER_LIST:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 159
    sget-object p2, Lcom/tencent/mid/util/AESHelper;->TWO_POWER_LIST:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 160
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 161
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_2
    return p1
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 266
    :try_start_0
    invoke-static {p1}, Lcom/tencent/mid/util/AESHelper;->hex2byte(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 268
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    .line 270
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/mid/util/AESHelper;->decrypt([B)[B

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 275
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :catch_1
    return-object v0
.end method

.method public decrypt([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/tencent/mid/util/AESHelper;->key:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    .line 245
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "\u5bc6\u94a5\u4e3a\u7a7a, \u8bf7\u8bbe\u7f6e"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :try_start_0
    const-string v0, "AES/CFB/NoPadding"

    .line 248
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 249
    iget-object v2, p0, Lcom/tencent/mid/util/AESHelper;->key:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lcom/tencent/mid/util/AESHelper;->iv:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 250
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    .line 229
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 231
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 233
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/mid/util/AESHelper;->encrypt([B)[B

    move-result-object p1

    .line 234
    invoke-static {p1}, Lcom/tencent/mid/util/AESHelper;->byte2hex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encrypt([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/tencent/mid/util/AESHelper;->key:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    .line 203
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "\u5bc6\u94a5\u4e3a\u7a7a, \u8bf7\u8bbe\u7f6e"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :try_start_0
    const-string v0, "AES/CFB/NoPadding"

    .line 206
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 207
    iget-object v2, p0, Lcom/tencent/mid/util/AESHelper;->key:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lcom/tencent/mid/util/AESHelper;->iv:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 208
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getIvBytes()[B
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/tencent/mid/util/AESHelper;->iv:Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mid/util/AESHelper;->iv:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIvString()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/tencent/mid/util/AESHelper;->iv:Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mid/util/AESHelper;->iv:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mid/util/AESHelper;->byte2hex([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getKeyBytes()[B
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/tencent/mid/util/AESHelper;->key:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mid/util/AESHelper;->key:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getKeyString()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/tencent/mid/util/AESHelper;->key:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mid/util/AESHelper;->key:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mid/util/AESHelper;->byte2hex([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public initKeyAndIV()V
    .locals 1

    .line 149
    invoke-static {}, Lcom/tencent/mid/util/AESHelper;->createSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/util/AESHelper;->key:Ljavax/crypto/SecretKey;

    .line 150
    invoke-static {}, Lcom/tencent/mid/util/AESHelper;->createIvParameterSpec()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/util/AESHelper;->iv:Ljavax/crypto/spec/IvParameterSpec;

    return-void
.end method

.method public setKeyAndIV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 183
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 184
    invoke-direct {p0, v0, v1}, Lcom/tencent/mid/util/AESHelper;->searchTwoPowerLength(II)I

    move-result v0

    .line 185
    invoke-direct {p0, p1, v0}, Lcom/tencent/mid/util/AESHelper;->fillBytes(Ljava/lang/String;I)[B

    move-result-object p1

    .line 186
    invoke-direct {p0, p2, v0}, Lcom/tencent/mid/util/AESHelper;->fillBytes(Ljava/lang/String;I)[B

    move-result-object p2

    .line 187
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mid/util/AESHelper;->key:Ljavax/crypto/SecretKey;

    .line 188
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object p1, p0, Lcom/tencent/mid/util/AESHelper;->iv:Ljavax/crypto/spec/IvParameterSpec;

    return-void
.end method
