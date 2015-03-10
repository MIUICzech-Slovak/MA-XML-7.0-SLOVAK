.class Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$2;
.super Ljava/lang/Object;
.source "NotifyingScrollView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;
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
    .line 67
    iput-object p1, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$2;->this$0:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 71
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$2;->this$0:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;

    # getter for: Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->gdScrolling:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->access$000(Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v4

    .line 75
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$2;->this$0:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;

    iget-object v0, v0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$2;->this$0:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;

    iget-object v1, v1, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$2;->this$0:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;

    # getter for: Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->touchEventId:I
    invoke-static {v2}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->access$100(Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;)I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
