.class Lcom/xiaomi/channel/relationservice/RelationServiceClient$1;
.super Landroid/content/BroadcastReceiver;
.source "RelationServiceClient.java"


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
    iput-object p1, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient$1;->this$0:Lcom/xiaomi/channel/relationservice/RelationServiceClient;

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    const-string v2, "action_on_buddy_data_setected"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient$1;->this$0:Lcom/xiaomi/channel/relationservice/RelationServiceClient;

    # getter for: Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mBuddyDataCallBack:Lcom/xiaomi/channel/relationservice/data/BuddyDataCallBack;
    invoke-static {v2}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->access$0(Lcom/xiaomi/channel/relationservice/RelationServiceClient;)Lcom/xiaomi/channel/relationservice/data/BuddyDataCallBack;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 47
    const-string v2, "task_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "taskId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient$1;->this$0:Lcom/xiaomi/channel/relationservice/RelationServiceClient;

    # getter for: Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mBuddyDataCallBack:Lcom/xiaomi/channel/relationservice/data/BuddyDataCallBack;
    invoke-static {v2}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->access$0(Lcom/xiaomi/channel/relationservice/RelationServiceClient;)Lcom/xiaomi/channel/relationservice/data/BuddyDataCallBack;

    move-result-object v2

    iget-object v2, v2, Lcom/xiaomi/channel/relationservice/data/BuddyDataCallBack;->taskId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const-string v2, "buddy_data_chosed"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/channel/relationservice/data/BuddyData;

    .line 52
    .local v0, "bd":Lcom/xiaomi/channel/relationservice/data/BuddyData;
    if-eqz v0, :cond_0

    .line 53
    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient$1;->this$0:Lcom/xiaomi/channel/relationservice/RelationServiceClient;

    # getter for: Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mBuddyDataCallBack:Lcom/xiaomi/channel/relationservice/data/BuddyDataCallBack;
    invoke-static {v2}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->access$0(Lcom/xiaomi/channel/relationservice/RelationServiceClient;)Lcom/xiaomi/channel/relationservice/data/BuddyDataCallBack;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/channel/relationservice/data/BuddyDataCallBack;->onBuddyDataChosed(Lcom/xiaomi/channel/relationservice/data/BuddyData;)V

    .line 58
    .end local v0    # "bd":Lcom/xiaomi/channel/relationservice/data/BuddyData;
    .end local v1    # "taskId":Ljava/lang/String;
    :cond_0
    return-void
.end method
