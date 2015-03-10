.class Lcom/ant/liao/GifView$DrawThread;
.super Ljava/lang/Thread;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ant/liao/GifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ant/liao/GifView;


# direct methods
.method private constructor <init>(Lcom/ant/liao/GifView;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/ant/liao/GifView$DrawThread;->this$0:Lcom/ant/liao/GifView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ant/liao/GifView;Lcom/ant/liao/GifView$DrawThread;)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/ant/liao/GifView$DrawThread;-><init>(Lcom/ant/liao/GifView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 310
    iget-object v4, p0, Lcom/ant/liao/GifView$DrawThread;->this$0:Lcom/ant/liao/GifView;

    # getter for: Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;
    invoke-static {v4}, Lcom/ant/liao/GifView;->access$0(Lcom/ant/liao/GifView;)Lcom/ant/liao/GifDecoder;

    move-result-object v4

    if-nez v4, :cond_2

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v4, p0, Lcom/ant/liao/GifView$DrawThread;->this$0:Lcom/ant/liao/GifView;

    # getter for: Lcom/ant/liao/GifView;->pause:Z
    invoke-static {v4}, Lcom/ant/liao/GifView;->access$2(Lcom/ant/liao/GifView;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 316
    iget-object v4, p0, Lcom/ant/liao/GifView$DrawThread;->this$0:Lcom/ant/liao/GifView;

    # getter for: Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;
    invoke-static {v4}, Lcom/ant/liao/GifView;->access$0(Lcom/ant/liao/GifView;)Lcom/ant/liao/GifDecoder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ant/liao/GifDecoder;->next()Lcom/ant/liao/GifFrame;

    move-result-object v0

    .line 317
    .local v0, "frame":Lcom/ant/liao/GifFrame;
    iget-object v4, p0, Lcom/ant/liao/GifView$DrawThread;->this$0:Lcom/ant/liao/GifView;

    iget-object v5, v0, Lcom/ant/liao/GifFrame;->image:Landroid/graphics/Bitmap;

    invoke-static {v4, v5}, Lcom/ant/liao/GifView;->access$3(Lcom/ant/liao/GifView;Landroid/graphics/Bitmap;)V

    .line 318
    iget v4, v0, Lcom/ant/liao/GifFrame;->delay:I

    int-to-long v2, v4

    .line 319
    .local v2, "sp":J
    iget-object v4, p0, Lcom/ant/liao/GifView$DrawThread;->this$0:Lcom/ant/liao/GifView;

    # getter for: Lcom/ant/liao/GifView;->redrawHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/ant/liao/GifView;->access$4(Lcom/ant/liao/GifView;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 320
    iget-object v4, p0, Lcom/ant/liao/GifView$DrawThread;->this$0:Lcom/ant/liao/GifView;

    # getter for: Lcom/ant/liao/GifView;->redrawHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/ant/liao/GifView;->access$4(Lcom/ant/liao/GifView;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 321
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/ant/liao/GifView$DrawThread;->this$0:Lcom/ant/liao/GifView;

    # getter for: Lcom/ant/liao/GifView;->redrawHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/ant/liao/GifView;->access$4(Lcom/ant/liao/GifView;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 322
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 313
    .end local v0    # "frame":Lcom/ant/liao/GifFrame;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "sp":J
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/ant/liao/GifView$DrawThread;->this$0:Lcom/ant/liao/GifView;

    # getter for: Lcom/ant/liao/GifView;->isRun:Z
    invoke-static {v4}, Lcom/ant/liao/GifView;->access$1(Lcom/ant/liao/GifView;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 331
    :cond_3
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1
.end method
