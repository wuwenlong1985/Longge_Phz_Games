.class public Lcom/happyplay/hnphz/common/ExtendedListView;
.super Landroid/widget/ListView;
.source "ExtendedListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/happyplay/hnphz/common/ExtendedListView$OnPositionChangedListener;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mHeightMeasureSpec:I

.field private mInAnimation:Landroid/view/animation/Animation;

.field private mLastPosition:I

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mOutAnimation:Landroid/view/animation/Animation;

.field private mPositionChangedListener:Lcom/happyplay/hnphz/common/ExtendedListView$OnPositionChangedListener;

.field private mScrollBarPanel:Landroid/view/View;

.field private final mScrollBarPanelFadeRunnable:Ljava/lang/Runnable;

.field private mScrollBarPanelPosition:I

.field private mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/happyplay/hnphz/common/ExtendedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/happyplay/hnphz/common/ExtendedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 28
    iput-object p3, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 30
    iput-object p3, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanelPosition:I

    const/4 v1, -0x1

    .line 34
    iput v1, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mLastPosition:I

    .line 36
    iput-object p3, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mInAnimation:Landroid/view/animation/Animation;

    .line 37
    iput-object p3, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mOutAnimation:Landroid/view/animation/Animation;

    .line 39
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance p3, Lcom/happyplay/hnphz/common/ExtendedListView$1;

    invoke-direct {p3, p0}, Lcom/happyplay/hnphz/common/ExtendedListView$1;-><init>(Lcom/happyplay/hnphz/common/ExtendedListView;)V

    iput-object p3, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanelFadeRunnable:Ljava/lang/Runnable;

    .line 68
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 70
    sget-object p3, Lcom/happyplay/hnphz/R$styleable;->ExtendedListView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 p3, 0x1

    const v0, 0x7f010011

    .line 72
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    const/4 v0, 0x2

    const v2, 0x7f010013

    .line 73
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 74
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq p2, v1, :cond_0

    .line 77
    invoke-virtual {p0, p2}, Lcom/happyplay/hnphz/common/ExtendedListView;->setScrollBarPanel(I)V

    .line 80
    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result p1

    if-lez p3, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/happyplay/hnphz/common/ExtendedListView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mInAnimation:Landroid/view/animation/Animation;

    :cond_1
    if-lez v0, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/happyplay/hnphz/common/ExtendedListView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mOutAnimation:Landroid/view/animation/Animation;

    .line 88
    iget-object p2, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mOutAnimation:Landroid/view/animation/Animation;

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 90
    iget-object p1, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mOutAnimation:Landroid/view/animation/Animation;

    new-instance p2, Lcom/happyplay/hnphz/common/ExtendedListView$2;

    invoke-direct {p2, p0}, Lcom/happyplay/hnphz/common/ExtendedListView$2;-><init>(Lcom/happyplay/hnphz/common/ExtendedListView;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/happyplay/hnphz/common/ExtendedListView;)Landroid/view/animation/Animation;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mOutAnimation:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$100(Lcom/happyplay/hnphz/common/ExtendedListView;)Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method protected awakenScrollBars(IZ)Z
    .locals 8

    .line 208
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->awakenScrollBars(IZ)Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mInAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    iget-object v1, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanelFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanelFadeRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long v6, v2, v4

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_1
    return p2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 249
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 251
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    invoke-virtual {p0}, Lcom/happyplay/hnphz/common/ExtendedListView;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/happyplay/hnphz/common/ExtendedListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_0
    return-void
.end method

