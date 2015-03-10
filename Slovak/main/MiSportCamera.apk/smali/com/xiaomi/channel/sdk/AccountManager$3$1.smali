.class Lcom/xiaomi/channel/sdk/AccountManager$3$1;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/channel/sdk/AccountManager$3;->doWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/channel/sdk/AccountManager$3;

.field private final synthetic val$account:Landroid/accounts/Account;

.field private final synthetic val$authTokenType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/sdk/AccountManager$3;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xiaomi/channel/sdk/AccountManager$3$1;->this$1:Lcom/xiaomi/channel/sdk/AccountManager$3;

    iput-object p2, p0, Lcom/xiaomi/channel/sdk/AccountManager$3$1;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/xiaomi/channel/sdk/AccountManager$3$1;->val$authTokenType:Ljava/lang/String;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 243
    iget-object v1, p0, Lcom/xiaomi/channel/sdk/AccountManager$3$1;->this$1:Lcom/xiaomi/channel/sdk/AccountManager$3;

    # getter for: Lcom/xiaomi/channel/sdk/AccountManager$3;->this$0:Lcom/xiaomi/channel/sdk/AccountManager;
    invoke-static {v1}, Lcom/xiaomi/channel/sdk/AccountManager$3;->access$1(Lcom/xiaomi/channel/sdk/AccountManager$3;)Lcom/xiaomi/channel/sdk/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/channel/sdk/AccountManager$3$1;->val$account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 244
    iget-object v3, p0, Lcom/xiaomi/channel/sdk/AccountManager$3$1;->val$authTokenType:Ljava/lang/String;

    const/4 v4, 0x0

    .line 243
    # invokes: Lcom/xiaomi/channel/sdk/AccountManager;->getAuthToken(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Landroid/os/Bundle;
    invoke-static {v1, v2, v3, v4}, Lcom/xiaomi/channel/sdk/AccountManager;->access$1(Lcom/xiaomi/channel/sdk/AccountManager;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Landroid/os/Bundle;

    move-result-object v0

    .line 245
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/xiaomi/channel/sdk/AccountManager$3$1;->this$1:Lcom/xiaomi/channel/sdk/AccountManager$3;

    # invokes: Lcom/xiaomi/channel/sdk/AccountManager$3;->set(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/xiaomi/channel/sdk/AccountManager$3;->access$0(Lcom/xiaomi/channel/sdk/AccountManager$3;Ljava/lang/Object;)V

    .line 246
    return-void
.end method
