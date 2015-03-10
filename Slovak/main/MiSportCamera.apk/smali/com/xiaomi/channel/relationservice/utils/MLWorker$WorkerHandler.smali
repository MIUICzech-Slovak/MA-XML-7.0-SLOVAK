.class Lcom/xiaomi/channel/relationservice/utils/MLWorker$WorkerHandler;
.super Landroid/os/Handler;
.source "MLWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/relationservice/utils/MLWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/channel/relationservice/utils/MLWorker;


# direct methods
.method public constructor <init>(Lcom/xiaomi/channel/relationservice/utils/MLWorker;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker$WorkerHandler;->this$0:Lcom/xiaomi/channel/relationservice/utils/MLWorker;

    .line 54
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 60
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker$WorkerHandler;->this$0:Lcom/xiaomi/channel/relationservice/utils/MLWorker;

    # getter for: Lcom/xiaomi/channel/relationservice/utils/MLWorker;->mListeners:Ljava/util/Vector;
    invoke-static {v1}, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->access$0(Lcom/xiaomi/channel/relationservice/utils/MLWorker;)Ljava/util/Vector;

    move-result-object v2

    monitor-enter v2

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker$WorkerHandler;->this$0:Lcom/xiaomi/channel/relationservice/utils/MLWorker;

    # getter for: Lcom/xiaomi/channel/relationservice/utils/MLWorker;->mListeners:Ljava/util/Vector;
    invoke-static {v1}, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->access$0(Lcom/xiaomi/channel/relationservice/utils/MLWorker;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    monitor-exit v2

    .line 65
    return-void

    .line 61
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/channel/relationservice/utils/MLWorker$HandlerMessageListener;

    .line 62
    .local v0, "listener":Lcom/xiaomi/channel/relationservice/utils/MLWorker$HandlerMessageListener;
    invoke-interface {v0, p1}, Lcom/xiaomi/channel/relationservice/utils/MLWorker$HandlerMessageListener;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 60
    .end local v0    # "listener":Lcom/xiaomi/channel/relationservice/utils/MLWorker$HandlerMessageListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
