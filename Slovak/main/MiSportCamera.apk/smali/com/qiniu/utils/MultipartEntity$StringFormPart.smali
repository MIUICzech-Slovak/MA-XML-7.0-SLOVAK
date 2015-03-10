.class Lcom/qiniu/utils/MultipartEntity$StringFormPart;
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
    name = "StringFormPart"
.end annotation


# instance fields
.field private final content:[B

.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lcom/qiniu/utils/MultipartEntity;


# direct methods
.method public constructor <init>(Lcom/qiniu/utils/MultipartEntity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/qiniu/utils/MultipartEntity$StringFormPart;->this$0:Lcom/qiniu/utils/MultipartEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    invoke-static {p3}, Lcom/qiniu/utils/Util;->toByte(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/utils/MultipartEntity$StringFormPart;->content:[B

    .line 229
    iput-object p2, p0, Lcom/qiniu/utils/MultipartEntity$StringFormPart;->name:Ljava/lang/String;

    .line 230
    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/qiniu/utils/MultipartEntity$StringFormPart;->content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    const-string v0, "text/plain"

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/qiniu/utils/MultipartEntity$StringFormPart;->name:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 251
    const-string v4, "Output stream may not be null"

    .line 250
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 253
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/qiniu/utils/MultipartEntity$StringFormPart;->content:[B

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 254
    .local v0, "in":Ljava/io/InputStream;
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 256
    .local v2, "tmp":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 259
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 261
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_1
    return-void

    .line 257
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 261
    :catch_0
    move-exception v3

    goto :goto_1
.end method
