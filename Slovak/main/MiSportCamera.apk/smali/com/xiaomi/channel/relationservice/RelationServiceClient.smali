.class public Lcom/xiaomi/channel/relationservice/RelationServiceClient;
.super Ljava/lang/Object;
.source "RelationServiceClient.java"


# static fields
.field public static final ACTION_ON_BUDDY_DATA_SELECTED:Ljava/lang/String; = "action_on_buddy_data_setected"

.field static final RELATION_SERVICE_API_LEVEL1:I = 0x4b0

.field private static final TAG:Ljava/lang/String; = "RelationServiceClient"

.field private static sInstance:Lcom/xiaomi/channel/relationservice/RelationServiceClient;


# instance fields
.field private final ServiceLock:Ljava/lang/Object;

.field private mBuddyDataCallBack:Lcom/xiaomi/channel/relationservice/data/BuddyDataCallBack;

.field private mContext:Landroid/content/Context;

.field private mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->ServiceLock:Ljava/lang/Object;

    .line 40
    new-instance v2, Lcom/xiaomi/channel/relationservice/RelationServiceClient$1;

    invoke-direct {v2, p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient$1;-><init>(Lcom/xiaomi/channel/relationservice/RelationServiceClient;)V

    iput-object v2, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    new-instance v2, Lcom/xiaomi/channel/relationservice/RelationServiceClient$2;

    invoke-direct {v2, p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient$2;-><init>(Lcom/xiaomi/channel/relationservice/RelationServiceClient;)V

    iput-object v2, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mServiceConn:Landroid/content/ServiceConnection;

    .line 86
    if-eqz p1, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mContext:Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->bindService()V

    .line 90
    new-instance v1, Landroid/content/IntentFilter;

    .line 91
    const-string v2, "action_on_buddy_data_setected"

    .line 90
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/xiaomi/channel/relationservice/RelationServiceClient;)Lcom/xiaomi/channel/relationservice/data/BuddyDataCallBack;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mBuddyDataCallBack:Lcom/xiaomi/channel/relationservice/data/BuddyDataCallBack;

    return-object v0
.end method

.method static synthetic access$1(Lcom/xiaomi/channel/relationservice/RelationServiceClient;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->ServiceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2(Lcom/xiaomi/channel/relationservice/RelationServiceClient;Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    return-void
.end method

.method private bindService()V
    .locals 6

    .prologue
    .line 101
    iget-object v3, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->ServiceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    if-nez v2, :cond_0

    .line 104
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v1, "service":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    .line 106
    const-string v4, "com.xiaomi.channel"

    .line 107
    const-string v5, "com.xiaomi.channel.relationservice.RelationService"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 108
    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mServiceConn:Landroid/content/ServiceConnection;

    .line 109
    const/4 v5, 0x1

    .line 108
    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 110
    const-string v2, "RelationServiceClient"

    const-string v4, "RelationService::bindService"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->ServiceLock:Ljava/lang/Object;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .end local v1    # "service":Landroid/content/Intent;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    return-void

    .line 113
    .restart local v1    # "service":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 117
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "service":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method private checkRelationServiceState()I
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    const/16 v0, -0x2711

    .line 379
    :goto_0
    return v0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mContext:Landroid/content/Context;

    .line 374
    const/16 v1, 0x4b0

    .line 373
    invoke-static {v0, v1}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoVersionAvailable(Landroid/content/Context;I)Z

    move-result v0

    .line 374
    if-nez v0, :cond_1

    .line 375
    const/16 v0, -0x2712

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->checkServiceIsRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 377
    const/16 v0, -0x2715

    goto :goto_0

    .line 379
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contentValuesToBundle(Landroid/content/ContentValues;)Landroid/os/Bundle;
    .locals 6
    .param p0, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 158
    return-object v0

    .line 148
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 150
    .local v2, "obj":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 151
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_2
    instance-of v4, v2, Ljava/lang/Long;

    if-eqz v4, :cond_3

    .line 153
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 154
    :cond_3
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 155
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/relationservice/RelationServiceClient;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const-class v1, Lcom/xiaomi/channel/relationservice/RelationServiceClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->sInstance:Lcom/xiaomi/channel/relationservice/RelationServiceClient;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;

    invoke-direct {v0, p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->sInstance:Lcom/xiaomi/channel/relationservice/RelationServiceClient;

    .line 128
    :cond_0
    sget-object v0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->sInstance:Lcom/xiaomi/channel/relationservice/RelationServiceClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getServiceFacade()Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->checkServiceIsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    .line 143
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public batchDeleteKeys(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    invoke-interface {v1, p1}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;->batchDeleteOfKeys(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 345
    :goto_0
    return v1

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 345
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bulkInsertOrUpdateKeyValues(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 323
    if-eqz p1, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    invoke-interface {v1, p1}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;->bulkInsertOrUpdateKeyValues(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 332
    :goto_0
    return v1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 332
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkServiceIsRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 132
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    if-nez v1, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->bindService()V

    .line 134
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    if-eqz v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAccountData()Z
    .locals 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    invoke-interface {v1}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;->clearAccountData()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 367
    :goto_0
    return v1

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 367
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteAllBuddy()Z
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    invoke-interface {v1}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;->deleteAllBuddy()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 273
    :goto_0
    return v1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 273
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteBuddyList(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "accountList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    invoke-interface {v1, p1}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;->deleteBuddyList(Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 249
    :goto_0
    return v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 249
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 428
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 429
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->sInstance:Lcom/xiaomi/channel/relationservice/RelationServiceClient;

    .line 430
    return-void
.end method

.method public getBuddyDataByUuid(Ljava/lang/String;)Lcom/xiaomi/channel/relationservice/data/BuddyData;
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->checkRelationServiceState()I

    move-result v1

    .line 415
    .local v1, "ret":I
    if-nez v1, :cond_0

    .line 417
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    invoke-interface {v2, p1}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;->getBuddyDataByUuid(Ljava/lang/String;)Lcom/xiaomi/channel/relationservice/data/BuddyData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 423
    :goto_0
    return-object v2

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 420
    const/4 v1, -0x1

    .line 423
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBuddyDataList(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "groupBy"    # Ljava/lang/String;
    .param p4, "having"    # Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;
    .param p6, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/channel/relationservice/data/BuddyData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->checkServiceIsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;->getBuddyDataList(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .line 196
    :catch_0
    move-exception v7

    .line 197
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 200
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDbSize()I
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    invoke-interface {v1}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;->getDbSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 356
    :goto_0
    return v1

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 356
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValueOfKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    invoke-interface {v1, p1}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;->getValueOfKey(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 306
    :goto_0
    return-object v1

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 306
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public insertOrUpdateBuddyData(Lcom/xiaomi/channel/relationservice/data/BuddyData;)Z
    .locals 2
    .param p1, "buddy"    # Lcom/xiaomi/channel/relationservice/data/BuddyData;

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    invoke-interface {v1, p1}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;->insertOrUpdateBuddyData(Lcom/xiaomi/channel/relationservice/data/BuddyData;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 238
    :goto_0
    return v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 238
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertOrUpdateBuddyDataList(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/channel/relationservice/data/BuddyData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "buddyList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/channel/relationservice/data/BuddyData;>;"
    invoke-virtual {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->checkServiceIsRunning()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p1, :cond_3

    .line 206
    const/4 v0, 0x1

    .line 207
    .local v0, "bret":Z
    :try_start_0
    sget v3, Lcom/xiaomi/channel/relationservice/data/BuddyColumns;->PAGE_SIZE:I

    .line 208
    .local v3, "size":I
    const/4 v4, 0x0

    .line 209
    .local v4, "start":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v3, :cond_2

    .line 211
    :cond_0
    add-int v6, v4, v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 212
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 213
    .local v2, "end":I
    :goto_0
    invoke-interface {p1, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 215
    .local v5, "subList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/channel/relationservice/data/BuddyData;>;"
    iget-object v6, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    invoke-interface {v6, v5}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;->insertOrUpdateBuddyDataList(Ljava/util/List;)Z

    move-result v6

    and-int/2addr v0, v6

    .line 216
    add-int/2addr v4, v3

    .line 218
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 210
    if-lt v4, v6, :cond_0

    .line 227
    .end local v0    # "bret":Z
    .end local v2    # "end":I
    .end local v3    # "size":I
    .end local v4    # "start":I
    .end local v5    # "subList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/channel/relationservice/data/BuddyData;>;"
    :goto_1
    return v0

    .line 212
    .restart local v0    # "bret":Z
    .restart local v3    # "size":I
    .restart local v4    # "start":I
    :cond_1
    add-int v2, v4, v3

    goto :goto_0

    .line 220
    :cond_2
    iget-object v6, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    invoke-interface {v6, p1}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;->insertOrUpdateBuddyDataList(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 223
    .end local v3    # "size":I
    .end local v4    # "start":I
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 227
    .end local v0    # "bret":Z
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public insertOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    invoke-interface {v1, p1, p2}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;->insertOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 319
    :goto_0
    return v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 319
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openContactSelectActivity(Lcom/xiaomi/channel/relationservice/data/BuddyDataCallBack;)I
    .locals 4
    .param p1, "callBack"    # Lcom/xiaomi/channel/relationservice/data/BuddyDataCallBack;

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->checkRelationServiceState()I

    move-result v1

    .line 391
    .local v1, "ret":I
    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 393
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    invoke-interface {v3}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;->openContactSelectActivity()Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, "taskId":Ljava/lang/String;
    iput-object v2, p1, Lcom/xiaomi/channel/relationservice/data/BuddyDataCallBack;->taskId:Ljava/lang/String;

    .line 395
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 396
    iput-object p1, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mBuddyDataCallBack:Lcom/xiaomi/channel/relationservice/data/BuddyDataCallBack;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    const/4 v1, 0x0

    .line 404
    .end local v2    # "taskId":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 401
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public registerBuddyChangeListener(Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyChangeListener;

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    invoke-interface {v1, p1}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;->registerBuddyChangeListener(Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unRegisterBuddyChangeListener(Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyChangeListener;

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    invoke-interface {v1, p1}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;->unRegisterBuddyChangeListener(Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateBuddyByBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)I
    .locals 2
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 254
    .local p3, "bundleList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->mFacade:Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    invoke-interface {v1, p1, p2, p3}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;->updateBuddyByBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 262
    :goto_0
    return v1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 262
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateBuddyByContentValues(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, "count":I
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->checkServiceIsRunning()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v0, "bundleList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-static {p1}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->contentValuesToBundle(Landroid/content/ContentValues;)Landroid/os/Bundle;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    sget v3, Lcom/xiaomi/channel/relationservice/data/BuddyColumns;->PAGE_SIZE:I

    .line 169
    .local v3, "size":I
    const/4 v4, 0x0

    .line 170
    .local v4, "start":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v3, :cond_3

    .line 172
    :cond_0
    add-int v6, v4, v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 173
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 174
    .local v2, "end":I
    :goto_0
    invoke-interface {v0, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 176
    .local v5, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-direct {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->getServiceFacade()Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    move-result-object v6

    .line 177
    invoke-interface {v6, p2, p3, v5}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;->updateBuddyByBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)I

    move-result v6

    add-int/2addr v1, v6

    .line 178
    add-int/2addr v4, v3

    .line 180
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 171
    if-lt v4, v6, :cond_0

    .line 186
    .end local v0    # "bundleList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v2    # "end":I
    .end local v3    # "size":I
    .end local v4    # "start":I
    .end local v5    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_1
    :goto_1
    return v1

    .line 173
    .restart local v0    # "bundleList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .restart local v3    # "size":I
    .restart local v4    # "start":I
    :cond_2
    add-int v2, v4, v3

    goto :goto_0

    .line 182
    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/channel/relationservice/RelationServiceClient;->getServiceFacade()Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    move-result-object v6

    invoke-interface {v6, p2, p3, v0}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;->updateBuddyByBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)I

    move-result v1

    goto :goto_1
.end method
