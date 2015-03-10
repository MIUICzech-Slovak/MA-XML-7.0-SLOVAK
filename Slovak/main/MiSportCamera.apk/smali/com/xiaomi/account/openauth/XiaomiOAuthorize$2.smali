.class Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;
.super Landroid/os/AsyncTask;
.source "XiaomiOAuthorize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetOAuthorizeFromAccount(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Bundle;",
        "Landroid/os/Bundle;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

.field private final synthetic val$accounts:[Landroid/accounts/Account;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$clientId:J

.field private final synthetic val$options:Landroid/os/Bundle;

.field private final synthetic val$redirecURI:Ljava/lang/String;

.field private final synthetic val$requestCode:I

.field private final synthetic val$responseType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/openauth/XiaomiOAuthorize;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;[Landroid/accounts/Account;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->this$0:Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    iput-wide p2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$clientId:J

    iput-object p4, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$redirecURI:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$responseType:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$options:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$activity:Landroid/app/Activity;

    iput-object p8, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$accounts:[Landroid/accounts/Account;

    iput p9, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$requestCode:I

    .line 118
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "notUsed"    # [Landroid/os/Bundle;

    .prologue
    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v0, "optionBundle":Landroid/os/Bundle;
    const-string v1, "extra_client_id"

    iget-wide v2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$clientId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "extra_redirect_uri"

    iget-object v2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$redirecURI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "extra_response_type"

    iget-object v2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$responseType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$options:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$options:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->this$0:Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    iget-object v2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$accounts:[Landroid/accounts/Account;

    invoke-virtual {v1, v2, v3, v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->getAccessToken(Landroid/app/Activity;[Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->doInBackground([Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 134
    const-string v0, "extra_error_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mOnOAuthInterface:Lcom/xiaomi/account/openauth/XiaomiOAuthorize$OnOAuthInterface;
    invoke-static {}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->access$0()Lcom/xiaomi/account/openauth/XiaomiOAuthorize$OnOAuthInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v9, "resBundle":Landroid/os/Bundle;
    const-string v0, "access_token"

    const-string v1, "extra_access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "token_type"

    const-string v1, "extra_token_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "expires_in"

    const-string v1, "extra_expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "mac_key"

    const-string v1, "extra_mac_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v0, "mac_algorithm"

    const-string v1, "extra_mac_algorithm"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    # getter for: Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mOnOAuthInterface:Lcom/xiaomi/account/openauth/XiaomiOAuthorize$OnOAuthInterface;
    invoke-static {}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->access$0()Lcom/xiaomi/account/openauth/XiaomiOAuthorize$OnOAuthInterface;

    move-result-object v0

    invoke-interface {v0, v9}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$OnOAuthInterface;->onGetAccessTokenDirectly(Landroid/os/Bundle;)V

    .line 152
    .end local v9    # "resBundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string v0, "extra_error_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, -0x3e9

    if-ne v0, v1, :cond_1

    .line 146
    const-string v0, "extra_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 147
    .local v8, "authIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$activity:Landroid/app/Activity;

    iget v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$requestCode:I

    invoke-virtual {v0, v8, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 150
    .end local v8    # "authIntent":Landroid/content/Intent;
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->this$0:Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$activity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$clientId:J

    iget-object v4, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$redirecURI:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$responseType:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$options:Landroid/os/Bundle;

    iget v7, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->val$requestCode:I

    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startAuthorizeActivityFroResult(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method
