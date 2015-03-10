.class Lcom/xiaomi/channel/relationservice/utils/MLWorker$2;
.super Ljava/lang/Object;
.source "MLWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/channel/relationservice/utils/MLWorker;->removeMessageListener(Lcom/xiaomi/channel/relationservice/utils/MLWorker$HandlerMessageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/channel/relationservice/utils/MLWorker;

.field private final synthetic val$listener:Lcom/xiaomi/channel/relationservice/utils/MLWorker$HandlerMessageListener;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/relationservice/utils/MLWorker;Lcom/xiaomi/channel/relationservice/utils/MLWorker$HandlerMessageListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker$2;->this$0:Lcom/xiaomi/channel/relationservice/utils/MLWorker;

    iput-object p2, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker$2;->val$listener:Lcom/xiaomi/channel/relationservice/utils/MLWorker$HandlerMessageListener;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker$2;->this$0:Lcom/xiaomi/channel/relationservice/utils/MLWorker;

    # getter for: Lcom/xiaomi/channel/relationservice/utils/MLWorker;->mListeners:Ljava/util/Vector;
    invoke-static {v0}, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->access$0(Lcom/xiaomi/channel/relationservice/utils/MLWorker;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker$2;->val$listener:Lcom/xiaomi/channel/relationservice/utils/MLWorker$HandlerMessageListener;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker$2;->this$0:Lcom/xiaomi/channel/relationservice/utils/MLWorker;

    # getter for: Lcom/xiaomi/channel/relationservice/utils/MLWorker;->mListeners:Ljava/util/Vector;
    invoke-static {v0}, Lcom/xiaomi/channel/relationservice/utils/MLWorker;->access$0(Lcom/xiaomi/channel/relationservice/utils/MLWorker;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/utils/MLWorker$2;->val$listener:Lcom/xiaomi/channel/relationservice/utils/MLWorker$HandlerMessageListener;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    return-void
.end method
