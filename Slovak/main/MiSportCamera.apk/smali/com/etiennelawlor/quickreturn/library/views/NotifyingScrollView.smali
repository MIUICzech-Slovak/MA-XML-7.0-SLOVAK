.class public Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;
.super Landroid/widget/ScrollView;
.source "NotifyingScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$OnScrollChangedListener;
    }
.end annotation


# instance fields
.field private gdScrolling:Landroid/view/GestureDetector;

.field handler:Landroid/os/Handler;

.field public isScrolling:Z

.field private lastY:I

.field private mIsOverScrollEnabled:Z

.field private mOnScrollChangedListener:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$OnScrollChangedListener;

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field private touchEventId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->mIsOverScrollEnabled:Z

    .line 67
    new-instance v0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$2;

    invoke-direct {v0, p0}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$2;-><init>(Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;)V

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->lastY:I

    .line 93
    const v0, -0x985711

    iput v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->touchEventId:I

    .line 95
    new-instance v0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$3;

    invoke-direct {v0, p0}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$3;-><init>(Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;)V

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->handler:Landroid/os/Handler;

    .line 37
    invoke-direct {p0}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->mIsOverScrollEnabled:Z

    .line 67
    new-instance v0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$2;

    invoke-direct {v0, p0}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$2;-><init>(Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;)V

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->lastY:I

    .line 93
    const v0, -0x985711

    iput v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->touchEventId:I

    .line 95
    new-instance v0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$3;

    invoke-direct {v0, p0}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$3;-><init>(Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;)V

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->handler:Landroid/os/Handler;

    .line 42
    invoke-direct {p0}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->mIsOverScrollEnabled:Z

    .line 67
    new-instance v0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$2;

    invoke-direct {v0, p0}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$2;-><init>(Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;)V

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->lastY:I

    .line 93
    const v0, -0x985711

    iput v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->touchEventId:I

    .line 95
    new-instance v0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$3;

    invoke-direct {v0, p0}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$3;-><init>(Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;)V

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->handler:Landroid/os/Handler;

    .line 47
    invoke-direct {p0}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->init()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->gdScrolling:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;

    .prologue
    .line 17
    iget v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->touchEventId:I

    return v0
.end method

.method static synthetic access$200(Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;

    .prologue
    .line 17
    iget v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->lastY:I

    return v0
.end method

.method static synthetic access$202(Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->lastY:I

    return p1
.end method

.method static synthetic access$300(Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;)V
    .locals 0
    .param p0, "x0"    # Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->doAfterEndScrolling()V

    return-void
.end method

.method private doAfterEndScrolling()V
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->isScrolling:Z

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->isScrolling:Z

    .line 86
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->mOnScrollChangedListener:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$OnScrollChangedListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->mOnScrollChangedListener:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$OnScrollChangedListener;

    invoke-interface {v0}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$OnScrollChangedListener;->onScrollEnded()V

    .line 90
    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$1;

    invoke-direct {v1, p0}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$1;-><init>(Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->gdScrolling:Landroid/view/GestureDetector;

    .line 64
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    return-void
.end method


# virtual methods
.method public isOverScrollEnabled()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->mIsOverScrollEnabled:Z

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 118
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->mOnScrollChangedListener:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$OnScrollChangedListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->mOnScrollChangedListener:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$OnScrollChangedListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$OnScrollChangedListener;->onScrollChanged(Landroid/widget/ScrollView;IIII)V

    .line 121
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
    .line 126
    iget-boolean v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->mIsOverScrollEnabled:Z

    if-eqz v0, :cond_0

    move/from16 v7, p7

    :goto_0
    iget-boolean v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->mIsOverScrollEnabled:Z

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

    invoke-super/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public setOnScrollChangedListener(Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$OnScrollChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$OnScrollChangedListener;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->mOnScrollChangedListener:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$OnScrollChangedListener;

    .line 141
    return-void
.end method

.method public setOverScrollEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->mIsOverScrollEnabled:Z

    .line 145
    return-void
.end method
