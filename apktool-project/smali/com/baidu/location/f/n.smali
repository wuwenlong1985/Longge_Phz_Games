.class public Lcom/baidu/location/f/n;
.super Lcom/baidu/location/f/m;


# instance fields
.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/location/f/m;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/baidu/location/f/n;->h:I

    iput v0, p0, Lcom/baidu/location/f/n;->i:I

    iput v0, p0, Lcom/baidu/location/f/n;->j:I

    iput v0, p0, Lcom/baidu/location/f/n;->k:I

    iput v0, p0, Lcom/baidu/location/f/n;->l:I

    iput v0, p0, Lcom/baidu/location/f/n;->m:I

    iput v0, p0, Lcom/baidu/location/f/n;->n:I

    iput v0, p0, Lcom/baidu/location/f/n;->o:I

    iput v0, p0, Lcom/baidu/location/f/n;->p:I

    iput v0, p0, Lcom/baidu/location/f/n;->q:I

    iput v0, p0, Lcom/baidu/location/f/n;->r:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%d,%s,%s,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d"

    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/baidu/location/f/n;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/baidu/location/f/n;->b:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/baidu/location/f/n;->c:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget v3, p0, Lcom/baidu/location/f/n;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/baidu/location/f/n;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget v3, p0, Lcom/baidu/location/f/n;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget v3, p0, Lcom/baidu/location/f/n;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    iget v3, p0, Lcom/baidu/location/f/n;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    iget v3, p0, Lcom/baidu/location/f/n;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    iget v3, p0, Lcom/baidu/location/f/n;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v2, v4

    iget v3, p0, Lcom/baidu/location/f/n;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v2, v4

    iget v3, p0, Lcom/baidu/location/f/n;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v2, v4

    iget v3, p0, Lcom/baidu/location/f/n;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xc

    aput-object v3, v2, v4

    iget v3, p0, Lcom/baidu/location/f/n;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xd

    aput-object v3, v2, v4

    iget v3, p0, Lcom/baidu/location/f/n;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xe

    aput-object v3, v2, v4

    iget v3, p0, Lcom/baidu/location/f/n;->q:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xf

    aput-object v3, v2, v4

    iget v3, p0, Lcom/baidu/location/f/n;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x10

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
