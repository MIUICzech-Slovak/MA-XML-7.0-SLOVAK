.class public Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
.super Ljava/lang/Object;
.source "PutObjectResult.java"


# instance fields
.field private accessKeyId:Ljava/lang/String;

.field private bucketName:Ljava/lang/String;

.field private cdnServiceBaseUri:Ljava/lang/String;

.field private expires:J

.field private fdsServiceBaseUri:Ljava/lang/String;

.field private objectName:Ljava/lang/String;

.field private signature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbsolutePresignedUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->fdsServiceBaseUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->getRelativePresignedUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->accessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getCdnPresignedUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->cdnServiceBaseUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->getRelativePresignedUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpires()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->expires:J

    return-wide v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->objectName:Ljava/lang/String;

    return-object v0
.end method

.method public getRelativePresignedUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->objectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GalaxyAccessKeyId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->accessKeyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Expires"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->expires:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessKeyId(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessKeyId"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->accessKeyId:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->bucketName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setCdnServiceBaseUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "cdnServiceBaseUri"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->cdnServiceBaseUri:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setExpires(J)V
    .locals 0
    .param p1, "expires"    # J

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->expires:J

    .line 85
    return-void
.end method

.method public setFdsServiceBaseUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "fdsServiceBaseUri"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->fdsServiceBaseUri:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectName"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->objectName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;->signature:Ljava/lang/String;

    .line 77
    return-void
.end method
