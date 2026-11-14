.class public final Lcom/baidu/mapauto/auth/AuthCore$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lcom/baidu/mapauto/auth/AuthCore$b;


# direct methods
.method public constructor <init>(Lcom/baidu/mapauto/auth/AuthCore$b;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/mapauto/auth/AuthCore$b$a;->b:Lcom/baidu/mapauto/auth/AuthCore$b;

    iput-object p2, p0, Lcom/baidu/mapauto/auth/AuthCore$b$a;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/baidu/mapauto/auth/AuthCore$b$a;->b:Lcom/baidu/mapauto/auth/AuthCore$b;

    .line 1
    iget-object v0, v0, Lcom/baidu/mapauto/auth/AuthCore$b;->a:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapauto/auth/ILicenseAuthListener;

    invoke-static {}, Lcom/baidu/mapauto/auth/util/LogUtil;->getInstance()Lcom/baidu/mapauto/auth/util/LogUtil;

    move-result-object v1

    sget-object v2, Lcom/baidu/mapauto/auth/AuthCore;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6388\u6743\u6210\u529f(\u56de\u8c03 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/baidu/mapauto/auth/AuthCore$b$a;->a:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/baidu/mapauto/auth/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/mapauto/auth/AuthCore$b$a;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/baidu/mapauto/auth/ILicenseAuthListener;->onSuccess(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
