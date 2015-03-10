.class public Lcom/xiaomi/infra/galaxy/fds/android/auth/SSOCredential;
.super Ljava/lang/Object;
.source "SSOCredential.java"

# interfaces
.implements Lcom/xiaomi/infra/galaxy/fds/android/auth/GalaxyFDSCredential;


# instance fields
.field private final HEADER_VALUE:Ljava/lang/String;

.field private final SERVICE_TOKEN_PARAM:Ljava/lang/String;

.field private final serviceToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceToken"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "SSO"

    iput-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/auth/SSOCredential;->HEADER_VALUE:Ljava/lang/String;

    .line 10
    const-string v0, "serviceToken"

    iput-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/auth/SSOCredential;->SERVICE_TOKEN_PARAM:Ljava/lang/String;

    .line 15
    const-string v0, "Service token"

    invoke-static {p1, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    const-string v0, "Service token"

    invoke-static {p1, v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 17
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/auth/SSOCredential;->serviceToken:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public addHeader(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;

    .prologue
    .line 22
    const-string v0, "Authorization"

    const-string v1, "SSO"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public addParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x3f

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    :goto_0
    const-string v1, "serviceToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/auth/SSOCredential;->serviceToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 31
    :cond_0
    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
