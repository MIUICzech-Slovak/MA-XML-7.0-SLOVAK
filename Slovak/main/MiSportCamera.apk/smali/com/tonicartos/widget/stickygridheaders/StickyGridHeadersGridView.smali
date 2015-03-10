.class public Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.super Landroid/widget/GridView;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderLongClickListener;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/GridView;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# static fields
.field private static final ERROR_PLATFORM:Ljava/lang/String;

.field private static final MATCHED_STICKIED_HEADER:I = -0x2

.field private static final NO_MATCHED_HEADER:I = -0x1

.field static final TAG:Ljava/lang/String;

.field protected static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field protected static final TOUCH_MODE_DOWN:I = 0x0

.field protected static final TOUCH_MODE_FINISHED_LONG_PRESS:I = -0x2

.field protected static final TOUCH_MODE_REST:I = -0x1

.field protected static final TOUCH_MODE_TAP:I = 0x1


# instance fields
.field protected mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

.field private mAreHeadersSticky:Z

.field private mClipToPaddingHasBeenSet:Z

.field private final mClippingRect:Landroid/graphics/Rect;

.field private mClippingToPadding:Z

.field private mColumnWidth:I

.field private mCurrentHeaderId:J

.field protected mDataChanged:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mHeaderBottomPosition:I

.field mHeaderChildBeingPressed:Z

.field private mHeadersIgnorePadding:Z

.field private mHorizontalSpacing:I

.field private mMaskStickyHeaderRegion:Z

.field protected mMotionHeaderPosition:I

.field private mMotionY:F

.field private mNumColumns:I

.field private mNumColumnsSet:Z

.field private mNumMeasuredColumns:I

.field private mOnHeaderClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;

.field private mOnHeaderLongClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderLongClickListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mPendingCheckForLongPress:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

.field public mPendingCheckForTap:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;

.field private mPerformHeaderClick:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mStickiedHeader:Landroid/view/View;

