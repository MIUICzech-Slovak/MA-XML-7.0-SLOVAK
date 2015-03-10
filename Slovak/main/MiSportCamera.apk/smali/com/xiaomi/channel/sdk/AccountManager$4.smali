.class Lcom/xiaomi/channel/sdk/AccountManager$4;
.super Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/channel/sdk/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/channel/sdk/AccountManager;

.field private final synthetic val$account:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/sdk/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Activity;
    .param p3, "$anonymous1"    # Landroid/os/Handler;

    .prologue
    .line 1
    .local p4, "$anonymous2":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Lcom/xiaomi/channel/sdk/AccountManager$4;->this$0:Lcom/xiaomi/channel/sdk/AccountManager;

    iput-object p5, p0, Lcom/xiaomi/channel/sdk/AccountManager$4;->val$account:Landroid/accounts/Account;

    .line 255
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;-><init>(Lcom/xiaomi/channel/sdk/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method

.method static synthetic access$0(Lcom/xiaomi/channel/sdk/AccountManager$4;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/channel/sdk/AccountManager$4;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/channel/sdk/AccountManager$4$1;

    iget-object v2, p0, Lcom/xiaomi/channel/sdk/AccountManager$4;->val$account:Landroid/accounts/Account;

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/channel/sdk/AccountManager$4$1;-><init>(Lcom/xiaomi/channel/sdk/AccountManager$4;Landroid/accounts/Account;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 268
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    .line 269
    return-void
.end method
