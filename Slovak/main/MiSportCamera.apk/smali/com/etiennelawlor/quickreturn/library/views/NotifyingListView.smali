.class public Lcom/etiennelawlor/quickreturn/library/views/NotifyingListView;
.super Landroid/widget/ListView;
.source "NotifyingListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/etiennelawlor/quickreturn/library/views/NotifyingListView$OnScrollChangedListener;
    }
.end annotation


# instance fields
.field private mIsOverScrollEnabled:Z

.field private mOnScrollChangedListener:Lcom/etiennelawlor/quickreturn/library/views/NotifyingListView$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingListView;->mIsOverScrollEnabled:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingListView;->mIsOverScrollEnabled:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingListView;->mIsOverScrollEnabled:Z

    .line 39
    return-void
.end method


# virtual methods
.method public isOverScrollEnabled()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingListView;->mIsOverScrollEnabled:Z

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 45
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingListView;->mOnScrollChangedListener:Lcom/etiennelawlor/quickreturn/library/views/NotifyingListView$OnScrollChangedListener;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingListView;->mOnScrollChangedListener:Lcom/etiennelawlor/quickreturn/library/views/NotifyingListView$OnScrollChangedListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingListView$OnScrollChangedListener;->onScrollChanged(Landroid/widget/ListView;IIII)V

    .line 48
    :cond_0
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 10
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingListView;->mIsOverScrollEnabled:Z

    if-eqz v0, :cond_0

    move/from16 v7, p7

    :goto_0
    iget-boolean v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingListView;->mIsOverScrollEnabled:Z

    if-eqz v0, :cond_1

    move/from16 v8, p8

    :goto_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v9, p9

    invoke-super/range {v0 .. v9}, Landroid/widget/ListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public setOnScrollChangedListener(Lcom/etiennelawlor/quickreturn/library/views/NotifyingListView$OnScrollChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/etiennelawlor/quickreturn/library/views/NotifyingListView$OnScrollChangedListener;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingListView;->mOnScrollChangedListener:Lcom/etiennelawlor/quickreturn/library/views/NotifyingListView$OnScrollChangedListener;

    .line 71
    return-void
.end method

.method public setOverScrollEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingListView;->mIsOverScrollEnabled:Z

    .line 75
    return-void
.end method
