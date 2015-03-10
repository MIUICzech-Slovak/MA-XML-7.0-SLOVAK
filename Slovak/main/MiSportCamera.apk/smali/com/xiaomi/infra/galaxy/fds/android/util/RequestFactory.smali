.class public Lcom/xiaomi/infra/galaxy/fds/android/util/RequestFactory;
.super Ljava/lang/Object;
.source "RequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/infra/galaxy/fds/android/util/RequestFactory$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static createRequest(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 5
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "credential"    # Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;
    .param p2, "method"    # Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 23
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1, p0}, Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;->addParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 25
    sget-object v3, Lcom/xiaomi/infra/galaxy/fds/android/util/RequestFactory$1;->$SwitchMap$com$xiaomi$infra$galaxy$fds$android$model$HttpMethod:[I

    invoke-virtual {p2}, Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 42
    const/4 v2, 0x0

    .line 46
    .local v2, "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :goto_0
    if-eqz v2, :cond_1

    .line 47
    if-eqz p3, :cond_0

    .line 50
    const-string v3, "Content-Length"

    invoke-interface {p3, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 52
    .local v0, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 27
    .end local v0    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :pswitch_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 28
    .restart local v2    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_0

    .line 30
    .end local v2    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :pswitch_1
    new-instance v2, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 31
    .restart local v2    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_0

    .line 33
    .end local v2    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :pswitch_2
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 34
    .restart local v2    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_0

    .line 36
    .end local v2    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :pswitch_3
    new-instance v2, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 37
    .restart local v2    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_0

    .line 39
    .end local v2    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    :pswitch_4
    new-instance v2, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 40
    .restart local v2    # "request":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_0

    .line 56
    :cond_0
    const-string v3, "Date"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v4}, Lcom/xiaomi/infra/galaxy/fds/android/util/Util;->formatDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-interface {p1, v2}, Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;->addHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 59
    :cond_1
    return-object v2

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
