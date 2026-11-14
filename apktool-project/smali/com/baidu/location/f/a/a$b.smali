.class Lcom/baidu/location/f/a/a$b;
.super Landroid/telephony/TelephonyManager$CellInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/f/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/f/a/a;


# direct methods
.method private constructor <init>(Lcom/baidu/location/f/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/f/a/a$b;->a:Lcom/baidu/location/f/a/a;

    invoke-direct {p0}, Landroid/telephony/TelephonyManager$CellInfoCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/f/a/a;Lcom/baidu/location/f/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/f/a/a$b;-><init>(Lcom/baidu/location/f/a/a;)V

    return-void
.end method


# virtual methods
.method public onCellInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/baidu/location/f/b/a;->c:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/baidu/location/f/b/a;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object v0

    const-string v1, "onCellInfo"

    invoke-virtual {v0, v1}, Lcom/baidu/location/f/g;->a(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lcom/baidu/location/f/b/a;->d:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/f/g;->a(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    sget-boolean p1, Lcom/baidu/location/f/b/a;->c:Z

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/baidu/location/f/b/a;->d:Z

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/baidu/location/f/k;->h()Lcom/baidu/location/f/g;

    move-result-object p1

    const-string v0, "request sim1 cellInfo"

    invoke-virtual {p1, v0}, Lcom/baidu/location/f/g;->a(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/baidu/location/f/a/a$b;->a:Lcom/baidu/location/f/a/a;

    invoke-static {p1}, Lcom/baidu/location/f/a/a;->b(Lcom/baidu/location/f/a/a;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/baidu/location/f/a/a$b;->a:Lcom/baidu/location/f/a/a;

    iget-object v0, p0, Lcom/baidu/location/f/a/a$b;->a:Lcom/baidu/location/f/a/a;

    invoke-static {v0}, Lcom/baidu/location/f/a/a;->c(Lcom/baidu/location/f/a/a;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/baidu/location/f/a/a;->a(Lcom/baidu/location/f/a/a;Z)Z

    :cond_4
    iget-object p1, p0, Lcom/baidu/location/f/a/a$b;->a:Lcom/baidu/location/f/a/a;

    invoke-static {p1}, Lcom/baidu/location/f/a/a;->b(Lcom/baidu/location/f/a/a;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/baidu/location/f/a/a$b;->a:Lcom/baidu/location/f/a/a;

    invoke-static {p1}, Lcom/baidu/location/f/a/a;->c(Lcom/baidu/location/f/a/a;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/baidu/location/f/a/a$b;->a:Lcom/baidu/location/f/a/a;

    invoke-static {p1}, Lcom/baidu/location/f/a/a;->a(Lcom/baidu/location/f/a/a;)V

    :cond_6
    return-void
.end method
