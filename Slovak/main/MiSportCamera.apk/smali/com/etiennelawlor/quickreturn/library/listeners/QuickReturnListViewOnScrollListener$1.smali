.class Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$1;
.super Ljava/lang/Object;
.source "QuickReturnListViewOnScrollListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;


# direct methods
.method constructor <init>(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$1;->this$0:Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 87
    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$1;->this$0:Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;

    # getter for: Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mIsScrolling:Z
    invoke-static {v1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->access$000(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$1;->this$0:Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;

    # getter for: Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;
    invoke-static {v1}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->access$100(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;)Landroid/view/View;

    move-result-object v1

    const-string v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$1;->this$0:Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;

    # getter for: Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooter:Landroid/view/View;
    invoke-static {v4}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->access$100(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v3, v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 91
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 92
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 93
    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener$1;->this$0:Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;

    # setter for: Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->mFooterDiffTotal:I
    invoke-static {v1, v6}, Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;->access$202(Lcom/etiennelawlor/quickreturn/library/listeners/QuickReturnListViewOnScrollListener;I)I

    goto :goto_0
.end method
