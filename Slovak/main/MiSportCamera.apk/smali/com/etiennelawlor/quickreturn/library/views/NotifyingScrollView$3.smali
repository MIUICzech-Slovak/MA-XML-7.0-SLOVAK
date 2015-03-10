.class Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$3;
.super Landroid/os/Handler;
.source "NotifyingScrollView.java"


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
    .line 95
    iput-object p1, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$3;->this$0:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 99
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .line 100
    .local v0, "scroller":Landroid/view/View;
    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$3;->this$0:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;

    # getter for: Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->touchEventId:I
    invoke-static {v2}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->access$100(Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 101
    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$3;->this$0:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;

    # getter for: Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->lastY:I
    invoke-static {v1}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->access$200(Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 102
    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$3;->this$0:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;

    # invokes: Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->doAfterEndScrolling()V
    invoke-static {v1}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->access$300(Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$3;->this$0:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;

    iget-object v1, v1, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$3;->this$0:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;

    iget-object v2, v2, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$3;->this$0:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;

    # getter for: Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->touchEventId:I
    invoke-static {v3}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->access$100(Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 105
    iget-object v1, p0, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView$3;->this$0:Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v2

    # setter for: Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->lastY:I
    invoke-static {v1, v2}, Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;->access$202(Lcom/etiennelawlor/quickreturn/library/views/NotifyingScrollView;I)I

    goto :goto_0
.end method
