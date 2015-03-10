.class public Lcom/xiaomi/auth/service/talker/ServiceChecker;
.super Ljava/lang/Object;
.source "ServiceChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/auth/service/talker/ServiceChecker$EmptyServiceConnection;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isServiceSupport(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.XIAOMI_ACCOUNT_AUTHORIZE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Lcom/xiaomi/auth/service/talker/ServiceChecker$EmptyServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/xiaomi/auth/service/talker/ServiceChecker$EmptyServiceConnection;-><init>(Lcom/xiaomi/auth/service/talker/ServiceChecker$EmptyServiceConnection;)V

    .line 16
    .local v2, "serviceConnection":Landroid/content/ServiceConnection;
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 17
    .local v0, "binded":Z
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 20
    :cond_0
    return v0
.end method
