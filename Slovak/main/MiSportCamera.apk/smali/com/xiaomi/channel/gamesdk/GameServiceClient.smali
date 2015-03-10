.class public Lcom/xiaomi/channel/gamesdk/GameServiceClient;
.super Ljava/lang/Object;
.source "GameServiceClient.java"


# static fields
.field public static final ERROR_CODE_PARAMS_WRONG:I = -0x2714

.field public static final GAME_SERVICE:Landroid/content/Intent;

.field public static final LONGIN_FLAG_CODE_ACCESS_DENIED:I = 0x4e2b

.field public static final LONGIN_FLAG_CODE_ACCOUNT_INVALID_CREDENTIAL:I = 0x4e25

.field public static final LONGIN_FLAG_CODE_ACCOUNT_INVALID_USERNAME:I = 0x4e28

.field public static final LONGIN_FLAG_CODE_ACCOUNT_NEED_CAPTCHA:I = 0x4e27

.field public static final LONGIN_FLAG_CODE_ACCOUNT_NEED_NOTIFICATION:I = 0x4e24

.field public static final LONGIN_FLAG_CODE_ACCOUNT_NEED_VERIFICATION:I = 0x4e26

.field public static final LONGIN_FLAG_CODE_AUTHENTICATION_FAILURE:I = 0x4e2c

.field public static final LONGIN_FLAG_CODE_INVALID_RESPONSE:I = 0x4e2a

.field public static final LONGIN_FLAG_CODE_MILIAO_LOGIN_BY_PASSWORD:I = 0x4e21

.field public static final LONGIN_FLAG_CODE_MILIAO_LOGIN_BY_SYSTEM:I = 0x4e22

.field public static final LONGIN_FLAG_CODE_MILIAO_NOT_LOGIN:I = -0x2713

.field public static final LONGIN_FLAG_CODE_MILIAO_NOT_SAME_ACCOUNT:I = 0x4e23

.field public static final LONGIN_FLAG_CODE_NETWORK_ERROR:I = 0x4e29

.field private static final MILIAO_URL:Ljava/lang/String; = "http://www.miliao.com/from=android&version=%d"

.field public static final MILIAO_VERSION_API_LEVEL_1:I = 0x47a

.field public static final RESULT_CODE:Ljava/lang/String; = "code"

.field public static final RESULT_CODE_ERROR:I = -0x1

.field public static final RESULT_CODE_OK:I = 0x0

.field public static final RESULT_DATA:Ljava/lang/String; = "data"

.field public static final RESULT_FLAG:Ljava/lang/String; = "flag"

.field private static final TAG:Ljava/lang/String; = "GameServiceClient"

.field private static sInstance:Lcom/xiaomi/channel/gamesdk/GameServiceClient;


# instance fields
.field private final ServiceLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mFacade:Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

.field private mServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->GAME_SERVICE:Landroid/content/Intent;

    .line 45
    sget-object v0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->GAME_SERVICE:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.channel"

    .line 46
    const-string v3, "com.xiaomi.channel.gameService.GameService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->ServiceLock:Ljava/lang/Object;

    .line 61
    new-instance v1, Lcom/xiaomi/channel/gamesdk/GameServiceClient$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient$1;-><init>(Lcom/xiaomi/channel/gamesdk/GameServiceClient;)V

    iput-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mServiceConn:Landroid/content/ServiceConnection;

    .line 83
    if-eqz p1, :cond_0

    .line 85
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->bindService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/xiaomi/channel/gamesdk/GameServiceClient;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->ServiceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Lcom/xiaomi/channel/gamesdk/GameServiceClient;Lcom/xiaomi/channel/gamesdk/aidl/IGameService;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mFacade:Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    return-void
.end method

