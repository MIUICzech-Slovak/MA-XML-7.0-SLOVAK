.class public Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;
.super Ljava/lang/Object;
.source "UploadPartResult.java"


# instance fields
.field private etag:Ljava/lang/String;

.field private partNumber:I

.field private partSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0
    .param p1, "partNumber"    # I
    .param p2, "partSize"    # J
    .param p4, "etag"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;->partNumber:I

    .line 12
    iput-object p4, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;->etag:Ljava/lang/String;

    .line 13
    iput-wide p2, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;->partSize:J

    .line 14
    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;->partNumber:I

    return v0
.end method

.method public getPartSize()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;->partSize:J

    return-wide v0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;->etag:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setPartNumber(I)V
    .locals 0
    .param p1, "partNumber"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;->partNumber:I

    .line 22
    return-void
.end method

.method public setPartSize(J)V
    .locals 0
    .param p1, "partSize"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;->partSize:J

    .line 38
    return-void
.end method
