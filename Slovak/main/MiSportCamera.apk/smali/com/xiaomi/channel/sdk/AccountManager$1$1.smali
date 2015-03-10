.class Lcom/xiaomi/channel/sdk/AccountManager$1$1;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/channel/sdk/AccountManager$1;->doWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/channel/sdk/AccountManager$1;

.field private final synthetic val$account:Landroid/accounts/Account;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$authTokenType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/sdk/AccountManager$1;Landroid/accounts/Account;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xiaomi/channel/sdk/AccountManager$1$1;->this$1:Lcom/xiaomi/channel/sdk/AccountManager$1;

    iput-object p2, p0, Lcom/xiaomi/channel/sdk/AccountManager$1$1;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/xiaomi/channel/sdk/AccountManager$1$1;->val$authTokenType:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/channel/sdk/AccountManager$1$1;->val$activity:Landroid/app/Activity;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 189
    iget-object v1, p0, Lcom/xiaomi/channel/sdk/AccountManager$1$1;->this$1:Lcom/xiaomi/channel/sdk/AccountManager$1;

    # getter for: Lcom/xiaomi/channel/sdk/AccountManager$1;->this$0:Lcom/xiaomi/channel/sdk/AccountManager;
    invoke-static {v1}, Lcom/xiaomi/channel/sdk/AccountManager$1;->access$1(Lcom/xiaomi/channel/sdk/AccountManager$1;)Lcom/xiaomi/channel/sdk/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/channel/sdk/AccountManager$1$1;->val$account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 190
    iget-object v3, p0, Lcom/xiaomi/channel/sdk/AccountManager$1$1;->val$authTokenType:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/channel/sdk/AccountManager$1$1;->val$activity:Landroid/app/Activity;

    .line 189
    # invokes: Lcom/xiaomi/channel/sdk/AccountManager;->getAuthToken(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Landroid/os/Bundle;
    invoke-static {v1, v2, v3, v4}, Lcom/xiaomi/channel/sdk/AccountManager;->access$1(Lcom/xiaomi/channel/sdk/AccountManager;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Landroid/os/Bundle;

    move-result-object v0

    .line 191
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/xiaomi/channel/sdk/AccountManager$1$1;->this$1:Lcom/xiaomi/channel/sdk/AccountManager$1;

    # invokes: Lcom/xiaomi/channel/sdk/AccountManager$1;->set(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/xiaomi/channel/sdk/AccountManager$1;->access$0(Lcom/xiaomi/channel/sdk/AccountManager$1;Ljava/lang/Object;)V

    .line 192
    return-void
.end method
