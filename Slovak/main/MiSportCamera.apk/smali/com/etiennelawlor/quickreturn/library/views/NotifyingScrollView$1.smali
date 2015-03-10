.class Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NotifyingScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;


# direct methods
.method constructor <init>(Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$1;->this$0:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 54
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$1;->this$0:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->isScrolling:Z

    .line 55
    const/4 v0, 0x0

    return v0
.end method
