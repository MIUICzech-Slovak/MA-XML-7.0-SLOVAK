.class Lcom/xiaomi/channel/sdk/AccountManager$4$1;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/channel/sdk/AccountManager$4;->doWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/channel/sdk/AccountManager$4;

.field private final synthetic val$account:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/sdk/AccountManager$4;Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xiaomi/channel/sdk/AccountManager$4$1;->this$1:Lcom/xiaomi/channel/sdk/AccountManager$4;

    iput-object p2, p0, Lcom/xiaomi/channel/sdk/AccountManager$4$1;->val$account:Landroid/accounts/Account;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 263
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 264
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "authtoken"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v1, "authAccount"

    iget-object v2, p0, Lcom/xiaomi/channel/sdk/AccountManager$4$1;->val$account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/xiaomi/channel/sdk/AccountManager$4$1;->this$1:Lcom/xiaomi/channel/sdk/AccountManager$4;

    # invokes: Lcom/xiaomi/channel/sdk/AccountManager$4;->set(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/xiaomi/channel/sdk/AccountManager$4;->access$0(Lcom/xiaomi/channel/sdk/AccountManager$4;Ljava/lang/Object;)V

    .line 267
    return-void
.end method