.method public getScrollBarPanel()Landroid/view/View;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 258
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 260
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanelFadeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 238
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 240
    iget-object p1, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/happyplay/hnphz/common/ExtendedListView;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/happyplay/hnphz/common/ExtendedListView;->getVerticalScrollbarWidth()I

    move-result p2

    sub-int/2addr p1, p2

    .line 242
    iget-object p2, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    iget p3, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanelPosition:I

    iget-object p4, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    iget p5, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanelPosition:I

    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    .line 243
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    .line 242
    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 227
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 229
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/happyplay/hnphz/common/ExtendedListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iput p1, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mWidthMeasureSpec:I

    .line 231
    iput p2, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mHeightMeasureSpec:I

    .line 232
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/happyplay/hnphz/common/ExtendedListView;->measureChild(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6

    .line 120
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mPositionChangedListener:Lcom/happyplay/hnphz/common/ExtendedListView$OnPositionChangedListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    if-eqz v0, :cond_3

    if-lez p4, :cond_3

    .line 127
    invoke-virtual {p0}, Lcom/happyplay/hnphz/common/ExtendedListView;->getVerticalScrollbarWidth()I

    move-result v0

    .line 128
    invoke-virtual {p0}, Lcom/happyplay/hnphz/common/ExtendedListView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/happyplay/hnphz/common/ExtendedListView;->computeVerticalScrollExtent()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {p0}, Lcom/happyplay/hnphz/common/ExtendedListView;->computeVerticalScrollRange()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 129
    invoke-virtual {p0}, Lcom/happyplay/hnphz/common/ExtendedListView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/happyplay/hnphz/common/ExtendedListView;->computeVerticalScrollOffset()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-virtual {p0}, Lcom/happyplay/hnphz/common/ExtendedListView;->computeVerticalScrollRange()I

    move-result v3

    invoke-virtual {p0}, Lcom/happyplay/hnphz/common/ExtendedListView;->computeVerticalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 134
    :goto_0
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    .line 139
    invoke-virtual {p0}, Lcom/happyplay/hnphz/common/ExtendedListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 141
    invoke-virtual {p0, v1}, Lcom/happyplay/hnphz/common/ExtendedListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 143
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-le v2, v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 147
    iget v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mLastPosition:I

    add-int/2addr v1, p2

    if-eq v0, v1, :cond_2

    .line 148
    iput v1, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mLastPosition:I

    .line 153
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mPositionChangedListener:Lcom/happyplay/hnphz/common/ExtendedListView$OnPositionChangedListener;

    iget v1, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mLastPosition:I

    iget-object v3, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    invoke-interface {v0, p0, v1, v3}, Lcom/happyplay/hnphz/common/ExtendedListView$OnPositionChangedListener;->onPositionChanged(Lcom/happyplay/hnphz/common/ExtendedListView;ILandroid/view/View;)V

    .line 161
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    iget v1, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mWidthMeasureSpec:I

    iget v3, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/happyplay/hnphz/common/ExtendedListView;->measureChild(Landroid/view/View;II)V

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanelPosition:I

    .line 172
    invoke-virtual {p0}, Lcom/happyplay/hnphz/common/ExtendedListView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/happyplay/hnphz/common/ExtendedListView;->getVerticalScrollbarWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 173
    iget-object v1, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    iget v2, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanelPosition:I

    iget-object v3, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget v4, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanelPosition:I

    iget-object v5, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    .line 174
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 173
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_4

    .line 179
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_4
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public setOnPositionChangedListener(Lcom/happyplay/hnphz/common/ExtendedListView$OnPositionChangedListener;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mPositionChangedListener:Lcom/happyplay/hnphz/common/ExtendedListView$OnPositionChangedListener;

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setScrollBarPanel(I)V
    .locals 2

    .line 199
    invoke-virtual {p0}, Lcom/happyplay/hnphz/common/ExtendedListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/happyplay/hnphz/common/ExtendedListView;->setScrollBarPanel(Landroid/view/View;)V

    return-void
.end method

.method public setScrollBarPanel(Landroid/view/View;)V
    .locals 1

    .line 193
    iput-object p1, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    .line 194
    iget-object p1, p0, Lcom/happyplay/hnphz/common/ExtendedListView;->mScrollBarPanel:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 195
    invoke-virtual {p0}, Lcom/happyplay/hnphz/common/ExtendedListView;->requestLayout()V

    return-void
.end method
