.class public Lcom/xiaomi/account/openauth/AuthorizeApi;
.super Ljava/lang/Object;
.source "AuthorizeApi.java"


# static fields
.field private static HOST:Ljava/lang/String; = null

.field private static HTTP_PROTOCOL:Ljava/lang/String; = null

.field private static METHOD_GET:Ljava/lang/String; = null

.field private static METHOD_POST:Ljava/lang/String; = null

.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "GET"

    sput-object v0, Lcom/xiaomi/account/openauth/AuthorizeApi;->METHOD_GET:Ljava/lang/String;

    .line 26
    const-string v0, "POST"

    sput-object v0, Lcom/xiaomi/account/openauth/AuthorizeApi;->METHOD_POST:Ljava/lang/String;

    .line 28
    const-string v0, "open.account.xiaomi.com"

    sput-object v0, Lcom/xiaomi/account/openauth/AuthorizeApi;->HOST:Ljava/lang/String;

    .line 30
    const-string v0, "https://"

    sput-object v0, Lcom/xiaomi/account/openauth/AuthorizeApi;->HTTP_PROTOCOL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doHttpGet(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "clientId"    # J
    .param p4, "accessToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v7, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "clientId"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "token"

    invoke-direct {v0, v1, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/account/openauth/AuthorizeApi;->HTTP_PROTOCOL:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/account/openauth/AuthorizeApi;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/xiaomi/account/openauth/AuthorizeHelper;->generateUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 51
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 52
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 49
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/account/openauth/utils/Network;->downloadXml(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 53
    :catch_0
    move-exception v6

    .line 54
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v0, Lcom/xiaomi/account/openauth/XMAuthericationException;

    invoke-direct {v0, v6}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 55
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v6

    .line 56
    .local v6, "e":Ljava/io/IOException;
    new-instance v0, Lcom/xiaomi/account/openauth/XMAuthericationException;

    invoke-direct {v0, v6}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static doHttpGet(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "clientId"    # J
    .param p4, "accessToken"    # Ljava/lang/String;
    .param p5, "macKey"    # Ljava/lang/String;
    .param p6, "macAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v8, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "clientId"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    invoke-direct {v1, v2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static {}, Lcom/xiaomi/account/openauth/AuthorizeHelper;->generateNonce()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "nonce":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/xiaomi/account/openauth/AuthorizeApi;->METHOD_GET:Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/account/openauth/AuthorizeApi;->HOST:Ljava/lang/String;

    .line 84
    const-string v3, "UTF-8"

    invoke-static {v8, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, p1

    move-object v5, p5

    move-object/from16 v6, p6

    .line 82
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/account/openauth/AuthorizeHelper;->getMacAccessTokenSignatureString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, "signature":Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaomi/account/openauth/AuthorizeApi;->HTTP_PROTOCOL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/xiaomi/account/openauth/AuthorizeApi;->HOST:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/xiaomi/account/openauth/AuthorizeHelper;->generateUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 87
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 88
    invoke-static {p4, v0, v9}, Lcom/xiaomi/account/openauth/AuthorizeHelper;->buildMacRequestHead(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    .line 85
    invoke-static/range {v1 .. v6}, Lcom/xiaomi/account/openauth/utils/Network;->downloadXml(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    return-object v1

    .line 89
    .end local v9    # "signature":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 90
    .local v7, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Lcom/xiaomi/account/openauth/XMAuthericationException;

    invoke-direct {v1, v7}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 91
    .end local v7    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v7

    .line 92
    .local v7, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lcom/xiaomi/account/openauth/XMAuthericationException;

    invoke-direct {v1, v7}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 93
    .end local v7    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v7

    .line 94
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/xiaomi/account/openauth/XMAuthericationException;

    invoke-direct {v1, v7}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 95
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v7

    .line 96
    .local v7, "e":Ljava/io/IOException;
    new-instance v1, Lcom/xiaomi/account/openauth/XMAuthericationException;

    invoke-direct {v1, v7}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static doHttpPost(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "clientId"    # J
    .param p4, "accessToken"    # Ljava/lang/String;
    .param p5, "macKey"    # Ljava/lang/String;
    .param p6, "macAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v9, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "clientId"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "token"

    invoke-direct {v1, v2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-static {}, Lcom/xiaomi/account/openauth/AuthorizeHelper;->generateNonce()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "nonce":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/xiaomi/account/openauth/AuthorizeApi;->METHOD_POST:Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/account/openauth/AuthorizeApi;->HOST:Ljava/lang/String;

    .line 124
    const-string v3, "UTF-8"

    invoke-static {v9, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 122
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/account/openauth/AuthorizeHelper;->getMacAccessTokenSignatureString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 125
    .local v10, "signature":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/account/openauth/AuthorizeApi;->HTTP_PROTOCOL:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/account/openauth/AuthorizeApi;->HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-static {p4, v0, v10}, Lcom/xiaomi/account/openauth/AuthorizeHelper;->buildMacRequestHead(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 127
    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, v9

    .line 125
    invoke-static/range {v1 .. v7}, Lcom/xiaomi/account/openauth/utils/Network;->doHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    return-object v1

    .line 128
    .end local v10    # "signature":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 129
    .local v8, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Lcom/xiaomi/account/openauth/XMAuthericationException;

    invoke-direct {v1, v8}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 130
    .end local v8    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v8

    .line 131
    .local v8, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lcom/xiaomi/account/openauth/XMAuthericationException;

    invoke-direct {v1, v8}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 132
    .end local v8    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v8

    .line 133
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/xiaomi/account/openauth/XMAuthericationException;

    invoke-direct {v1, v8}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 134
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v8

    .line 135
    .local v8, "e":Ljava/io/IOException;
    new-instance v1, Lcom/xiaomi/account/openauth/XMAuthericationException;

    invoke-direct {v1, v8}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
