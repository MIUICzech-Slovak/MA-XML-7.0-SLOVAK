.class public Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;
.super Ljava/lang/Object;
.source "InitMultipartUploadResult.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private objectName:Ljava/lang/String;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;->objectName:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;->uploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;->bucketName:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectName"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;->objectName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/InitMultipartUploadResult;->uploadId:Ljava/lang/String;

    .line 30
    return-void
.end method
