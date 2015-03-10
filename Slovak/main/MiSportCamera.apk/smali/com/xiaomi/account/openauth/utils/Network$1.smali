.class Lcom/xiaomi/account/openauth/utils/Network$1;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/account/openauth/utils/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "sslsession"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 100
    const-string v0, "openauth"

    const-string v1, "WARNING: Hostname is not matched for cert."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x1

    return v0
.end method
