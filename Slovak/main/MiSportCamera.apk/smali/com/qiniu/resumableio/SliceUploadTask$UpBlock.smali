.class Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;
.super Ljava/lang/Object;
.source "SliceUploadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/resumableio/SliceUploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpBlock"
.end annotation


# instance fields
.field private blkData:Lcom/qiniu/utils/InputStreamAt$Input;

.field private final length:I

.field private volatile orginHost:Ljava/lang/String;

.field private task:Lcom/qiniu/resumableio/SliceUploadTask;

.field private volatile total:I


# direct methods
.method constructor <init>(Lcom/qiniu/resumableio/SliceUploadTask;ILcom/qiniu/utils/InputStreamAt$Input;)V
    .locals 1
    .param p1, "task"    # Lcom/qiniu/resumableio/SliceUploadTask;
    .param p2, "len"    # I
    .param p3, "isa"    # Lcom/qiniu/utils/InputStreamAt$Input;

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    sget-object v0, Lcom/qiniu/conf/Conf;->UP_HOST:Ljava/lang/String;

    iput-object v0, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->orginHost:Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->total:I

    .line 221
    iput-object p1, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->task:Lcom/qiniu/resumableio/SliceUploadTask;

    .line 222
    iput p2, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->length:I

    .line 223
    iput-object p3, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->blkData:Lcom/qiniu/utils/InputStreamAt$Input;

    .line 224
    return-void
.end method

.method private addContentLength(I)V
    .locals 3
    .param p1, "len"    # I

    .prologue
    .line 265
    iget v0, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->total:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->total:I

    .line 266
    iget-object v0, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->task:Lcom/qiniu/resumableio/SliceUploadTask;

    int-to-long v1, p1

    # invokes: Lcom/qiniu/resumableio/SliceUploadTask;->addUpLength(J)V
    invoke-static {v0, v1, v2}, Lcom/qiniu/resumableio/SliceUploadTask;->access$0(Lcom/qiniu/resumableio/SliceUploadTask;J)V

    .line 267
    return-void
.end method

