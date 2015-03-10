.class public Lcom/qiniu/utils/InputStreamAt$UriInput;
.super Lcom/qiniu/utils/InputStreamAt;
.source "InputStreamAt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/utils/InputStreamAt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UriInput"
.end annotation


# instance fields
.field private fileInput:Lcom/qiniu/utils/InputStreamAt$FileInput;

.field private is:Ljava/io/InputStream;

.field private uriInfo:Lcom/qiniu/utils/InputStreamAt$UriInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/qiniu/utils/InputStreamAt;-><init>()V

    .line 219
    new-instance v1, Lcom/qiniu/utils/InputStreamAt$UriInfo;

    invoke-direct {v1, p1, p2}, Lcom/qiniu/utils/InputStreamAt$UriInfo;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->uriInfo:Lcom/qiniu/utils/InputStreamAt$UriInfo;

    .line 220
    iget-object v1, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->uriInfo:Lcom/qiniu/utils/InputStreamAt$UriInfo;

    invoke-virtual {v1}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->getFile()Ljava/io/File;

    move-result-object v0

    .line 221
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    :try_start_0
    new-instance v1, Lcom/qiniu/utils/InputStreamAt$FileInput;

    invoke-direct {v1, v0}, Lcom/qiniu/utils/InputStreamAt$FileInput;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->fileInput:Lcom/qiniu/utils/InputStreamAt$FileInput;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/qiniu/utils/InputStreamAt$UriInput;I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/qiniu/utils/InputStreamAt$UriInput;->readNextContent(I)[B

    move-result-object v0

    return-object v0
.end method

.method private genIs()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->fileInput:Lcom/qiniu/utils/InputStreamAt$FileInput;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->is:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->uriInfo:Lcom/qiniu/utils/InputStreamAt$UriInfo;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->uriInfo:Lcom/qiniu/utils/InputStreamAt$UriInfo;

    invoke-virtual {v0}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->getIs()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->is:Ljava/io/InputStream;

    .line 234
    :cond_0
    return-void
.end method

.method private readNextContent(I)[B
    .locals 6
    .param p1, "l"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    iget-wide v2, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->outterOffset:J

    invoke-virtual {p0}, Lcom/qiniu/utils/InputStreamAt$UriInput;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 322
    :goto_0
    return-object v0

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/qiniu/utils/InputStreamAt$UriInput;->genIs()V

    .line 315
    move v1, p1

    .line 316
    .local v1, "len":I
    int-to-long v2, v1

    iget-wide v4, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->outterOffset:J

    add-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/qiniu/utils/InputStreamAt$UriInput;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/qiniu/utils/InputStreamAt$UriInput;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->outterOffset:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    .line 319
    :cond_1
    new-array v0, v1, [B

    .line 320
    .local v0, "bs":[B
    iget-object v2, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->is:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 321
    iget-wide v2, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->outterOffset:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->outterOffset:J

    goto :goto_0
.end method


# virtual methods
.method public crc32()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v1, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->fileInput:Lcom/qiniu/utils/InputStreamAt$FileInput;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->fileInput:Lcom/qiniu/utils/InputStreamAt$FileInput;

    invoke-virtual {v1}, Lcom/qiniu/utils/InputStreamAt$FileInput;->crc32()J

    move-result-wide v1

    .line 249
    :goto_0
    return-wide v1

    .line 248
    :cond_0
    new-instance v0, Lcom/qiniu/utils/InputStreamAt$UriInfo;

    iget-object v1, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->uriInfo:Lcom/qiniu/utils/InputStreamAt$UriInfo;

    invoke-virtual {v1}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->uriInfo:Lcom/qiniu/utils/InputStreamAt$UriInfo;

    invoke-virtual {v2}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/qiniu/utils/InputStreamAt$UriInfo;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 249
    .local v0, "info":Lcom/qiniu/utils/InputStreamAt$UriInfo;
    invoke-virtual {v0}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->getIs()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/qiniu/utils/Crc32;->calc(Ljava/io/InputStream;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public doClose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->uriInfo:Lcom/qiniu/utils/InputStreamAt$UriInfo;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->uriInfo:Lcom/qiniu/utils/InputStreamAt$UriInfo;

    invoke-virtual {v0}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->close()V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->fileInput:Lcom/qiniu/utils/InputStreamAt$FileInput;

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->fileInput:Lcom/qiniu/utils/InputStreamAt$FileInput;

    invoke-virtual {v0}, Lcom/qiniu/utils/InputStreamAt$FileInput;->close()V

    .line 275
    :cond_2
    iput-object v1, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->is:Ljava/io/InputStream;

    .line 276
    iput-object v1, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->uriInfo:Lcom/qiniu/utils/InputStreamAt$UriInfo;

    .line 277
    iput-object v1, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->fileInput:Lcom/qiniu/utils/InputStreamAt$FileInput;

    .line 278
    return-void

    .line 266
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->uriInfo:Lcom/qiniu/utils/InputStreamAt$UriInfo;

    invoke-virtual {v0}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->uriInfo:Lcom/qiniu/utils/InputStreamAt$UriInfo;

    invoke-virtual {v0}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method protected read(JI)[B
    .locals 1
    .param p1, "offset"    # J
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public readNext(I)Lcom/qiniu/utils/InputStreamAt$Input;
    .locals 1
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->fileInput:Lcom/qiniu/utils/InputStreamAt$FileInput;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->fileInput:Lcom/qiniu/utils/InputStreamAt$FileInput;

    invoke-virtual {v0, p1}, Lcom/qiniu/utils/InputStreamAt$FileInput;->readNext(I)Lcom/qiniu/utils/InputStreamAt$Input;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/qiniu/utils/InputStreamAt$UriInput$1;

    invoke-direct {v0, p0, p1}, Lcom/qiniu/utils/InputStreamAt$UriInput$1;-><init>(Lcom/qiniu/utils/InputStreamAt$UriInput;I)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-super {p0}, Lcom/qiniu/utils/InputStreamAt;->reset()V

    .line 255
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->fileInput:Lcom/qiniu/utils/InputStreamAt$FileInput;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->fileInput:Lcom/qiniu/utils/InputStreamAt$FileInput;

    invoke-virtual {v0}, Lcom/qiniu/utils/InputStreamAt$FileInput;->reset()V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->uriInfo:Lcom/qiniu/utils/InputStreamAt$UriInfo;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->uriInfo:Lcom/qiniu/utils/InputStreamAt$UriInfo;

    invoke-virtual {v0}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->reset()V

    .line 259
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->outterOffset:J

    .line 260
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->uriInfo:Lcom/qiniu/utils/InputStreamAt$UriInfo;

    invoke-virtual {v0}, Lcom/qiniu/utils/InputStreamAt$UriInfo;->getIs()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput;->is:Ljava/io/InputStream;

    goto :goto_0
.end method
