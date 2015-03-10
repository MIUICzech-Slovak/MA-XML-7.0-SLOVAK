.class public Lcom/xiaomi/channel/sdk/AccountManager;
.super Ljava/lang/Object;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;
    }
.end annotation


# static fields
.field public static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "authAccount"

.field public static final KEY_AUTHTOKEN:Ljava/lang/String; = "authtoken"

.field public static final KEY_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final KEY_ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field private static final LONGIN_FLAG_CODE_MILIAO_LOGIN_BY_PASSWORD:I = 0x4e21

.field private static final LONGIN_FLAG_CODE_MILIAO_LOGIN_BY_SYSTEM:I = 0x4e22

.field private static final PREF_FILE_NAME:Ljava/lang/String; = "service_token_pref"

.field private static sInstance:Lcom/xiaomi/channel/sdk/AccountManager;


# instance fields
.field private context:Landroid/content/Context;

.field private loginFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/channel/sdk/AccountManager;->loginFlag:I

    .line 58
    iput-object p1, p0, Lcom/xiaomi/channel/sdk/AccountManager;->context:Landroid/content/Context;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/xiaomi/channel/sdk/AccountManager;)V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/xiaomi/channel/sdk/AccountManager;->ensureNotOnMainThread()V

    return-void
.end method

.method static synthetic access$1(Lcom/xiaomi/channel/sdk/AccountManager;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 274
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/channel/sdk/AccountManager;->getAuthToken(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private ensureNotOnMainThread()V
    .locals 4

    .prologue
    .line 391
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 392
    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/xiaomi/channel/sdk/AccountManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 393
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 394
    const-string v2, "calling this from your main thread can lead to deadlock"

    .line 393
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, "exception":Ljava/lang/IllegalStateException;
    const-string v2, "miliao_sdk_log"

    .line 396
    const-string v3, "calling this from your main thread can lead to deadlock and/or ANRs"

    .line 395
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    iget-object v2, p0, Lcom/xiaomi/channel/sdk/AccountManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 399
    throw v0

    .line 402
    .end local v0    # "exception":Ljava/lang/IllegalStateException;
    :cond_0
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/xiaomi/channel/sdk/AccountManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-class v1, Lcom/xiaomi/channel/sdk/AccountManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/channel/sdk/AccountManager;->sInstance:Lcom/xiaomi/channel/sdk/AccountManager;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/xiaomi/channel/sdk/AccountManager;

    invoke-direct {v0, p0}, Lcom/xiaomi/channel/sdk/AccountManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/channel/sdk/AccountManager;->sInstance:Lcom/xiaomi/channel/sdk/AccountManager;

    .line 54
    :cond_0
    sget-object v0, Lcom/xiaomi/channel/sdk/AccountManager;->sInstance:Lcom/xiaomi/channel/sdk/AccountManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getAccountsByTypeFromProvider(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 12
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 115
    const-string v0, "content://com.xiaomi.channel.providers.AccountProvider/getAccount"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 116
    .local v1, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 118
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/sdk/AccountManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 119
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "code"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "flag"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 118
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 120
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 122
    .local v9, "resultCode":I
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 123
    .local v10, "resultFlag":I
    packed-switch v9, :pswitch_data_0

    .line 135
    .end local v9    # "resultCode":I
    .end local v10    # "resultFlag":I
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_1
    :goto_0
    new-array v0, v11, [Landroid/accounts/Account;

    :cond_2
    :goto_1
    return-object v0

    .line 125
    .restart local v9    # "resultCode":I
    .restart local v10    # "resultFlag":I
    :pswitch_0
    :try_start_1
    iput v10, p0, Lcom/xiaomi/channel/sdk/AccountManager;->loginFlag:I

    .line 126
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "accountName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/accounts/Account;

    const/4 v2, 0x0

    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v6, p1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 136
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 132
    .end local v6    # "accountName":Ljava/lang/String;
    .end local v9    # "resultCode":I
    .end local v10    # "resultFlag":I
    :catch_0
    move-exception v8

    .line 133
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "miliao_sdk_log"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 134
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 135
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 136
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_3
    throw v0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method private getAccountsByTypeFromService(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 8
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 92
    const/4 v1, 0x0

    .line 94
    .local v1, "b":Landroid/os/Bundle;
    :try_start_0
    iget-object v5, p0, Lcom/xiaomi/channel/sdk/AccountManager;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/gamesdk/GameServiceClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->getAccount()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 98
    :goto_0
    if-eqz v1, :cond_0

    .line 99
    const-string v5, "code"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 100
    .local v3, "resultCode":I
    const-string v5, "flag"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 101
    .local v4, "resultFlag":I
    packed-switch v3, :pswitch_data_0

    .line 110
    .end local v3    # "resultCode":I
    .end local v4    # "resultFlag":I
    :cond_0
    new-array v5, v7, [Landroid/accounts/Account;

    :goto_1
    return-object v5

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "miliao_sdk_log"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v3    # "resultCode":I
    .restart local v4    # "resultFlag":I
    :pswitch_0
    iput v4, p0, Lcom/xiaomi/channel/sdk/AccountManager;->loginFlag:I

    .line 104
    const-string v5, "data"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 106
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/accounts/Account;

    new-instance v6, Landroid/accounts/Account;

    invoke-direct {v6, v0, p1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v7

    goto :goto_1

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getAuthToken(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Landroid/os/Bundle;
    .locals 7
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 276
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 277
    .local v0, "b":Landroid/os/Bundle;
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/channel/sdk/AccountManager;->getLocalAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "token":Ljava/lang/String;
    const-string v4, "authtoken"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v4, "authAccount"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 281
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/channel/sdk/AccountManager;->getRemoteAuthToken(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Landroid/os/Bundle;

    move-result-object v0

    .line 282
    const-string v4, "authtoken"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 284
    iget-object v4, p0, Lcom/xiaomi/channel/sdk/AccountManager;->context:Landroid/content/Context;

    .line 285
    const-string v5, "service_token_pref"

    const/4 v6, 0x0

    .line 284
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 286
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 287
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 291
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    return-object v0
.end method

.method private getLocalAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v2, p0, Lcom/xiaomi/channel/sdk/AccountManager;->context:Landroid/content/Context;

    const-string v3, "service_token_pref"

    .line 296
    const/4 v4, 0x0

    .line 295
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 297
    .local v0, "pref":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "serviceToken":Ljava/lang/String;
    return-object v1
.end method

.method private getRemoteAuthToken(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Landroid/os/Bundle;
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/xiaomi/channel/sdk/AccountManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->isApiLevel1Available(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/channel/sdk/AccountManager;->getRemoteAuthTokenFromService(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Landroid/os/Bundle;

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/channel/sdk/AccountManager;->getRemoteAuthTokenFromProvider(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private getRemoteAuthTokenFromProvider(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Landroid/os/Bundle;
    .locals 10
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 362
    const-string v0, "content://com.xiaomi.channel.providers.AccountProvider/getAuthToken"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 363
    .local v1, "uri":Landroid/net/Uri;
    const-string v0, "miliao_sdk_log"

    const-string v2, "get auth token from miliao..."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v7, 0x0

    .line 365
    .local v7, "cursor":Landroid/database/Cursor;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 366
    .local v6, "b":Landroid/os/Bundle;
    const-string v0, "authtoken"

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v0, "authAccount"

    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/sdk/AccountManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 370
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "code"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "token"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "flag"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    .line 371
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    .line 369
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 372
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 374
    .local v9, "resultCode":I
    packed-switch v9, :pswitch_data_0

    .line 383
    .end local v9    # "resultCode":I
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_1
    :goto_0
    return-object v6

    .line 376
    .restart local v9    # "resultCode":I
    :pswitch_0
    :try_start_1
    const-string v0, "authtoken"

    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 380
    .end local v9    # "resultCode":I
    :catch_0
    move-exception v8

    .line 381
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "miliao_sdk_log"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 382
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 383
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 384
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_2
    throw v0

    .line 374
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method private getRemoteAuthTokenFromService(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Landroid/os/Bundle;
    .locals 9
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v8, 0x4e24

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "b":Landroid/os/Bundle;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 317
    .local v5, "retBundle":Landroid/os/Bundle;
    const-string v6, "authAccount"

    invoke-virtual {v5, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v6, "authtoken"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :try_start_0
    iget-object v6, p0, Lcom/xiaomi/channel/sdk/AccountManager;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/gamesdk/GameServiceClient;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->getAuthToken(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 325
    :goto_0
    if-eqz v0, :cond_0

    .line 326
    const-string v6, "code"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 327
    .local v2, "resultCode":I
    const-string v6, "flag"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 329
    .local v4, "resultFlag":I
    const-string v6, "data"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, "resultData":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 331
    const-string v6, "authtoken"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .end local v2    # "resultCode":I
    .end local v3    # "resultData":Ljava/lang/String;
    .end local v4    # "resultFlag":I
    :cond_0
    :goto_1
    return-object v5

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "miliao_sdk_log"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "resultCode":I
    .restart local v3    # "resultData":Ljava/lang/String;
    .restart local v4    # "resultFlag":I
    :cond_1
    if-ne v4, v8, :cond_3

    .line 333
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_2

    .line 334
    new-instance v6, Lcom/xiaomi/channel/sdk/AccountManager$5;

    invoke-direct {v6, p0, v3, p3}, Lcom/xiaomi/channel/sdk/AccountManager$5;-><init>(Lcom/xiaomi/channel/sdk/AccountManager;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p3, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 346
    :cond_2
    const-string v6, "errorCode"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    const-string v6, "errorMessage"

    .line 349
    const-string v7, "xiaomi account needs upgrade"

    .line 348
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 352
    :cond_3
    const-string v6, "errorCode"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    const-string v6, "errorMessage"

    const-string v7, "xiaomi account error"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "requiredFeatures"    # [Ljava/lang/String;
    .param p4, "addAccountOptions"    # Landroid/os/Bundle;
    .param p5, "activity"    # Landroid/app/Activity;
    .param p7, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    .local p6, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/xiaomi/channel/sdk/AccountManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->isApiLevel1Available(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0, p1}, Lcom/xiaomi/channel/sdk/AccountManager;->getAccountsByTypeFromService(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/channel/sdk/AccountManager;->getAccountsByTypeFromProvider(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    goto :goto_0
.end method

.method public getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "activity"    # Landroid/app/Activity;
    .param p6, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .local p5, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    .line 180
    iget v0, p0, Lcom/xiaomi/channel/sdk/AccountManager;->loginFlag:I

    const/16 v1, 0x4e21

    if-ne v0, v1, :cond_0

    .line 181
    new-instance v0, Lcom/xiaomi/channel/sdk/AccountManager$1;

    move-object v1, p0

    move-object v3, p6

    move-object v4, p5

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/channel/sdk/AccountManager$1;-><init>(Lcom/xiaomi/channel/sdk/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;Landroid/app/Activity;)V

    .line 195
    invoke-virtual {v0}, Lcom/xiaomi/channel/sdk/AccountManager$1;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    .line 196
    :cond_0
    iget v0, p0, Lcom/xiaomi/channel/sdk/AccountManager;->loginFlag:I

    const/16 v1, 0x4e22

    if-ne v0, v1, :cond_1

    .line 197
    iget-object v0, p0, Lcom/xiaomi/channel/sdk/AccountManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_1
    new-instance v0, Lcom/xiaomi/channel/sdk/AccountManager$2;

    move-object v1, p0

    move-object v3, p6

    move-object v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/channel/sdk/AccountManager$2;-><init>(Lcom/xiaomi/channel/sdk/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;)V

    .line 216
    invoke-virtual {v0}, Lcom/xiaomi/channel/sdk/AccountManager$2;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "notifyAuthFailure"    # Z
    .param p6, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Z",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .local p5, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    .line 234
    iget v0, p0, Lcom/xiaomi/channel/sdk/AccountManager;->loginFlag:I

    const/16 v1, 0x4e21

    if-ne v0, v1, :cond_0

    .line 235
    new-instance v0, Lcom/xiaomi/channel/sdk/AccountManager$3;

    move-object v1, p0

    move-object v3, p6

    move-object v4, p5

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/channel/sdk/AccountManager$3;-><init>(Lcom/xiaomi/channel/sdk/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Lcom/xiaomi/channel/sdk/AccountManager$3;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    .line 250
    :cond_0
    iget v0, p0, Lcom/xiaomi/channel/sdk/AccountManager;->loginFlag:I

    const/16 v1, 0x4e22

    if-ne v0, v1, :cond_1

    .line 251
    iget-object v0, p0, Lcom/xiaomi/channel/sdk/AccountManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_1
    new-instance v0, Lcom/xiaomi/channel/sdk/AccountManager$4;

    move-object v1, p0

    move-object v3, p6

    move-object v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/channel/sdk/AccountManager$4;-><init>(Lcom/xiaomi/channel/sdk/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;)V

    .line 270
    invoke-virtual {v0}, Lcom/xiaomi/channel/sdk/AccountManager$4;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v5, p0, Lcom/xiaomi/channel/sdk/AccountManager;->context:Landroid/content/Context;

    const-string v6, "service_token_pref"

    .line 149
    const/4 v7, 0x0

    .line 148
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 150
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 151
    .local v3, "prefMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v3, :cond_1

    .line 152
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 162
    :cond_1
    iget-object v5, p0, Lcom/xiaomi/channel/sdk/AccountManager;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void

    .line 152
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 153
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 154
    .local v4, "token":Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 155
    check-cast v4, Ljava/lang/String;

    .end local v4    # "token":Ljava/lang/Object;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 156
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
