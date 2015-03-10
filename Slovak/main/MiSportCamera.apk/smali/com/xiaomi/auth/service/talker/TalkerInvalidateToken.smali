.class Lcom/xiaomi/auth/service/talker/TalkerInvalidateToken;
.super Lcom/xiaomi/auth/service/talker/ServiceTalker;
.source "TalkerInvalidateToken.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/xiaomi/auth/service/talker/ServiceTalker;-><init>()V

    return-void
.end method


# virtual methods
.method public talk(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 21
    new-instance v2, Lcom/xiaomi/auth/service/talker/TalkerInvalidateToken$1;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/xiaomi/auth/service/talker/TalkerInvalidateToken$1;-><init>(Lcom/xiaomi/auth/service/talker/TalkerInvalidateToken;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 38
    .local v2, "conn":Landroid/content/ServiceConnection;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.XIAOMI_ACCOUNT_AUTHORIZE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v3, "intent":Landroid/content/Intent;
    const/4 v4, 0x1

    invoke-virtual {p1, v3, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 41
    .local v0, "binded":Z
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "extra_error_code"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    return-object v1
.end method

.method protected talkWithServiceV5(Landroid/accounts/Account;Landroid/os/Bundle;Lmiui/net/IXiaomiAuthService;)Landroid/os/Bundle;
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "accountService"    # Lmiui/net/IXiaomiAuthService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-interface {p3, p1, p2}, Lmiui/net/IXiaomiAuthService;->invalidateAccessToken(Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extra_error_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    return-object v0
.end method

.method protected talkWithServiceV6(Landroid/accounts/Account;Landroid/os/Bundle;Lcom/xiaomi/account/IXiaomiAuthService;)Landroid/os/Bundle;
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "accountService"    # Lcom/xiaomi/account/IXiaomiAuthService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-interface {p3, p1, p2}, Lcom/xiaomi/account/IXiaomiAuthService;->invalidateAccessToken(Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "extra_error_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    const/4 v1, 0x0

    return-object v1
.end method
