.class public abstract Lcom/xiaomi/auth/service/talker/ServiceTalker;
.super Ljava/lang/Object;
.source "ServiceTalker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;
    }
.end annotation


# static fields
.field static final ACTION_FOR_AUTH_SERVICE:Ljava/lang/String; = "android.intent.action.XIAOMI_ACCOUNT_AUTHORIZE"

.field static final TAG:Ljava/lang/String; = "XiaomiAuthUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 77
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 78
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 79
    const-string v2, "calling this from your main thread can lead to deadlock"

    .line 78
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_0
    return-void
.end method

.method private talkAndWaitForResult(Landroid/content/Context;Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;Landroid/content/ServiceConnection;)Landroid/os/Bundle;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "conn"    # Landroid/content/ServiceConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/content/ServiceConnection;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "future":Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;, "Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture<Landroid/os/Bundle;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/auth/service/talker/ServiceTalker;->getSeriveAction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v2, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 89
    .local v3, "resBundle":Landroid/os/Bundle;
    const/4 v4, 0x1

    invoke-virtual {p1, v2, p3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    :try_start_0
    invoke-virtual {p2}, Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/os/Bundle;

    move-object v3, v0

    .line 92
    invoke-virtual {p1, p3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    :goto_0
    return-object v3

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p1, p3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 97
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "resBundle":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 105
    .restart local v3    # "resBundle":Landroid/os/Bundle;
    const-string v4, "extra_error_code"

    const/16 v5, -0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const-string v4, "extra_error_description"

    const-string v5, "cannot connect to auth service"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getSeriveAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, "android.intent.action.XIAOMI_ACCOUNT_AUTHORIZE"

    return-object v0
.end method

.method public talk(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-static {p1}, Lcom/xiaomi/auth/service/talker/ServiceTalker;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 30
    new-instance v1, Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;

    invoke-direct {v1}, Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;-><init>()V

    .line 31
    .local v1, "future":Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;, "Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture<Landroid/os/Bundle;>;"
    new-instance v0, Lcom/xiaomi/auth/service/talker/ServiceTalker$1;

    invoke-direct {v0, p0, p2, p3, v1}, Lcom/xiaomi/auth/service/talker/ServiceTalker$1;-><init>(Lcom/xiaomi/auth/service/talker/ServiceTalker;Landroid/accounts/Account;Landroid/os/Bundle;Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;)V

    .line 56
    .local v0, "conn":Landroid/content/ServiceConnection;
    invoke-direct {p0, p1, v1, v0}, Lcom/xiaomi/auth/service/talker/ServiceTalker;->talkAndWaitForResult(Landroid/content/Context;Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;Landroid/content/ServiceConnection;)Landroid/os/Bundle;

    move-result-object v2

    return-object v2
.end method

.method protected abstract talkWithServiceV5(Landroid/accounts/Account;Landroid/os/Bundle;Lmiui/net/IXiaomiAuthService;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected abstract talkWithServiceV6(Landroid/accounts/Account;Landroid/os/Bundle;Lcom/xiaomi/account/IXiaomiAuthService;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected tryTalkAsV6OrV5(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    invoke-static {p3}, Lcom/xiaomi/account/IXiaomiAuthService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/account/IXiaomiAuthService;

    move-result-object v0

    .line 63
    .local v0, "accountService":Lcom/xiaomi/account/IXiaomiAuthService;
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/auth/service/talker/ServiceTalker;->talkWithServiceV6(Landroid/accounts/Account;Landroid/os/Bundle;Lcom/xiaomi/account/IXiaomiAuthService;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 70
    .end local v0    # "accountService":Lcom/xiaomi/account/IXiaomiAuthService;
    :goto_0
    return-object v3

    .line 64
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e1":Ljava/lang/SecurityException;
    :try_start_1
    invoke-static {p3}, Lmiui/net/IXiaomiAuthService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/IXiaomiAuthService;

    move-result-object v0

    .line 67
    .local v0, "accountService":Lmiui/net/IXiaomiAuthService;
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/auth/service/talker/ServiceTalker;->talkWithServiceV5(Landroid/accounts/Account;Landroid/os/Bundle;Lmiui/net/IXiaomiAuthService;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 68
    .end local v0    # "accountService":Lmiui/net/IXiaomiAuthService;
    :catch_1
    move-exception v2

    .line 69
    .local v2, "e2":Ljava/lang/SecurityException;
    const-string v3, "XiaomiAuthUtil"

    const-string v4, "failed to talked with Auth Service"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    const/4 v3, 0x0

    goto :goto_0
.end method
