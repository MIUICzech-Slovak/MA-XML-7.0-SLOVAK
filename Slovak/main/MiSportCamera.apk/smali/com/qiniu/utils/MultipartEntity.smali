.class public Lcom/qiniu/utils/MultipartEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "MultipartEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/utils/MultipartEntity$FileInfo;,
        Lcom/qiniu/utils/MultipartEntity$FormPart;,
        Lcom/qiniu/utils/MultipartEntity$Multipart;,
        Lcom/qiniu/utils/MultipartEntity$StringFormPart;
    }
.end annotation


# instance fields
.field private volatile length:J

.field private mNotify:Lcom/qiniu/utils/IOnProcess;

.field private final mpart:Lcom/qiniu/utils/MultipartEntity$Multipart;

.field private volatile writed:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 24
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/qiniu/utils/MultipartEntity;->writed:J

    .line 25
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/qiniu/utils/MultipartEntity;->length:J

    .line 28
    new-instance v1, Lcom/qiniu/utils/MultipartEntity$Multipart;

    invoke-direct {v1}, Lcom/qiniu/utils/MultipartEntity$Multipart;-><init>()V

    iput-object v1, p0, Lcom/qiniu/utils/MultipartEntity;->mpart:Lcom/qiniu/utils/MultipartEntity$Multipart;

    .line 29
    iget-object v1, p0, Lcom/qiniu/utils/MultipartEntity;->mpart:Lcom/qiniu/utils/MultipartEntity$Multipart;

    invoke-virtual {v1}, Lcom/qiniu/utils/MultipartEntity$Multipart;->getBoundary()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "boundary":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "multipart/form-data; boundary="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object v1, p0, Lcom/qiniu/utils/MultipartEntity;->contentType:Lorg/apache/http/Header;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/qiniu/utils/MultipartEntity;)Lcom/qiniu/utils/IOnProcess;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/qiniu/utils/MultipartEntity;->mNotify:Lcom/qiniu/utils/IOnProcess;

    return-object v0
.end method

.method static synthetic access$1(Lcom/qiniu/utils/MultipartEntity;)J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/qiniu/utils/MultipartEntity;->writed:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/qiniu/utils/MultipartEntity;J)V
    .locals 0

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/qiniu/utils/MultipartEntity;->writed:J

    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/qiniu/utils/MultipartEntity;->mpart:Lcom/qiniu/utils/MultipartEntity$Multipart;

    new-instance v1, Lcom/qiniu/utils/MultipartEntity$StringFormPart;

    invoke-direct {v1, p0, p1, p2}, Lcom/qiniu/utils/MultipartEntity$StringFormPart;-><init>(Lcom/qiniu/utils/MultipartEntity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/qiniu/utils/MultipartEntity$Multipart;->add(Lcom/qiniu/utils/MultipartEntity$FormPart;)V

    .line 36
    return-void
.end method

.method public addFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/utils/InputStreamAt;)V
    .locals 7
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "isa"    # Lcom/qiniu/utils/InputStreamAt;

    .prologue
    .line 40
    iget-object v6, p0, Lcom/qiniu/utils/MultipartEntity;->mpart:Lcom/qiniu/utils/MultipartEntity$Multipart;

    new-instance v0, Lcom/qiniu/utils/MultipartEntity$FileInfo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/utils/MultipartEntity$FileInfo;-><init>(Lcom/qiniu/utils/MultipartEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/utils/InputStreamAt;)V

    invoke-virtual {v6, v0}, Lcom/qiniu/utils/MultipartEntity$Multipart;->add(Lcom/qiniu/utils/MultipartEntity$FormPart;)V

    .line 41
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 4

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/qiniu/utils/MultipartEntity;->length:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/qiniu/utils/MultipartEntity;->mpart:Lcom/qiniu/utils/MultipartEntity$Multipart;

    invoke-virtual {v0}, Lcom/qiniu/utils/MultipartEntity$Multipart;->getTotalLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qiniu/utils/MultipartEntity;->length:J

    .line 57
    :cond_0
    iget-wide v0, p0, Lcom/qiniu/utils/MultipartEntity;->length:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public setProcessNotify(Lcom/qiniu/utils/IOnProcess;)V
    .locals 0
    .param p1, "ret"    # Lcom/qiniu/utils/IOnProcess;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/qiniu/utils/MultipartEntity;->mNotify:Lcom/qiniu/utils/IOnProcess;

    .line 45
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/qiniu/utils/MultipartEntity;->mpart:Lcom/qiniu/utils/MultipartEntity$Multipart;

    invoke-virtual {v0, p1}, Lcom/qiniu/utils/MultipartEntity$Multipart;->writeTo(Ljava/io/OutputStream;)V

    .line 73
    return-void
.end method
