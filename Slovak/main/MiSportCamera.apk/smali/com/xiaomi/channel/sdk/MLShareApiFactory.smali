.class public Lcom/xiaomi/channel/sdk/MLShareApiFactory;
.super Ljava/lang/Object;
.source "MLShareApiFactory.java"


# static fields
.field public static final KEY_EXTRA_SHARE_BUNDLE:Ljava/lang/String; = "extra_share_bundle"


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppId:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mAppPackageName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIosAppLocalUri:Ljava/lang/String;

.field public mVipId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context could not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->init(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "mlVipId"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context could not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appId could not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    iput-object p2, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mAppId:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mVipId:Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->init(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/xiaomi/channel/sdk/MLShareApiFactory;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mContext:Landroid/content/Context;

    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 97
    iget-object v3, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mAppPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    .line 96
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 98
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 99
    iget-object v3, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 99
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    iput-object v2, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mAppName:Ljava/lang/String;

    .line 100
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 101
    iget-object v3, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 100
    iput-object v2, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public sendReq(Lcom/xiaomi/channel/sdk/IShareReq;Z)Ljava/lang/String;
    .locals 14
    .param p1, "req"    # Lcom/xiaomi/channel/sdk/IShareReq;
    .param p2, "isClickOpenApp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    const-string v6, ""

    .line 118
    .local v6, "id":Ljava/lang/String;
    if-eqz p1, :cond_9

    .line 119
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v7, "intent":Landroid/content/Intent;
    invoke-interface {p1}, Lcom/xiaomi/channel/sdk/IShareReq;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 121
    .local v2, "b":Landroid/os/Bundle;
    if-eqz v2, :cond_3

    .line 122
    iget-object v11, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mAppId:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 123
    const-string v11, "app_id"

    iget-object v12, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    const-string v11, "app_name"

    iget-object v12, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-eqz p2, :cond_1

    .line 127
    const-string v11, "app_package_name"

    .line 128
    iget-object v12, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mAppPackageName:Ljava/lang/String;

    .line 127
    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-interface {p1}, Lcom/xiaomi/channel/sdk/IShareReq;->getJumpBackInfo()Lcom/xiaomi/channel/sdk/MLExtraInfo;

    move-result-object v3

    .line 130
    .local v3, "backInfo":Lcom/xiaomi/channel/sdk/MLExtraInfo;
    if-eqz v3, :cond_1

    .line 131
    const-string v11, "app_jump_back_info"

    .line 132
    invoke-virtual {v3}, Lcom/xiaomi/channel/sdk/MLExtraInfo;->toJson()Ljava/lang/String;

    move-result-object v12

    .line 131
    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .end local v3    # "backInfo":Lcom/xiaomi/channel/sdk/MLExtraInfo;
    :cond_1
    iget-object v11, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_2

    .line 136
    const-string v11, "app_icon_bmp"

    .line 137
    iget-object v12, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v12}, Lcom/xiaomi/channel/sdk/ShareUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 136
    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    :cond_2
    const-string v12, "vip_id"

    .line 140
    iget-object v11, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mVipId:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 141
    const-string v11, "800720"

    .line 139
    :goto_0
    invoke-virtual {v2, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v11, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mIosAppLocalUri:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 144
    const-string v11, "app_ios_local_uri"

    .line 145
    iget-object v12, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mIosAppLocalUri:Ljava/lang/String;

    .line 144
    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_3
    iget-object v11, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoInstalled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 149
    iget-object v11, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mContext:Landroid/content/Context;

    .line 150
    const/16 v12, 0x47a

    .line 149
    invoke-static {v11, v12}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoVersionAvailable(Landroid/content/Context;I)Z

    move-result v11

    .line 150
    if-eqz v11, :cond_5

    .line 151
    iget-object v11, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/gamesdk/GameServiceClient;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->doShare(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v11

    .line 191
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_1
    return-object v11

    .line 142
    .restart local v2    # "b":Landroid/os/Bundle;
    .restart local v7    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v11, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mVipId:Ljava/lang/String;

    goto :goto_0

    .line 153
    :cond_5
    const-string v9, "com.xiaomi.channel"

    .line 154
    .local v9, "miliaoPackage":Ljava/lang/String;
    const/4 v8, 0x0

    .line 155
    .local v8, "isMiliaoStart":Z
    iget-object v11, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mContext:Landroid/content/Context;

    .line 156
    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 155
    check-cast v1, Landroid/app/ActivityManager;

    .line 158
    .local v1, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v10

    .line 159
    .local v10, "procInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lt v5, v11, :cond_6

    .line 165
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 166
    const-string v11, "req_id"

    invoke-virtual {v2, v11, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v11, "share_bundle"

    invoke-virtual {v7, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 168
    const-string v11, "com.xiaomi.channel.share"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    if-nez v8, :cond_8

    .line 170
    iget-object v11, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 171
    const-string v12, "com.xiaomi.channel"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 172
    .local v0, "LaunchIntent":Landroid/content/Intent;
    iget-object v11, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 173
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v4, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 175
    .local v4, "h":Landroid/os/Handler;
    new-instance v11, Lcom/xiaomi/channel/sdk/MLShareApiFactory$1;

    invoke-direct {v11, p0, v7}, Lcom/xiaomi/channel/sdk/MLShareApiFactory$1;-><init>(Lcom/xiaomi/channel/sdk/MLShareApiFactory;Landroid/content/Intent;)V

    .line 181
    const-wide/16 v12, 0x7d0

    .line 175
    invoke-virtual {v4, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v0    # "LaunchIntent":Landroid/content/Intent;
    .end local v4    # "h":Landroid/os/Handler;
    :goto_4
    move-object v11, v6

    .line 185
    goto :goto_1

    .line 160
    :cond_6
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v11, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v12, "com.xiaomi.channel"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 161
    const/4 v8, 0x1

    .line 162
    goto :goto_3

    .line 159
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 183
    :cond_8
    iget-object v11, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4

    .line 191
    .end local v1    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v5    # "i":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "isMiliaoStart":Z
    .end local v9    # "miliaoPackage":Ljava/lang/String;
    .end local v10    # "procInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_9
    const-string v11, ""

    goto :goto_1
.end method

.method public setIosLocalUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "iosLocalUri"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mIosAppLocalUri:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setPackageNameAndAppName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iput-object p1, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mAppPackageName:Ljava/lang/String;

    .line 81
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iput-object p2, p0, Lcom/xiaomi/channel/sdk/MLShareApiFactory;->mAppName:Ljava/lang/String;

    .line 86
    :cond_0
    return-void
.end method
