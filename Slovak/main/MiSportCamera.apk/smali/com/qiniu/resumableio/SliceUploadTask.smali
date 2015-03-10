.class public Lcom/qiniu/resumableio/SliceUploadTask;
.super Lcom/qiniu/utils/UploadTask;
.source "SliceUploadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/resumableio/SliceUploadTask$Block;,
        Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;
    }
.end annotation


# instance fields
.field private lastUploadBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qiniu/resumableio/SliceUploadTask$Block;",
            ">;"
        }
    .end annotation
.end field

.field private volatile uploadLength:J


# direct methods
.method public constructor <init>(Lcom/qiniu/auth/Authorizer;Lcom/qiniu/utils/InputStreamAt;Ljava/lang/String;Lcom/qiniu/rs/PutExtra;Lcom/qiniu/rs/CallBack;)V
    .locals 2
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
    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/qiniu/utils/UploadTask;-><init>(Lcom/qiniu/auth/Authorizer;Lcom/qiniu/utils/InputStreamAt;Ljava/lang/String;Lcom/qiniu/rs/PutExtra;Lcom/qiniu/rs/CallBack;)V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qiniu/resumableio/SliceUploadTask;->uploadLength:J

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/qiniu/resumableio/SliceUploadTask;J)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/qiniu/resumableio/SliceUploadTask;->addUpLength(J)V

    return-void
.end method

