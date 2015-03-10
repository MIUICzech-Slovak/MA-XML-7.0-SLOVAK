.class Lcom/xiaomi/auth/service/talker/ServiceTalker$1$1;
.super Ljava/lang/Thread;
.source "ServiceTalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/auth/service/talker/ServiceTalker$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/auth/service/talker/ServiceTalker$1;

.field private final synthetic val$account:Landroid/accounts/Account;

.field private final synthetic val$future:Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;

.field private final synthetic val$options:Landroid/os/Bundle;

.field private final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/xiaomi/auth/service/talker/ServiceTalker$1;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/os/IBinder;Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xiaomi/auth/service/talker/ServiceTalker$1$1;->this$1:Lcom/xiaomi/auth/service/talker/ServiceTalker$1;

    iput-object p2, p0, Lcom/xiaomi/auth/service/talker/ServiceTalker$1$1;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/xiaomi/auth/service/talker/ServiceTalker$1$1;->val$options:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/xiaomi/auth/service/talker/ServiceTalker$1$1;->val$service:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/xiaomi/auth/service/talker/ServiceTalker$1$1;->val$future:Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;

    .line 39
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 45
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/auth/service/talker/ServiceTalker$1$1;->this$1:Lcom/xiaomi/auth/service/talker/ServiceTalker$1;

    # getter for: Lcom/xiaomi/auth/service/talker/ServiceTalker$1;->this$0:Lcom/xiaomi/auth/service/talker/ServiceTalker;
    invoke-static {v2}, Lcom/xiaomi/auth/service/talker/ServiceTalker$1;->access$0(Lcom/xiaomi/auth/service/talker/ServiceTalker$1;)Lcom/xiaomi/auth/service/talker/ServiceTalker;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/auth/service/talker/ServiceTalker$1$1;->val$account:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/xiaomi/auth/service/talker/ServiceTalker$1$1;->val$options:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/xiaomi/auth/service/talker/ServiceTalker$1$1;->val$service:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4, v5}, Lcom/xiaomi/auth/service/talker/ServiceTalker;->tryTalkAsV6OrV5(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/os/IBinder;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 50
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/auth/service/talker/ServiceTalker$1$1;->val$future:Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;

    invoke-virtual {v2, v0}, Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;->setResult(Ljava/lang/Object;)V

    .line 51
    return-void

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "XiaomiAuthUtil"

    const-string v3, "failed to talked with Auth Service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
