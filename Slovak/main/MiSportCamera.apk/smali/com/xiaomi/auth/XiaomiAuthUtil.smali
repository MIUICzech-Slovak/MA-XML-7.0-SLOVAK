.class public Lcom/xiaomi/auth/XiaomiAuthUtil;
.super Ljava/lang/Object;
.source "XiaomiAuthUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccessToken(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 29
    sget-object v0, Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;->GetToken:Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;

    invoke-static {v0}, Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory;->getTalker(Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;)Lcom/xiaomi/auth/service/talker/ServiceTalker;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/auth/service/talker/ServiceTalker;->talk(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getSNSInfo(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 36
    sget-object v0, Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;->Sns:Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;

    invoke-static {v0}, Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory;->getTalker(Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;)Lcom/xiaomi/auth/service/talker/ServiceTalker;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/auth/service/talker/ServiceTalker;->talk(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getXiaomiUserInfo(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 22
    sget-object v0, Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;->UserInfo:Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;

    invoke-static {v0}, Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory;->getTalker(Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;)Lcom/xiaomi/auth/service/talker/ServiceTalker;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/auth/service/talker/ServiceTalker;->talk(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static invalidateAccessToken(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 43
    sget-object v1, Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;->Sns:Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;

    invoke-static {v1}, Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory;->getTalker(Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;)Lcom/xiaomi/auth/service/talker/ServiceTalker;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/xiaomi/auth/service/talker/ServiceTalker;->talk(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 44
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "extra_error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isServiceSupport(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-static {p0}, Lcom/xiaomi/auth/service/talker/ServiceChecker;->isServiceSupport(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
