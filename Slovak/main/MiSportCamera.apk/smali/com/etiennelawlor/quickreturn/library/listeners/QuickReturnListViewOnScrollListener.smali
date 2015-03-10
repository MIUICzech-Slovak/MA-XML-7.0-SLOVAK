.class public Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;
.super Ljava/lang/Object;
.source "QuickReturnListViewOnScrollListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$2;
    }
.end annotation


# instance fields
.field private mCanSlideInIdleScrollState:Z

.field private mExtraOnScrollListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFooter:Landroid/view/View;

.field private mFooterDiffTotal:I

.field private mHandler:Landroid/os/Handler;

.field private mHeader:Landroid/view/View;

.field private mHeaderDiffTotal:I

.field private mIsScrolling:Z

.field private mMinFooterTranslation:I

.field private mMinHeaderTranslation:I

.field private mPrevScrollY:I

.field private mQuickReturnType:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;


# direct methods
.method public constructor <init>(Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;Landroid/view/View;ILandroid/view/View;I)V
    .locals 1
    .param p1, "quickReturnType"    # Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;
    .param p2, "headerView"    # Landroid/view/View;
    .param p3, "headerTranslation"    # I
    .param p4, "footerView"    # Landroid/view/View;
    .param p5, "footerTranslation"    # I

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mPrevScrollY:I

    .line 24
    iput v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    .line 25
    iput v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    .line 30
    iput-boolean v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mCanSlideInIdleScrollState:Z

    .line 31
    iput-boolean v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mIsScrolling:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mExtraOnScrollListenerList:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mQuickReturnType:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    .line 39
    iput-object p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    .line 40
    iput p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    .line 41
    iput-object p4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    .line 42
    iput p5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mIsScrolling:Z

    return v0
.end method

