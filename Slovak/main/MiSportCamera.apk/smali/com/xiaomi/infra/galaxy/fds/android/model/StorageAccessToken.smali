.class public Lcom/xiaomi/infra/galaxy/fds/android/model/StorageAccessToken;
.super Ljava/lang/Object;
.source "StorageAccessToken.java"


# instance fields
.field private expireTime:J

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "expireTime"    # J

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/StorageAccessToken;->token:Ljava/lang/String;

    .line 12
    iput-wide p2, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/StorageAccessToken;->expireTime:J

    .line 13
    return-void
.end method


# virtual methods
.method public getExpireTime()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/StorageAccessToken;->expireTime:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/StorageAccessToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setExpireTime(J)V
    .locals 0
    .param p1, "expireTime"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/StorageAccessToken;->expireTime:J

    .line 29
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/StorageAccessToken;->token:Ljava/lang/String;

    .line 21
    return-void
.end method
