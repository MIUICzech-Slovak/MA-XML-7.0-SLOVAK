.class Lcom/xiaomi/channel/relationservice/RelationServiceClient$2;
.super Ljava/lang/Object;
.source "RelationServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/relationservice/RelationServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/channel/relationservice/RelationServiceClient;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/relationservice/RelationServiceClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient$2;->this$0:Lcom/xiaomi/channel/relationservice/RelationServiceClient;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient$2;->this$0:Lcom/xiaomi/channel/relationservice/RelationServiceClient;

    # getter for: Lcom/xiaomi/channel/relationservice/RelationServiceClient;->ServiceLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->access$1(Lcom/xiaomi/channel/relationservice/RelationServiceClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient$2;->this$0:Lcom/xiaomi/channel/relationservice/RelationServiceClient;

    invoke-static {p2}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->access$2(Lcom/xiaomi/channel/relationservice/RelationServiceClient;Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;)V

    .line 78
    const-string v0, "RelationServiceClient"

    const-string v2, "RelationServiceClient::onServiceConnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient$2;->this$0:Lcom/xiaomi/channel/relationservice/RelationServiceClient;

    # getter for: Lcom/xiaomi/channel/relationservice/RelationServiceClient;->ServiceLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->access$1(Lcom/xiaomi/channel/relationservice/RelationServiceClient;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 76
    monitor-exit v1

    .line 81
    return-void

    .line 76
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
    .line 68
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient$2;->this$0:Lcom/xiaomi/channel/relationservice/RelationServiceClient;

    # getter for: Lcom/xiaomi/channel/relationservice/RelationServiceClient;->ServiceLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->access$1(Lcom/xiaomi/channel/relationservice/RelationServiceClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient$2;->this$0:Lcom/xiaomi/channel/relationservice/RelationServiceClient;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->access$2(Lcom/xiaomi/channel/relationservice/RelationServiceClient;Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;)V

    .line 70
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient$2;->this$0:Lcom/xiaomi/channel/relationservice/RelationServiceClient;

    # getter for: Lcom/xiaomi/channel/relationservice/RelationServiceClient;->ServiceLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->access$1(Lcom/xiaomi/channel/relationservice/RelationServiceClient;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 68
    monitor-exit v1

    .line 72
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