.field protected mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error supporting platform "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->ERROR_PLATFORM:Ljava/lang/String;

    .line 77
    const-class v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 184
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 188
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    iput-boolean v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    .line 104
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    .line 112
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 114
    new-instance v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;

    invoke-direct {v1, p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    iput-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 132
    iput-boolean v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    .line 143
    iput v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    .line 159
    iput v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollState:I

    .line 177
    iput-boolean v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    .line 189
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 190
    invoke-virtual {p0, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 192
    iget-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumColumnsSet:Z

    if-nez v1, :cond_0

    .line 193
    const/4 v1, -0x1

    iput v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumColumns:I

    .line 196
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 197
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchSlop:I

    .line 198
    return-void
.end method

.method static synthetic access$0(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V
    .locals 0

    .prologue
    .line 665
    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->reset()V

    return-void
.end method

.method static synthetic access$1(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;I)J
    .locals 2

    .prologue
    .line 626
    invoke-direct {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->headerViewPositionToId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)I
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->ERROR_PLATFORM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    return-void
.end method

.method private findMotionHeader(F)I
    .locals 9
    .param p1, "y"    # F

    .prologue
    .line 596
    iget-object v7, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    int-to-float v7, v7

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_1

    .line 597
    const/4 v6, -0x2

    .line 616
    :cond_0
    :goto_0
    return v6

    .line 600
    :cond_1
    const/4 v6, 0x0

    .line 601
    .local v6, "vi":I
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v2

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLastVisiblePosition()I

    move-result v7

    if-le v2, v7, :cond_2

    .line 616
    const/4 v6, -0x1

    goto :goto_0

    .line 602
    :cond_2
    invoke-virtual {p0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getItemIdAtPosition(I)J

    move-result-wide v3

    .line 603
    .local v3, "id":J
    const-wide/16 v7, -0x1

    cmp-long v7, v3, v7

    if-nez v7, :cond_3

    .line 604
    invoke-virtual {p0, v6}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 606
    .local v1, "headerWrapper":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 607
    .local v0, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 608
    .local v5, "top":I
    int-to-float v7, v0

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_3

    int-to-float v7, v5

    cmpl-float v7, p1, v7

    if-gez v7, :cond_0

    .line 612
    .end local v0    # "bottom":I
    .end local v1    # "headerWrapper":Landroid/view/View;
    .end local v5    # "top":I
    :cond_3
    iget v7, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    add-int/2addr v2, v7

    .line 613
    iget v7, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    add-int/2addr v6, v7

    goto :goto_1
.end method

.method private getHeaderHeight()I
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 623
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getPointerCoords(Landroid/view/MotionEvent;)[Landroid/view/MotionEvent$PointerCoords;
    .locals 4
    .param p0, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 81
    .local v1, "n":I
    new-array v2, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 82
    .local v2, "r":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 86
    return-object v2

    .line 83
    :cond_0
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v2, v0

    .line 84
    aget-object v3, v2, v0

    invoke-virtual {p0, v0, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getPointerIds(Landroid/view/MotionEvent;)[I
    .locals 4
    .param p0, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 91
    .local v1, "n":I
    new-array v2, v1, [I

    .line 92
    .local v2, "r":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 95
    return-object v2

    .line 93
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    aput v3, v2, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private headerViewPositionToId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 627
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 628
    iget-wide v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 630
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private measureHeader()V
    .locals 8

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 634
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    if-nez v3, :cond_0

    .line 663
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-boolean v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v3, :cond_1

    .line 640
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 646
    .local v2, "widthMeasureSpec":I
    :goto_1
    const/4 v0, 0x0

    .line 648
    .local v0, "heightMeasureSpec":I
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 649
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_2

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_2

    .line 650
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 654
    :goto_2
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 655
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v3, v2, v0}, Landroid/view/View;->measure(II)V

    .line 657
    iget-boolean v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v3, :cond_3

    .line 658
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 642
    .end local v0    # "heightMeasureSpec":I
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "widthMeasureSpec":I
    :cond_1
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 643
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    .line 642
    sub-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .restart local v2    # "widthMeasureSpec":I
    goto :goto_1

    .line 652
    .restart local v0    # "heightMeasureSpec":I
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2

    .line 660
    :cond_3
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 661
    iget-object v6, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 660
    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 666
    const/4 v0, 0x0

    iput v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    .line 667
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->swapStickiedHeader(Landroid/view/View;)V

    .line 668
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 669
    return-void
.end method

.method private scrollChanged(I)V
    .locals 22
    .param p1, "firstVisibleItem"    # I

    .prologue
    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 677
    .local v7, "firstItem":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 682
    move/from16 v15, p1

    .line 684
    .local v15, "selectedHeaderPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    move/from16 v18, v0

    sub-int v3, p1, v18

    .line 685
    .local v3, "beforeRowPosition":I
    if-gez v3, :cond_2

    .line 686
    move/from16 v3, p1

    .line 689
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    move/from16 v18, v0

    add-int v14, p1, v18

    .line 690
    .local v14, "secondRowPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v18

    move/from16 v0, v18

    if-lt v14, v0, :cond_3

    .line 691
    move/from16 v14, p1

    .line 694
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mVerticalSpacing:I

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v12

    .line 715
    .local v12, "newHeaderId":J
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mCurrentHeaderId:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v12

    if-eqz v18, :cond_4

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v18, v0

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    invoke-virtual {v0, v15, v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 716
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->swapStickiedHeader(Landroid/view/View;)V

    .line 718
    invoke-direct/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->measureHeader()V

    .line 719
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 722
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildCount()I

    move-result v5

    .line 723
    .local v5, "childCount":I
    if-eqz v5, :cond_0

    .line 724
    const/16 v16, 0x0

    .line 725
    .local v16, "viewToWatch":Landroid/view/View;
    const v17, 0x1869f

    .line 728
    .local v17, "watchingChildDistance":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-lt v10, v5, :cond_9

    .line 749
    invoke-direct/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderHeight()I

    move-result v9

    .line 753
    .local v9, "headerHeight":I
    if-eqz v16, :cond_11

    .line 754
    if-nez p1, :cond_d

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-super {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v18

    if-lez v18, :cond_d

    .line 755
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingToPadding:Z

    move/from16 v18, v0

    if-nez v18, :cond_d

    .line 756
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto/16 :goto_0

    .line 696
    .end local v5    # "childCount":I
    .end local v9    # "headerHeight":I
    .end local v10    # "i":I
    .end local v12    # "newHeaderId":J
    .end local v16    # "viewToWatch":Landroid/view/View;
    .end local v17    # "watchingChildDistance":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mVerticalSpacing:I

    move/from16 v18, v0

    if-gez v18, :cond_7

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v12

    .line 698
    .restart local v12    # "newHeaderId":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 699
    .local v8, "firstSecondRowView":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v18

    if-gtz v18, :cond_6

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v12

    .line 701
    move v15, v14

    .line 702
    goto/16 :goto_1

    .line 703
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v12

    .line 705
    goto/16 :goto_1

    .line 706
    .end local v8    # "firstSecondRowView":Landroid/view/View;
    .end local v12    # "newHeaderId":J
    :cond_7
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v11

    .line 707
    .local v11, "margin":I
    if-lez v11, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mVerticalSpacing:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_8

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v12

    .line 709
    .restart local v12    # "newHeaderId":J
    move v15, v3

    .line 710
    goto/16 :goto_1

    .line 711
    .end local v12    # "newHeaderId":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v12

    .restart local v12    # "newHeaderId":J
    goto/16 :goto_1

    .line 729
    .end local v11    # "margin":I
    .restart local v5    # "childCount":I
    .restart local v10    # "i":I
    .restart local v16    # "viewToWatch":Landroid/view/View;
    .restart local v17    # "watchingChildDistance":I
    :cond_9
    move-object/from16 v0, p0

    invoke-super {v0, v10}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 732
    .local v4, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingToPadding:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 733
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v19

    sub-int v6, v18, v19

    .line 738
    .local v6, "childDistance":I
    :goto_3
    if-gez v6, :cond_c

    .line 728
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    move/from16 v18, v0

    add-int v10, v10, v18

    goto/16 :goto_2

    .line 735
    .end local v6    # "childDistance":I
    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    .restart local v6    # "childDistance":I
    goto :goto_3

    .line 742
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPositionForView(Landroid/view/View;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getItemId(I)J

    move-result-wide v18

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-nez v18, :cond_a

    .line 743
    move/from16 v0, v17

    if-ge v6, v0, :cond_a

    .line 744
    move-object/from16 v16, v4

    .line 745
    move/from16 v17, v6

    goto :goto_4

    .line 758
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "childDistance":I
    .restart local v9    # "headerHeight":I
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingToPadding:Z

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 759
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v18

    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v19

    add-int v19, v19, v9

    .line 759
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    .line 761
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_e

    .line 762
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v18

    add-int v18, v18, v9

    .line 761
    :goto_5
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto/16 :goto_0

    .line 763
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v18, v0

    goto :goto_5

    .line 765
    :cond_f
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    .line 766
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v18, v0

    if-gez v18, :cond_10

    .end local v9    # "headerHeight":I
    :goto_6
    move-object/from16 v0, p0

    iput v9, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto/16 :goto_0

    .line 767
    .restart local v9    # "headerHeight":I
    :cond_10
    move-object/from16 v0, p0

    iget v9, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto :goto_6

    .line 771
    :cond_11
    move-object/from16 v0, p0

    iput v9, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    .line 772
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingToPadding:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 773
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto/16 :goto_0
.end method

.method private swapStickiedHeader(Landroid/view/View;)V
    .locals 1
    .param p1, "newStickiedHeader"    # Landroid/view/View;

    .prologue
    .line 780
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->detachHeader(Landroid/view/View;)V

    .line 781
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->attachHeader(Landroid/view/View;)V

    .line 782
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    .line 783
    return-void
.end method

.method private transformEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;
    .locals 23
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "headerPosition"    # I

    .prologue
    .line 786
    const/16 v20, -0x2

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 811
    .end local p1    # "e":Landroid/view/MotionEvent;
    :goto_0
    return-object p1

    .line 790
    .restart local p1    # "e":Landroid/view/MotionEvent;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    .line 791
    .local v2, "downTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 792
    .local v4, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 793
    .local v6, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 794
    .local v7, "pointerCount":I
    invoke-static/range {p1 .. p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPointerIds(Landroid/view/MotionEvent;)[I

    move-result-object v8

    .line 795
    .local v8, "pointerIds":[I
    invoke-static/range {p1 .. p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPointerCoords(Landroid/view/MotionEvent;)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 796
    .local v9, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    .line 797
    .local v10, "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    .line 798
    .local v11, "xPrecision":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    .line 799
    .local v12, "yPrecision":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    .line 800
    .local v13, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    .line 801
    .local v14, "edgeFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    .line 802
    .local v15, "source":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v16

    .line 804
    .local v16, "flags":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 805
    .local v17, "headerHolder":Landroid/view/View;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    if-lt v0, v7, :cond_1

    .line 808
    invoke-static/range {v2 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v19

    .local v19, "n":Landroid/view/MotionEvent;
    move-object/from16 p1, v19

    .line 811
    goto :goto_0

    .line 806
    .end local v19    # "n":Landroid/view/MotionEvent;
    :cond_1
    aget-object v20, v9, v18

    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v21, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 805
    add-int/lit8 v18, v18, 0x1

    goto :goto_1
.end method


# virtual methods
.method public areHeadersSticky()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    return v0
.end method

.method attachHeader(Landroid/view/View;)V
    .locals 8
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 1029
    if-nez p1, :cond_0

    .line 1053
    :goto_0
    return-void

    .line 1034
    :cond_0
    :try_start_0
    const-class v3, Landroid/view/View;

    const-string v4, "mAttachInfo"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1035
    .local v0, "attachInfoField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1036
    const-class v3, Landroid/view/View;

    const-string v4, "dispatchAttachedToWindow"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    .line 1037
    const-string v7, "android.view.View$AttachInfo"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    .line 1036
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1038
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1039
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 1040
    .end local v0    # "attachInfoField":Ljava/lang/reflect/Field;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1041
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1042
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 1043
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1044
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v1

    .line 1045
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1046
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 1047
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1048
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 1049
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3

    .line 1050
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v1

    .line 1051
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v3, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v3
.end method

.method detachHeader(Landroid/view/View;)V
    .locals 5
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 1056
    if-nez p1, :cond_0

    .line 1073
    :goto_0
    return-void

    .line 1061
    :cond_0
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "dispatchDetachedFromWindow"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1062
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1063
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 1064
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v2, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v2

    .line 1066
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 1067
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v2, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v2

    .line 1068
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1069
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v2, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v2

    .line 1070
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 1071
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;

    invoke-direct {v2, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$RuntimePlatformSupportException;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Ljava/lang/Exception;)V

    throw v2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 816
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 817
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->scrollChanged(I)V

    .line 820
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    if-eqz v2, :cond_6

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 820
    const/4 v9, 0x1

    .line 822
    .local v9, "drawStickiedHeader":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderHeight()I

    move-result v13

    .line 823
    .local v13, "headerHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    sub-int v20, v2, v13

    .line 827
    .local v20, "top":I
    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    if-eqz v2, :cond_1

    .line 828
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_7

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 835
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 838
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 843
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 846
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 847
    .local v15, "headerPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v21, 0x0

    .line 848
    .local v21, "vi":I
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v17

    .local v17, "i":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLastVisiblePosition()I

    move-result v2

    move/from16 v0, v17

    if-le v0, v2, :cond_8

    .line 858
    const/16 v17, 0x0

    :goto_3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-lt v0, v2, :cond_a

    .line 913
    if-eqz v9, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    if-eqz v2, :cond_12

    .line 914
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 922
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_13

    .line 923
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v22

    .line 927
    .local v22, "wantedWidth":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    move/from16 v0, v22

    if-eq v2, v0, :cond_3

    .line 929
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_14

    .line 930
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 935
    .local v23, "widthMeasureSpec":I
    :goto_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 936
    .local v16, "heightMeasureSpec":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    move/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 938
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_15

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 946
    .end local v16    # "heightMeasureSpec":I
    .end local v23    # "widthMeasureSpec":I
    :cond_3
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_16

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 953
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    add-int v3, v20, v13

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 954
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingToPadding:Z

    if-eqz v2, :cond_17

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 960
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 963
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_18

    .line 964
    const/4 v2, 0x0

    move/from16 v0, v20

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 969
    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    if-eq v2, v13, :cond_4

    .line 970
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v6, v2

    .line 971
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    mul-int/lit16 v2, v2, 0xff

    div-int v7, v2, v13

    const/16 v8, 0x1f

    move-object/from16 v2, p1

    .line 970
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 974
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 976
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    if-eq v2, v13, :cond_5

    .line 977
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 979
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 980
    .end local v22    # "wantedWidth":I
    :goto_a
    return-void

    .line 820
    .end local v9    # "drawStickiedHeader":Z
    .end local v13    # "headerHeight":I
    .end local v15    # "headerPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "i":I
    .end local v20    # "top":I
    .end local v21    # "vi":I
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 832
    .restart local v9    # "drawStickiedHeader":Z
    .restart local v13    # "headerHeight":I
    .restart local v20    # "top":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    .line 849
    .restart local v15    # "headerPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17    # "i":I
    .restart local v21    # "vi":I
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getItemIdAtPosition(I)J

    move-result-wide v18

    .line 850
    .local v18, "id":J
    const-wide/16 v2, -0x1

    cmp-long v2, v18, v2

    if-nez v2, :cond_9

    .line 851
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    add-int v17, v17, v2

    .line 854
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    add-int v21, v21, v2

    goto/16 :goto_2

    .line 859
    .end local v18    # "id":J
    :cond_a
    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 862
    .local v11, "frame":Landroid/view/View;
    :try_start_0
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v12, "header":Landroid/view/View;
    move-object v2, v11

    .line 867
    check-cast v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    invoke-virtual {v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getHeaderId()I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mCurrentHeaderId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_c

    .line 868
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    if-eqz v2, :cond_c

    .line 867
    const/4 v14, 0x1

    .line 869
    .local v14, "headerIsStickied":Z
    :goto_b
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_b

    if-eqz v14, :cond_d

    .line 858
    :cond_b
    :goto_c
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 863
    .end local v12    # "header":Landroid/view/View;
    .end local v14    # "headerIsStickied":Z
    :catch_0
    move-exception v10

    .line 864
    .local v10, "e":Ljava/lang/Exception;
    goto/16 :goto_a

    .line 867
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v12    # "header":Landroid/view/View;
    :cond_c
    const/4 v14, 0x0

    goto :goto_b

    .line 874
    .restart local v14    # "headerIsStickied":Z
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_e

    .line 875
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 881
    .restart local v23    # "widthMeasureSpec":I
    :goto_d
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 882
    .restart local v16    # "heightMeasureSpec":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/view/View;->measure(II)V

    .line 883
    move/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    .line 885
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_f

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v4

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 892
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_10

    .line 893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 900
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 902
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 904
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    if-eqz v2, :cond_11

    .line 905
    const/4 v2, 0x0

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 909
    :goto_10
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 910
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_c

    .line 877
    .end local v16    # "heightMeasureSpec":I
    .end local v23    # "widthMeasureSpec":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v3

    .line 877
    sub-int/2addr v2, v3

    .line 878
    const/high16 v3, 0x40000000    # 2.0f

    .line 877
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .restart local v23    # "widthMeasureSpec":I
    goto/16 :goto_d

    .line 888
    .restart local v16    # "heightMeasureSpec":I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 889
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 888
    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_e

    .line 896
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_f

    .line 907
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_10

    .line 915
    .end local v11    # "frame":Landroid/view/View;
    .end local v12    # "header":Landroid/view/View;
    .end local v14    # "headerIsStickied":Z
    .end local v16    # "heightMeasureSpec":I
    .end local v23    # "widthMeasureSpec":I
    :cond_12
    if-nez v9, :cond_2

    goto/16 :goto_a

    .line 925
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v3

    sub-int v22, v2, v3

    .restart local v22    # "wantedWidth":I
    goto/16 :goto_4

    .line 932
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 933
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v3

    .line 932
    sub-int/2addr v2, v3

    .line 933
    const/high16 v3, 0x40000000    # 2.0f

    .line 932
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .restart local v23    # "widthMeasureSpec":I
    goto/16 :goto_5

    .line 941
    .restart local v16    # "heightMeasureSpec":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v5

    .line 942
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 941
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_6

    .line 950
    .end local v16    # "heightMeasureSpec":I
    .end local v23    # "widthMeasureSpec":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_7

    .line 957
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto/16 :goto_8

    .line 966
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v20

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_9
.end method

.method public getHeaderAt(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 213
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    .line 221
    :goto_0
    return-object v0

    .line 218
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 221
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStickiedHeader()Landroid/view/View;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    return-object v0
.end method

.method public getStickyHeaderIsTranscluent()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 240
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v1, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v1

    iget v3, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 239
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 241
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 246
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v1, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v1

    iget v3, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 245
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 252
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v1, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v1

    iget v3, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 251
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 253
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 984
    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumColumns:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 986
    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mColumnWidth:I

    if-lez v2, :cond_4

    .line 987
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 988
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v3

    .line 987
    sub-int/2addr v2, v3

    .line 988
    const/4 v3, 0x0

    .line 987
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 989
    .local v0, "gridWidth":I
    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mColumnWidth:I

    div-int v1, v0, v2

    .line 992
    .local v1, "numFittedColumns":I
    if-lez v1, :cond_3

    .line 993
    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1011
    .end local v0    # "gridWidth":I
    :cond_0
    :goto_1
    iput v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    .line 1019
    .end local v1    # "numFittedColumns":I
    :goto_2
    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v2, :cond_1

    .line 1020
    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    iget v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    invoke-virtual {v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->setNumColumns(I)V

    .line 1023
    :cond_1
    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->measureHeader()V

    .line 1025
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 1026
    return-void

    .line 994
    .restart local v0    # "gridWidth":I
    .restart local v1    # "numFittedColumns":I
    :cond_2
    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mColumnWidth:I

    mul-int/2addr v2, v1

    add-int/lit8 v3, v1, -0x1

    .line 995
    iget v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHorizontalSpacing:I

    mul-int/2addr v3, v4

    .line 994
    add-int/2addr v2, v3

    .line 995
    if-le v2, v0, :cond_0

    .line 996
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1004
    :cond_3
    const/4 v1, 0x1

    .line 1006
    goto :goto_1

    .line 1009
    .end local v0    # "gridWidth":I
    .end local v1    # "numFittedColumns":I
    :cond_4
    const/4 v1, 0x2

    .restart local v1    # "numFittedColumns":I
    goto :goto_1

    .line 1015
    .end local v1    # "numFittedColumns":I
    :cond_5
    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumColumns:I

    iput v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    goto :goto_2
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 258
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 262
    move-object v0, p1

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;

    .line 264
    .local v0, "ss":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;
    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/GridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 265
    iget-boolean v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;->areHeadersSticky:Z

    iput-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    .line 267
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->requestLayout()V

    .line 268
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 272
    invoke-super {p0}, Landroid/widget/GridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 274
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;

    invoke-direct {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 275
    .local v0, "ss":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;
    iget-boolean v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    iput-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;->areHeadersSticky:Z

    .line 276
    return-object v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 286
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 287
    invoke-direct {p0, p2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->scrollChanged(I)V

    .line 289
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 297
    :cond_0
    iput p2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollState:I

    .line 298
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 303
    .local v0, "action":I
    iget-boolean v6, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    .line 304
    .local v6, "wasHeaderChildBeingPressed":Z
    iget-boolean v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    if-eqz v8, :cond_2

    .line 305
    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v8}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v5

    .line 306
    .local v5, "tempHeader":Landroid/view/View;
    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    move-object v3, v5

    .line 308
    .local v3, "headerHolder":Landroid/view/View;
    :goto_0
    const/4 v8, 0x1

    if-eq v0, v8, :cond_0

    const/4 v8, 0x3

    if-ne v0, v8, :cond_1

    .line 309
    :cond_0
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    .line 311
    :cond_1
    if-eqz v5, :cond_2

    .line 312
    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-direct {p0, p1, v8}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->transformEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 313
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 314
    new-instance v8, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$2;

    invoke-direct {v8, p0, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$2;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Landroid/view/View;)V

    .line 318
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v9

    int-to-long v9, v9

    .line 314
    invoke-virtual {v5, v8, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 319
    const/4 v8, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->invalidate(IIII)V

    .line 323
    .end local v3    # "headerHolder":Landroid/view/View;
    .end local v5    # "tempHeader":Landroid/view/View;
    :cond_2
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    .line 445
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_2
    return v8

    .line 307
    .restart local v5    # "tempHeader":Landroid/view/View;
    :cond_4
    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v8}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 325
    .end local v5    # "tempHeader":Landroid/view/View;
    :pswitch_0
    iget-object v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForTap:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;

    if-nez v8, :cond_5

    .line 326
    new-instance v8, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;

    invoke-direct {v8, p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    iput-object v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForTap:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;

    .line 328
    :cond_5
    iget-object v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForTap:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {p0, v8, v9, v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 331
    .local v7, "y":I
    int-to-float v8, v7

    iput v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionY:F

    .line 332
    int-to-float v8, v7

    invoke-direct {p0, v8}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->findMotionHeader(F)I

    move-result v8

    iput v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    .line 333
    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 334
    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollState:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    .line 339
    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v8}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v5

    .line 340
    .restart local v5    # "tempHeader":Landroid/view/View;
    if-eqz v5, :cond_8

    .line 341
    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-direct {p0, p1, v8}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->transformEvent(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 342
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderChildBeingPressed:Z

    .line 343
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/view/View;->setPressed(Z)V

    .line 345
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 346
    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    const/4 v9, -0x2

    if-eq v8, v9, :cond_7

    .line 347
    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v8}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 349
    :cond_7
    const/4 v8, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->invalidate(IIII)V

    .line 352
    :cond_8
    const/4 v8, 0x0

    iput v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    .line 353
    const/4 v8, 0x1

    goto :goto_2

    .line 355
    .end local v5    # "tempHeader":Landroid/view/View;
    .end local v7    # "y":I
    :pswitch_1
    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 359
    const/4 v8, -0x1

    iput v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    .line 361
    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v8}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v2

    .line 362
    .local v2, "header":Landroid/view/View;
    if-eqz v2, :cond_9

    .line 363
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 364
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 366
    :cond_9
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 367
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_a

    .line 368
    iget-object v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 370
    :cond_a
    const/4 v8, -0x1

    iput v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    goto/16 :goto_1

    .line 375
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "header":Landroid/view/View;
    :pswitch_2
    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_b

    .line 376
    const/4 v8, -0x1

    iput v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    .line 377
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 379
    :cond_b
    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 383
    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v8}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v2

    .line 384
    .restart local v2    # "header":Landroid/view/View;
    if-nez v6, :cond_11

    .line 385
    if-eqz v2, :cond_11

    .line 386
    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    if-eqz v8, :cond_c

    .line 387
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 390
    :cond_c
    iget-object v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPerformHeaderClick:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;

    if-nez v8, :cond_d

    .line 391
    new-instance v8, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;)V

    iput-object v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPerformHeaderClick:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;

    .line 394
    :cond_d
    iget-object v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPerformHeaderClick:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;

    .line 395
    .local v4, "performHeaderClick":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;
    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    iput v8, v4, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->mClickMotionPosition:I

    .line 396
    invoke-virtual {v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->rememberWindowAttachCount()V

    .line 398
    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    if-eqz v8, :cond_e

    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_14

    .line 399
    :cond_e
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 400
    .restart local v1    # "handler":Landroid/os/Handler;
    if-eqz v1, :cond_f

    .line 401
    iget v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    if-nez v8, :cond_12

    iget-object v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForTap:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;

    :goto_3
    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 405
    :cond_f
    iget-boolean v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v8, :cond_13

    .line 410
    const/4 v8, 0x1

    iput v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    .line 411
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 412
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setPressed(Z)V

    .line 413
    iget-object v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v8, :cond_10

    .line 414
    iget-object v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v8}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 416
    :cond_10
    new-instance v8, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$3;

    invoke-direct {v8, p0, v2, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$3;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Landroid/view/View;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;)V

    iput-object v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 432
    iget-object v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 433
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v9

    int-to-long v9, v9

    .line 432
    invoke-virtual {p0, v8, v9, v10}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 442
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v4    # "performHeaderClick":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;
    :cond_11
    :goto_4
    const/4 v8, -0x1

    iput v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    .line 443
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 402
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v4    # "performHeaderClick":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;
    :cond_12
    iget-object v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

    goto :goto_3

    .line 435
    :cond_13
    const/4 v8, -0x1

    iput v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    goto :goto_4

    .line 437
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_14
    iget-boolean v8, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v8, :cond_11

    .line 438
    invoke-virtual {v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->run()V

    goto :goto_4

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performHeaderClick(Landroid/view/View;J)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 449
    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnHeaderClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;

    if-eqz v2, :cond_1

    .line 450
    invoke-virtual {p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->playSoundEffect(I)V

    .line 451
    if-eqz p1, :cond_0

    .line 452
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnHeaderClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;->onHeaderClick(Landroid/widget/AdapterView;Landroid/view/View;J)V

    .line 458
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public performHeaderLongPress(Landroid/view/View;J)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # J

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnHeaderLongClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderLongClickListener;

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnHeaderLongClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderLongClickListener;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderLongClickListener;->onHeaderLongClick(Landroid/widget/AdapterView;Landroid/view/View;J)Z

    move-result v0

    .line 467
    :cond_0
    if-eqz v0, :cond_2

    .line 468
    if-eqz p1, :cond_1

    .line 469
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 471
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->performHapticFeedback(I)Z

    .line 474
    :cond_2
    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 479
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 483
    :cond_0
    iget-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClipToPaddingHasBeenSet:Z

    if-nez v1, :cond_1

    .line 484
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingToPadding:Z

    .line 488
    :cond_1
    instance-of v1, p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 489
    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    .line 499
    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    .local v0, "baseAdapter":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;
    :goto_0
    new-instance v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;-><init>(Landroid/content/Context;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;)V

    iput-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .line 500
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 501
    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->reset()V

    .line 502
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-super {p0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 503
    return-void

    .line 490
    .end local v0    # "baseAdapter":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_2
    instance-of v1, p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    if-eqz v1, :cond_3

    .line 492
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;

    .line 493
    check-cast p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    .line 492
    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-direct {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;)V

    .line 494
    .restart local v0    # "baseAdapter":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;
    goto :goto_0

    .line 496
    .end local v0    # "baseAdapter":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersListAdapterWrapper;

    invoke-direct {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersListAdapterWrapper;-><init>(Landroid/widget/ListAdapter;)V

    .restart local v0    # "baseAdapter":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;
    goto :goto_0
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1
    .param p1, "useStickyHeaders"    # Z

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    if-eq p1, v0, :cond_0

    .line 507
    iput-boolean p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    .line 508
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->requestLayout()V

    .line 510
    :cond_0
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 514
    invoke-super {p0, p1}, Landroid/widget/GridView;->setClipToPadding(Z)V

    .line 515
    iput-boolean p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingToPadding:Z

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClipToPaddingHasBeenSet:Z

    .line 517
    return-void
.end method

.method public setColumnWidth(I)V
    .locals 0
    .param p1, "columnWidth"    # I

    .prologue
    .line 521
    invoke-super {p0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 522
    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mColumnWidth:I

    .line 523
    return-void
.end method

.method public setHeadersIgnorePadding(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 531
    iput-boolean p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeadersIgnorePadding:Z

    .line 532
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 536
    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 537
    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHorizontalSpacing:I

    .line 538
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    .line 542
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumColumnsSet:Z

    .line 544
    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumColumns:I

    .line 545
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->setNumColumns(I)V

    .line 548
    :cond_0
    return-void
.end method

.method public setOnHeaderClickListener(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnHeaderClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;

    .line 552
    return-void
.end method

.method public setOnHeaderLongClickListener(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderLongClickListener;

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setLongClickable(Z)V

    .line 558
    :cond_0
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnHeaderLongClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderLongClickListener;

    .line 559
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 563
    .local p1, "listener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 564
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 565
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .prologue
    .line 570
    .local p1, "listener":Landroid/widget/AdapterView$OnItemLongClickListener;, "Landroid/widget/AdapterView$OnItemLongClickListener;"
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 571
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 572
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .prologue
    .line 576
    .local p1, "listener":Landroid/widget/AdapterView$OnItemSelectedListener;, "Landroid/widget/AdapterView$OnItemSelectedListener;"
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 577
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 578
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 583
    return-void
.end method

.method public setStickyHeaderIsTranscluent(Z)V
    .locals 1
    .param p1, "isTranscluent"    # Z

    .prologue
    .line 586
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    .line 587
    return-void

    .line 586
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setVerticalSpacing(I)V
    .locals 0
    .param p1, "verticalSpacing"    # I

    .prologue
    .line 591
    invoke-super {p0, p1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 592
    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mVerticalSpacing:I

    .line 593
    return-void
.end method
