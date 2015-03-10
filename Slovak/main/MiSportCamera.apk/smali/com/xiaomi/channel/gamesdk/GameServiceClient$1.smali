.class Lcom/xiaomi/channel/gamesdk/GameServiceClient$1;
.super Ljava/lang/Object;
.source "GameServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/gamesdk/GameServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/channel/gamesdk/GameServiceClient;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/gamesdk/GameServiceClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient$1;->this$0:Lcom/xiaomi/channel/gamesdk/GameServiceClient;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient$1;->this$0:Lcom/xiaomi/channel/gamesdk/GameServiceClient;

    # getter for: Lcom/xiaomi/channel/gamesdk/GameServiceClient;->ServiceLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->access$0(Lcom/xiaomi/channel/gamesdk/GameServiceClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient$1;->this$0:Lcom/xiaomi/channel/gamesdk/GameServiceClient;

    invoke-static {p2}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->access$1(Lcom/xiaomi/channel/gamesdk/GameServiceClient;Lcom/xiaomi/channel/gamesdk/aidl/IGameService;)V

    .line 75
    const-string v0, "GameServiceClient"

    const-string v2, "GameService::onServiceConnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient$1;->this$0:Lcom/xiaomi/channel/gamesdk/GameServiceClient;

    # getter for: Lcom/xiaomi/channel/gamesdk/GameServiceClient;->ServiceLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->access$0(Lcom/xiaomi/channel/gamesdk/GameServiceClient;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 73
    monitor-exit v1

    .line 78
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient$1;->this$0:Lcom/xiaomi/channel/gamesdk/GameServiceClient;

    # getter for: Lcom/xiaomi/channel/gamesdk/GameServiceClient;->ServiceLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->access$0(Lcom/xiaomi/channel/gamesdk/GameServiceClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient$1;->this$0:Lcom/xiaomi/channel/gamesdk/GameServiceClient;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->access$1(Lcom/xiaomi/channel/gamesdk/GameServiceClient;Lcom/xiaomi/channel/gamesdk/aidl/IGameService;)V

    .line 67
    iget-object v0, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient$1;->this$0:Lcom/xiaomi/channel/gamesdk/GameServiceClient;

    # getter for: Lcom/xiaomi/channel/gamesdk/GameServiceClient;->ServiceLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->access$0(Lcom/xiaomi/channel/gamesdk/GameServiceClient;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 65
    monitor-exit v1

    .line 69
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
