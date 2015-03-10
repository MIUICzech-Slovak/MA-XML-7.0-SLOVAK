.class Lcom/xiaomi/channel/sdk/MLShareApiFactory$1;
.super Ljava/lang/Object;
.source "MLShareApiFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/channel/sdk/MLShareApiFactory;->sendReq(Lcom/xiaomi/channel/sdk/IShareReq;Z)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/channel/sdk/MLShareApiFactory;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/sdk/MLShareApiFactory;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory$1;->this$0:Lcom/xiaomi/channel/sdk/MLShareApiFactory;

    iput-object p2, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory$1;->val$intent:Landroid/content/Intent;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory$1;->this$0:Lcom/xiaomi/channel/sdk/MLShareApiFactory;

    # getter for: Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->access$0(Lcom/xiaomi/channel/sdk/MLShareApiFactory;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 180
    return-void
.end method
