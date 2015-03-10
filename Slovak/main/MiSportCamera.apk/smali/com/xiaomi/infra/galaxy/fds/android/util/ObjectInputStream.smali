.class public Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;
.super Ljava/io/FilterInputStream;
.source "ObjectInputStream.java"


# instance fields
.field private lastNotifyTime:J

.field private final listener:Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;

.field private final metadata:Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

.field private totalBytesRead:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "metadata"    # Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    .param p3, "listener"    # Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 19
    iput-object p2, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->metadata:Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

    .line 20
    iput-object p3, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->listener:Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;

    .line 21
    return-void
.end method

.method private notifyListener(Z)V
    .locals 7
    .param p1, "needsCheckTime"    # Z

    .prologue
    .line 24
    iget-object v2, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->listener:Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;

    if-eqz v2, :cond_1

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 26
    .local v0, "now":J
    if-eqz p1, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->lastNotifyTime:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->listener:Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;

    invoke-virtual {v4}, Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;->progressInterval()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 27
    :cond_0
    iput-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->lastNotifyTime:J

    .line 28
    iget-object v2, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->listener:Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;

    iget-wide v3, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->totalBytesRead:J

    iget-object v5, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->metadata:Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

    invoke-virtual {v5}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->getContentLength()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;->onProgress(JJ)V

    .line 31
    .end local v0    # "now":J
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->notifyListener(Z)V

    .line 66
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 48
    .local v0, "data":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 49
    iget-wide v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->totalBytesRead:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->totalBytesRead:J

    .line 50
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->notifyListener(Z)V

    .line 52
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 37
    .local v0, "bytesRead":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 38
    iget-wide v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->totalBytesRead:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->totalBytesRead:J

    .line 39
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->notifyListener(Z)V

    .line 41
    :cond_0
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->totalBytesRead:J

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->notifyListener(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
