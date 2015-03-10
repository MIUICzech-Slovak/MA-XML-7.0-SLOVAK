.class public Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;
.super Ljava/lang/Object;
.source "SpeedyQuickReturnListViewOnScrollListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExtraOnScrollListeners:Ljava/util/List;
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

.field private mFooterViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeader:Landroid/view/View;

.field private mHeaderViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevScrollY:I

.field private mQuickReturnType:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

.field private mSlideFooterDownAnimation:Landroid/view/animation/Animation;

.field private mSlideFooterUpAnimation:Landroid/view/animation/Animation;

.field private mSlideHeaderDownAnimation:Landroid/view/animation/Animation;

.field private mSlideHeaderUpAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quickReturnType"    # Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;
    .param p3, "headerView"    # Landroid/view/View;
    .param p4, "footerView"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mPrevScrollY:I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mExtraOnScrollListeners:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mQuickReturnType:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    .line 42
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mContext:Landroid/content/Context;

    sget v1, Lcom/etiennelawlor/quickreturn/library/R$anim;->anticipate_slide_header_up:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideHeaderUpAnimation:Landroid/view/animation/Animation;

    .line 43
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mContext:Landroid/content/Context;

    sget v1, Lcom/etiennelawlor/quickreturn/library/R$anim;->overshoot_slide_header_down:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideHeaderDownAnimation:Landroid/view/animation/Animation;

    .line 44
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mContext:Landroid/content/Context;

    sget v1, Lcom/etiennelawlor/quickreturn/library/R$anim;->overshoot_slide_footer_up:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideFooterUpAnimation:Landroid/view/animation/Animation;

    .line 45
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mContext:Landroid/content/Context;

    sget v1, Lcom/etiennelawlor/quickreturn/library/R$anim;->anticipate_slide_footer_down:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideFooterDownAnimation:Landroid/view/animation/Animation;

    .line 48
    iput-object p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    .line 49
    iput-object p4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quickReturnType"    # Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p3, "headerViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p4, "footerViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mPrevScrollY:I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mExtraOnScrollListeners:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mQuickReturnType:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    .line 56
    iput-object p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mHeaderViews:Ljava/util/ArrayList;

    .line 57
    iput-object p4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mFooterViews:Ljava/util/ArrayList;

    .line 59
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mContext:Landroid/content/Context;

    sget v1, Lcom/etiennelawlor/quickreturn/library/R$anim;->anticipate_slide_header_up:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideHeaderUpAnimation:Landroid/view/animation/Animation;

    .line 60
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mContext:Landroid/content/Context;

    sget v1, Lcom/etiennelawlor/quickreturn/library/R$anim;->overshoot_slide_header_down:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideHeaderDownAnimation:Landroid/view/animation/Animation;

    .line 61
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mContext:Landroid/content/Context;

    sget v1, Lcom/etiennelawlor/quickreturn/library/R$anim;->overshoot_slide_footer_up:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideFooterUpAnimation:Landroid/view/animation/Animation;

    .line 62
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mContext:Landroid/content/Context;

    sget v1, Lcom/etiennelawlor/quickreturn/library/R$anim;->anticipate_slide_footer_down:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideFooterDownAnimation:Landroid/view/animation/Animation;

    .line 63
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 10
    .param p1, "listview"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 77
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mExtraOnScrollListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$OnScrollListener;

    .line 78
    .local v2, "listener":Landroid/widget/AbsListView$OnScrollListener;
    invoke-interface {v2, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    goto :goto_0

    .line 80
    .end local v2    # "listener":Landroid/widget/AbsListView$OnScrollListener;
    :cond_0
    invoke-static {p1}, Lcom/etiennelawlor/quickreturn/library/utils/QuickReturnUtils;->getScrollY(Landroid/widget/AbsListView;)I

    move-result v4

    .line 81
    .local v4, "scrollY":I
    iget v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mPrevScrollY:I

    sub-int v0, v6, v4

    .line 87
    .local v0, "diff":I
    if-lez v0, :cond_6

    .line 88
    sget-object v6, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener$1;->$SwitchMap$com$etiennelawlor$quickreturn$library$enums$QuickReturnType:[I

    iget-object v7, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mQuickReturnType:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    invoke-virtual {v7}, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 185
    :cond_1
    :goto_1
    iput v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mPrevScrollY:I

    .line 186
    return-void

    .line 90
    :pswitch_0
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 91
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    iget-object v7, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideHeaderDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 96
    :pswitch_1
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 97
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    iget-object v7, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideFooterUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 102
    :pswitch_2
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 103
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    iget-object v7, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideHeaderDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    :cond_2
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 108
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    iget-object v7, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideFooterUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 113
    :pswitch_3
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mHeaderViews:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 114
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 115
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 116
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideHeaderDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 122
    .end local v5    # "view":Landroid/view/View;
    :cond_4
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mFooterViews:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 123
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 124
    .restart local v5    # "view":Landroid/view/View;
    sget v6, Lcom/etiennelawlor/quickreturn/library/R$id;->scroll_threshold_key:I

    invoke-virtual {v5, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 125
    .local v3, "scrollThreshold":I
    if-le v0, v3, :cond_5

    .line 126
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v8, :cond_5

    .line 127
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideFooterUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 135
    .end local v3    # "scrollThreshold":I
    .end local v5    # "view":Landroid/view/View;
    :cond_6
    if-gez v0, :cond_1

    .line 136
    sget-object v6, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener$1;->$SwitchMap$com$etiennelawlor$quickreturn$library$enums$QuickReturnType:[I

    iget-object v7, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mQuickReturnType:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    invoke-virtual {v7}, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_1

    .line 138
    :pswitch_4
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 139
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    iget-object v7, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideHeaderUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 144
    :pswitch_5
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 145
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    iget-object v7, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideFooterDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 150
    :pswitch_6
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7

    .line 151
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mHeader:Landroid/view/View;

    iget-object v7, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideHeaderUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 155
    :cond_7
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 156
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;

    iget-object v7, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideFooterDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 161
    :pswitch_7
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mHeaderViews:Ljava/util/ArrayList;

    if-eqz v6, :cond_9

    .line 162
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mHeaderViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 163
    .restart local v5    # "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    .line 164
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideHeaderUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    .line 170
    .end local v5    # "view":Landroid/view/View;
    :cond_9
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mFooterViews:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 171
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 172
    .restart local v5    # "view":Landroid/view/View;
    sget v6, Lcom/etiennelawlor/quickreturn/library/R$id;->scroll_threshold_key:I

    invoke-virtual {v5, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 173
    .restart local v3    # "scrollThreshold":I
    neg-int v6, v3

    if-ge v0, v6, :cond_a

    .line 174
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_a

    .line 175
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideFooterDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 136
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 69
    iget-object v2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mExtraOnScrollListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;

    .line 70
    .local v1, "listener":Landroid/widget/AbsListView$OnScrollListener;
    invoke-interface {v1, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_0

    .line 72
    .end local v1    # "listener":Landroid/widget/AbsListView$OnScrollListener;
    :cond_0
    return-void
.end method

.method public registerExtraOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mExtraOnScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    return-void
.end method

.method public setSlideFooterDownAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideFooterDownAnimation:Landroid/view/animation/Animation;

    .line 206
    return-void
.end method

.method public setSlideFooterUpAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideFooterUpAnimation:Landroid/view/animation/Animation;

    .line 202
    return-void
.end method

.method public setSlideHeaderDownAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideHeaderDownAnimation:Landroid/view/animation/Animation;

    .line 198
    return-void
.end method

.method public setSlideHeaderUpAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnListViewOnScrollListener;->mSlideHeaderUpAnimation:Landroid/view/animation/Animation;

    .line 194
    return-void
.end method
