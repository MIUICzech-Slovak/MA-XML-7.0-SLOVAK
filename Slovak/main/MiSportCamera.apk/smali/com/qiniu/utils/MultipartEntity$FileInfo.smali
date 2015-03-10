.class Lcom/qiniu/utils/MultipartEntity$FileInfo;
.super Ljava/lang/Object;
.source "MultipartEntity.java"

# interfaces
.implements Lcom/qiniu/utils/MultipartEntity$FormPart;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/utils/MultipartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileInfo"
.end annotation


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final filename:Ljava/lang/String;

.field private final isa:Lcom/qiniu/utils/InputStreamAt;

.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lcom/qiniu/utils/MultipartEntity;


# direct methods
.method public constructor <init>(Lcom/qiniu/utils/MultipartEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/utils/InputStreamAt;)V
    .locals 2
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "isa"    # Lcom/qiniu/utils/InputStreamAt;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/qiniu/utils/MultipartEntity$FileInfo;->this$0:Lcom/qiniu/utils/MultipartEntity;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p2, p0, Lcom/qiniu/utils/MultipartEntity$FileInfo;->name:Ljava/lang/String;

    .line 274
    invoke-direct {p0, p4, p5}, Lcom/qiniu/utils/MultipartEntity$FileInfo;->getFilename(Ljava/lang/String;Lcom/qiniu/utils/InputStreamAt;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qiniu/utils/MultipartEntity$FileInfo;->filename:Ljava/lang/String;

    .line 275
    iput-object p5, p0, Lcom/qiniu/utils/MultipartEntity$FileInfo;->isa:Lcom/qiniu/utils/InputStreamAt;

    .line 276
    move-object v0, p3

    .line 277
    .local v0, "tmp":Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 278
    :cond_0
    const-string v0, "application/octet-stream"

    .line 280
    :cond_1
    iput-object v0, p0, Lcom/qiniu/utils/MultipartEntity$FileInfo;->contentType:Ljava/lang/String;

    .line 281
    return-void
.end method

.method private getFilename(Ljava/lang/String;Lcom/qiniu/utils/InputStreamAt;)Ljava/lang/String;
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "isa"    # Lcom/qiniu/utils/InputStreamAt;

    .prologue
    .line 284
    if-eqz p1, :cond_0

    .line 291
    .end local p1    # "filename":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 287
    .restart local p1    # "filename":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lcom/qiniu/utils/InputStreamAt;->getFilename()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "fn":Ljava/lang/String;
    if-eqz v0, :cond_1

    move-object p1, v0

    .line 289
    goto :goto_0

    .line 291
    :cond_1
    const-string p1, "_null_"

    goto :goto_0
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/qiniu/utils/MultipartEntity$FileInfo;->isa:Lcom/qiniu/utils/InputStreamAt;

    invoke-virtual {v0}, Lcom/qiniu/utils/InputStreamAt;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/qiniu/utils/MultipartEntity$FileInfo;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/qiniu/utils/MultipartEntity$FileInfo;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/qiniu/utils/MultipartEntity$FileInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 12
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    iget-object v7, p0, Lcom/qiniu/utils/MultipartEntity$FileInfo;->isa:Lcom/qiniu/utils/InputStreamAt;

    invoke-virtual {v7}, Lcom/qiniu/utils/InputStreamAt;->length()J

    move-result-wide v5

    .line 318
    .local v5, "total":J
    sget v3, Lcom/qiniu/conf/Conf;->ONCE_WRITE_SIZE:I

    .line 319
    .local v3, "len":I
    const-wide/16 v1, 0x0

    .line 320
    .local v1, "idx":J
    :cond_0
    :goto_0
    cmp-long v7, v1, v5

    if-ltz v7, :cond_1

    .line 330
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 331
    return-void

    .line 321
    :cond_1
    int-to-long v7, v3

    sub-long v9, v5, v1

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v4, v7

    .line 322
    .local v4, "read":I
    iget-object v7, p0, Lcom/qiniu/utils/MultipartEntity$FileInfo;->isa:Lcom/qiniu/utils/InputStreamAt;

    invoke-virtual {v7, v4}, Lcom/qiniu/utils/InputStreamAt;->readNext(I)Lcom/qiniu/utils/InputStreamAt$Input;

    move-result-object v7

    invoke-interface {v7}, Lcom/qiniu/utils/InputStreamAt$Input;->readAll()[B

    move-result-object v0

    .line 323
    .local v0, "bs":[B
    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 324
    int-to-long v7, v4

    add-long/2addr v1, v7

    .line 325
    iget-object v7, p0, Lcom/qiniu/utils/MultipartEntity$FileInfo;->this$0:Lcom/qiniu/utils/MultipartEntity;

    # getter for: Lcom/qiniu/utils/MultipartEntity;->mNotify:Lcom/qiniu/utils/IOnProcess;
    invoke-static {v7}, Lcom/qiniu/utils/MultipartEntity;->access$0(Lcom/qiniu/utils/MultipartEntity;)Lcom/qiniu/utils/IOnProcess;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 326
    iget-object v7, p0, Lcom/qiniu/utils/MultipartEntity$FileInfo;->this$0:Lcom/qiniu/utils/MultipartEntity;

    # getter for: Lcom/qiniu/utils/MultipartEntity;->writed:J
    invoke-static {v7}, Lcom/qiniu/utils/MultipartEntity;->access$1(Lcom/qiniu/utils/MultipartEntity;)J

    move-result-wide v8

    int-to-long v10, v4

    add-long/2addr v8, v10

    invoke-static {v7, v8, v9}, Lcom/qiniu/utils/MultipartEntity;->access$2(Lcom/qiniu/utils/MultipartEntity;J)V

    .line 327
    iget-object v7, p0, Lcom/qiniu/utils/MultipartEntity$FileInfo;->this$0:Lcom/qiniu/utils/MultipartEntity;

    # getter for: Lcom/qiniu/utils/MultipartEntity;->mNotify:Lcom/qiniu/utils/IOnProcess;
    invoke-static {v7}, Lcom/qiniu/utils/MultipartEntity;->access$0(Lcom/qiniu/utils/MultipartEntity;)Lcom/qiniu/utils/IOnProcess;

    move-result-object v7

    iget-object v8, p0, Lcom/qiniu/utils/MultipartEntity$FileInfo;->this$0:Lcom/qiniu/utils/MultipartEntity;

    # getter for: Lcom/qiniu/utils/MultipartEntity;->writed:J
    invoke-static {v8}, Lcom/qiniu/utils/MultipartEntity;->access$1(Lcom/qiniu/utils/MultipartEntity;)J

    move-result-wide v8

    invoke-interface {v7, v8, v9, v5, v6}, Lcom/qiniu/utils/IOnProcess;->onProcess(JJ)V

    goto :goto_0
.end method