.method static synthetic access$100(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;I)I
    .locals 0
    .param p0, "x0"    # Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    return p1
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7
    .param p1, "listview"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v6, 0x0

    .line 164
    iget-object v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mExtraOnScrollListenerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$OnScrollListener;

    .line 165
    .local v2, "listener":Landroid/widget/AbsListView$OnScrollListener;
    invoke-interface {v2, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    goto :goto_0

    .line 167
    .end local v2    # "listener":Landroid/widget/AbsListView$OnScrollListener;
    :cond_0
    invoke-static {p1}, Lcom/etiennelawlor/quickreturn/library/utils/QuickReturnUtils;->getScrollY(Landroid/widget/AbsListView;)I

    move-result v3

    .line 168
    .local v3, "scrollY":I
    iget v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mPrevScrollY:I

    sub-int v0, v4, v3

    .line 175
    .local v0, "diff":I
    if-eqz v0, :cond_1

    .line 176
    sget-object v4, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$2;->$SwitchMap$com$etiennelawlor$quickreturn$library$enums$QuickReturnType:[I

    iget-object v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mQuickReturnType:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    invoke-virtual {v5}, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 226
    :cond_1
    :goto_1
    iput v3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mPrevScrollY:I

    .line 227
    return-void

    .line 178
    :pswitch_0
    if-gez v0, :cond_2

    .line 179
    iget v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    .line 184
    :goto_2
    iget-object v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 181
    :cond_2
    iget v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    goto :goto_2

    .line 187
    :pswitch_1
    if-gez v0, :cond_3

    .line 188
    iget v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    neg-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    .line 193
    :goto_3
    iget-object v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 190
    :cond_3
    iget v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    neg-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    goto :goto_3

    .line 196
    :pswitch_2
    if-gez v0, :cond_4

    .line 197
    iget v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    .line 198
    iget v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    neg-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    .line 204
    :goto_4
    iget-object v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 205
    iget-object v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 200
    :cond_4
    iget v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    .line 201
    iget v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    neg-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    goto :goto_4

    .line 208
    :pswitch_3
    if-gez v0, :cond_7

    .line 209
    iget v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    neg-int v4, v4

    if-le v3, v4, :cond_5

    .line 210
    iget v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    .line 212
    :cond_5
    iget v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    if-le v3, v4, :cond_6

    .line 213
    iget v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    neg-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    .line 219
    :cond_6
    :goto_5
    iget-object v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 220
    iget-object v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_1

    .line 215
    :cond_7
    iget v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    .line 216
    iget v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    neg-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    goto :goto_5

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 10
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 51
    iget-object v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mExtraOnScrollListenerList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$OnScrollListener;

    .line 52
    .local v2, "listener":Landroid/widget/AbsListView$OnScrollListener;
    invoke-interface {v2, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_0

    .line 55
    .end local v2    # "listener":Landroid/widget/AbsListView$OnScrollListener;
    :cond_0
    if-nez p2, :cond_2

    .line 56
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mIsScrolling:Z

    .line 62
    :goto_1
    if-nez p2, :cond_1

    iget-boolean v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mCanSlideInIdleScrollState:Z

    if-eqz v5, :cond_1

    .line 63
    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    neg-int v5, v5

    div-int/lit8 v4, v5, 0x2

    .line 64
    .local v4, "midHeader":I
    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    div-int/lit8 v3, v5, 0x2

    .line 66
    .local v3, "midFooter":I
    sget-object v5, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$2;->$SwitchMap$com$etiennelawlor$quickreturn$library$enums$QuickReturnType:[I

    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mQuickReturnType:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    invoke-virtual {v6}, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 157
    .end local v3    # "midFooter":I
    .end local v4    # "midHeader":I
    :cond_1
    :goto_2
    return-void

    .line 58
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mIsScrolling:Z

    goto :goto_1

    .line 68
    .restart local v3    # "midFooter":I
    .restart local v4    # "midHeader":I
    :pswitch_0
    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    neg-int v5, v5

    if-lez v5, :cond_3

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    neg-int v5, v5

    if-ge v5, v4, :cond_3

    .line 69
    iget-object v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    const-string v6, "translationY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 70
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x64

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 71
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 72
    const/4 v5, 0x0

    iput v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    goto :goto_2

    .line 73
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_3
    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    neg-int v5, v5

    iget v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    neg-int v6, v6

    if-ge v5, v6, :cond_1

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    neg-int v5, v5

    if-lt v5, v4, :cond_1

    .line 74
    iget-object v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    const-string v6, "translationY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    iget v9, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 75
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x64

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 76
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 77
    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    iput v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    goto :goto_2

    .line 82
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :pswitch_1
    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    neg-int v5, v5

    if-lez v5, :cond_4

    .line 84
    iget-object v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$1;

    invoke-direct {v6, p0}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$1;-><init>(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;)V

    const-wide/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 96
    :cond_4
    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    neg-int v5, v5

    iget v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    if-ge v5, v6, :cond_1

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    neg-int v5, v5

    if-lt v5, v3, :cond_1

    .line 98
    iget-object v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    const-string v6, "translationY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    iget v9, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 99
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 100
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 101
    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    neg-int v5, v5

    iput v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    goto/16 :goto_2

    .line 105
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :pswitch_2
    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    neg-int v5, v5

    if-lez v5, :cond_6

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    neg-int v5, v5

    if-ge v5, v4, :cond_6

    .line 106
    iget-object v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    const-string v6, "translationY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 107
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x64

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 108
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 109
    const/4 v5, 0x0

    iput v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    .line 117
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_5
    :goto_3
    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    neg-int v5, v5

    if-lez v5, :cond_7

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    neg-int v5, v5

    if-ge v5, v3, :cond_7

    .line 118
    iget-object v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    const-string v6, "translationY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 119
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x64

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 120
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 121
    const/4 v5, 0x0

    iput v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    goto/16 :goto_2

    .line 110
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_6
    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    neg-int v5, v5

    iget v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    neg-int v6, v6

    if-ge v5, v6, :cond_5

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    neg-int v5, v5

    if-lt v5, v4, :cond_5

    .line 111
    iget-object v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    const-string v6, "translationY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    iget v9, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 112
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x64

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 113
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 114
    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    iput v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    goto :goto_3

    .line 122
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_7
    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    neg-int v5, v5

    iget v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    if-ge v5, v6, :cond_1

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    neg-int v5, v5

    if-lt v5, v3, :cond_1

    .line 123
    iget-object v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    const-string v6, "translationY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    iget v9, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 124
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x64

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 125
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 126
    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    neg-int v5, v5

    iput v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    goto/16 :goto_2

    .line 130
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :pswitch_3
    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    neg-int v5, v5

    if-lez v5, :cond_9

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    neg-int v5, v5

    if-ge v5, v4, :cond_9

    .line 131
    iget-object v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    const-string v6, "translationY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 132
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x64

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 133
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 134
    const/4 v5, 0x0

    iput v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    .line 142
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_8
    :goto_4
    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    neg-int v5, v5

    if-lez v5, :cond_a

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    neg-int v5, v5

    if-ge v5, v3, :cond_a

    .line 143
    iget-object v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    const-string v6, "translationY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 144
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x64

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 145
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 146
    const/4 v5, 0x0

    iput v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    goto/16 :goto_2

    .line 135
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_9
    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    neg-int v5, v5

    iget v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    neg-int v6, v6

    if-ge v5, v6, :cond_8

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    neg-int v5, v5

    if-lt v5, v4, :cond_8

    .line 136
    iget-object v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    const-string v6, "translationY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    iget v9, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 137
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x64

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 138
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 139
    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinHeaderTranslation:I

    iput v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mHeaderDiffTotal:I

    goto :goto_4

    .line 147
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_a
    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    neg-int v5, v5

    iget v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    if-ge v5, v6, :cond_1

    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    neg-int v5, v5

    if-lt v5, v3, :cond_1

    .line 148
    iget-object v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    const-string v6, "translationY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    iget v9, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 149
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x64

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 150
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 151
    iget v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mMinFooterTranslation:I

    neg-int v5, v5

    iput v5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I

    goto/16 :goto_2

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public registerExtraOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mExtraOnScrollListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method public setCanSlideInIdleScrollState(Z)V
    .locals 0
    .param p1, "canSlideInIdleScrollState"    # Z

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mCanSlideInIdleScrollState:Z

    .line 231
    return-void
.end method
