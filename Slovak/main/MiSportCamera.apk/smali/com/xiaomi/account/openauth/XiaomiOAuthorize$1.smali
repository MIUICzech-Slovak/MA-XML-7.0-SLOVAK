.class Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;
.super Landroid/os/AsyncTask;
.source "XiaomiOAuthorize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->tryAddAccountAndGetOAuthorize(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private retryWebViewWay:Z

.field final synthetic this$0:Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$clientId:J

.field private final synthetic val$options:Landroid/os/Bundle;

.field private final synthetic val$redirecURI:Ljava/lang/String;

.field private final synthetic val$requestCode:I

.field private final synthetic val$responseType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/openauth/XiaomiOAuthorize;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->this$0:Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    iput-object p2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->val$activity:Landroid/app/Activity;

    iput-wide p3, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->val$clientId:J

    iput-object p5, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->val$redirecURI:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->val$responseType:Ljava/lang/String;

    iput-object p7, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->val$options:Landroid/os/Bundle;

    iput p8, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->val$requestCode:I

    .line 61
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/os/Bundle;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x1

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->this$0:Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    iget-object v2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->tryAddXiaomiAccount(Landroid/app/Activity;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 78
    iput-boolean v3, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->retryWebViewWay:Z

    .line 91
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 79
    :catch_1
    move-exception v0

    .line 80
    .local v0, "e":Landroid/accounts/OperationCanceledException;
    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_1

    .line 82
    .end local v0    # "e":Landroid/accounts/OperationCanceledException;
    :catch_2
    move-exception v0

    .line 83
    .local v0, "e":Landroid/accounts/AuthenticatorException;
    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    .line 86
    iput-boolean v3, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->retryWebViewWay:Z

    goto :goto_1

    .line 87
    .end local v0    # "e":Landroid/accounts/AuthenticatorException;
    :catch_3
    move-exception v0

    .line 88
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->doInBackground([Ljava/lang/Void;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 96
    if-eqz p1, :cond_2

    .line 97
    const-string v0, "authAccount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->this$0:Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->val$activity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->val$clientId:J

    iget-object v4, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->val$redirecURI:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->val$responseType:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->val$options:Landroid/os/Bundle;

    iget v7, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->val$requestCode:I

    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetOAuthorizeFromAccount(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 110
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 101
    const-string v1, "XiaomiAuthoricator.addAccount() returns intent for UI action, but we don\'t exptect this because activity is not null"

    .line 100
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    const-string v0, "XiaomiOAuthorize"

    const-string v1, "do nothing after trying to add account, because no valid content in result bundle."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_2
    iget-boolean v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->retryWebViewWay:Z

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->this$0:Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->val$activity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->val$clientId:J

    iget-object v4, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->val$redirecURI:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->val$responseType:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->val$options:Landroid/os/Bundle;

    iget v7, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->val$requestCode:I

    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startAuthorizeActivityFroResult(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 108
    :cond_3
    const-string v0, "XiaomiOAuthorize"

    const-string v1, "do nothing after trying to add account."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method
