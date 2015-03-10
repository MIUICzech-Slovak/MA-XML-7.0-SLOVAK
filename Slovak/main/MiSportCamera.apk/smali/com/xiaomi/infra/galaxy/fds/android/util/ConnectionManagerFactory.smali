.class public Lcom/xiaomi/infra/galaxy/fds/android/util/ConnectionManagerFactory;
.super Ljava/lang/Object;
.source "ConnectionManagerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/ClientConnectionManager;
    .locals 6
    .param p0, "httpParams"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 12
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 13
    .local v1, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 15
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, p0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 17
    .local v0, "connectionManager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/android/util/IdleConnectionReaper;

    invoke-direct {v2, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/IdleConnectionReaper;-><init>(Lorg/apache/http/conn/ClientConnectionManager;)V

    invoke-virtual {v2}, Lcom/xiaomi/infra/galaxy/fds/android/util/IdleConnectionReaper;->start()V

    .line 18
    return-object v0
.end method
