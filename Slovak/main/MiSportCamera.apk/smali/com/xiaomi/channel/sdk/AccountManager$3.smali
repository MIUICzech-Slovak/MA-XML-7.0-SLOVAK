.class Lcom/xiaomi/channel/sdk/AccountManager$3;
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

.field private final synthetic val$authTokenType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/sdk/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Activity;
    .param p3, "$anonymous1"    # Landroid/os/Handler;

    .prologue
    .line 1
    .local p4, "$anonymous2":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Lcom/xiaomi/channel/sdk/AccountManager$3;->this$0:Lcom/xiaomi/channel/sdk/AccountManager;

    iput-object p5, p0, Lcom/xiaomi/channel/sdk/AccountManager$3;->val$account:Landroid/accounts/Account;

    iput-object p6, p0, Lcom/xiaomi/channel/sdk/AccountManager$3;->val$authTokenType:Ljava/lang/String;

    .line 235
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;-><init>(Lcom/xiaomi/channel/sdk/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method

.method static synthetic access$0(Lcom/xiaomi/channel/sdk/AccountManager$3;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/channel/sdk/AccountManager$3;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lcom/xiaomi/channel/sdk/AccountManager$3;)Lcom/xiaomi/channel/sdk/AccountManager;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/xiaomi/channel/sdk/AccountManager$3;->this$0:Lcom/xiaomi/channel/sdk/AccountManager;

    return-object v0
.end method


# virtual methods
.method public doWork()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/channel/sdk/AccountManager$3$1;

    iget-object v2, p0, Lcom/xiaomi/channel/sdk/AccountManager$3;->val$account:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/xiaomi/channel/sdk/AccountManager$3;->val$authTokenType:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/xiaomi/channel/sdk/AccountManager$3$1;-><init>(Lcom/xiaomi/channel/sdk/AccountManager$3;Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 247
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    .line 248
    return-void
.end method
