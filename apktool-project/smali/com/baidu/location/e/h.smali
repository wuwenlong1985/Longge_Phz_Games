.class Lcom/baidu/location/e/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/e/f$a;


# direct methods
.method constructor <init>(Lcom/baidu/location/e/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/e/h;->a:Lcom/baidu/location/e/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/baidu/location/b/al;->a()Lcom/baidu/location/b/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/al;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/location/e/h;->a:Lcom/baidu/location/e/f$a;

    const-string v2, "https://ofloc.map.baidu.com/offline_loc"

    invoke-virtual {v1, v0, v2}, Lcom/baidu/location/e/f$a;->a(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/e/h;->a:Lcom/baidu/location/e/f$a;

    const-string v1, "https://ofloc.map.baidu.com/offline_loc"

    invoke-virtual {v0, v1}, Lcom/baidu/location/e/f$a;->e(Ljava/lang/String;)V

    return-void
.end method
