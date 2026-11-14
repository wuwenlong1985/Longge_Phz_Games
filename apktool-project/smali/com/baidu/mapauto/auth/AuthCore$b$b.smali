.class public final Lcom/baidu/mapauto/auth/AuthCore$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/baidu/mapauto/auth/AuthCore$b;


# direct methods
.method public constructor <init>(Lcom/baidu/mapauto/auth/AuthCore$b;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/mapauto/auth/AuthCore$b$b;->c:Lcom/baidu/mapauto/auth/AuthCore$b;

    iput p2, p0, Lcom/baidu/mapauto/auth/AuthCore$b$b;->a:I

    iput-object p3, p0, Lcom/baidu/mapauto/auth/AuthCore$b$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/baidu/mapauto/auth/AuthCore$b$b;->c:Lcom/baidu/mapauto/auth/AuthCore$b;

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

    const-string v4, "\u6388\u6743\u5931\u8d25(\u56de\u8c03 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/baidu/mapauto/auth/AuthCore$b$b;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/baidu/mapauto/auth/AuthCore$b$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/baidu/mapauto/auth/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/baidu/mapauto/auth/AuthCore$b$b;->a:I

    iget-object v2, p0, Lcom/baidu/mapauto/auth/AuthCore$b$b;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapauto/auth/ILicenseAuthListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
