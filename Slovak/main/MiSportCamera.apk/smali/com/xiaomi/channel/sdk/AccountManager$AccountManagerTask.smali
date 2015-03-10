.class abstract Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;
.super Ljava/util/concurrent/FutureTask;
.source "AccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/sdk/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AccountManagerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Landroid/accounts/AccountManagerFuture",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final mActivity:Landroid/app/Activity;

.field final mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/xiaomi/channel/sdk/AccountManager;


# direct methods
.method public constructor <init>(Lcom/xiaomi/channel/sdk/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;->this$0:Lcom/xiaomi/channel/sdk/AccountManager;

    .line 412
    new-instance v0, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask$1;

    invoke-direct {v0, p1}, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask$1;-><init>(Lcom/xiaomi/channel/sdk/AccountManager;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 419
    iput-object p3, p0, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;->mHandler:Landroid/os/Handler;

    .line 420
    iput-object p4, p0, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 421
    iput-object p2, p0, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;->mActivity:Landroid/app/Activity;

    .line 422
    return-void
.end method

.method private internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 5
    .param p1, "timeout"    # Ljava/lang/Long;
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 438
    invoke-virtual {p0}, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 439
    iget-object v2, p0, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;->this$0:Lcom/xiaomi/channel/sdk/AccountManager;

    # invokes: Lcom/xiaomi/channel/sdk/AccountManager;->ensureNotOnMainThread()V
    invoke-static {v2}, Lcom/xiaomi/channel/sdk/AccountManager;->access$0(Lcom/xiaomi/channel/sdk/AccountManager;)V

    .line 442
    :cond_0
    if-nez p1, :cond_1

    .line 443
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    invoke-virtual {p0, v4}, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;->cancel(Z)Z

    .line 445
    :goto_0
    return-object v2

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p2}, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    invoke-virtual {p0, v4}, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;->cancel(Z)Z

    goto :goto_0

    .line 447
    :catch_0
    move-exception v1

    .line 448
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    :try_start_2
    new-instance v2, Landroid/accounts/OperationCanceledException;

    invoke-direct {v2}, Landroid/accounts/OperationCanceledException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 468
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :catchall_0
    move-exception v2

    .line 469
    invoke-virtual {p0, v4}, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;->cancel(Z)Z

    .line 470
    throw v2

    .line 449
    :catch_1
    move-exception v2

    .line 469
    invoke-virtual {p0, v4}, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;->cancel(Z)Z

    .line 471
    :goto_1
    new-instance v2, Landroid/accounts/OperationCanceledException;

    invoke-direct {v2}, Landroid/accounts/OperationCanceledException;-><init>()V

    throw v2

    .line 451
    :catch_2
    move-exception v2

    .line 469
    invoke-virtual {p0, v4}, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;->cancel(Z)Z

    goto :goto_1

    .line 453
    :catch_3
    move-exception v1

    .line 454
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 455
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_2

    .line 456
    check-cast v0, Ljava/io/IOException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 457
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_2
    instance-of v2, v0, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_3

    .line 458
    new-instance v2, Landroid/accounts/AuthenticatorException;

    invoke-direct {v2, v0}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 459
    :cond_3
    instance-of v2, v0, Landroid/accounts/AuthenticatorException;

    if-eqz v2, :cond_4

    .line 460
    check-cast v0, Landroid/accounts/AuthenticatorException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 461
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_4
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_5

    .line 462
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 463
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_5
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_6

    .line 464
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 466
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method


# virtual methods
.method public abstract doWork()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public getResult()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 476
    invoke-direct {p0, v0, v0}, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 482
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;->getResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;->getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final start()Landroid/accounts/AccountManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;->doWork()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    return-object p0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
