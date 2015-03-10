.class Lcom/xiaomi/account/openauth/utils/Network$2;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/account/openauth/utils/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private certificates:[Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/xiaomi/account/openauth/utils/Network$2;->certificates:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 116
    iput-object p1, p0, Lcom/xiaomi/account/openauth/utils/Network$2;->certificates:[Ljava/security/cert/X509Certificate;

    .line 117
    const-string v0, "openauth"

    const-string v1, "init at checkClientTrusted."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "ax509certificate"    # [Ljava/security/cert/X509Certificate;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/xiaomi/account/openauth/utils/Network$2;->certificates:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 125
    iput-object p1, p0, Lcom/xiaomi/account/openauth/utils/Network$2;->certificates:[Ljava/security/cert/X509Certificate;

    .line 126
    const-string v0, "openauth"

    const-string v1, "init at checkServerTrusted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method
