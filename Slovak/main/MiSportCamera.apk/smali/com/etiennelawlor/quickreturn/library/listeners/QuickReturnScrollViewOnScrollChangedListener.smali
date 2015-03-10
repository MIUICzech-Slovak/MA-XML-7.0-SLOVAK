.class public Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;
.super Ljava/lang/Object;
.source "QuickReturnScrollViewOnScrollChangedListener.java"

# interfaces
.implements Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener$1;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private mCanSlideInIdleScrollState:Z

.field private mFooter:Landroid/view/View;

.field private mFooterDiffTotal:I

.field private mHeader:Landroid/view/View;

.field private mHeaderDiffTotal:I

.field private mMinFooterTranslation:I

.field private mMinHeaderTranslation:I

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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mHeaderDiffTotal:I

    .line 21
    iput v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mFooterDiffTotal:I

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->handler:Landroid/os/Handler;

    .line 30
    iput-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mQuickReturnType:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    .line 31
    iput-object p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mHeader:Landroid/view/View;

    .line 32
    iput p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mMinHeaderTranslation:I

    .line 33
    iput-object p4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    .line 34
    iput p5, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mMinFooterTranslation:I

    .line 35
    return-void
.end method


# virtual methods
.method public onScrollChanged(Landroid/widget/ScrollView;IIII)V
    .locals 4
    .param p1, "who"    # Landroid/widget/ScrollView;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "oldl"    # I
    .param p5, "oldt"    # I

    .prologue
    const/4 v3, 0x0

    .line 41
    sub-int v0, p5, p3

    .line 43
    .local v0, "diff":I
    sget-object v1, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener$1;->$SwitchMap$com$etiennelawlor$quickreturn$library$enums$QuickReturnType:[I

    iget-object v2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mQuickReturnType:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    invoke-virtual {v2}, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 45
    :pswitch_0
    if-gtz v0, :cond_0

    .line 46
    iget v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mHeaderDiffTotal:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mMinHeaderTranslation:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mHeaderDiffTotal:I

    .line 51
    :goto_1
    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mHeader:Landroid/view/View;

    iget v2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mHeaderDiffTotal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 48
    :cond_0
    iget v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mHeaderDiffTotal:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mMinHeaderTranslation:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mHeaderDiffTotal:I

    goto :goto_1

    .line 54
    :pswitch_1
    if-gtz v0, :cond_1

    .line 55
    iget v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mFooterDiffTotal:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mMinFooterTranslation:I

    neg-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mFooterDiffTotal:I

    .line 60
    :goto_2
    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    iget v2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mFooterDiffTotal:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 57
    :cond_1
    iget v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mFooterDiffTotal:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mMinFooterTranslation:I

    neg-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mFooterDiffTotal:I

    goto :goto_2

    .line 63
    :pswitch_2
    if-gtz v0, :cond_2

    .line 64
    iget v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mHeaderDiffTotal:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mMinHeaderTranslation:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mHeaderDiffTotal:I

    .line 65
    iget v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mFooterDiffTotal:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mMinFooterTranslation:I

    neg-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mFooterDiffTotal:I

    .line 71
    :goto_3
    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mHeader:Landroid/view/View;

    iget v2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mHeaderDiffTotal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 72
    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    iget v2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mFooterDiffTotal:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 67
    :cond_2
    iget v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mHeaderDiffTotal:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mMinHeaderTranslation:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mHeaderDiffTotal:I

    .line 68
    iget v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mFooterDiffTotal:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mMinFooterTranslation:I

    neg-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mFooterDiffTotal:I

    goto :goto_3

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onScrollEnded()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 81
    const-string v1, "QuickReturnScrollViewOnScrollChangedListener"

    const-string v2, "onScrollEnded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    const-string v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v3, v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 83
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 84
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 85
    iput v6, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mFooterDiffTotal:I

    .line 86
    return-void
.end method

.method public setCanSlideInIdleScrollState(Z)V
    .locals 0
    .param p1, "canSlideInIdleScrollState"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnScrollViewOnScrollChangedListener;->mCanSlideInIdleScrollState:Z

    .line 91
    return-void
.end method