.method private bindService()V
    .locals 6

    .prologue
    .line 96
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->isApiLevel1Available(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->ServiceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->GAME_SERVICE:Landroid/content/Intent;

    iget-object v4, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mServiceConn:Landroid/content/ServiceConnection;

    .line 102
    const/4 v5, 0x1

    .line 101
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 103
    const-string v1, "GameServiceClient"

    const-string v3, "GameService::bindService"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->ServiceLock:Ljava/lang/Object;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 109
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/gamesdk/GameServiceClient;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const-class v1, Lcom/xiaomi/channel/gamesdk/GameServiceClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->sInstance:Lcom/xiaomi/channel/gamesdk/GameServiceClient;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;

    invoke-direct {v0, p0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->sInstance:Lcom/xiaomi/channel/gamesdk/GameServiceClient;

    .line 120
    :cond_0
    sget-object v0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->sInstance:Lcom/xiaomi/channel/gamesdk/GameServiceClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static init(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    invoke-static {p0}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    const/16 v0, -0x2711

    .line 248
    :goto_0
    return v0

    .line 238
    :cond_0
    const/16 v0, 0x47a

    .line 237
    invoke-static {p0, v0}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoVersionAvailable(Landroid/content/Context;I)Z

    move-result v0

    .line 238
    if-eqz v0, :cond_1

    .line 239
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/channel/gamesdk/GameServiceClient$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 245
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 246
    const/4 v0, 0x0

    goto :goto_0

    .line 248
    :cond_1
    const/16 v0, -0x2712

    goto :goto_0
.end method

.method public static isApiLevel1Available(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    .line 58
    const/16 v0, 0x47a

    .line 57
    invoke-static {p0, v0}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoVersionAvailable(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;
    .locals 3
    .param p1, "miId"    # Ljava/lang/String;
    .param p2, "refer"    # Ljava/lang/String;
    .param p3, "verifyMsg"    # Ljava/lang/String;
    .param p4, "gameName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Lcom/xiaomi/channel/gamesdk/Retobj;

    invoke-direct {v0}, Lcom/xiaomi/channel/gamesdk/Retobj;-><init>()V

    .line 269
    .local v0, "ret":Lcom/xiaomi/channel/gamesdk/Retobj;
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    const/16 v1, -0x2711

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    .line 279
    :goto_0
    return-object v0

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    .line 272
    const/16 v2, 0x47a

    .line 271
    invoke-static {v1, v2}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoVersionAvailable(Landroid/content/Context;I)Z

    move-result v1

    .line 272
    if-nez v1, :cond_1

    .line 273
    const/16 v1, -0x2712

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 275
    const/16 v1, -0x2715

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    goto :goto_0

    .line 277
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mFacade:Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService;->addFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;

    move-result-object v0

    goto :goto_0
.end method

.method public checkHasJoinedUnion(Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Lcom/xiaomi/channel/gamesdk/Retobj;

    invoke-direct {v0}, Lcom/xiaomi/channel/gamesdk/Retobj;-><init>()V

    .line 382
    .local v0, "ret":Lcom/xiaomi/channel/gamesdk/Retobj;
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    const/16 v1, -0x2711

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    .line 393
    :goto_0
    return-object v0

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    .line 385
    const/16 v2, 0x47a

    .line 384
    invoke-static {v1, v2}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoVersionAvailable(Landroid/content/Context;I)Z

    move-result v1

    .line 385
    if-nez v1, :cond_1

    .line 386
    const/16 v1, -0x2712

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    goto :goto_0

    .line 387
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 388
    const/16 v1, -0x2715

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    goto :goto_0

    .line 390
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mFacade:Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    invoke-interface {v1, p1}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService;->checkHasJoinedUnion(Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;

    move-result-object v0

    goto :goto_0
.end method

.method public checkMiLiaoStatus()Lcom/xiaomi/channel/gamesdk/Retobj;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Lcom/xiaomi/channel/gamesdk/Retobj;

    invoke-direct {v0}, Lcom/xiaomi/channel/gamesdk/Retobj;-><init>()V

    .line 290
    .local v0, "ret":Lcom/xiaomi/channel/gamesdk/Retobj;
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    const/16 v1, -0x2711

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    .line 300
    :goto_0
    return-object v0

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    .line 293
    const/16 v2, 0x47a

    .line 292
    invoke-static {v1, v2}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoVersionAvailable(Landroid/content/Context;I)Z

    move-result v1

    .line 293
    if-nez v1, :cond_1

    .line 294
    const/16 v1, -0x2712

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 296
    const/16 v1, -0x2715

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    goto :goto_0

    .line 298
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mFacade:Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    invoke-interface {v1}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService;->checkMiLiaoStatus()Lcom/xiaomi/channel/gamesdk/Retobj;

    move-result-object v0

    goto :goto_0
.end method

.method public checkServiceIsRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 149
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mFacade:Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    if-nez v1, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->bindService()V

    .line 151
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mFacade:Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    if-eqz v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkVipIsScubscribed(Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;
    .locals 3
    .param p1, "vipId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 333
    new-instance v0, Lcom/xiaomi/channel/gamesdk/Retobj;

    invoke-direct {v0}, Lcom/xiaomi/channel/gamesdk/Retobj;-><init>()V

    .line 334
    .local v0, "ret":Lcom/xiaomi/channel/gamesdk/Retobj;
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    const/16 v1, -0x2711

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    .line 345
    :goto_0
    return-object v0

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    .line 337
    const/16 v2, 0x47a

    .line 336
    invoke-static {v1, v2}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoVersionAvailable(Landroid/content/Context;I)Z

    move-result v1

    .line 337
    if-nez v1, :cond_1

    .line 338
    const/16 v1, -0x2712

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    goto :goto_0

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 340
    const/16 v1, -0x2715

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    goto :goto_0

    .line 342
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mFacade:Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    invoke-interface {v1, p1}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService;->checkVipIsScubscribed(Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized destory()V
    .locals 2

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mFacade:Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mFacade:Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    .line 164
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->sInstance:Lcom/xiaomi/channel/gamesdk/GameServiceClient;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doShare(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    const/16 v0, -0x2711

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 417
    :goto_0
    return-object v0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    .line 408
    const/16 v1, 0x47a

    .line 407
    invoke-static {v0, v1}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoVersionAvailable(Landroid/content/Context;I)Z

    move-result v0

    .line 408
    if-nez v0, :cond_1

    .line 409
    const/16 v0, -0x2712

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->checkServiceIsRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 412
    const/16 v0, -0x2715

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 414
    :cond_2
    if-eqz p1, :cond_3

    .line 415
    iget-object v0, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mFacade:Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    invoke-interface {v0, p1}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService;->doShare(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 417
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public getAccount()Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-object v0

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mFacade:Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    if-eqz v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mFacade:Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    invoke-interface {v0}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService;->getAccount()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getAuthToken(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-object v0

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mFacade:Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    if-eqz v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mFacade:Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService;->getAuthToken(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentMiId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    const/16 v0, -0x2711

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 466
    :goto_0
    return-object v0

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    .line 460
    const/16 v1, 0x47a

    .line 459
    invoke-static {v0, v1}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoVersionAvailable(Landroid/content/Context;I)Z

    move-result v0

    .line 460
    if-nez v0, :cond_1

    .line 461
    const/16 v0, -0x2712

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 463
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->checkServiceIsRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 464
    const/16 v0, -0x2715

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mFacade:Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    invoke-interface {v0}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService;->getCurrentMiId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isMiIdMyFriend(Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;
    .locals 3
    .param p1, "miId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/xiaomi/channel/gamesdk/Retobj;

    invoke-direct {v0}, Lcom/xiaomi/channel/gamesdk/Retobj;-><init>()V

    .line 132
    .local v0, "ret":Lcom/xiaomi/channel/gamesdk/Retobj;
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    const/16 v1, -0x2711

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    .line 142
    :goto_0
    return-object v0

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    .line 135
    const/16 v2, 0x47a

    .line 134
    invoke-static {v1, v2}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoVersionAvailable(Landroid/content/Context;I)Z

    move-result v1

    .line 135
    if-nez v1, :cond_1

    .line 136
    const/16 v1, -0x2712

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    const/16 v1, -0x2715

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mFacade:Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    invoke-interface {v1, p1}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService;->isMiIdMyFriend(Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;

    move-result-object v0

    goto :goto_0
.end method

.method public joinUnion(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Lcom/xiaomi/channel/gamesdk/Retobj;

    invoke-direct {v0}, Lcom/xiaomi/channel/gamesdk/Retobj;-><init>()V

    .line 360
    .local v0, "ret":Lcom/xiaomi/channel/gamesdk/Retobj;
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    const/16 v1, -0x2711

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    .line 370
    :goto_0
    return-object v0

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    .line 363
    const/16 v2, 0x47a

    .line 362
    invoke-static {v1, v2}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoVersionAvailable(Landroid/content/Context;I)Z

    move-result v1

    .line 363
    if-nez v1, :cond_1

    .line 364
    const/16 v1, -0x2712

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 366
    const/16 v1, -0x2715

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    goto :goto_0

    .line 368
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mFacade:Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    invoke-interface {v1, p1, p2}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService;->joinUnion(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;

    move-result-object v0

    goto :goto_0
.end method

.method public openComposeOrSixinActivity(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;
    .locals 3
    .param p1, "miId"    # Ljava/lang/String;
    .param p2, "refer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 430
    new-instance v0, Lcom/xiaomi/channel/gamesdk/Retobj;

    invoke-direct {v0}, Lcom/xiaomi/channel/gamesdk/Retobj;-><init>()V

    .line 431
    .local v0, "ret":Lcom/xiaomi/channel/gamesdk/Retobj;
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    const/16 v1, -0x2711

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    .line 441
    :goto_0
    return-object v0

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    .line 434
    const/16 v2, 0x47a

    .line 433
    invoke-static {v1, v2}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoVersionAvailable(Landroid/content/Context;I)Z

    move-result v1

    .line 434
    if-nez v1, :cond_1

    .line 435
    const/16 v1, -0x2712

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 437
    const/16 v1, -0x2715

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    goto :goto_0

    .line 439
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mFacade:Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    invoke-interface {v1, p1, p2}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService;->openComposeOrSixinActivity(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;

    move-result-object v0

    goto :goto_0
.end method

.method public openMiliaoUpdateSite()V
    .locals 7

    .prologue
    .line 448
    iget-object v3, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/channel/sdk/VersionManager;->getMiliaoVersion(Landroid/content/Context;)I

    move-result v2

    .line 449
    .local v2, "version":I
    const-string v3, "http://www.miliao.com/from=android&version=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 451
    .local v0, "i":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 452
    iget-object v3, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 453
    return-void
.end method

.method public sendTextMsgToFriend(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;
    .locals 3
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "toId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Lcom/xiaomi/channel/gamesdk/Retobj;

    invoke-direct {v0}, Lcom/xiaomi/channel/gamesdk/Retobj;-><init>()V

    .line 179
    .local v0, "ret":Lcom/xiaomi/channel/gamesdk/Retobj;
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    const/16 v1, -0x2711

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    .line 189
    :goto_0
    return-object v0

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    .line 182
    const/16 v2, 0x47a

    .line 181
    invoke-static {v1, v2}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoVersionAvailable(Landroid/content/Context;I)Z

    move-result v1

    .line 182
    if-nez v1, :cond_1

    .line 183
    const/16 v1, -0x2712

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 185
    const/16 v1, -0x2715

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mFacade:Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    invoke-interface {v1, p2, p1}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService;->sendTextMsgToFriend(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;

    move-result-object v0

    goto :goto_0
.end method

.method public subscribeVip(Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;
    .locals 3
    .param p1, "vipId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 311
    new-instance v0, Lcom/xiaomi/channel/gamesdk/Retobj;

    invoke-direct {v0}, Lcom/xiaomi/channel/gamesdk/Retobj;-><init>()V

    .line 312
    .local v0, "ret":Lcom/xiaomi/channel/gamesdk/Retobj;
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    const/16 v1, -0x2711

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    .line 322
    :goto_0
    return-object v0

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mContext:Landroid/content/Context;

    .line 315
    const/16 v2, 0x47a

    .line 314
    invoke-static {v1, v2}, Lcom/xiaomi/channel/sdk/VersionManager;->isMiliaoVersionAvailable(Landroid/content/Context;I)Z

    move-result v1

    .line 315
    if-nez v1, :cond_1

    .line 316
    const/16 v1, -0x2712

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->checkServiceIsRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 318
    const/16 v1, -0x2715

    invoke-virtual {v0, v1}, Lcom/xiaomi/channel/gamesdk/Retobj;->setRetCode(I)V

    goto :goto_0

    .line 320
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->mFacade:Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    invoke-interface {v1, p1}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService;->subscribeVip(Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;

    move-result-object v0

    goto :goto_0
.end method
