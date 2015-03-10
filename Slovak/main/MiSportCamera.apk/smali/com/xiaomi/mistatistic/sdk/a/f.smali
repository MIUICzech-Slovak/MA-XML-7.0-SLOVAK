.class Lcom/xiaomi/mistatistic/sdk/a/f;
.super Landroid/os/HandlerThread;


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/a/b;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/f;->a:Lcom/xiaomi/mistatistic/sdk/a/b;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/f;->a:Lcom/xiaomi/mistatistic/sdk/a/b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/mistatistic/sdk/a/b;Landroid/os/Handler;)Landroid/os/Handler;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/f;->a:Lcom/xiaomi/mistatistic/sdk/a/b;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/mistatistic/sdk/a/b;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/f;->a:Lcom/xiaomi/mistatistic/sdk/a/b;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/mistatistic/sdk/a/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/f;->a:Lcom/xiaomi/mistatistic/sdk/a/b;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/mistatistic/sdk/a/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/f;->a:Lcom/xiaomi/mistatistic/sdk/a/b;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/mistatistic/sdk/a/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mistatistic/sdk/a/e;

    invoke-interface {v0}, Lcom/xiaomi/mistatistic/sdk/a/e;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    return-void
.end method
