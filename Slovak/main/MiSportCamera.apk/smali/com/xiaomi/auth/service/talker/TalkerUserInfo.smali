.class Lcom/xiaomi/auth/service/talker/TalkerUserInfo;
.super Lcom/xiaomi/auth/service/talker/ServiceTalker;
.source "TalkerUserInfo.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/xiaomi/auth/service/talker/ServiceTalker;-><init>()V

    return-void
.end method


# virtual methods
.method protected talkWithServiceV5(Landroid/accounts/Account;Landroid/os/Bundle;Lmiui/net/IXiaomiAuthService;)Landroid/os/Bundle;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "accountService"    # Lmiui/net/IXiaomiAuthService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-interface {p3, p1, p2}, Lmiui/net/IXiaomiAuthService;->getMiCloudUserInfo(Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected talkWithServiceV6(Landroid/accounts/Account;Landroid/os/Bundle;Lcom/xiaomi/account/IXiaomiAuthService;)Landroid/os/Bundle;
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "accountService"    # Lcom/xiaomi/account/IXiaomiAuthService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-interface {p3, p1, p2}, Lcom/xiaomi/account/IXiaomiAuthService;->getMiCloudUserInfo(Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
