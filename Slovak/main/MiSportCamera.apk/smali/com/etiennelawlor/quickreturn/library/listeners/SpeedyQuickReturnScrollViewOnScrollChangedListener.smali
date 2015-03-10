.class public Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;
.super Ljava/lang/Object;
.source "SpeedyQuickReturnScrollViewOnScrollChangedListener.java"

# interfaces
.implements Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFooter:Landroid/view/View;

.field private mHeader:Landroid/view/View;

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
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mQuickReturnType:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    .line 36
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mContext:Landroid/content/Context;

    sget v1, Lcom/etiennelawlor/quickreturn/library/R$anim;->anticipate_slide_header_up:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mSlideHeaderUpAnimation:Landroid/view/animation/Animation;

    .line 37
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mContext:Landroid/content/Context;

    sget v1, Lcom/etiennelawlor/quickreturn/library/R$anim;->overshoot_slide_header_down:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mSlideHeaderDownAnimation:Landroid/view/animation/Animation;

    .line 38
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mContext:Landroid/content/Context;

    sget v1, Lcom/etiennelawlor/quickreturn/library/R$anim;->overshoot_slide_footer_up:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mSlideFooterUpAnimation:Landroid/view/animation/Animation;

    .line 39
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mContext:Landroid/content/Context;

    sget v1, Lcom/etiennelawlor/quickreturn/library/R$anim;->anticipate_slide_footer_down:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mSlideFooterDownAnimation:Landroid/view/animation/Animation;

    .line 41
    iput-object p3, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mHeader:Landroid/view/View;

    .line 42
    iput-object p4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    .line 43
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

    const/16 v2, 0x8

    .line 48
    if-ge p3, p5, :cond_2

    .line 49
    sget-object v0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener$1;->$SwitchMap$com$etiennelawlor$quickreturn$library$enums$QuickReturnType:[I

    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mQuickReturnType:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    invoke-virtual {v1}, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 52
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mSlideHeaderDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 58
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mSlideFooterUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 63
    :pswitch_2
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 64
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mSlideHeaderDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 69
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mSlideFooterUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 76
    :cond_2
    if-le p3, p5, :cond_0

    .line 77
    sget-object v0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener$1;->$SwitchMap$com$etiennelawlor$quickreturn$library$enums$QuickReturnType:[I

    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mQuickReturnType:Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;

    invoke-virtual {v1}, Lcom/etiennelawlor/quickreturn/library/enums/QuickReturnType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 79
    :pswitch_3
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mSlideHeaderUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 85
    :pswitch_4
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mSlideFooterDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 91
    :pswitch_5
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mSlideHeaderUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mSlideFooterDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 77
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onScrollEnded()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mFooter:Landroid/view/View;

    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/SpeedyQuickReturnScrollViewOnScrollChangedListener;->mSlideFooterUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 113
    :cond_0
    return-void
.end method
