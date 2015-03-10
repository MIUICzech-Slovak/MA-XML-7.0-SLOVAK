.class Lcom/ant/liao/GifView$1;
.super Landroid/os/Handler;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ant/liao/GifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ant/liao/GifView;


# direct methods
.method constructor <init>(Lcom/ant/liao/GifView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ant/liao/GifView$1;->this$0:Lcom/ant/liao/GifView;

    .line 297
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/ant/liao/GifView$1;->this$0:Lcom/ant/liao/GifView;

    invoke-virtual {v0}, Lcom/ant/liao/GifView;->invalidate()V

    .line 300
    return-void
.end method
