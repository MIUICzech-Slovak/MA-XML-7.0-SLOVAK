.class public final Lcom/xiaomi/infra/galaxy/fds/android/util/IdleConnectionReaper;
.super Ljava/lang/Thread;
.source "IdleConnectionReaper.java"


# static fields
.field private static final PERIOD_MILLISECONDS:I = 0xea60


# instance fields
.field private final connectionManager:Lorg/apache/http/conn/ClientConnectionManager;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;)V
    .locals 1
    .param p1, "connectionManager"    # Lorg/apache/http/conn/ClientConnectionManager;

    .prologue
    .line 17
    const-string v0, "java-sdk-http-connection-reaper"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/IdleConnectionReaper;->connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/IdleConnectionReaper;->setDaemon(Z)V

    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 26
    :goto_0
    const-wide/32 v1, 0xea60

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 27
    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/util/IdleConnectionReaper;->connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    const-wide/16 v2, 0x3c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 30
    return-void
.end method
