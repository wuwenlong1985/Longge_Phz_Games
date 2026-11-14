.class public Lcom/baidu/location/f/m;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:J

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/f/m;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/f/m;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/f/m;->c:Ljava/lang/String;

    iput v0, p0, Lcom/baidu/location/f/m;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/f/m;->e:J

    const v0, 0x7fffffff

    iput v0, p0, Lcom/baidu/location/f/m;->f:I

    iput v0, p0, Lcom/baidu/location/f/m;->g:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%d,%s,%s,%d,%d,%d"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/baidu/location/f/m;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/baidu/location/f/m;->b:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/baidu/location/f/m;->c:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget v3, p0, Lcom/baidu/location/f/m;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/baidu/location/f/m;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget v3, p0, Lcom/baidu/location/f/m;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
