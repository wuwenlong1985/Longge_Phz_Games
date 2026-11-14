.class Lcom/happyplay/hnphz/common/ExtendedListView$2;
.super Ljava/lang/Object;
.source "ExtendedListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/happyplay/hnphz/common/ExtendedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    .line 90
    iput-object p1, p0, Lcom/happyplay/hnphz/common/ExtendedListView$2;->this$0:Lcom/happyplay/hnphz/common/ExtendedListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/happyplay/hnphz/common/ExtendedListView$2;->this$0:Lcom/happyplay/hnphz/common/ExtendedListView;

    invoke-static {p1}, Lcom/happyplay/hnphz/common/ExtendedListView;->access$100(Lcom/happyplay/hnphz/common/ExtendedListView;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/happyplay/hnphz/common/ExtendedListView$2;->this$0:Lcom/happyplay/hnphz/common/ExtendedListView;

    invoke-static {p1}, Lcom/happyplay/hnphz/common/ExtendedListView;->access$100(Lcom/happyplay/hnphz/common/ExtendedListView;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
