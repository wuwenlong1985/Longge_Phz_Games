.class Lcom/happyplay/hnphz/common/ExtendedListView$1;
.super Ljava/lang/Object;
.source "ExtendedListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/happyplay/hnphz/common/ExtendedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/happyplay/hnphz/common/ExtendedListView;


# direct methods
.method constructor <init>(Lcom/happyplay/hnphz/common/ExtendedListView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/happyplay/hnphz/common/ExtendedListView$1;->this$0:Lcom/happyplay/hnphz/common/ExtendedListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView$1;->this$0:Lcom/happyplay/hnphz/common/ExtendedListView;

    invoke-static {v0}, Lcom/happyplay/hnphz/common/ExtendedListView;->access$000(Lcom/happyplay/hnphz/common/ExtendedListView;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView$1;->this$0:Lcom/happyplay/hnphz/common/ExtendedListView;

    invoke-static {v0}, Lcom/happyplay/hnphz/common/ExtendedListView;->access$100(Lcom/happyplay/hnphz/common/ExtendedListView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/happyplay/hnphz/common/ExtendedListView$1;->this$0:Lcom/happyplay/hnphz/common/ExtendedListView;

    invoke-static {v1}, Lcom/happyplay/hnphz/common/ExtendedListView;->access$000(Lcom/happyplay/hnphz/common/ExtendedListView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
