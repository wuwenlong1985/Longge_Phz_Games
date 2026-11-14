.class public Lcom/happyplay/hnphz/common/CommonWorkingThread$CommonWorkingThreadHolder;
.super Ljava/lang/Object;
.source "CommonWorkingThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/happyplay/hnphz/common/CommonWorkingThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommonWorkingThreadHolder"
.end annotation


# static fields
.field public static instance:Lcom/happyplay/hnphz/common/CommonWorkingThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/happyplay/hnphz/common/CommonWorkingThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/happyplay/hnphz/common/CommonWorkingThread;-><init>(Lcom/happyplay/hnphz/common/CommonWorkingThread$1;)V

    sput-object v0, Lcom/happyplay/hnphz/common/CommonWorkingThread$CommonWorkingThreadHolder;->instance:Lcom/happyplay/hnphz/common/CommonWorkingThread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
