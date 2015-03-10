.class public Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;
.super Ljava/lang/Object;
.source "GalaxyFDSClientImpl.java"

# interfaces
.implements Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClient;


# static fields
.field private static final HTTPS_SCHEME:Ljava/lang/String; = "https"

.field private static final HTTP_SCHEME:Ljava/lang/String; = "http"

.field private static final LOG_TAG:Ljava/lang/String; = "GalaxyFDSClientImpl"

.field private static final TEST_MODE:Z


# instance fields
.field private final config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private isCancel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const-string v1, "java.runtime.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "runtime":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "android runtime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const/4 v1, 0x0

    sput-boolean v1, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->TEST_MODE:Z

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->TEST_MODE:Z

    goto :goto_0
.end method

.method public constructor <init>(Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;)V
    .locals 2
    .param p1, "config"    # Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getFdsServiceBaseUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getCredential()Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;-><init>(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;)V
    .locals 1
    .param p1, "fdsServiceBaseUri"    # Ljava/lang/String;
    .param p2, "credential"    # Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;
    .param p3, "config"    # Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p3, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    .line 86
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setFdsServiceBaseUri(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v0, p2}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setCredential(Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;)V

    .line 88
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-direct {p0, v0}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->createHttpClient(Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 89
    return-void
.end method

.method private abortMultipartUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectName"    # Ljava/lang/String;
    .param p3, "uploadId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 675
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v6}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getFdsServiceBaseUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?uploadId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 678
    .local v4, "uriString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 680
    .local v3, "responseContent":Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v5}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getCredential()Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;->DELETE:Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/xiaomi/infra/galaxy/fds/android/util/RequestFactory;->createRequest(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    .line 682
    .local v1, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    iget-object v5, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v5, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 683
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 684
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_1

    .line 685
    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to upload object["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] to URI :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Fail to abort multipart upload: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    .end local v1    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to abort multipart upload. URI:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 694
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_0

    .line 696
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 699
    :cond_0
    :goto_0
    throw v5

    .line 694
    .restart local v1    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v2    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    if-eqz v3, :cond_2

    .line 696
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 702
    :cond_2
    :goto_1
    return-void

    .line 697
    :catch_1
    move-exception v5

    goto :goto_1

    .end local v1    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v6

    goto :goto_0
.end method

.method private completeMultipartUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResultList;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 16
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectName"    # Ljava/lang/String;
    .param p4, "metadata"    # Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    .param p5, "uploadPartResultList"    # Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResultList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResultList;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;)",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 613
    .local p6, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v13}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getFdsServiceBaseUri()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "?uploadId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    if-eqz p6, :cond_0

    .line 617
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;

    .line 618
    .local v5, "param":Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;
    const/16 v12, 0x26

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v5}, Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 622
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "param":Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 624
    .local v11, "uriString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 626
    .local v9, "responseContent":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 627
    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p4, :cond_1

    .line 628
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->getAllMetadata()Ljava/util/Map;

    move-result-object v3

    .line 631
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v12}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getCredential()Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;

    move-result-object v12

    sget-object v13, Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;->PUT:Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;

    invoke-static {v11, v12, v13, v3}, Lcom/xiaomi/infra/galaxy/fds/android/util/RequestFactory;->createRequest(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v7

    .line 633
    .local v7, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object v0, v7

    check-cast v0, Lorg/apache/http/client/methods/HttpPut;

    move-object v12, v0

    new-instance v13, Lorg/apache/http/entity/StringEntity;

    new-instance v14, Lcom/google/gson/Gson;

    invoke-direct {v14}, Lcom/google/gson/Gson;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v14, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v12, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 636
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 637
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    const/16 v13, 0xc8

    if-eq v12, v13, :cond_3

    .line 638
    new-instance v12, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to upload object["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] to URI :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ". Fail to complete multipart upload: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    .end local v7    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v2

    .line 659
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v12, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Fail to complete multipart upload. URI:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    if-eqz v9, :cond_2

    .line 665
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 668
    :cond_2
    :goto_1
    throw v12

    .line 643
    .restart local v7    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    :try_start_3
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 644
    .local v6, "reader":Ljava/io/Reader;
    new-instance v12, Lcom/google/gson/Gson;

    invoke-direct {v12}, Lcom/google/gson/Gson;-><init>()V

    const-class v13, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    invoke-virtual {v12, v6, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    .line 646
    .local v10, "result":Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->getAccessKeyId()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v10}, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->getSignature()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v10}, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->getExpires()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_5

    .line 649
    :cond_4
    new-instance v12, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Fail to parse the result of completing multipart upload. bucket name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", object name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", upload ID:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 655
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v12}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getFdsServiceBaseUri()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->setFdsServiceBaseUri(Ljava/lang/String;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v12}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getCdnServiceBaseUri()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->setCdnServiceBaseUri(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 663
    if-eqz v9, :cond_6

    .line 665
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 668
    :cond_6
    :goto_2
    return-object v10

    .line 666
    :catch_1
    move-exception v12

    goto :goto_2

    .end local v6    # "reader":Ljava/io/Reader;
    .end local v7    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "result":Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    :catch_2
    move-exception v13

    goto :goto_1
.end method

.method private createHttpClient(Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;)Lorg/apache/http/client/HttpClient;
    .locals 11
    .param p1, "config"    # Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    .prologue
    const/4 v10, 0x1

    .line 93
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 94
    .local v2, "httpClientParams":Lorg/apache/http/params/HttpParams;
    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getConnectionTimeoutMs()I

    move-result v8

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 96
    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getSocketTimeoutMs()I

    move-result v8

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 98
    invoke-static {v2, v10}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 99
    invoke-static {v2, v10}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 101
    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getSocketBufferSizeHints()[I

    move-result-object v8

    const/4 v9, 0x0

    aget v6, v8, v9

    .line 102
    .local v6, "socketSendBufferSizeHint":I
    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getSocketBufferSizeHints()[I

    move-result-object v8

    aget v5, v8, v10

    .line 103
    .local v5, "socketReceiveBufferSizeHint":I
    if-gtz v6, :cond_0

    if-lez v5, :cond_1

    .line 104
    :cond_0
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v2, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 110
    :cond_1
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 111
    .local v3, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    .line 112
    .local v4, "socketFactory":Lorg/apache/http/conn/scheme/SocketFactory;
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "http"

    const/16 v10, 0x50

    invoke-direct {v8, v9, v4, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 114
    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getFdsServiceBaseUri()Ljava/lang/String;

    move-result-object v8

    const-string v9, "https"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getCdnServiceBaseUri()Ljava/lang/String;

    move-result-object v8

    const-string v9, "https"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 116
    :cond_2
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v7

    .line 118
    .local v7, "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v8, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v7, v8}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 120
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "https"

    const/16 v10, 0x1bb

    invoke-direct {v8, v9, v7, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 123
    .end local v7    # "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :cond_3
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 125
    .local v0, "connectionManager":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 127
    .local v1, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    return-object v1
.end method

.method private initMultipartUpload(Ljava/lang/String;Ljava/lang/String;J)Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;
    .locals 11
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectName"    # Ljava/lang/String;
    .param p3, "estimatedSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 466
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v9}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getFdsServiceBaseUri()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez p2, :cond_1

    const-string v8, ""

    :goto_0
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?uploads"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 469
    .local v7, "uriString":Ljava/lang/String;
    const/4 v5, 0x0

    .line 475
    .local v5, "responseContent":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 476
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "x-xiaomi-estimated-object-size"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v8, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v8}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getCredential()Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;

    move-result-object v9

    if-nez p2, :cond_2

    sget-object v8, Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;->POST:Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;

    :goto_1
    invoke-static {v7, v9, v8, v1}, Lcom/xiaomi/infra/galaxy/fds/android/util/RequestFactory;->createRequest(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    .line 482
    .local v3, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    iget-object v8, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v8, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 483
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 484
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_3

    .line 485
    new-instance v8, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to upload object["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] to URI :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". Fail to initiate multipart upload: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    .end local v1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v8, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Fail to initiate multipart upload. URI:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v5, :cond_0

    .line 509
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 512
    :cond_0
    :goto_2
    throw v8

    .end local v5    # "responseContent":Ljava/io/InputStream;
    .end local v7    # "uriString":Ljava/lang/String;
    :cond_1
    move-object v8, p2

    .line 466
    goto/16 :goto_0

    .line 478
    .restart local v1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "responseContent":Ljava/io/InputStream;
    .restart local v7    # "uriString":Ljava/lang/String;
    :cond_2
    :try_start_3
    sget-object v8, Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;->PUT:Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;

    goto/16 :goto_1

    .line 490
    .restart local v3    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v4    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 491
    .local v2, "reader":Ljava/io/Reader;
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    const-class v9, Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;

    invoke-virtual {v8, v2, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;

    .line 493
    .local v6, "result":Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;->getObjectName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;->getBucketName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    .line 496
    :cond_4
    new-instance v8, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Fail to parse the result of init multipart upload. bucket name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", object name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 507
    :cond_5
    if-eqz v5, :cond_6

    .line 509
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 512
    :cond_6
    :goto_3
    return-object v6

    .line 510
    :catch_1
    move-exception v8

    goto :goto_3

    .end local v1    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "reader":Ljava/io/Reader;
    .end local v3    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "result":Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;
    :catch_2
    move-exception v9

    goto :goto_2
.end method

.method private isGetThumbnail(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;>;"
    const/4 v1, 0x0

    .line 132
    .local v1, "isGetThumbnail":Z
    if-eqz p1, :cond_1

    .line 133
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;

    .line 134
    .local v2, "param":Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;
    instance-of v3, v2, Lcom/xiaomi/infra/galaxy/fds/android/model/ThumbParam;

    if-eqz v3, :cond_0

    .line 135
    const/4 v1, 0x1

    .line 140
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "param":Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;
    :cond_1
    return v1
.end method

.method private uploadPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;J)Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;
    .locals 22
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectName"    # Ljava/lang/String;
    .param p4, "partNumber"    # I
    .param p5, "in"    # Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;
    .param p6, "contentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 520
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getFdsServiceBaseUri()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "?uploadId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "&partNumber="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 524
    .local v17, "uriString":Ljava/lang/String;
    const/16 v18, 0x1000

    move/from16 v0, v18

    new-array v3, v0, [B

    .line 525
    .local v3, "buffer":[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    move-wide/from16 v0, p6

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 528
    .local v6, "out":Ljava/io/ByteArrayOutputStream;
    move-wide/from16 v9, p6

    .line 529
    .local v9, "remainingBytes":J
    :goto_0
    const-wide/16 v18, 0x0

    cmp-long v18, v9, v18

    if-eqz v18, :cond_0

    .line 530
    :try_start_0
    array-length v0, v3

    move/from16 v18, v0

    long-to-int v0, v9

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 531
    .local v16, "toReadBytes":I
    const/16 v18, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v3, v1, v2}, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    .line 532
    .local v7, "readBytes":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_3

    .line 544
    .end local v7    # "readBytes":I
    .end local v16    # "toReadBytes":I
    :cond_0
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 546
    .local v4, "data":[B
    :try_start_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 551
    :goto_1
    const/4 v15, 0x0

    .line 552
    .local v15, "retriedTimes":I
    const/4 v13, 0x0

    .line 555
    .local v13, "responseContent":Ljava/io/InputStream;
    :cond_1
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getCredential()Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;

    move-result-object v18

    sget-object v19, Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;->PUT:Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;

    const/16 v20, 0x0

    invoke-static/range {v17 .. v20}, Lcom/xiaomi/infra/galaxy/fds/android/util/RequestFactory;->createRequest(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v11

    .line 558
    .local v11, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object v0, v11

    check-cast v0, Lorg/apache/http/client/methods/HttpPut;

    move-object/from16 v18, v0

    new-instance v19, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual/range {v18 .. v19}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_2
    .catch Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 561
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 562
    .local v12, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .line 563
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    const/16 v19, 0xc8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 564
    new-instance v18, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unable to upload object["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] to URI :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ". Fail to upload part "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 584
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v5

    .line 585
    .local v5, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v18, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Fail to put part. URI:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18
    :try_end_4
    .catch Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 588
    .end local v5    # "e":Ljava/io/IOException;
    .end local v11    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :catch_1
    move-exception v5

    .line 589
    .local v5, "e":Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
    add-int/lit8 v15, v15, 0x1

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getMaxRetryTimes()I

    move-result v18

    move/from16 v0, v18

    if-lt v15, v0, :cond_8

    .line 590
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 598
    .end local v5    # "e":Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
    :catchall_0
    move-exception v18

    if-eqz v13, :cond_2

    .line 600
    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 603
    :cond_2
    :goto_3
    throw v18

    .line 535
    .end local v4    # "data":[B
    .end local v13    # "responseContent":Ljava/io/InputStream;
    .end local v15    # "retriedTimes":I
    .restart local v7    # "readBytes":I
    .restart local v16    # "toReadBytes":I
    :cond_3
    const/16 v18, 0x0

    :try_start_7
    move/from16 v0, v18

    invoke-virtual {v6, v3, v0, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 536
    int-to-long v0, v7

    move-wide/from16 v18, v0

    sub-long v9, v9, v18

    .line 537
    goto/16 :goto_0

    .line 538
    .end local v7    # "readBytes":I
    .end local v16    # "toReadBytes":I
    :catch_2
    move-exception v5

    .line 539
    .local v5, "e":Ljava/io/IOException;
    new-instance v18, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Fail to read data from input stream, size:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 571
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "data":[B
    .restart local v11    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v12    # "response":Lorg/apache/http/HttpResponse;
    .restart local v13    # "responseContent":Ljava/io/InputStream;
    .restart local v15    # "retriedTimes":I
    :cond_4
    :try_start_8
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 572
    .local v8, "reader":Ljava/io/Reader;
    new-instance v18, Lcom/google/gson/Gson;

    invoke-direct/range {v18 .. v18}, Lcom/google/gson/Gson;-><init>()V

    const-class v19, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;

    .line 574
    .local v14, "result":Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;->getEtag()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_5

    invoke-virtual {v14}, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;->getPartSize()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_6

    .line 576
    :cond_5
    new-instance v18, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Fail to parse the result of uploading part. bucket name:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", object name:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", upload ID:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 598
    :cond_6
    if-eqz v13, :cond_7

    .line 600
    :try_start_9
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 603
    :cond_7
    :goto_4
    return-object v14

    .line 591
    .end local v8    # "reader":Ljava/io/Reader;
    .end local v11    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "result":Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;
    .local v5, "e":Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
    :cond_8
    :try_start_a
    sget-boolean v18, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->TEST_MODE:Z

    if-nez v18, :cond_9

    .line 592
    const-string v18, "GalaxyFDSClientImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Retry the upload of object:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " bucket"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " upload id:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " part number:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " cause:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v5}, Lcom/xiaomi/infra/galaxy/fds/android/util/Util;->getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 598
    :cond_9
    if-eqz v13, :cond_1

    .line 600
    :try_start_b
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_2

    .line 601
    :catch_3
    move-exception v18

    goto/16 :goto_2

    .line 547
    .end local v5    # "e":Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
    .end local v13    # "responseContent":Ljava/io/InputStream;
    .end local v15    # "retriedTimes":I
    :catch_4
    move-exception v18

    goto/16 :goto_1

    .line 601
    .restart local v8    # "reader":Ljava/io/Reader;
    .restart local v11    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v12    # "response":Lorg/apache/http/HttpResponse;
    .restart local v13    # "responseContent":Ljava/io/InputStream;
    .restart local v14    # "result":Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;
    .restart local v15    # "retriedTimes":I
    :catch_5
    move-exception v18

    goto :goto_4

    .end local v8    # "reader":Ljava/io/Reader;
    .end local v11    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "result":Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;
    :catch_6
    move-exception v19

    goto/16 :goto_3
.end method


# virtual methods
.method public cancelPutObject()V
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->isCancel:Z

    .line 461
    return-void
.end method

.method public doesObjectExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 746
    const-string v5, "bucket name"

    invoke-static {p1, v5}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 747
    const-string v5, "bucket name"

    invoke-static {p1, v5}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 748
    const-string v5, "object name"

    invoke-static {p2, v5}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 749
    const-string v5, "object name"

    invoke-static {p2, v5}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 751
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v6}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getFdsServiceBaseUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 754
    .local v4, "uriString":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v5}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getCredential()Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;->HEAD:Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/xiaomi/infra/galaxy/fds/android/util/RequestFactory;->createRequest(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    .line 756
    .local v1, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    iget-object v5, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v5, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 757
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 758
    .local v3, "statusCode":I
    const/16 v5, 0xc8

    if-ne v3, v5, :cond_0

    .line 759
    const/4 v5, 0x1

    .line 761
    :goto_0
    return v5

    .line 760
    :cond_0
    const/16 v5, 0x194

    if-ne v3, v5, :cond_1

    .line 761
    const/4 v5, 0x0

    goto :goto_0

    .line 763
    :cond_1
    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to head object["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] from URI :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Cause:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    .end local v1    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v3    # "statusCode":I
    :catch_0
    move-exception v0

    .line 769
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to head object["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] from URI :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getObject(Ljava/lang/String;JLjava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;
    .locals 25
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p5, "listener"    # Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;",
            ")",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 187
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;>;"
    const-string v22, "URI"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    const-string v22, "offset in content"

    move-wide/from16 v0, p2

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNegative(JLjava/lang/String;)J

    .line 190
    if-eqz p4, :cond_2

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .local v4, "builder":Ljava/lang/StringBuilder;
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;

    .line 193
    .local v14, "param":Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;
    const-string v22, "?"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 194
    const/16 v22, 0x3f

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    :goto_1
    invoke-virtual {v14}, Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 196
    :cond_0
    const/16 v22, 0x26

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 200
    .end local v14    # "param":Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 206
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_0
    new-instance v21, Ljava/net/URI;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 207
    .local v21, "uri":Ljava/net/URI;
    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 208
    .local v15, "path":Ljava/lang/String;
    const/4 v6, 0x0

    .line 209
    .local v6, "firstSlashIndex":I
    const/16 v22, 0x2f

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v19

    .line 210
    .local v19, "secondSlashIndex":I
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 211
    new-instance v22, Ljava/net/URISyntaxException;

    const-string v23, "not a valid object URI"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v22
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v6    # "firstSlashIndex":I
    .end local v15    # "path":Ljava/lang/String;
    .end local v19    # "secondSlashIndex":I
    .end local v21    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v5

    .line 218
    .local v5, "e":Ljava/net/URISyntaxException;
    new-instance v22, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Invalid URI, can\'t parse bucket nameand object name form it:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22

    .line 215
    .end local v5    # "e":Ljava/net/URISyntaxException;
    .restart local v6    # "firstSlashIndex":I
    .restart local v15    # "path":Ljava/lang/String;
    .restart local v19    # "secondSlashIndex":I
    .restart local v21    # "uri":Ljava/net/URI;
    :cond_3
    :try_start_1
    move/from16 v0, v19

    invoke-virtual {v15, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "bucketName":Ljava/lang/String;
    add-int/lit8 v22, v19, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    .line 223
    .local v13, "objectName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 224
    .local v18, "responseContent":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 226
    .local v9, "lastException":Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
    :try_start_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 228
    .local v7, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v22, 0x0

    cmp-long v22, p2, v22

    if-lez v22, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->isGetThumbnail(Ljava/util/List;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 229
    const-string v22, "Range"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "bytes="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getCredential()Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;

    move-result-object v22

    sget-object v23, Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;->GET:Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2, v7}, Lcom/xiaomi/infra/galaxy/fds/android/util/RequestFactory;->createRequest(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;Lcom/xiaomi/infra/galaxy/fds/android/model/HttpMethod;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v16

    .line 233
    .local v16, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->httpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 234
    .local v17, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v18

    .line 235
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    .line 236
    .local v20, "statusCode":I
    const/16 v22, 0xc8

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    const/16 v22, 0xce

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 238
    new-instance v10, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unable to get object["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] from URI :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ". Cause:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    .end local v9    # "lastException":Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
    .local v10, "lastException":Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 252
    :catch_1
    move-exception v5

    .line 253
    .end local v7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    .end local v20    # "statusCode":I
    .local v5, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    new-instance v9, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unable to get object["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] from URI :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " Exception:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v5}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 257
    .end local v10    # "lastException":Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
    .restart local v9    # "lastException":Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 259
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v22

    :goto_3
    if-eqz v9, :cond_5

    if-eqz v18, :cond_5

    .line 261
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 264
    :cond_5
    :goto_4
    throw v22

    .line 245
    .restart local v7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v17    # "response":Lorg/apache/http/HttpResponse;
    .restart local v20    # "statusCode":I
    :cond_6
    :try_start_7
    new-instance v12, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;

    invoke-direct {v12, v3, v13}, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .local v12, "object":Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->parseObjectMetadata([Lorg/apache/http/Header;)Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

    move-result-object v11

    .line 248
    .local v11, "metadata":Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    new-instance v22, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v11, v2}, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;-><init>(Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)V

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;->setObjectContent(Ljava/io/InputStream;)V

    .line 250
    invoke-virtual {v12, v11}, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;->setObjectMetadata(Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 259
    if-eqz v9, :cond_7

    if-eqz v18, :cond_7

    .line 261
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 264
    :cond_7
    :goto_5
    return-object v12

    .line 262
    :catch_2
    move-exception v22

    goto :goto_5

    .end local v7    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "metadata":Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    .end local v12    # "object":Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;
    .end local v16    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    .end local v20    # "statusCode":I
    :catch_3
    move-exception v23

    goto :goto_4

    .line 259
    .end local v9    # "lastException":Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
    .restart local v10    # "lastException":Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
    :catchall_1
    move-exception v22

    move-object v9, v10

    .end local v10    # "lastException":Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
    .restart local v9    # "lastException":Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
    goto :goto_3

    .line 252
    :catch_4
    move-exception v5

    move-object v10, v9

    .end local v9    # "lastException":Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
    .restart local v10    # "lastException":Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
    goto :goto_2
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 146
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->getObject(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;
    .locals 7
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectName"    # Ljava/lang/String;
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;)",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 153
    .local p5, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->getObject(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;
    .locals 8
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectName"    # Ljava/lang/String;
    .param p3, "offset"    # J
    .param p6, "listener"    # Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;",
            ")",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 160
    .local p5, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->getObject(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;Z)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;Z)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;
    .locals 7
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectName"    # Ljava/lang/String;
    .param p3, "offset"    # J
    .param p6, "listener"    # Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;
    .param p7, "fromCdn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;",
            "Z)",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 168
    .local p5, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;>;"
    const-string v0, "bucket name"

    invoke-static {p1, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    const-string v0, "bucket name"

    invoke-static {p1, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 170
    const-string v0, "object name"

    invoke-static {p2, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    const-string v0, "object name"

    invoke-static {p2, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v6, "builder":Ljava/lang/StringBuilder;
    if-eqz p7, :cond_0

    .line 175
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v0}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getCdnServiceBaseUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->getObject(Ljava/lang/String;JLjava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;

    move-result-object v0

    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v0}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getFdsServiceBaseUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getObject(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    .locals 11
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "destinationFile"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;",
            ")",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 327
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;>;"
    const-string v0, "Destination file"

    invoke-static {p2, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 329
    const/4 v10, 0x0

    .line 330
    .local v10, "retriedTimes":I
    invoke-direct {p0, p3}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->isGetThumbnail(Ljava/util/List;)Z

    move-result v8

    .line 333
    .local v8, "isGetThumbnail":Z
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    if-nez v8, :cond_1

    const/4 v7, 0x1

    .line 334
    .local v7, "isAppend":Z
    :goto_1
    if-eqz v7, :cond_2

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->getObject(Ljava/lang/String;JLjava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;

    move-result-object v9

    .line 340
    .local v9, "object":Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;
    invoke-static {v9, p2, v7}, Lcom/xiaomi/infra/galaxy/fds/android/util/Util;->downloadObjectToFile(Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;Ljava/io/File;Z)V

    .line 341
    invoke-virtual {v9}, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;->getObjectMetadata()Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    :try_end_0
    .catch Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 333
    .end local v7    # "isAppend":Z
    .end local v9    # "object":Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 334
    .restart local v7    # "isAppend":Z
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2

    .line 342
    :catch_0
    move-exception v6

    .line 343
    .local v6, "e":Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
    add-int/lit8 v10, v10, 0x1

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v0}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getMaxRetryTimes()I

    move-result v0

    if-lt v10, v0, :cond_3

    .line 344
    throw v6

    .line 345
    :cond_3
    sget-boolean v0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->TEST_MODE:Z

    if-nez v0, :cond_0

    .line 346
    const-string v0, "GalaxyFDSClientImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry the download of object:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Lcom/xiaomi/infra/galaxy/fds/android/util/Util;->getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectName"    # Ljava/lang/String;
    .param p3, "destinationFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->getObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectName"    # Ljava/lang/String;
    .param p3, "destinationFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;)",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 279
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->getObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    .locals 7
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectName"    # Ljava/lang/String;
    .param p3, "destinationFile"    # Ljava/io/File;
    .param p5, "listener"    # Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;",
            ")",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 286
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->getObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;Z)Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;Z)Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    .locals 14
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectName"    # Ljava/lang/String;
    .param p3, "destinationFile"    # Ljava/io/File;
    .param p5, "listener"    # Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;
    .param p6, "fromCdn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;",
            "Z)",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 295
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;>;"
    const-string v1, "Destination file"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 297
    const/4 v13, 0x0

    .line 298
    .local v13, "retriedTimes":I
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->isGetThumbnail(Ljava/util/List;)Z

    move-result v11

    .line 301
    .local v11, "isGetThumbnail":Z
    :cond_0
    :goto_0
    if-eqz v13, :cond_1

    if-nez v11, :cond_1

    const/4 v10, 0x1

    .line 302
    .local v10, "isAppend":Z
    :goto_1
    if-eqz v10, :cond_2

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v4

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->getObject(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;Z)Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;

    move-result-object v12

    .line 308
    .local v12, "object":Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;
    move-object/from16 v0, p3

    invoke-static {v12, v0, v10}, Lcom/xiaomi/infra/galaxy/fds/android/util/Util;->downloadObjectToFile(Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;Ljava/io/File;Z)V

    .line 309
    invoke-virtual {v12}, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;->getObjectMetadata()Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    :try_end_0
    .catch Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 301
    .end local v10    # "isAppend":Z
    .end local v12    # "object":Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 302
    .restart local v10    # "isAppend":Z
    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 310
    :catch_0
    move-exception v9

    .line 311
    .local v9, "e":Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
    add-int/lit8 v13, v13, 0x1

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getMaxRetryTimes()I

    move-result v1

    if-lt v13, v1, :cond_3

    .line 312
    throw v9

    .line 313
    :cond_3
    sget-boolean v1, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->TEST_MODE:Z

    if-nez v1, :cond_0

    .line 314
    const-string v1, "GalaxyFDSClientImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry the download of object:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bucket"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Lcom/xiaomi/infra/galaxy/fds/android/util/Util;->getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public putObject(Ljava/lang/String;Ljava/io/File;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 707
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object v0

    return-object v0
.end method

.method public putObject(Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;)",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 713
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object v0

    return-object v0
.end method

.method public putObject(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;",
            ")",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 720
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object v0

    return-object v0
.end method

.method public putObject(Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "input"    # Ljava/io/InputStream;
    .param p3, "metadata"    # Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 726
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object v0

    return-object v0
.end method

.method public putObject(Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "input"    # Ljava/io/InputStream;
    .param p3, "metadata"    # Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;)",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 733
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object v0

    return-object v0
.end method

.method public putObject(Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 7
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "input"    # Ljava/io/InputStream;
    .param p3, "metadata"    # Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    .param p5, "listener"    # Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;",
            ")",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 740
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object v0

    return-object v0
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectName"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 357
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object v0

    return-object v0
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectName"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;)",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 363
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object v0

    return-object v0
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 8
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectName"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .param p5, "listener"    # Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;",
            ")",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 370
    .local p4, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;>;"
    const-string v0, "file"

    invoke-static {p3, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 373
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 374
    .local v3, "in":Ljava/io/InputStream;
    new-instance v4, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

    invoke-direct {v4}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;-><init>()V

    .line 375
    .local v4, "metadata":Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->setContentLength(J)V

    .line 376
    invoke-static {p3}, Lcom/xiaomi/infra/galaxy/fds/android/util/Util;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 377
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v0}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->setLastModified(Ljava/util/Date;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    move-object v6, p5

    .line 378
    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 380
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "metadata":Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    :catch_0
    move-exception v7

    .line 381
    .local v7, "e":Ljava/io/FileNotFoundException;
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find the file to be uploaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectName"    # Ljava/lang/String;
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "metadata"    # Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 391
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object v0

    return-object v0
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 7
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectName"    # Ljava/lang/String;
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "metadata"    # Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;)",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 398
    .local p5, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;

    move-result-object v0

    return-object v0
.end method

.method public putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    .locals 28
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectName"    # Ljava/lang/String;
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "metadata"    # Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    .param p6, "listener"    # Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;",
            ">;",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;",
            ")",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    .line 405
    .local p5, "params":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;>;"
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->isCancel:Z

    .line 406
    const-string v3, "bucket name"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 407
    const-string v3, "bucket name"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 408
    const-string v3, "input stream"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 409
    const-string v3, "metadata"

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 410
    invoke-virtual/range {p4 .. p4}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->getContentLength()J

    move-result-wide v18

    .line 411
    .local v18, "contentLength":J
    const-string v3, "content length"

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v3}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNegative(JLjava/lang/String;)J

    .line 413
    invoke-virtual/range {p4 .. p4}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 414
    sget-object v3, Lcom/xiaomi/infra/galaxy/fds/android/util/Consts;->APPLICATION_OCTET_STREAM:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 417
    :cond_0
    const/4 v4, 0x0

    .line 418
    .local v4, "uploadId":Ljava/lang/String;
    new-instance v8, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    invoke-direct {v8, v0, v1, v2}, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;-><init>(Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)V

    .line 421
    .local v8, "objectInputStream":Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->getContentLength()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->initMultipartUpload(Ljava/lang/String;Ljava/lang/String;J)Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;

    move-result-object v21

    .line 424
    .local v21, "initMultipartUploadResult":Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;
    invoke-virtual/range {v21 .. v21}, Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;->getObjectName()Ljava/lang/String;

    move-result-object p2

    .line 425
    invoke-virtual/range {v21 .. v21}, Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v4

    .line 426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->config:Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;

    invoke-virtual {v3}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->getUploadPartSize()I

    move-result v23

    .line 427
    .local v23, "partSize":I
    move/from16 v0, v23

    int-to-long v5, v0

    add-long v5, v5, v18

    const-wide/16 v11, 0x1

    sub-long/2addr v5, v11

    long-to-int v3, v5

    div-int v22, v3, v23

    .line 428
    .local v22, "numParts":I
    move-wide/from16 v24, v18

    .line 429
    .local v24, "remainingBytes":J
    new-instance v27, Ljava/util/ArrayList;

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 431
    .local v27, "results":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;>;"
    const/4 v7, 0x1

    .local v7, "partNumber":I
    :goto_0
    move/from16 v0, v22

    if-gt v7, v0, :cond_2

    .line 432
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->isCancel:Z
    :try_end_0
    .catch Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 433
    const/4 v3, 0x0

    .line 452
    :try_start_1
    invoke-virtual {v8}, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 455
    :goto_1
    return-object v3

    .line 435
    :cond_1
    move/from16 v0, v23

    int-to-long v5, v0

    :try_start_2
    move-wide/from16 v0, v24

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .local v9, "uploadBytes":J
    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 436
    invoke-direct/range {v3 .. v10}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->uploadPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;J)Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;

    move-result-object v26

    .line 438
    .local v26, "result":Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    sub-long v24, v24, v9

    .line 431
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 441
    .end local v9    # "uploadBytes":J
    .end local v26    # "result":Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;
    :cond_2
    new-instance v16, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResultList;

    invoke-direct/range {v16 .. v16}, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResultList;-><init>()V

    .line 442
    .local v16, "uploadPartResultList":Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResultList;
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResultList;->setUploadPartResultList(Ljava/util/List;)V

    move-object/from16 v11, p0

    move-object v12, v4

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    move-object/from16 v17, p5

    .line 443
    invoke-direct/range {v11 .. v17}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->completeMultipartUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResultList;Ljava/util/List;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
    :try_end_2
    .catch Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 452
    :try_start_3
    invoke-virtual {v8}, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 453
    :catch_0
    move-exception v5

    goto :goto_1

    .line 445
    .end local v7    # "partNumber":I
    .end local v16    # "uploadPartResultList":Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResultList;
    .end local v21    # "initMultipartUploadResult":Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;
    .end local v22    # "numParts":I
    .end local v23    # "partSize":I
    .end local v24    # "remainingBytes":J
    .end local v27    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;>;"
    :catch_1
    move-exception v20

    .line 446
    .local v20, "e":Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
    if-eqz v4, :cond_3

    .line 447
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->abortMultipartUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_3
    throw v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 451
    .end local v20    # "e":Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
    :catchall_0
    move-exception v3

    .line 452
    :try_start_5
    invoke-virtual {v8}, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 455
    :goto_2
    throw v3

    .line 453
    .restart local v7    # "partNumber":I
    .restart local v21    # "initMultipartUploadResult":Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;
    .restart local v22    # "numParts":I
    .restart local v23    # "partSize":I
    .restart local v24    # "remainingBytes":J
    .restart local v27    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;>;"
    :catch_2
    move-exception v5

    goto :goto_1

    .end local v7    # "partNumber":I
    .end local v21    # "initMultipartUploadResult":Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;
    .end local v22    # "numParts":I
    .end local v23    # "partSize":I
    .end local v24    # "remainingBytes":J
    .end local v27    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;>;"
    :catch_3
    move-exception v5

    goto :goto_2
.end method
