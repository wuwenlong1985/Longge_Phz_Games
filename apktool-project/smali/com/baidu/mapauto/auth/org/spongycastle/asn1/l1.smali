.class public final Lcom/baidu/mapauto/auth/org/spongycastle/asn1/l1;
.super Lcom/baidu/mapauto/auth/org/spongycastle/asn1/s;
.source "SourceFile"


# instance fields
.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/s;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/l1;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mapauto/auth/org/spongycastle/asn1/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/s;-><init>(Lcom/baidu/mapauto/auth/org/spongycastle/asn1/e;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/l1;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/baidu/mapauto/auth/org/spongycastle/asn1/p;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/p;->b()Lcom/baidu/mapauto/auth/org/spongycastle/asn1/p;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/l1;->b:I

    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/s;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 3
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/d;

    invoke-interface {v3}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/d;->c()Lcom/baidu/mapauto/auth/org/spongycastle/asn1/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/r;->h()Lcom/baidu/mapauto/auth/org/spongycastle/asn1/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/r;->e()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/l1;->b:I

    :cond_1
    iget v1, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/l1;->b:I

    const/16 v2, 0x30

    .line 4
    invoke-virtual {p1, v2}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/p;->a(I)V

    invoke-virtual {p1, v1}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/p;->b(I)V

    .line 5
    iget-object p1, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/s;->a:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    .line 6
    :goto_1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/d;

    invoke-virtual {v0, v1}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/p;->a(Lcom/baidu/mapauto/auth/org/spongycastle/asn1/d;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final e()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/l1;->b:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/s;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/d;

    invoke-interface {v2}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/d;->c()Lcom/baidu/mapauto/auth/org/spongycastle/asn1/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/r;->h()Lcom/baidu/mapauto/auth/org/spongycastle/asn1/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/r;->e()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/l1;->b:I

    :cond_1
    iget v0, p0, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/l1;->b:I

    .line 4
    invoke-static {v0}, Lcom/baidu/mapauto/auth/org/spongycastle/asn1/u1;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method
