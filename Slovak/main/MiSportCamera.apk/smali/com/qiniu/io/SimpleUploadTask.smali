.class public Lcom/qiniu/io/SimpleUploadTask;
.super Lcom/qiniu/utils/UploadTask;
.source "SimpleUploadTask.java"


# direct methods
.method public constructor <init>(Lcom/qiniu/auth/Authorizer;Lcom/qiniu/utils/InputStreamAt;Ljava/lang/String;Lcom/qiniu/rs/PutExtra;Lcom/qiniu/rs/CallBack;)V
    .locals 0
    .param p1, "auth"    # Lcom/qiniu/auth/Authorizer;
    .param p2, "isa"    # Lcom/qiniu/utils/InputStreamAt;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "extra"    # Lcom/qiniu/rs/PutExtra;
    .param p5, "ret"    # Lcom/qiniu/rs/CallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/qiniu/utils/UploadTask;-><init>(Lcom/qiniu/auth/Authorizer;Lcom/qiniu/utils/InputStreamAt;Ljava/lang/String;Lcom/qiniu/rs/PutExtra;Lcom/qiniu/rs/CallBack;)V

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/qiniu/io/SimpleUploadTask;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/qiniu/io/SimpleUploadTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private buildHttpEntity()Lcom/qiniu/utils/MultipartEntity;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v1, Lcom/qiniu/utils/MultipartEntity;

    invoke-direct {v1}, Lcom/qiniu/utils/MultipartEntity;-><init>()V

    .line 57
    .local v1, "m":Lcom/qiniu/utils/MultipartEntity;
    iget-object v2, p0, Lcom/qiniu/io/SimpleUploadTask;->key:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 58
    const-string v2, "key"

    iget-object v3, p0, Lcom/qiniu/io/SimpleUploadTask;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/qiniu/utils/MultipartEntity;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/qiniu/io/SimpleUploadTask;->extra:Lcom/qiniu/rs/PutExtra;

    iget v2, v2, Lcom/qiniu/rs/PutExtra;->checkCrc:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 61
    iget-object v2, p0, Lcom/qiniu/io/SimpleUploadTask;->extra:Lcom/qiniu/rs/PutExtra;

    iget-object v3, p0, Lcom/qiniu/io/SimpleUploadTask;->orginIsa:Lcom/qiniu/utils/InputStreamAt;

    invoke-virtual {v3}, Lcom/qiniu/utils/InputStreamAt;->crc32()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/qiniu/rs/PutExtra;->crc32:J

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/qiniu/io/SimpleUploadTask;->extra:Lcom/qiniu/rs/PutExtra;

    iget v2, v2, Lcom/qiniu/rs/PutExtra;->checkCrc:I

    if-eqz v2, :cond_2

    .line 64
    const-string v2, "crc32"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qiniu/io/SimpleUploadTask;->extra:Lcom/qiniu/rs/PutExtra;

    iget-wide v4, v4, Lcom/qiniu/rs/PutExtra;->crc32:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/qiniu/utils/MultipartEntity;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_2
    iget-object v2, p0, Lcom/qiniu/io/SimpleUploadTask;->extra:Lcom/qiniu/rs/PutExtra;

    iget-object v2, v2, Lcom/qiniu/rs/PutExtra;->params:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    .line 67
    iget-object v2, p0, Lcom/qiniu/io/SimpleUploadTask;->extra:Lcom/qiniu/rs/PutExtra;

    iget-object v2, v2, Lcom/qiniu/rs/PutExtra;->params:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 74
    :cond_4
    const-string v2, "token"

    iget-object v3, p0, Lcom/qiniu/io/SimpleUploadTask;->auth:Lcom/qiniu/auth/Authorizer;

    invoke-virtual {v3}, Lcom/qiniu/auth/Authorizer;->getUploadToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/qiniu/utils/MultipartEntity;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "file"

    iget-object v3, p0, Lcom/qiniu/io/SimpleUploadTask;->extra:Lcom/qiniu/rs/PutExtra;

    iget-object v3, v3, Lcom/qiniu/rs/PutExtra;->mimeType:Ljava/lang/String;

    iget-object v4, p0, Lcom/qiniu/io/SimpleUploadTask;->orginIsa:Lcom/qiniu/utils/InputStreamAt;

    invoke-virtual {v4}, Lcom/qiniu/utils/InputStreamAt;->getFilename()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/qiniu/io/SimpleUploadTask;->orginIsa:Lcom/qiniu/utils/InputStreamAt;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/qiniu/utils/MultipartEntity;->addFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/utils/InputStreamAt;)V

    .line 78
    new-instance v2, Lcom/qiniu/io/SimpleUploadTask$1;

    invoke-direct {v2, p0}, Lcom/qiniu/io/SimpleUploadTask$1;-><init>(Lcom/qiniu/io/SimpleUploadTask;)V

    invoke-virtual {v1, v2}, Lcom/qiniu/utils/MultipartEntity;->setProcessNotify(Lcom/qiniu/utils/IOnProcess;)V

    .line 87
    return-object v1

    .line 67
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 68
    .local v0, "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "x:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/qiniu/utils/MultipartEntity;->addField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private upload(Ljava/lang/String;)Lcom/qiniu/rs/CallRet;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 43
    :try_start_0
    invoke-static {p1}, Lcom/qiniu/utils/Util;->newPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v3

    iput-object v3, p0, Lcom/qiniu/io/SimpleUploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    .line 44
    iget-object v3, p0, Lcom/qiniu/io/SimpleUploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0}, Lcom/qiniu/io/SimpleUploadTask;->buildHttpEntity()Lcom/qiniu/utils/MultipartEntity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 45
    invoke-virtual {p0}, Lcom/qiniu/io/SimpleUploadTask;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    iget-object v4, p0, Lcom/qiniu/io/SimpleUploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 46
    .local v1, "response":Lorg/apache/http/HttpResponse;
    invoke-static {v1}, Lcom/qiniu/utils/Util;->handleResult(Lorg/apache/http/HttpResponse;)Lcom/qiniu/rs/CallRet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 51
    .local v2, "ret":Lcom/qiniu/rs/CallRet;
    iput-object v5, p0, Lcom/qiniu/io/SimpleUploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    .line 49
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    .end local v2    # "ret":Lcom/qiniu/rs/CallRet;
    :goto_0
    return-object v2

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Lcom/qiniu/rs/CallRet;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-direct {v2, v3, v4, v0}, Lcom/qiniu/rs/CallRet;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    iput-object v5, p0, Lcom/qiniu/io/SimpleUploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 51
    iput-object v5, p0, Lcom/qiniu/io/SimpleUploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    .line 52
    throw v3
.end method


# virtual methods
.method protected varargs execDoInBackground([Ljava/lang/Object;)Lcom/qiniu/rs/CallRet;
    .locals 3
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 29
    sget-object v2, Lcom/qiniu/conf/Conf;->UP_HOST:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/qiniu/io/SimpleUploadTask;->upload(Ljava/lang/String;)Lcom/qiniu/rs/CallRet;

    move-result-object v1

    .line 30
    .local v1, "ret":Lcom/qiniu/rs/CallRet;
    invoke-static {v1}, Lcom/qiniu/utils/Util;->needChangeUpAdress(Lcom/qiniu/rs/CallRet;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    :try_start_0
    iget-object v2, p0, Lcom/qiniu/io/SimpleUploadTask;->orginIsa:Lcom/qiniu/utils/InputStreamAt;

    invoke-virtual {v2}, Lcom/qiniu/utils/InputStreamAt;->reset()V

    .line 33
    sget-object v2, Lcom/qiniu/conf/Conf;->UP_HOST2:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/qiniu/io/SimpleUploadTask;->upload(Ljava/lang/String;)Lcom/qiniu/rs/CallRet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 38
    :cond_0
    :goto_0
    return-object v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
