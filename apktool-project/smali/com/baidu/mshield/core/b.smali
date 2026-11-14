.class public final Lcom/baidu/mshield/core/b;
.super Ljava/util/TimerTask;
.source "MethodImpl.java"


# instance fields
.field public final synthetic a:Lcom/baidu/mshield/c;


# direct methods
.method public constructor <init>(Lcom/baidu/mshield/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mshield/core/b;->a:Lcom/baidu/mshield/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baidu/mshield/core/b;->a:Lcom/baidu/mshield/c;

    const-string v1, "4.2.6"

    invoke-virtual {v0, v1}, Lcom/baidu/mshield/c;->a(Ljava/lang/String;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/baidu/mshield/core/b;->a:Lcom/baidu/mshield/c;

    add-int/lit8 v0, v0, -0x1

    const-string v2, "4.2.6"

    invoke-virtual {v1, v2, v0}, Lcom/baidu/mshield/c;->a(Ljava/lang/String;I)V

    return-void
.end method
