.class final Lcom/tencent/mid/core/ServiceIMPL$1;
.super Ljava/lang/Object;
.source "ServiceIMPL.java"

# interfaces
.implements Lcom/tencent/mid/api/MidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mid/core/ServiceIMPL;->requestMid(Landroid/content/Context;Lcom/tencent/mid/api/MidCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/tencent/mid/api/MidCallback;


# direct methods
.method constructor <init>(Lcom/tencent/mid/api/MidCallback;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/tencent/mid/core/ServiceIMPL$1;->val$callback:Lcom/tencent/mid/api/MidCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 3

    .line 102
    invoke-static {}, Lcom/tencent/mid/core/ServiceIMPL;->access$000()Lcom/tencent/mid/util/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get mid, errorcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/Logger;->e(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/tencent/mid/core/ServiceIMPL$1;->val$callback:Lcom/tencent/mid/api/MidCallback;

    invoke-interface {v0, p1, p2}, Lcom/tencent/mid/api/MidCallback;->onFail(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mid/api/MidEntity;->parse(Ljava/lang/String;)Lcom/tencent/mid/api/MidEntity;

    move-result-object p1

    .line 95
    invoke-static {}, Lcom/tencent/mid/core/ServiceIMPL;->access$000()Lcom/tencent/mid/util/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "success to get mid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mid/util/Logger;->d(Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/tencent/mid/core/ServiceIMPL$1;->val$callback:Lcom/tencent/mid/api/MidCallback;

    invoke-virtual {p1}, Lcom/tencent/mid/api/MidEntity;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tencent/mid/api/MidCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