.method private buildHttpEntity([B)Lorg/apache/http/HttpEntity;
    .locals 1
    .param p1, "isa"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 314
    .local v0, "en":Lorg/apache/http/entity/ByteArrayEntity;
    return-object v0
.end method

.method private checkAndRetryUpload(Ljava/lang/String;[BILcom/qiniu/rs/ChunkUploadCallRet;)Lcom/qiniu/rs/ChunkUploadCallRet;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "chunkData"    # [B
    .param p3, "time"    # I
    .param p4, "ret"    # Lcom/qiniu/rs/ChunkUploadCallRet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-virtual {p4}, Lcom/qiniu/rs/ChunkUploadCallRet;->isOk()Z

    move-result v2

    if-nez v2, :cond_1

    .line 320
    if-lez p3, :cond_0

    invoke-direct {p0, p4}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->needPutRetry(Lcom/qiniu/rs/ChunkUploadCallRet;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    add-int/lit8 v2, p3, -0x1

    invoke-direct {p0, p1, p2, v2}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->upload(Ljava/lang/String;[BI)Lcom/qiniu/rs/ChunkUploadCallRet;

    move-result-object p4

    .line 338
    .end local p4    # "ret":Lcom/qiniu/rs/ChunkUploadCallRet;
    :cond_0
    :goto_0
    return-object p4

    .line 328
    .restart local p4    # "ret":Lcom/qiniu/rs/ChunkUploadCallRet;
    :cond_1
    invoke-static {p2}, Lcom/qiniu/utils/Crc32;->calc([B)J

    move-result-wide v0

    .line 330
    .local v0, "crc32":J
    invoke-virtual {p4}, Lcom/qiniu/rs/ChunkUploadCallRet;->getCrc32()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 331
    if-lez p3, :cond_2

    .line 332
    add-int/lit8 v2, p3, -0x1

    invoke-direct {p0, p1, p2, v2}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->upload(Ljava/lang/String;[BI)Lcom/qiniu/rs/ChunkUploadCallRet;

    move-result-object p4

    goto :goto_0

    .line 335
    :cond_2
    new-instance p4, Lcom/qiniu/rs/ChunkUploadCallRet;

    .end local p4    # "ret":Lcom/qiniu/rs/ChunkUploadCallRet;
    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, "local\'s crc32 do not match."

    invoke-direct {p4, v2, v3, v4}, Lcom/qiniu/rs/ChunkUploadCallRet;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getBlkUrl(Lcom/qiniu/rs/ChunkUploadCallRet;)Ljava/lang/String;
    .locals 4
    .param p1, "ret"    # Lcom/qiniu/rs/ChunkUploadCallRet;

    .prologue
    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qiniu/rs/ChunkUploadCallRet;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/bput/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qiniu/rs/ChunkUploadCallRet;->getCtx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qiniu/rs/ChunkUploadCallRet;->getOffset()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "url":Ljava/lang/String;
    return-object v0
.end method

.method private getMkblkUrl(J)Ljava/lang/String;
    .locals 3
    .param p1, "blkLength"    # J

    .prologue
    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->orginHost:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/mkblk/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "url":Ljava/lang/String;
    return-object v0
.end method

.method private needPutRetry(Lcom/qiniu/rs/ChunkUploadCallRet;)Z
    .locals 2
    .param p1, "ret"    # Lcom/qiniu/rs/ChunkUploadCallRet;

    .prologue
    .line 346
    invoke-virtual {p1}, Lcom/qiniu/rs/ChunkUploadCallRet;->getStatusCode()I

    move-result v0

    const/16 v1, 0x196

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/qiniu/rs/ChunkUploadCallRet;->getStatusCode()I

    move-result v0

    const/16 v1, 0x3e4

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/qiniu/rs/ChunkUploadCallRet;->getStatusCode()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private upload(Ljava/lang/String;[BI)Lcom/qiniu/rs/ChunkUploadCallRet;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "chunkData"    # [B
    .param p3, "time"    # I

    .prologue
    const/4 v3, -0x1

    .line 295
    :try_start_0
    iget-object v4, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->task:Lcom/qiniu/resumableio/SliceUploadTask;

    invoke-virtual {v4}, Lcom/qiniu/resumableio/SliceUploadTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 296
    sget v4, Lcom/qiniu/conf/Conf;->CHUNK_TRY_TIMES:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr p3, v4

    .line 297
    new-instance v4, Lcom/qiniu/rs/ChunkUploadCallRet;

    const/4 v5, -0x1

    const-string v6, ""

    sget-object v7, Lcom/qiniu/conf/Conf;->PROCESS_MSG:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lcom/qiniu/rs/ChunkUploadCallRet;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_0
    return-object v4

    .line 299
    :cond_0
    iget-object v4, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->task:Lcom/qiniu/resumableio/SliceUploadTask;

    invoke-static {p1}, Lcom/qiniu/utils/Util;->newPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qiniu/resumableio/SliceUploadTask;->access$1(Lcom/qiniu/resumableio/SliceUploadTask;Lorg/apache/http/client/methods/HttpPost;)V

    .line 300
    iget-object v4, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->task:Lcom/qiniu/resumableio/SliceUploadTask;

    # getter for: Lcom/qiniu/resumableio/SliceUploadTask;->post:Lorg/apache/http/client/methods/HttpPost;
    invoke-static {v4}, Lcom/qiniu/resumableio/SliceUploadTask;->access$2(Lcom/qiniu/resumableio/SliceUploadTask;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v4

    const-string v5, "Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UpToken "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->task:Lcom/qiniu/resumableio/SliceUploadTask;

    # getter for: Lcom/qiniu/resumableio/SliceUploadTask;->auth:Lcom/qiniu/auth/Authorizer;
    invoke-static {v7}, Lcom/qiniu/resumableio/SliceUploadTask;->access$3(Lcom/qiniu/resumableio/SliceUploadTask;)Lcom/qiniu/auth/Authorizer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qiniu/auth/Authorizer;->getUploadToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v4, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->task:Lcom/qiniu/resumableio/SliceUploadTask;

    # getter for: Lcom/qiniu/resumableio/SliceUploadTask;->post:Lorg/apache/http/client/methods/HttpPost;
    invoke-static {v4}, Lcom/qiniu/resumableio/SliceUploadTask;->access$2(Lcom/qiniu/resumableio/SliceUploadTask;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->buildHttpEntity([B)Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 302
    iget-object v4, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->task:Lcom/qiniu/resumableio/SliceUploadTask;

    # invokes: Lcom/qiniu/resumableio/SliceUploadTask;->getHttpClient()Lorg/apache/http/client/HttpClient;
    invoke-static {v4}, Lcom/qiniu/resumableio/SliceUploadTask;->access$4(Lcom/qiniu/resumableio/SliceUploadTask;)Lorg/apache/http/client/HttpClient;

    move-result-object v4

    iget-object v5, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->task:Lcom/qiniu/resumableio/SliceUploadTask;

    # getter for: Lcom/qiniu/resumableio/SliceUploadTask;->post:Lorg/apache/http/client/methods/HttpPost;
    invoke-static {v5}, Lcom/qiniu/resumableio/SliceUploadTask;->access$2(Lcom/qiniu/resumableio/SliceUploadTask;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 303
    .local v1, "response":Lorg/apache/http/HttpResponse;
    new-instance v2, Lcom/qiniu/rs/ChunkUploadCallRet;

    invoke-static {v1}, Lcom/qiniu/utils/Util;->handleResult(Lorg/apache/http/HttpResponse;)Lcom/qiniu/rs/CallRet;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/qiniu/rs/ChunkUploadCallRet;-><init>(Lcom/qiniu/rs/CallRet;)V

    .line 305
    .local v2, "ret":Lcom/qiniu/rs/ChunkUploadCallRet;
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->checkAndRetryUpload(Ljava/lang/String;[BILcom/qiniu/rs/ChunkUploadCallRet;)Lcom/qiniu/rs/ChunkUploadCallRet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 306
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    .end local v2    # "ret":Lcom/qiniu/rs/ChunkUploadCallRet;
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->task:Lcom/qiniu/resumableio/SliceUploadTask;

    invoke-virtual {v4}, Lcom/qiniu/resumableio/SliceUploadTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    .local v3, "status":I
    :goto_1
    new-instance v4, Lcom/qiniu/rs/ChunkUploadCallRet;

    invoke-direct {v4, v3, v0}, Lcom/qiniu/rs/ChunkUploadCallRet;-><init>(ILjava/lang/Exception;)V

    goto :goto_0

    .line 307
    .end local v3    # "status":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private uploadChunk(Lcom/qiniu/rs/ChunkUploadCallRet;[B)Lcom/qiniu/rs/ChunkUploadCallRet;
    .locals 2
    .param p1, "ret"    # Lcom/qiniu/rs/ChunkUploadCallRet;
    .param p2, "chunkData"    # [B

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->getBlkUrl(Lcom/qiniu/rs/ChunkUploadCallRet;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "url":Ljava/lang/String;
    sget v1, Lcom/qiniu/conf/Conf;->CHUNK_TRY_TIMES:I

    invoke-direct {p0, v0, p2, v1}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->upload(Ljava/lang/String;[BI)Lcom/qiniu/rs/ChunkUploadCallRet;

    move-result-object v1

    return-object v1
.end method

.method private uploadMkblk(J[B)Lcom/qiniu/rs/ChunkUploadCallRet;
    .locals 1
    .param p1, "blkLength"    # J
    .param p3, "chunkData"    # [B

    .prologue
    .line 270
    sget v0, Lcom/qiniu/conf/Conf;->CHUNK_TRY_TIMES:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->uploadMkblk(J[BI)Lcom/qiniu/rs/ChunkUploadCallRet;

    move-result-object v0

    return-object v0
.end method

.method private uploadMkblk(J[BI)Lcom/qiniu/rs/ChunkUploadCallRet;
    .locals 4
    .param p1, "blkLength"    # J
    .param p3, "chunkData"    # [B
    .param p4, "time"    # I

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->getMkblkUrl(J)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "url":Ljava/lang/String;
    invoke-direct {p0, v1, p3, p4}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->upload(Ljava/lang/String;[BI)Lcom/qiniu/rs/ChunkUploadCallRet;

    move-result-object v0

    .line 276
    .local v0, "ret":Lcom/qiniu/rs/ChunkUploadCallRet;
    invoke-virtual {v0}, Lcom/qiniu/rs/ChunkUploadCallRet;->isOk()Z

    move-result v2

    if-nez v2, :cond_2

    .line 277
    invoke-static {v0}, Lcom/qiniu/utils/Util;->needChangeUpAdress(Lcom/qiniu/rs/CallRet;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    sget-object v2, Lcom/qiniu/conf/Conf;->UP_HOST:Ljava/lang/String;

    iget-object v3, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->orginHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/qiniu/conf/Conf;->UP_HOST2:Ljava/lang/String;

    :goto_0
    iput-object v2, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->orginHost:Ljava/lang/String;

    .line 280
    :cond_0
    if-lez p4, :cond_2

    .line 281
    const/4 v0, 0x0

    .line 282
    add-int/lit8 v2, p4, -0x1

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->uploadMkblk(J[BI)Lcom/qiniu/rs/ChunkUploadCallRet;

    move-result-object v2

    .line 285
    :goto_1
    return-object v2

    .line 278
    :cond_1
    sget-object v2, Lcom/qiniu/conf/Conf;->UP_HOST:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 285
    goto :goto_1
.end method


# virtual methods
.method exec()Lcom/qiniu/rs/ChunkUploadCallRet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->uploadChunk()Lcom/qiniu/rs/ChunkUploadCallRet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 230
    iput-object v1, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->blkData:Lcom/qiniu/utils/InputStreamAt$Input;

    .line 231
    iput-object v1, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->task:Lcom/qiniu/resumableio/SliceUploadTask;

    .line 232
    iput-object v1, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->orginHost:Ljava/lang/String;

    .line 228
    return-object v0

    .line 229
    :catchall_0
    move-exception v0

    .line 230
    iput-object v1, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->blkData:Lcom/qiniu/utils/InputStreamAt$Input;

    .line 231
    iput-object v1, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->task:Lcom/qiniu/resumableio/SliceUploadTask;

    .line 232
    iput-object v1, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->orginHost:Ljava/lang/String;

    .line 233
    throw v0
.end method

.method public getUpTotal()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->total:I

    return v0
.end method

.method uploadChunk()Lcom/qiniu/rs/ChunkUploadCallRet;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    sget v1, Lcom/qiniu/conf/Conf;->FIRST_CHUNK:I

    .line 238
    .local v1, "FIRST_CHUNK":I
    sget v0, Lcom/qiniu/conf/Conf;->CHUNK_SIZE:I

    .line 240
    .local v0, "CHUNK_SIZE":I
    iget v8, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->length:I

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 241
    .local v3, "flen":I
    iget v8, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->length:I

    int-to-long v8, v8

    iget-object v10, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->blkData:Lcom/qiniu/utils/InputStreamAt$Input;

    invoke-interface {v10, v3}, Lcom/qiniu/utils/InputStreamAt$Input;->readNext(I)[B

    move-result-object v10

    invoke-direct {p0, v8, v9, v10}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->uploadMkblk(J[B)Lcom/qiniu/rs/ChunkUploadCallRet;

    move-result-object v6

    .line 242
    .local v6, "ret":Lcom/qiniu/rs/ChunkUploadCallRet;
    invoke-virtual {v6}, Lcom/qiniu/rs/ChunkUploadCallRet;->isOk()Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v6

    .line 261
    :goto_0
    return-object v8

    .line 245
    :cond_0
    invoke-direct {p0, v3}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->addContentLength(I)V

    .line 246
    iget v8, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->length:I

    if-le v8, v1, :cond_1

    .line 247
    iget v8, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->length:I

    sub-int/2addr v8, v1

    add-int/2addr v8, v0

    add-int/lit8 v8, v8, -0x1

    div-int v2, v8, v0

    .line 248
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v2, :cond_2

    .end local v2    # "count":I
    .end local v4    # "i":I
    :cond_1
    move-object v8, v6

    .line 261
    goto :goto_0

    .line 249
    .restart local v2    # "count":I
    .restart local v4    # "i":I
    :cond_2
    iget-object v8, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->task:Lcom/qiniu/resumableio/SliceUploadTask;

    invoke-virtual {v8}, Lcom/qiniu/resumableio/SliceUploadTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 250
    new-instance v8, Lcom/qiniu/rs/ChunkUploadCallRet;

    const/4 v9, -0x1

    const-string v10, ""

    sget-object v11, Lcom/qiniu/conf/Conf;->PROCESS_MSG:Ljava/lang/String;

    invoke-direct {v8, v9, v10, v11}, Lcom/qiniu/rs/ChunkUploadCallRet;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_3
    mul-int v8, v0, v4

    add-int v7, v8, v1

    .line 253
    .local v7, "start":I
    iget v8, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->length:I

    sub-int/2addr v8, v7

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 254
    .local v5, "len":I
    iget-object v8, p0, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->blkData:Lcom/qiniu/utils/InputStreamAt$Input;

    invoke-interface {v8, v5}, Lcom/qiniu/utils/InputStreamAt$Input;->readNext(I)[B

    move-result-object v8

    invoke-direct {p0, v6, v8}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->uploadChunk(Lcom/qiniu/rs/ChunkUploadCallRet;[B)Lcom/qiniu/rs/ChunkUploadCallRet;

    move-result-object v6

    .line 255
    invoke-virtual {v6}, Lcom/qiniu/rs/ChunkUploadCallRet;->isOk()Z

    move-result v8

    if-nez v8, :cond_4

    move-object v8, v6

    .line 256
    goto :goto_0

    .line 258
    :cond_4
    invoke-direct {p0, v5}, Lcom/qiniu/resumableio/SliceUploadTask$UpBlock;->addContentLength(I)V

    .line 248
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
