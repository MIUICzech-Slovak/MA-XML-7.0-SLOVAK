.class Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;
.super Landroid/database/DataSetObserver;
.source "StickyGridHeadersGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;


# direct methods
.method constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    .line 114
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    # invokes: Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->reset()V
    invoke-static {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->access$0(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    .line 118
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;->this$0:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    # invokes: Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->reset()V
    invoke-static {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->access$0(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    .line 123
    return-void
.end method
