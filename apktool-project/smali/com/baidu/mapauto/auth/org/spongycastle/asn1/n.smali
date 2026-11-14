.class public abstract Lcom/baidu/mapauto/auth/org/spongycastle/asn1/n;
.super Lcom/baidu/mapauto/auth/org/spongycastle/asn1/r;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mapauto/auth/org/spongycastle/asn1/o;


# instance fields
.field public a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/r;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/n;->a:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "string cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lcom/baidu/mapauto/auth/org/spongycastle/asn1/r;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/baidu/mapauto/auth/org/spongycastle/asn1/r;)Z
    .locals 1

    instance-of v0, p1, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/n;

    iget-object v0, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/n;->a:[B

    iget-object p1, p1, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/n;->a:[B

    invoke-static {v0, p1}, Lcom/baidu/mapauto/auth/org/spongycastle/util/a;->a([B[B)Z

    move-result p1

    return p1
.end method

.method public final b()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/n;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final g()Lcom/baidu/mapauto/auth/org/spongycastle/asn1/r;
    .locals 2

    new-instance v0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/v0;

    iget-object v1, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/n;->a:[B

    invoke-direct {v0, v1}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/v0;-><init>([B)V

    return-object v0
.end method

.method public final h()Lcom/baidu/mapauto/auth/org/spongycastle/asn1/r;
    .locals 2

    new-instance v0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/v0;

    iget-object v1, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/n;->a:[B

    invoke-direct {v0, v1}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/v0;-><init>([B)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/n;->i()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapauto/auth/org/spongycastle/util/a;->b([B)I

    move-result v0

    return v0
.end method

.method public i()[B
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/n;->a:[B

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    const-string v0, "#"

    .line 1
    invoke-static {v0}, Lcom/baidu/mapauto/auth/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/n;->a:[B

    sget-object v2, Lcom/baidu/mapauto/auth/org/spongycastle/util/encoders/d;->a:Lcom/baidu/mapauto/auth/org/spongycastle/util/encoders/e;

    .line 3
    array-length v2, v1

    .line 4
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    sget-object v4, Lcom/baidu/mapauto/auth/org/spongycastle/util/encoders/d;->a:Lcom/baidu/mapauto/auth/org/spongycastle/util/encoders/e;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    add-int v7, v5, v2

    if-ge v6, v7, :cond_0

    .line 5
    aget-byte v7, v1, v6

    and-int/lit16 v7, v7, 0xff

    iget-object v8, v4, Lcom/baidu/mapauto/auth/org/spongycastle/util/encoders/e;->a:[B

    ushr-int/lit8 v9, v7, 0x4

    aget-byte v8, v8, v9

    invoke-virtual {v3, v8}, Ljava/io/OutputStream;->write(I)V

    iget-object v8, v4, Lcom/baidu/mapauto/auth/org/spongycastle/util/encoders/e;->a:[B

    and-int/lit8 v7, v7, 0xf

    aget-byte v7, v8, v7

    invoke-virtual {v3, v7}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/baidu/mapauto/auth/org/spongycastle/util/d;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Lcom/baidu/mapauto/auth/org/spongycastle/util/encoders/c;

    const-string v2, "exception encoding Hex string: "

    .line 9
    invoke-static {v2}, Lcom/baidu/mapauto/auth/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/baidu/mapauto/auth/org/spongycastle/util/encoders/c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