.method static synthetic access$1(Lcom/qiniu/resumableio/SliceUploadTask;Lorg/apache/http/client/methods/HttpPost;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/qiniu/resumableio/SliceUploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    return-void
.end method

.method static synthetic access$2(Lcom/qiniu/resumableio/SliceUploadTask;)Lorg/apache/http/client/methods/HttpPost;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/qiniu/resumableio/SliceUploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    return-object v0
.end method

.method static synthetic access$3(Lcom/qiniu/resumableio/SliceUploadTask;)Lcom/qiniu/auth/Authorizer;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/qiniu/resumableio/SliceUploadTask;->auth:Lcom/qiniu/auth/Authorizer;

    return-object v0
.end method

.method static synthetic access$4(Lcom/qiniu/resumableio/SliceUploadTask;)Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/qiniu/resumableio/SliceUploadTask;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method private addUpLength(J)V
    .locals 4
    .param p1, "len"    # J

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/qiniu/resumableio/SliceUploadTask;->uploadLength:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/qiniu/resumableio/SliceUploadTask;->uploadLength:J

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/qiniu/resumableio/SliceUploadTask;->uploadLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/qiniu/resumableio/SliceUploadTask;->contentLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/qiniu/resumableio/SliceUploadTask;->publishProgress([Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method private buildMkfileUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "lastHost"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/mkfile/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/qiniu/resumableio/SliceUploadTask;->contentLength:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "url":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/qiniu/resumableio/SliceUploadTask;->key:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 161
    const-string v2, "/key/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qiniu/resumableio/SliceUploadTask;->key:Ljava/lang/String;

    invoke-static {v3}, Lcom/qiniu/utils/Util;->urlsafeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_0
    iget-object v2, p0, Lcom/qiniu/resumableio/SliceUploadTask;->extra:Lcom/qiniu/rs/PutExtra;

    iget-object v2, v2, Lcom/qiniu/rs/PutExtra;->mimeType:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/qiniu/resumableio/SliceUploadTask;->extra:Lcom/qiniu/rs/PutExtra;

    iget-object v2, v2, Lcom/qiniu/rs/PutExtra;->mimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    const-string v2, "/mimeType/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qiniu/resumableio/SliceUploadTask;->extra:Lcom/qiniu/rs/PutExtra;

    iget-object v3, v3, Lcom/qiniu/rs/PutExtra;->mimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/qiniu/utils/Util;->urlsafeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/qiniu/resumableio/SliceUploadTask;->extra:Lcom/qiniu/rs/PutExtra;

    iget-object v2, v2, Lcom/qiniu/rs/PutExtra;->params:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 167
    iget-object v2, p0, Lcom/qiniu/resumableio/SliceUploadTask;->extra:Lcom/qiniu/rs/PutExtra;

    iget-object v2, v2, Lcom/qiniu/rs/PutExtra;->params:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 174
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 167
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 168
    .local v1, "xvar":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "x:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 169
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 170
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/qiniu/utils/Util;->urlsafeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getFromLastUploadedBlocks(I)Lcom/qiniu/resumableio/SliceUploadTask$Block;
    .locals 4
    .param p1, "idx"    # I

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v2, p0, Lcom/qiniu/resumableio/SliceUploadTask;->lastUploadBlocks:Ljava/util/List;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 118
    :goto_0
    return-object v0

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/qiniu/resumableio/SliceUploadTask;->lastUploadBlocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v1

    .line 118
    goto :goto_0

    .line 113
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/resumableio/SliceUploadTask$Block;

    .line 114
    .local v0, "block":Lcom/qiniu/resumableio/SliceUploadTask$Block;
    invoke-virtual {v0}, Lcom/qiniu/resumableio/SliceUploadTask$Block;->getIdx()I

    move-result v3

    if-ne p1, v3, :cond_1

    goto :goto_0
.end method

.method private mkCtx(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qiniu/resumableio/SliceUploadTask$Block;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "rets":Ljava/util/List;, "Ljava/util/List<Lcom/qiniu/resumableio/SliceUploadTask$Block;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 130
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/resumableio/SliceUploadTask$Block;

    .line 131
    .local v0, "ret":Lcom/qiniu/resumableio/SliceUploadTask$Block;
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/qiniu/resumableio/SliceUploadTask$Block;->getCtx()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private mkfile(Ljava/lang/String;Ljava/lang/String;I)Lcom/qiniu/rs/CallRet;
    .locals 8
    .param p1, "ctx"    # Ljava/lang/String;
    .param p2, "lastHost"    # Ljava/lang/String;
    .param p3, "time"    # I

    .prologue
    .line 138
    :try_start_0
    invoke-direct {p0, p2}, Lcom/qiniu/resumableio/SliceUploadTask;->buildMkfileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Lcom/qiniu/utils/Util;->newPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 140
    .local v1, "post":Lorg/apache/http/client/methods/HttpPost;
    const-string v5, "Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UpToken "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/qiniu/resumableio/SliceUploadTask;->auth:Lcom/qiniu/auth/Authorizer;

    invoke-virtual {v7}, Lcom/qiniu/auth/Authorizer;->getUploadToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v5, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 142
    invoke-virtual {p0}, Lcom/qiniu/resumableio/SliceUploadTask;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 143
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-static {v2}, Lcom/qiniu/utils/Util;->handleResult(Lorg/apache/http/HttpResponse;)Lcom/qiniu/rs/CallRet;

    move-result-object v3

    .line 145
    .local v3, "ret":Lcom/qiniu/rs/CallRet;
    invoke-virtual {v3}, Lcom/qiniu/rs/CallRet;->getStatusCode()I

    move-result v5

    const/16 v6, 0x243

    if-eq v5, v6, :cond_0

    invoke-virtual {v3}, Lcom/qiniu/rs/CallRet;->getStatusCode()I

    move-result v5

    div-int/lit8 v5, v5, 0x64

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 146
    if-lez p3, :cond_0

    .line 147
    add-int/lit8 v5, p3, -0x1

    invoke-direct {p0, p1, p2, v5}, Lcom/qiniu/resumableio/SliceUploadTask;->mkfile(Ljava/lang/String;Ljava/lang/String;I)Lcom/qiniu/rs/CallRet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 152
    .end local v1    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v3    # "ret":Lcom/qiniu/rs/CallRet;
    .end local v4    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    if-lez p3, :cond_1

    .line 152
    add-int/lit8 v5, p3, -0x1

    invoke-direct {p0, p1, p2, v5}, Lcom/qiniu/resumableio/SliceUploadTask;->mkfile(Ljava/lang/String;Ljava/lang/String;I)Lcom/qiniu/rs/CallRet;

    move-result-object v3

    goto :goto_0

    .line 154
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private mkfile(Ljava/util/List;)Lcom/qiniu/rs/CallRet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qiniu/resumableio/SliceUploadTask$Block;",
            ">;)",
            "Lcom/qiniu/rs/CallRet;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "rets":Ljava/util/List;, "Ljava/util/List<Lcom/qiniu/resumableio/SliceUploadTask$Block;>;"
    invoke-direct {p0, p1}, Lcom/qiniu/resumableio/SliceUploadTask;->mkCtx(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "ctx":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qiniu/resumableio/SliceUploadTask$Block;

    invoke-virtual {v2}, Lcom/qiniu/resumableio/SliceUploadTask$Block;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "lastHost":Ljava/lang/String;
    sget v2, Lcom/qiniu/conf/Conf;->CHUNK_TRY_TIMES:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/qiniu/resumableio/SliceUploadTask;->mkfile(Ljava/lang/String;Ljava/lang/String;I)Lcom/qiniu/rs/CallRet;

    move-result-object v2

    return-object v2
.end method

.method private upBlock(ILcom/qiniu/utils/InputStreamAt$Input;I)Lcom/qiniu/rs/ChunkUploadCallRet;
    .locals 4
    .param p1, "len"    # I
    .param p2, "data"    # Lcom/qiniu/utils/InputStreamAt$Input;
    .param p3, "time"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;

    invoke-direct {v0, p0, p1, p2}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;-><init>(Lcom/qiniu/resumableio/SliceUploadTask;ILcom/qiniu/utils/InputStreamAt$Input;)V

    .line 92
    .local v0, "blkUp":Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;
    invoke-virtual {v0}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->exec()Lcom/qiniu/rs/ChunkUploadCallRet;

    move-result-object v1

    .line 93
    .local v1, "chunkRet":Lcom/qiniu/rs/ChunkUploadCallRet;
    invoke-virtual {v1}, Lcom/qiniu/rs/ChunkUploadCallRet;->isOk()Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->getUpTotal()I

    move-result v2

    neg-int v2, v2

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/qiniu/resumableio/SliceUploadTask;->addUpLength(J)V

    .line 95
    invoke-virtual {v1}, Lcom/qiniu/rs/ChunkUploadCallRet;->getStatusCode()I

    move-result v2

    const/16 v3, 0x2bd

    if-ne v2, v3, :cond_0

    if-lez p3, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 97
    const/4 v1, 0x0

    .line 98
    add-int/lit8 v2, p3, -0x1

    invoke-direct {p0, p1, p2, v2}, Lcom/qiniu/resumableio/SliceUploadTask;->upBlock(ILcom/qiniu/utils/InputStreamAt$Input;I)Lcom/qiniu/rs/ChunkUploadCallRet;

    move-result-object v2

    .line 101
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private uploadBlocks(Ljava/util/List;)Lcom/qiniu/rs/CallRet;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qiniu/resumableio/SliceUploadTask$Block;",
            ">;)",
            "Lcom/qiniu/rs/CallRet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "blks":Ljava/util/List;, "Ljava/util/List<Lcom/qiniu/resumableio/SliceUploadTask$Block;>;"
    iget-object v2, p0, Lcom/qiniu/resumableio/SliceUploadTask;->orginIsa:Lcom/qiniu/utils/InputStreamAt;

    invoke-virtual {v2}, Lcom/qiniu/utils/InputStreamAt;->length()J

    move-result-wide v11

    .line 62
    .local v11, "len":J
    const-wide/32 v2, 0x400000

    add-long/2addr v2, v11

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x400000

    div-long/2addr v2, v4

    long-to-int v7, v2

    .line 64
    .local v7, "blkCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v7, :cond_1

    .line 86
    const/4 v8, 0x0

    :cond_0
    return-object v8

    .line 65
    :cond_1
    const-wide/32 v2, 0x400000

    const/high16 v4, 0x400000

    mul-int/2addr v4, v1

    int-to-long v4, v4

    sub-long v4, v11, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v10, v2

    .line 66
    .local v10, "l":I
    invoke-direct {p0, v1}, Lcom/qiniu/resumableio/SliceUploadTask;->getFromLastUploadedBlocks(I)Lcom/qiniu/resumableio/SliceUploadTask$Block;

    move-result-object v6

    .line 67
    .local v6, "blk":Lcom/qiniu/resumableio/SliceUploadTask$Block;
    iget-object v2, p0, Lcom/qiniu/resumableio/SliceUploadTask;->orginIsa:Lcom/qiniu/utils/InputStreamAt;

    invoke-virtual {v2, v10}, Lcom/qiniu/utils/InputStreamAt;->readNext(I)Lcom/qiniu/utils/InputStreamAt$Input;

    move-result-object v9

    .line 68
    .local v9, "data":Lcom/qiniu/utils/InputStreamAt$Input;
    if-eqz v6, :cond_2

    .line 69
    const/4 v9, 0x0

    .line 70
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    int-to-long v2, v10

    invoke-direct {p0, v2, v3}, Lcom/qiniu/resumableio/SliceUploadTask;->addUpLength(J)V

    .line 64
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_2
    sget v2, Lcom/qiniu/conf/Conf;->CHUNK_TRY_TIMES:I

    invoke-direct {p0, v10, v9, v2}, Lcom/qiniu/resumableio/SliceUploadTask;->upBlock(ILcom/qiniu/utils/InputStreamAt$Input;I)Lcom/qiniu/rs/ChunkUploadCallRet;

    move-result-object v8

    .line 74
    .local v8, "chunkRet":Lcom/qiniu/rs/ChunkUploadCallRet;
    const/4 v9, 0x0

    .line 75
    invoke-virtual {v8}, Lcom/qiniu/rs/ChunkUploadCallRet;->isOk()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    new-instance v0, Lcom/qiniu/resumableio/SliceUploadTask$Block;

    invoke-virtual {v8}, Lcom/qiniu/rs/ChunkUploadCallRet;->getCtx()Ljava/lang/String;

    move-result-object v2

    int-to-long v3, v10

    invoke-virtual {v8}, Lcom/qiniu/rs/ChunkUploadCallRet;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/resumableio/SliceUploadTask$Block;-><init>(ILjava/lang/String;JLjava/lang/String;)V

    .line 79
    .local v0, "nblk":Lcom/qiniu/resumableio/SliceUploadTask$Block;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v2}, Lcom/qiniu/resumableio/SliceUploadTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method protected clean()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/qiniu/utils/UploadTask;->clean()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qiniu/resumableio/SliceUploadTask;->lastUploadBlocks:Ljava/util/List;

    .line 58
    return-void
.end method

.method protected varargs execDoInBackground([Ljava/lang/Object;)Lcom/qiniu/rs/CallRet;
    .locals 5
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 44
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v0, "blks":Ljava/util/List;, "Ljava/util/List<Lcom/qiniu/resumableio/SliceUploadTask$Block;>;"
    invoke-direct {p0, v0}, Lcom/qiniu/resumableio/SliceUploadTask;->uploadBlocks(Ljava/util/List;)Lcom/qiniu/rs/CallRet;

    move-result-object v2

    .line 46
    .local v2, "ret":Lcom/qiniu/rs/CallRet;
    if-nez v2, :cond_0

    .line 47
    invoke-direct {p0, v0}, Lcom/qiniu/resumableio/SliceUploadTask;->mkfile(Ljava/util/List;)Lcom/qiniu/rs/CallRet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 51
    .end local v0    # "blks":Ljava/util/List;, "Ljava/util/List<Lcom/qiniu/resumableio/SliceUploadTask$Block;>;"
    .end local v2    # "ret":Lcom/qiniu/rs/CallRet;
    :cond_0
    :goto_0
    return-object v2

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/qiniu/rs/CallRet;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/qiniu/rs/CallRet;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setLastUploadBlocks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qiniu/resumableio/SliceUploadTask$Block;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "blocks":Ljava/util/List;, "Ljava/util/List<Lcom/qiniu/resumableio/SliceUploadTask$Block;>;"
    iput-object p1, p0, Lcom/qiniu/resumableio/SliceUploadTask;->lastUploadBlocks:Ljava/util/List;

    .line 39
    return-void
.end method
