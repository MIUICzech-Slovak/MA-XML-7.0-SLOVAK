.class public Lcom/xiaomi/channel/relationservice/utils/MLWorker;
.super Ljava/lang/Object;
.source "MLWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/relationservice/utils/MLWorker$HandlerMessageListener;,
        Lcom/xiaomi/channel/relationservice/utils/MLWorker$WorkerHandler;
    }
.end annotation


# static fields
.field public static final MSG_PROCESS_EVENT:I = 0x3f2


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/xiaomi/channel/relationservice/utils/MLWorker$HandlerMessageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->LOCK:Ljava/lang/Object;

    .line 20
    iput-object v3, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->mHandler:Landroid/os/Handler;

    .line 21
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->mListeners:Ljava/util/Vector;

    .line 25
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v3, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 26
    .local v1, "th":Ljava/lang/Thread;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 28
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 29
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 30
    iget-object v3, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 31
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 30
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    return-void

    .line 33
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->LOCK:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 30
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method static synthetic access$0(Lcom/xiaomi/channel/relationservice/utils/MLWorker;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->mListeners:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public addMessageListener(Lcom/xiaomi/channel/relationservice/utils/MLWorker$HandlerMessageListener;)V
    .locals 2
    .param p1, "handlerMessageListener"    # Lcom/xiaomi/channel/relationservice/utils/MLWorker$HandlerMessageListener;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/channel/relationservice/utils/MLWorker$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/channel/relationservice/utils/MLWorker$1;-><init>(Lcom/xiaomi/channel/relationservice/utils/MLWorker;Lcom/xiaomi/channel/relationservice/utils/MLWorker$HandlerMessageListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 119
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public obtainMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public removeMessage(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    return-void
.end method

.method public removeMessageListener(Lcom/xiaomi/channel/relationservice/utils/MLWorker$HandlerMessageListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaomi/channel/relationservice/utils/MLWorker$HandlerMessageListener;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/channel/relationservice/utils/MLWorker$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/channel/relationservice/utils/MLWorker$2;-><init>(Lcom/xiaomi/channel/relationservice/utils/MLWorker;Lcom/xiaomi/channel/relationservice/utils/MLWorker$HandlerMessageListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 43
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 45
    new-instance v0, Lcom/xiaomi/channel/relationservice/utils/MLWorker$WorkerHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/channel/relationservice/utils/MLWorker$WorkerHandler;-><init>(Lcom/xiaomi/channel/relationservice/utils/MLWorker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->mHandler:Landroid/os/Handler;

    .line 46
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 43
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 50
    return-void

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    return-void
.end method

.method public sendMessageDelayed(Landroid/os/Message;J)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delayMillis"    # J

    .prologue
    .line 102
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 103
    return-void
.end method
