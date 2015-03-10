.class public Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
.super Ljava/lang/Object;
.source "FDSClientConfiguration.java"


# static fields
.field public static final DEFAULT_CDN_SERVICE_URI:Ljava/lang/String; = "https://cdns.fds.api.xiaomi.com"

.field public static final DEFAULT_CONNECTION_TIMEOUT_MS:I = 0xc350

.field public static final DEFAULT_FDS_SERVICE_BASE_URI:Ljava/lang/String; = "https://files.fds.api.xiaomi.com"

.field public static final DEFAULT_MAX_RETRY_TIMES:I = 0x3

.field public static final DEFAULT_SOCKET_TIMEOUT_MS:I = 0xc350

.field public static final DEFAULT_UPLOAD_PART_SIZE:I = 0x1000


# instance fields
.field private cdnServiceBaseUri:Ljava/lang/String;

.field private connectionTimeoutMs:I

.field private credential:Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;

.field private fdsServiceBaseUri:Ljava/lang/String;

.field private maxRetryTimes:I

.field private socketReceiveBufferSizeHint:I

.field private socketSendBufferSizeHint:I

.field private socketTimeoutMs:I

.field private uploadPartSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const v1, 0xc350

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->socketTimeoutMs:I

    .line 50
    iput v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->connectionTimeoutMs:I

    .line 57
    iput v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->socketSendBufferSizeHint:I

    .line 64
    iput v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->socketReceiveBufferSizeHint:I

    .line 69
    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->maxRetryTimes:I

    .line 74
    const/16 v0, 0x1000

    iput v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->uploadPartSize:I

    .line 84
    const-string v0, "https://files.fds.api.xiaomi.com"

    iput-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->fdsServiceBaseUri:Ljava/lang/String;

    .line 89
    const-string v0, "https://cdns.fds.api.xiaomi.com"

    iput-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->cdnServiceBaseUri:Ljava/lang/String;

    return-void
.end method

.method private static trimTailingSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 382
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 386
    :cond_0
    return-object p0
.end method


# virtual methods
.method public getCdnServiceBaseUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->cdnServiceBaseUri:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionTimeoutMs()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->connectionTimeoutMs:I

    return v0
.end method

.method public getCredential()Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->credential:Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;

    return-object v0
.end method

.method public getFdsServiceBaseUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->fdsServiceBaseUri:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxRetryTimes()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->maxRetryTimes:I

    return v0
.end method

.method public getSocketBufferSizeHints()[I
    .locals 3

    .prologue
    .line 236
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->socketSendBufferSizeHint:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->socketReceiveBufferSizeHint:I

    aput v2, v0, v1

    return-object v0
.end method

.method public getSocketTimeoutMs()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->socketTimeoutMs:I

    return v0
.end method

.method public getUploadPartSize()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->uploadPartSize:I

    return v0
.end method

.method public setCdnServiceBaseUri(Ljava/lang/String;)V
    .locals 1
    .param p1, "cdnServiceBaseUri"    # Ljava/lang/String;

    .prologue
    .line 427
    const-string v0, "CDN service base URI"

    invoke-static {p1, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 428
    const-string v0, "CDN service base URI"

    invoke-static {p1, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 429
    invoke-static {p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->trimTailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->cdnServiceBaseUri:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setConnectionTimeoutMs(I)V
    .locals 0
    .param p1, "connectionTimeoutMs"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->connectionTimeoutMs:I

    .line 185
    return-void
.end method

.method public setCredential(Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;)V
    .locals 1
    .param p1, "credential"    # Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;

    .prologue
    .line 367
    const-string v0, "credential"

    invoke-static {p1, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 368
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->credential:Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;

    .line 369
    return-void
.end method

.method public setFdsServiceBaseUri(Ljava/lang/String;)V
    .locals 1
    .param p1, "fdsServiceBaseUri"    # Ljava/lang/String;

    .prologue
    .line 401
    const-string v0, "FDS service base URI"

    invoke-static {p1, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 402
    const-string v0, "FDS service base URI"

    invoke-static {p1, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 403
    invoke-static {p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->trimTailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->fdsServiceBaseUri:Ljava/lang/String;

    .line 404
    return-void
.end method

.method public setMaxRetryTimes(I)V
    .locals 1
    .param p1, "maxRetryTimes"    # I

    .prologue
    .line 102
    const-string v0, "max retry times"

    invoke-static {p1, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNegative(ILjava/lang/String;)I

    .line 103
    iput p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->maxRetryTimes:I

    .line 104
    return-void
.end method

.method public setSocketBufferSizeHints(II)V
    .locals 0
    .param p1, "socketSendBufferSizeHint"    # I
    .param p2, "socketReceiveBufferSizeHint"    # I

    .prologue
    .line 274
    iput p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->socketSendBufferSizeHint:I

    .line 275
    iput p2, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->socketReceiveBufferSizeHint:I

    .line 276
    return-void
.end method

.method public setSocketTimeoutMs(I)V
    .locals 0
    .param p1, "socketTimeoutMs"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->socketTimeoutMs:I

    .line 144
    return-void
.end method

.method public setUploadPartSize(I)V
    .locals 1
    .param p1, "uploadPartSize"    # I

    .prologue
    .line 337
    const-string v0, "upload part size"

    invoke-static {p1, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->positive(ILjava/lang/String;)I

    .line 338
    iput p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->uploadPartSize:I

    .line 339
    return-void
.end method

.method public withCdnServiceBaseUri(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0
    .param p1, "cdnServiceBaseUri"    # Ljava/lang/String;

    .prologue
    .line 437
    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setCdnServiceBaseUri(Ljava/lang/String;)V

    .line 438
    return-object p0
.end method

.method public withConnectionTimeoutMs(I)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0
    .param p1, "connectionTimeout"    # I

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setConnectionTimeoutMs(I)V

    .line 199
    return-object p0
.end method

.method public withCredential(Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0
    .param p1, "credential"    # Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setCredential(Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;)V

    .line 378
    return-object p0
.end method

.method public withFdsServiceBaseUri(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0
    .param p1, "fdsServiceBaseUri"    # Ljava/lang/String;

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setFdsServiceBaseUri(Ljava/lang/String;)V

    .line 413
    return-object p0
.end method

.method public withMaxRetryTimes(I)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0
    .param p1, "maxRetryTimes"    # I

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setMaxRetryTimes(I)V

    .line 116
    return-object p0
.end method

.method public withSocketBufferSizeHints(II)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0
    .param p1, "socketSendBufferSizeHint"    # I
    .param p2, "socketReceiveBufferSizeHint"    # I

    .prologue
    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setSocketBufferSizeHints(II)V

    .line 318
    return-object p0
.end method

.method public withSocketTimeoutMs(I)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0
    .param p1, "socketTimeout"    # I

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setSocketTimeoutMs(I)V

    .line 159
    return-object p0
.end method

.method public withUploadPartSize(I)Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;
    .locals 0
    .param p1, "uploadPartSize"    # I

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/xiaomi/infra/galaxy/fds/android/FDSClientConfiguration;->setUploadPartSize(I)V

    .line 352
    return-object p0
.end method
