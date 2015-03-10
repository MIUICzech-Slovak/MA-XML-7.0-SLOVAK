.class public Lcom/xiaomi/account/openauth/utils/Network;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/account/openauth/utils/Network$DoneHandlerInputStream;,
        Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;,
        Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;,
        Lcom/xiaomi/account/openauth/utils/Network$PostDownloadHandler;
    }
.end annotation


# static fields
.field public static final CMWAP_GATEWAY:Ljava/lang/String; = "10.0.0.172"

.field public static final CMWAP_HEADER_HOST_KEY:Ljava/lang/String; = "X-Online-Host"

.field public static final CMWAP_PORT:I = 0x50

.field public static final CONNECTION_TIMEOUT:I = 0x2710

.field public static final ContentTypePattern_Charset:Ljava/util/regex/Pattern;

.field public static final ContentTypePattern_MimeType:Ljava/util/regex/Pattern;

.field public static final ContentTypePattern_XmlEncoding:Ljava/util/regex/Pattern;

.field private static final LogTag:Ljava/lang/String; = "com.xiaomi.common.Network"

.field private static final NETWORK_ERROR_OK:I = 0xc8

.field public static final NETWORK_TYPE_3GNET:Ljava/lang/String; = "3gnet"

.field public static final NETWORK_TYPE_3GWAP:Ljava/lang/String; = "3gwap"

.field public static final NETWORK_TYPE_CHINATELECOM:Ljava/lang/String; = "#777"

.field public static final NETWORK_TYPE_WIFI:Ljava/lang/String; = "wifi"

.field public static final READ_TIMEOUT:I = 0x3a98

.field public static final RESPONSE_BODY:Ljava/lang/String; = "RESPONSE_BODY"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final UserAgent_PC_Chrome:Ljava/lang/String; = "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.464.0 Safari/534.3"

.field public static final UserAgent_PC_Chrome_6_0_464_0:Ljava/lang/String; = "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.464.0 Safari/534.3"

.field private static ignoreCertificationTrustManger:Ljavax/net/ssl/TrustManager;

.field private static ignoreHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 98
    new-instance v0, Lcom/xiaomi/account/openauth/utils/Network$1;

    invoke-direct {v0}, Lcom/xiaomi/account/openauth/utils/Network$1;-><init>()V

    sput-object v0, Lcom/xiaomi/account/openauth/utils/Network;->ignoreHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 108
    new-instance v0, Lcom/xiaomi/account/openauth/utils/Network$2;

    invoke-direct {v0}, Lcom/xiaomi/account/openauth/utils/Network$2;-><init>()V

    sput-object v0, Lcom/xiaomi/account/openauth/utils/Network;->ignoreCertificationTrustManger:Ljavax/net/ssl/TrustManager;

    .line 426
    const-string v0, "([^\\s;]+)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/account/openauth/utils/Network;->ContentTypePattern_MimeType:Ljava/util/regex/Pattern;

    .line 429
    const-string v0, "(.*?charset\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)"

    .line 428
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/account/openauth/utils/Network;->ContentTypePattern_Charset:Ljava/util/regex/Pattern;

    .line 432
    const-string v0, "(\\<\\?xml\\s+.*?encoding\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)"

    .line 431
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/account/openauth/utils/Network;->ContentTypePattern_XmlEncoding:Ljava/util/regex/Pattern;

    .line 588
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginDownloadFile(Ljava/lang/String;Ljava/io/OutputStream;Landroid/content/Context;ZLcom/xiaomi/account/openauth/utils/Network$PostDownloadHandler;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bOnlyWifi"    # Z
    .param p4, "handler"    # Lcom/xiaomi/account/openauth/utils/Network$PostDownloadHandler;

    .prologue
    .line 773
    new-instance v0, Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;-><init>(Ljava/lang/String;Ljava/io/OutputStream;Lcom/xiaomi/account/openauth/utils/Network$PostDownloadHandler;ZLandroid/content/Context;)V

    .line 774
    .local v0, "task":Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 775
    return-void
.end method

.method public static beginDownloadFile(Ljava/lang/String;Ljava/io/OutputStream;Lcom/xiaomi/account/openauth/utils/Network$PostDownloadHandler;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "handler"    # Lcom/xiaomi/account/openauth/utils/Network$PostDownloadHandler;

    .prologue
    .line 767
    new-instance v0, Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;-><init>(Ljava/lang/String;Ljava/io/OutputStream;Lcom/xiaomi/account/openauth/utils/Network$PostDownloadHandler;)V

    .line 768
    .local v0, "task":Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 769
    return-void
.end method

.method public static doHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v3, 0x0

    .line 664
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/account/openauth/utils/Network;->doHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static doHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "responseHdrs"    # Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;
    .param p5, "userAgent"    # Ljava/lang/String;
    .param p6, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 671
    .local p2, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p3, "requestHdrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 672
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "url"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 674
    :cond_0
    sget-object v20, Lcom/xiaomi/account/openauth/utils/Network;->ignoreHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static/range {v20 .. v20}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 676
    new-instance v20, Ljava/net/URL;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/xiaomi/account/openauth/utils/Network;->getHttpUrlConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 677
    .local v4, "conn":Ljava/net/HttpURLConnection;
    const/16 v20, 0x2710

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 678
    const/16 v20, 0x3a98

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 679
    const-string v20, "POST"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 681
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    .line 682
    sget-object v21, Lcom/xiaomi/account/openauth/utils/Network;->ignoreCertificationTrustManger:Ljavax/net/ssl/TrustManager;

    aput-object v21, v18, v20

    .line 684
    .local v18, "tm":[Ljavax/net/ssl/TrustManager;
    const/4 v13, 0x0

    .line 686
    .local v13, "sslContext":Ljavax/net/ssl/SSLContext;
    :try_start_0
    const-string v20, "SSL"

    invoke-static/range {v20 .. v20}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v13

    .line 687
    const/16 v20, 0x0

    new-instance v21, Ljava/security/SecureRandom;

    invoke-direct/range {v21 .. v21}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v13, v0, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 694
    :goto_0
    invoke-virtual {v13}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v12

    .local v12, "ssf":Ljavax/net/ssl/SSLSocketFactory;
    move-object/from16 v20, v4

    .line 695
    check-cast v20, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 697
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 698
    const-string v20, "User-Agent"

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    :cond_1
    if-eqz p6, :cond_2

    .line 701
    const-string v20, "Cookie"

    move-object/from16 v0, v20

    move-object/from16 v1, p6

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_2
    if-eqz p3, :cond_3

    .line 705
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_4

    .line 710
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/xiaomi/account/openauth/utils/Network;->fromParamListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    .line 711
    .local v15, "strParams":Ljava/lang/String;
    if-nez v15, :cond_5

    .line 712
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "nameValuePairs"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 688
    .end local v12    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    .end local v15    # "strParams":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 689
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v6}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 690
    .end local v6    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v6

    .line 691
    .local v6, "e":Ljava/security/KeyManagementException;
    invoke-virtual {v6}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0

    .line 705
    .end local v6    # "e":Ljava/security/KeyManagementException;
    .restart local v12    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    :cond_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 706
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v4, v8, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 715
    .end local v8    # "key":Ljava/lang/String;
    .restart local v15    # "strParams":Ljava/lang/String;
    :cond_5
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 716
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 717
    .local v3, "b":[B
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    const/16 v21, 0x0

    array-length v0, v3

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 718
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->flush()V

    .line 719
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 720
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 721
    .local v14, "statusCode":I
    const-string v20, "com.xiaomi.common.Network"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Http POST Response Code: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    if-eqz p4, :cond_7

    .line 723
    move-object/from16 v0, p4

    iput v14, v0, Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;->ResponseCode:I

    .line 724
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    move-object/from16 v20, v0

    if-nez v20, :cond_6

    .line 725
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    .line 727
    :cond_6
    const/4 v7, 0x0

    .line 728
    .local v7, "i":I
    :goto_2
    invoke-virtual {v4, v7}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v9

    .line 729
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v19

    .line 730
    .local v19, "value":Ljava/lang/String;
    if-nez v9, :cond_8

    if-nez v19, :cond_8

    .line 738
    .end local v7    # "i":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_7
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    new-instance v21, Lcom/xiaomi/account/openauth/utils/Network$DoneHandlerInputStream;

    .line 739
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/xiaomi/account/openauth/utils/Network$DoneHandlerInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v20 .. v21}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 738
    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 740
    .local v10, "rd":Ljava/io/BufferedReader;
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 741
    .local v16, "tempLine":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 742
    .local v17, "tempStr":Ljava/lang/StringBuffer;
    const-string v20, "line.separator"

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 743
    .local v5, "crlf":Ljava/lang/String;
    :goto_3
    if-nez v16, :cond_9

    .line 748
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 749
    .local v11, "responseContent":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 751
    return-object v11

    .line 733
    .end local v5    # "crlf":Ljava/lang/String;
    .end local v10    # "rd":Ljava/io/BufferedReader;
    .end local v11    # "responseContent":Ljava/lang/String;
    .end local v16    # "tempLine":Ljava/lang/String;
    .end local v17    # "tempStr":Ljava/lang/StringBuffer;
    .restart local v7    # "i":I
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v19    # "value":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    add-int/lit8 v7, v7, 0x1

    .line 727
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 744
    .end local v7    # "i":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    .restart local v5    # "crlf":Ljava/lang/String;
    .restart local v10    # "rd":Ljava/io/BufferedReader;
    .restart local v16    # "tempLine":Ljava/lang/String;
    .restart local v17    # "tempStr":Ljava/lang/StringBuffer;
    :cond_9
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 745
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 746
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    goto :goto_3
.end method

.method public static doHttpPostWithResponseStatus(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "userAgent"    # Ljava/lang/String;
    .param p5, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 594
    .local p2, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 595
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "context"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 597
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 598
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "url"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 600
    :cond_1
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 602
    .local v11, "result":Lorg/json/JSONObject;
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 603
    .local v7, "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    const/16 v13, 0x2710

    invoke-static {v7, v13}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 604
    const/16 v13, 0x3a98

    invoke-static {v7, v13}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 605
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 606
    move-object/from16 v0, p4

    invoke-static {v7, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 608
    :cond_2
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 609
    const-string v13, "Cookie"

    move-object/from16 v0, p5

    invoke-virtual {v7, v13, v0}, Lorg/apache/http/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 611
    :cond_3
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 615
    .local v6, "httpClient":Lorg/apache/http/client/HttpClient;
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/account/openauth/utils/Network;->isCmwap(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 616
    new-instance v1, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 617
    .local v1, "_url":Ljava/net/URL;
    invoke-static {v1}, Lcom/xiaomi/account/openauth/utils/Network;->getCMWapUrl(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, "cmwapUrl":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 619
    .local v5, "host":Ljava/lang/String;
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v8, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 620
    .local v8, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const-string v13, "X-Online-Host"

    invoke-virtual {v8, v13, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .end local v1    # "_url":Ljava/net/URL;
    .end local v3    # "cmwapUrl":Ljava/lang/String;
    .end local v5    # "host":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_4

    .line 625
    new-instance v13, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v14, "UTF-8"

    move-object/from16 v0, p2

    invoke-direct {v13, v0, v14}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 626
    :cond_4
    invoke-interface {v6, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 627
    .local v9, "response":Lorg/apache/http/HttpResponse;
    const-string v12, ""

    .line 628
    .local v12, "strResponseBody":Ljava/lang/String;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 629
    .local v10, "responseCode":I
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 630
    .local v2, "body":Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_5

    .line 631
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v12

    .line 634
    :cond_5
    const-string v13, "RESPONSE_CODE"

    invoke-virtual {v11, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 635
    const-string v13, "RESPONSE_BODY"

    invoke-virtual {v11, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    const-string v13, "RESPONSE_CODE"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, "RESPONSE_BODY"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 645
    :cond_6
    const-string v13, "RESPONSE_CODE"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 646
    const-string v13, "RESPONSE_BODY"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 650
    .end local v2    # "body":Lorg/apache/http/HttpEntity;
    .end local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "responseCode":I
    .end local v12    # "strResponseBody":Ljava/lang/String;
    :cond_7
    :goto_1
    return-object v11

    .line 622
    :cond_8
    :try_start_1
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_0

    .line 637
    .end local v8    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v4

    .line 638
    .local v4, "e":Lorg/apache/http/ParseException;
    :try_start_2
    const-string v13, "com.xiaomi.common.Network"

    const-string v14, "doHttpPostWithResponseStatus"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 644
    const-string v13, "RESPONSE_CODE"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "RESPONSE_BODY"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 645
    :cond_9
    const-string v13, "RESPONSE_CODE"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 646
    const-string v13, "RESPONSE_BODY"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 639
    .end local v4    # "e":Lorg/apache/http/ParseException;
    :catch_1
    move-exception v4

    .line 640
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    const-string v13, "com.xiaomi.common.Network"

    const-string v14, "doHttpPostWithResponseStatus"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 644
    const-string v13, "RESPONSE_CODE"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    const-string v13, "RESPONSE_BODY"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 645
    :cond_a
    const-string v13, "RESPONSE_CODE"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 646
    const-string v13, "RESPONSE_BODY"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 641
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 642
    .local v4, "e":Lorg/json/JSONException;
    :try_start_4
    const-string v13, "com.xiaomi.common.Network"

    const-string v14, "doHttpPostWithResponseStatus"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 644
    const-string v13, "RESPONSE_CODE"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    const-string v13, "RESPONSE_BODY"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 645
    :cond_b
    const-string v13, "RESPONSE_CODE"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 646
    const-string v13, "RESPONSE_BODY"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 643
    .end local v4    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v13

    .line 644
    const-string v14, "RESPONSE_CODE"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    const-string v14, "RESPONSE_BODY"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 645
    :cond_c
    const-string v14, "RESPONSE_CODE"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 646
    const-string v14, "RESPONSE_BODY"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 648
    :cond_d
    throw v13
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 2
    .param p0, "urlStr"    # Ljava/lang/String;
    .param p1, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 785
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/account/openauth/utils/Network;->downloadFile(Ljava/lang/String;Ljava/io/OutputStream;ZLandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/io/OutputStream;Landroid/content/Context;)Z
    .locals 14
    .param p0, "urlStr"    # Ljava/lang/String;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 844
    const/4 v3, 0x0

    .line 845
    .local v3, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 846
    .local v10, "url":Ljava/net/URL;
    invoke-static/range {p2 .. p2}, Lcom/xiaomi/account/openauth/utils/Network;->isCmwap(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 847
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 848
    invoke-static {v10}, Lcom/xiaomi/account/openauth/utils/Network;->getCMWapUrl(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    .line 849
    .local v2, "cmwapUrl":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 850
    .local v6, "host":Ljava/lang/String;
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 851
    const-string v11, "X-Online-Host"

    invoke-virtual {v3, v11, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 853
    .local v9, "resCode":I
    :goto_0
    const/16 v11, 0x12c

    if-lt v9, v11, :cond_0

    const/16 v11, 0x190

    if-lt v9, v11, :cond_1

    .line 870
    .end local v2    # "cmwapUrl":Ljava/lang/String;
    .end local v6    # "host":Ljava/lang/String;
    .end local v9    # "resCode":I
    :cond_0
    :goto_1
    const/16 v11, 0x2710

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 871
    const/16 v11, 0x3a98

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 872
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 873
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 875
    .local v7, "input":Ljava/io/InputStream;
    const/16 v11, 0x400

    new-array v1, v11, [B

    .line 878
    .local v1, "buffer":[B
    :goto_2
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "count":I
    if-gtz v4, :cond_3

    .line 882
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 883
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 884
    const/4 v11, 0x1

    .line 889
    .end local v1    # "buffer":[B
    .end local v4    # "count":I
    .end local v7    # "input":Ljava/io/InputStream;
    .end local v10    # "url":Ljava/net/URL;
    :goto_3
    return v11

    .line 854
    .restart local v2    # "cmwapUrl":Ljava/lang/String;
    .restart local v6    # "host":Ljava/lang/String;
    .restart local v9    # "resCode":I
    .restart local v10    # "url":Ljava/net/URL;
    :cond_1
    const-string v11, "location"

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 855
    .local v8, "redirectedUrl":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 858
    new-instance v10, Ljava/net/URL;

    .end local v10    # "url":Ljava/net/URL;
    invoke-direct {v10, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 859
    .restart local v10    # "url":Ljava/net/URL;
    invoke-static {v10}, Lcom/xiaomi/account/openauth/utils/Network;->getCMWapUrl(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    .line 860
    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 861
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 862
    const-string v11, "X-Online-Host"

    invoke-virtual {v3, v11, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    goto :goto_0

    .line 866
    .end local v2    # "cmwapUrl":Ljava/lang/String;
    .end local v6    # "host":Ljava/lang/String;
    .end local v8    # "redirectedUrl":Ljava/lang/String;
    .end local v9    # "resCode":I
    :cond_2
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 867
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 885
    .end local v10    # "url":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 886
    .local v5, "e":Ljava/io/IOException;
    const-string v11, "com.xiaomi.common.Network"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "error while download file"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/4 v11, 0x0

    goto :goto_3

    .line 879
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "buffer":[B
    .restart local v4    # "count":I
    .restart local v7    # "input":Ljava/io/InputStream;
    .restart local v10    # "url":Ljava/net/URL;
    :cond_3
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {p1, v1, v11, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/io/OutputStream;ZLandroid/content/Context;)Z
    .locals 11
    .param p0, "urlStr"    # Ljava/lang/String;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "bOnlyWifi"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 790
    const/4 v0, 0x0

    .line 792
    .local v0, "bCanceled":Z
    const/4 v5, 0x0

    .line 794
    .local v5, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 795
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 796
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/16 v9, 0x2710

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 797
    const/16 v9, 0x3a98

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 798
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 799
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 800
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 802
    const/16 v9, 0x400

    new-array v1, v9, [B

    .line 805
    .local v1, "buffer":[B
    :cond_0
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .local v3, "count":I
    const/4 v9, -0x1

    if-ne v3, v9, :cond_3

    .line 812
    :goto_0
    if-eqz v0, :cond_4

    .line 816
    :goto_1
    if-eqz v5, :cond_1

    .line 818
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 823
    :cond_1
    :goto_2
    if-eqz p1, :cond_2

    .line 825
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 832
    .end local v1    # "buffer":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "count":I
    .end local v6    # "url":Ljava/net/URL;
    :cond_2
    :goto_3
    return v7

    .line 806
    .restart local v1    # "buffer":[B
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "count":I
    .restart local v6    # "url":Ljava/net/URL;
    :cond_3
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {p1, v1, v9, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 807
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/xiaomi/account/openauth/utils/Network;->isWifi(Landroid/content/Context;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    if-nez v9, :cond_0

    .line 808
    const/4 v0, 0x1

    .line 809
    goto :goto_0

    :cond_4
    move v7, v8

    .line 812
    goto :goto_1

    .line 813
    .end local v1    # "buffer":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "count":I
    .end local v6    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 814
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    const-string v8, "com.xiaomi.common.Network"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "error while download file"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 816
    if-eqz v5, :cond_5

    .line 818
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 823
    :cond_5
    :goto_4
    if-eqz p1, :cond_2

    .line 825
    :try_start_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 826
    :catch_1
    move-exception v8

    goto :goto_3

    .line 815
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 816
    if-eqz v5, :cond_6

    .line 818
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 823
    :cond_6
    :goto_5
    if-eqz p1, :cond_7

    .line 825
    :try_start_8
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 830
    :cond_7
    :goto_6
    throw v7

    .line 819
    .restart local v1    # "buffer":[B
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "count":I
    .restart local v6    # "url":Ljava/net/URL;
    :catch_2
    move-exception v8

    goto :goto_2

    .line 826
    :catch_3
    move-exception v8

    goto :goto_3

    .line 819
    .end local v1    # "buffer":[B
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "count":I
    .end local v6    # "url":Ljava/net/URL;
    .restart local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v8

    goto :goto_4

    .end local v4    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v8

    goto :goto_5

    .line 826
    :catch_6
    move-exception v8

    goto :goto_6
.end method

.method public static downloadXml(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 256
    const/4 v2, 0x0

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/account/openauth/utils/Network;->downloadXml(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static downloadXml(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "cookie"    # Ljava/lang/String;
    .param p5, "response"    # Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    .local p4, "requestHdrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 292
    .local v3, "responseStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/xiaomi/account/openauth/utils/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;)Ljava/io/InputStream;

    move-result-object v3

    .line 294
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x400

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 295
    .local v5, "sbReponse":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    .line 296
    const-string v7, "UTF-8"

    invoke-direct {v6, v3, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v7, 0x400

    .line 295
    invoke-direct {v2, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 298
    .local v2, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 303
    if-eqz v3, :cond_0

    .line 305
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 312
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, "responseXml":Ljava/lang/String;
    return-object v4

    .line 299
    .end local v4    # "responseXml":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 302
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "sbReponse":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    .line 303
    if-eqz v3, :cond_2

    .line 305
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 310
    :cond_2
    :goto_2
    throw v6

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "com.xiaomi.common.Network"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to close responseStream"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 306
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "sbReponse":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v0

    .line 307
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "com.xiaomi.common.Network"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to close responseStream"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static downloadXml(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "noEncryptUrl"    # Z
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    const/4 v3, 0x0

    .line 264
    .local v3, "responseStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0, p1, p3, p5}, Lcom/xiaomi/account/openauth/utils/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x400

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 266
    .local v5, "sbReponse":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    .line 267
    invoke-direct {v6, v3, p4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v7, 0x400

    .line 266
    invoke-direct {v2, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 269
    .local v2, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 274
    if-eqz v3, :cond_0

    .line 276
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 283
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "responseXml":Ljava/lang/String;
    return-object v4

    .line 270
    .end local v4    # "responseXml":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 273
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "sbReponse":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    .line 274
    if-eqz v3, :cond_2

    .line 276
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 281
    :cond_2
    :goto_2
    throw v6

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "com.xiaomi.common.Network"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to close responseStream"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 277
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "sbReponse":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v0

    .line 278
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "com.xiaomi.common.Network"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to close responseStream"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;)Ljava/io/InputStream;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 137
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/account/openauth/utils/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/account/openauth/utils/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;)Ljava/io/InputStream;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "cookie"    # Ljava/lang/String;
    .param p5, "responseHdrs"    # Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    .local p4, "requestHdrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 164
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "context"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 165
    :cond_0
    if-nez p1, :cond_1

    .line 166
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "url"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 168
    :cond_1
    move-object/from16 v7, p1

    .line 170
    .local v7, "newUrl":Ljava/net/URL;
    const/4 v8, 0x0

    .line 172
    .local v8, "responseStream":Ljava/io/InputStream;
    sget-object v13, Lcom/xiaomi/account/openauth/utils/Network;->ignoreHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v13}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 174
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 175
    invoke-static {p0, v7}, Lcom/xiaomi/account/openauth/utils/Network;->getHttpUrlConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 176
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/16 v13, 0x2710

    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 177
    const/16 v13, 0x3a98

    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 179
    const/4 v13, 0x1

    new-array v11, v13, [Ljavax/net/ssl/TrustManager;

    const/4 v13, 0x0

    .line 180
    sget-object v14, Lcom/xiaomi/account/openauth/utils/Network;->ignoreCertificationTrustManger:Ljavax/net/ssl/TrustManager;

    aput-object v14, v11, v13

    .line 182
    .local v11, "tm":[Ljavax/net/ssl/TrustManager;
    const/4 v10, 0x0

    .line 184
    .local v10, "sslContext":Ljavax/net/ssl/SSLContext;
    :try_start_0
    const-string v13, "SSL"

    invoke-static {v13}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v10

    .line 185
    const/4 v13, 0x0

    new-instance v14, Ljava/security/SecureRandom;

    invoke-direct {v14}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v10, v13, v11, v14}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    :goto_0
    invoke-virtual {v10}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v9

    .local v9, "ssf":Ljavax/net/ssl/SSLSocketFactory;
    move-object v13, v1

    .line 193
    check-cast v13, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v13, v9}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 195
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 196
    const-string v13, "User-Agent"

    move-object/from16 v0, p2

    invoke-virtual {v1, v13, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_2
    if-eqz p3, :cond_3

    .line 199
    const-string v13, "Cookie"

    move-object/from16 v0, p3

    invoke-virtual {v1, v13, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_3
    if-eqz p4, :cond_4

    .line 202
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_8

    .line 207
    :cond_4
    if-eqz p5, :cond_7

    .line 208
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v13

    const-string v14, "http"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v13

    const-string v14, "https"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 209
    :cond_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    move-object/from16 v0, p5

    iput v13, v0, Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;->ResponseCode:I

    .line 210
    move-object/from16 v0, p5

    iget-object v13, v0, Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    if-nez v13, :cond_6

    .line 211
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p5

    iput-object v13, v0, Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    .line 212
    :cond_6
    const/4 v3, 0x0

    .line 213
    .local v3, "i":I
    :goto_2
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v12

    .line 216
    .local v12, "value":Ljava/lang/String;
    if-nez v6, :cond_9

    if-nez v12, :cond_9

    .line 224
    .end local v3    # "i":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    .line 226
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 230
    :goto_3
    new-instance v8, Lcom/xiaomi/account/openauth/utils/Network$DoneHandlerInputStream;

    .end local v8    # "responseStream":Ljava/io/InputStream;
    invoke-direct {v8, v4}, Lcom/xiaomi/account/openauth/utils/Network$DoneHandlerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 231
    .restart local v8    # "responseStream":Ljava/io/InputStream;
    return-object v8

    .line 186
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 188
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 189
    .local v2, "e":Ljava/security/KeyManagementException;
    invoke-virtual {v2}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto/16 :goto_0

    .line 202
    .end local v2    # "e":Ljava/security/KeyManagementException;
    .restart local v9    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    :cond_8
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 203
    .local v5, "key":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v5, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 218
    .end local v5    # "key":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    :cond_9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 212
    :cond_a
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 220
    :cond_b
    move-object/from16 v0, p5

    iget-object v13, v0, Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;->AllHeaders:Ljava/util/Map;

    invoke-interface {v13, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 227
    .end local v3    # "i":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v2

    .line 228
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    goto :goto_3
.end method

.method public static downloadXmlAsStreamWithoutRedirect(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    const/4 v2, 0x0

    .line 237
    .local v2, "responseStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 238
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 239
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 240
    const/16 v3, 0x3a98

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 242
    const-string v3, "User-Agent"

    invoke-virtual {v0, v3, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    if-eqz p2, :cond_1

    .line 245
    const-string v3, "Cookie"

    invoke-virtual {v0, v3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 249
    .local v1, "resCode":I
    const/16 v3, 0x12c

    if-lt v1, v3, :cond_2

    const/16 v3, 0x190

    if-lt v1, v3, :cond_3

    .line 250
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 252
    :cond_3
    new-instance v3, Lcom/xiaomi/account/openauth/utils/Network$DoneHandlerInputStream;

    invoke-direct {v3, v2}, Lcom/xiaomi/account/openauth/utils/Network$DoneHandlerInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v3
.end method

.method public static fromParamListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 558
    .local v2, "params":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 572
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 573
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 575
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 558
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 560
    .local v1, "pair":Lorg/apache/http/NameValuePair;
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 562
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 564
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "com.xiaomi.common.Network"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to convert from param list to string: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string v3, "com.xiaomi.common.Network"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pair: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getActiveConnPoint(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1172
    invoke-static {p0}, Lcom/xiaomi/account/openauth/utils/Network;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1173
    const-string v2, "wifi"

    .line 1185
    :goto_0
    return-object v2

    .line 1176
    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1175
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1177
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 1178
    const-string v2, ""

    goto :goto_0

    .line 1181
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1182
    .local v1, "info":Landroid/net/NetworkInfo;
    if-nez v1, :cond_2

    .line 1183
    const-string v2, ""

    goto :goto_0

    .line 1185
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getActiveNetworkName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1026
    const-string v1, "null"

    .line 1028
    .local v1, "defaultValue":Ljava/lang/String;
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1027
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1029
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 1036
    .end local v1    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 1031
    .restart local v1    # "defaultValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1032
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 1034
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1035
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1036
    :cond_2
    const-string v3, "%s-%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getActiveNetworkType(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1014
    const/4 v1, -0x1

    .line 1016
    .local v1, "defaultValue":I
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1015
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1017
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 1022
    .end local v1    # "defaultValue":I
    :cond_0
    :goto_0
    return v1

    .line 1019
    .restart local v1    # "defaultValue":I
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1020
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 1022
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    goto :goto_0
.end method

.method public static getCMWapUrl(Ljava/net/URL;)Ljava/lang/String;
    .locals 3
    .param p0, "oriUrl"    # Ljava/net/URL;

    .prologue
    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1113
    .local v0, "gatewayBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "10.0.0.172"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1114
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1116
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHttpHeaderInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;
    .locals 12
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 480
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 481
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    const-string v11, "https"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    move-object v5, v9

    .line 535
    .end local v7    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v5

    .line 485
    .restart local v7    # "url":Ljava/net/URL;
    :cond_1
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 486
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 487
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v10, "wap"

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_8

    .line 488
    const/16 v10, 0x1388

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 489
    const/16 v10, 0x1388

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 496
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 497
    const-string v10, "User-Agent"

    invoke-virtual {v1, v10, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_2
    if-eqz p2, :cond_3

    .line 501
    const-string v10, "Cookie"

    invoke-virtual {v1, v10, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_3
    new-instance v5, Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;

    invoke-direct {v5}, Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;-><init>()V

    .line 505
    .local v5, "ret":Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    iput v10, v5, Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;->ResponseCode:I

    .line 507
    iput-object p1, v5, Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;->UserAgent:Ljava/lang/String;

    .line 508
    const/4 v3, 0x0

    .line 509
    .local v3, "i":I
    :goto_2
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v4

    .line 510
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v8

    .line 511
    .local v8, "value":Ljava/lang/String;
    if-nez v4, :cond_4

    if-eqz v8, :cond_0

    .line 514
    :cond_4
    if-eqz v4, :cond_5

    const-string v10, "content-type"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 515
    iput-object v8, v5, Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;->ContentType:Ljava/lang/String;

    .line 518
    :cond_5
    if-eqz v4, :cond_7

    const-string v10, "location"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 519
    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 520
    .local v6, "uri":Ljava/net/URI;
    invoke-virtual {v6}, Ljava/net/URI;->isAbsolute()Z

    move-result v10

    if-nez v10, :cond_6

    .line 521
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 522
    .local v0, "baseUri":Ljava/net/URI;
    invoke-virtual {v0, v6}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v6

    .line 524
    .end local v0    # "baseUri":Ljava/net/URI;
    :cond_6
    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;->realUrl:Ljava/lang/String;

    .line 508
    .end local v6    # "uri":Ljava/net/URI;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 493
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "ret":Lcom/xiaomi/account/openauth/utils/Network$HttpHeaderInfo;
    .end local v8    # "value":Ljava/lang/String;
    :cond_8
    const/16 v10, 0x3a98

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 494
    const/16 v10, 0x3a98

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 528
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 529
    .local v2, "e":Ljava/net/MalformedURLException;
    const-string v10, "com.xiaomi.common.Network"

    const-string v11, "Failed to transform URL"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/net/MalformedURLException;
    :goto_3
    move-object v5, v9

    .line 535
    goto/16 :goto_0

    .line 530
    :catch_1
    move-exception v2

    .line 531
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "com.xiaomi.common.Network"

    const-string v11, "Failed to get mime type"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 532
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 533
    .local v2, "e":Ljava/net/URISyntaxException;
    const-string v10, "com.xiaomi.common.Network"

    const-string v11, "Failed to parse URI"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public static getHttpPostAsStream(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 9
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "data"    # Ljava/lang/String;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x1

    .line 437
    if-nez p0, :cond_0

    .line 438
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "url"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 440
    :cond_0
    move-object v3, p0

    .line 442
    .local v3, "newUrl":Ljava/net/URL;
    const/4 v5, 0x0

    .line 443
    .local v5, "responseStream":Ljava/io/InputStream;
    invoke-static {v8}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 444
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 445
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v7, 0x1388

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 446
    const/16 v7, 0x3a98

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 447
    const-string v7, "POST"

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 450
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 451
    const-string v7, "User-Agent"

    invoke-virtual {v0, v7, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 455
    const-string v7, "Cookie"

    invoke-virtual {v0, v7, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 459
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 460
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 462
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 463
    .local v4, "responseCode":Ljava/lang/String;
    const-string v7, "ResponseCode"

    invoke-interface {p2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const/4 v1, 0x0

    .line 466
    .local v1, "i":I
    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v6

    .line 468
    .local v6, "value":Ljava/lang/String;
    if-nez v2, :cond_3

    if-nez v6, :cond_3

    .line 474
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 475
    return-object v5

    .line 471
    :cond_3
    invoke-interface {p2, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getHttpUrlConnection(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1094
    invoke-static {p0}, Lcom/xiaomi/account/openauth/utils/Network;->isCtwap(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1095
    new-instance v4, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v6, Ljava/net/InetSocketAddress;

    .line 1096
    const-string v7, "10.0.0.200"

    const/16 v8, 0x50

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 1095
    invoke-direct {v4, v5, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 1097
    .local v4, "proxy":Ljava/net/Proxy;
    invoke-virtual {p1, v4}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 1107
    .end local v4    # "proxy":Ljava/net/Proxy;
    :goto_0
    return-object v5

    .line 1099
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/account/openauth/utils/Network;->isCmwap(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1100
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 1102
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 1103
    .local v3, "host":Ljava/lang/String;
    invoke-static {p1}, Lcom/xiaomi/account/openauth/utils/Network;->getCMWapUrl(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 1104
    .local v0, "cmwapUrl":Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1105
    .local v2, "gatewayUrl":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 1106
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v5, "X-Online-Host"

    invoke-virtual {v1, v5, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v1

    .line 1107
    goto :goto_0
.end method

.method public static hasNetwork(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1152
    invoke-static {p0}, Lcom/xiaomi/account/openauth/utils/Network;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCmwap(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1045
    .line 1046
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 1045
    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 1047
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v7

    .line 1048
    .local v7, "countryISO":Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1064
    :cond_0
    :goto_0
    return v4

    .line 1052
    :cond_1
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1051
    check-cast v6, Landroid/net/ConnectivityManager;

    .line 1053
    .local v6, "cm":Landroid/net/ConnectivityManager;
    if-eqz v6, :cond_0

    .line 1055
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    .line 1056
    .local v8, "info":Landroid/net/NetworkInfo;
    if-eqz v8, :cond_0

    .line 1058
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 1059
    .local v0, "extraInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_0

    .line 1061
    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1064
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    const-string v3, "wap"

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    goto :goto_0
.end method

.method public static isCtwap(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 1069
    .line 1070
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1069
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 1071
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1072
    .local v1, "countryISO":Ljava/lang/String;
    const-string v6, "CN"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1089
    :cond_0
    :goto_0
    return v5

    .line 1076
    :cond_1
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1075
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1077
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 1079
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1080
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 1082
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    .line 1083
    .local v2, "extraInfo":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_0

    .line 1085
    const-string v6, "ctwap"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1086
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static isWIFIConnected(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1156
    .line 1157
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1156
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1159
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 1168
    :cond_0
    :goto_0
    return v2

    .line 1163
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1164
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 1168
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v3, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 1040
    invoke-static {p0}, Lcom/xiaomi/account/openauth/utils/Network;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tryDetectCharsetEncoding(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    if-nez p0, :cond_0

    .line 356
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "url"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 358
    :cond_0
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 359
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 360
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/16 v10, 0x1388

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 361
    const/16 v10, 0x3a98

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 362
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 363
    const-string v10, "User-Agent"

    invoke-virtual {v2, v10, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_1
    const/4 v9, 0x0

    .line 370
    .local v9, "ret":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "contentType":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 372
    sget-object v10, Lcom/xiaomi/account/openauth/utils/Network;->ContentTypePattern_Charset:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 373
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v10

    const/4 v11, 0x3

    if-lt v10, v11, :cond_2

    .line 374
    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "charset":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 376
    move-object v9, v1

    .line 377
    const-string v10, "com.xiaomi.common.Network"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "HTTP charset detected is: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v1    # "charset":Ljava/lang/String;
    :cond_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 384
    sget-object v10, Lcom/xiaomi/account/openauth/utils/Network;->ContentTypePattern_MimeType:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 385
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_6

    .line 386
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 387
    .local v5, "mimetype":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 388
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 389
    const-string v10, "application/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 390
    const-string v10, "application/xml"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 391
    const-string v10, "+xml"

    invoke-virtual {v5, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 392
    :cond_3
    const/4 v7, 0x0

    .line 394
    .local v7, "responseStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v8, Lcom/xiaomi/account/openauth/utils/Network$DoneHandlerInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/xiaomi/account/openauth/utils/Network$DoneHandlerInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 395
    .end local v7    # "responseStream":Ljava/io/InputStream;
    .local v8, "responseStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    .line 396
    invoke-direct {v10, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 395
    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 398
    .local v6, "reader":Ljava/io/BufferedReader;
    :cond_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .local v0, "aLine":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 414
    :cond_5
    :goto_0
    if-eqz v8, :cond_6

    .line 415
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 423
    .end local v0    # "aLine":Ljava/lang/String;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .end local v5    # "mimetype":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "responseStream":Ljava/io/InputStream;
    :cond_6
    return-object v9

    .line 399
    .restart local v0    # "aLine":Ljava/lang/String;
    .restart local v4    # "matcher":Ljava/util/regex/Matcher;
    .restart local v5    # "mimetype":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "responseStream":Ljava/io/InputStream;
    :cond_7
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_4

    .line 403
    sget-object v10, Lcom/xiaomi/account/openauth/utils/Network;->ContentTypePattern_XmlEncoding:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 404
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v10

    const/4 v11, 0x3

    if-lt v10, v11, :cond_5

    .line 405
    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 406
    .restart local v1    # "charset":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 407
    move-object v9, v1

    .line 408
    const-string v10, "com.xiaomi.common.Network"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "XML charset detected is: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 413
    .end local v0    # "aLine":Ljava/lang/String;
    .end local v1    # "charset":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v10

    move-object v7, v8

    .line 414
    .end local v8    # "responseStream":Ljava/io/InputStream;
    .restart local v7    # "responseStream":Ljava/io/InputStream;
    :goto_1
    if-eqz v7, :cond_8

    .line 415
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 416
    :cond_8
    throw v10

    .line 413
    :catchall_1
    move-exception v10

    goto :goto_1
.end method

.method public static uploadFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 25
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "fileKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 894
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_1

    .line 895
    const/16 v22, 0x0

    .line 960
    :cond_0
    :goto_0
    return-object v22

    .line 897
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    .line 899
    .local v14, "filename":Ljava/lang/String;
    const/4 v8, 0x0

    .line 901
    .local v8, "conn":Ljava/net/HttpURLConnection;
    const-string v17, "\r\n"

    .line 902
    .local v17, "lineEnd":Ljava/lang/String;
    const-string v21, "--"

    .line 903
    .local v21, "twoHyphens":Ljava/lang/String;
    const-string v5, "*****"

    .line 905
    .local v5, "boundary":Ljava/lang/String;
    const/4 v12, 0x0

    .line 906
    .local v12, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 907
    .local v9, "dos":Ljava/io/DataOutputStream;
    const/16 v18, 0x0

    .line 910
    .local v18, "rd":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 911
    .local v4, "_url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 912
    const/16 v22, 0x3a98

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 913
    const/16 v22, 0x2710

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 916
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 917
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 918
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 921
    const-string v22, "POST"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 922
    const-string v22, "Connection"

    const-string v23, "Keep-Alive"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const-string v22, "Content-Type"

    const-string v23, "multipart/form-data;boundary=*****"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const/16 v3, 0x4d

    .line 926
    .local v3, "EXTRA_LEN":I
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, 0x4d

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v23

    add-int v15, v22, v23

    .line 927
    .local v15, "len":I
    invoke-virtual {v8, v15}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 929
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 930
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .local v10, "dos":Ljava/io/DataOutputStream;
    :try_start_1
    const-string v22, "--*****\r\n"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 931
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Content-Disposition: form-data; name=\""

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\";filename=\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 932
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\r\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 931
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 933
    const-string v22, "\r\n"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 936
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 937
    .end local v12    # "fileInputStream":Ljava/io/FileInputStream;
    .local v13, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v7, -0x1

    .line 938
    .local v7, "bytesRead":I
    const/16 v2, 0x400

    .line 939
    .local v2, "BUFFER_SIZE":I
    const/16 v22, 0x400

    :try_start_2
    move/from16 v0, v22

    new-array v6, v0, [B

    .line 940
    .local v6, "buffer":[B
    :goto_1
    invoke-virtual {v13, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v7, v0, :cond_4

    .line 945
    const-string v22, "\r\n"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 946
    const-string v22, "--"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 947
    const-string v22, "*****"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 948
    const-string v22, "--"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 949
    const-string v22, "\r\n"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 952
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 953
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 954
    .local v20, "sb":Ljava/lang/StringBuffer;
    new-instance v19, Ljava/io/BufferedReader;

    new-instance v22, Ljava/io/InputStreamReader;

    new-instance v23, Lcom/xiaomi/account/openauth/utils/Network$DoneHandlerInputStream;

    .line 955
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/xiaomi/account/openauth/utils/Network$DoneHandlerInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v22 .. v23}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 954
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 957
    .end local v18    # "rd":Ljava/io/BufferedReader;
    .local v19, "rd":Ljava/io/BufferedReader;
    :goto_2
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .local v16, "line":Ljava/lang/String;
    if-nez v16, :cond_8

    .line 960
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v22

    .line 963
    if-eqz v13, :cond_2

    .line 964
    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 966
    :cond_2
    if-eqz v10, :cond_3

    .line 967
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 969
    :cond_3
    if-eqz v19, :cond_0

    .line 970
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 972
    :catch_0
    move-exception v11

    .line 973
    .local v11, "e":Ljava/io/IOException;
    const-string v23, "com.xiaomi.common.Network"

    const-string v24, "error while closing strean"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 941
    .end local v11    # "e":Ljava/io/IOException;
    .end local v16    # "line":Ljava/lang/String;
    .end local v19    # "rd":Ljava/io/BufferedReader;
    .end local v20    # "sb":Ljava/lang/StringBuffer;
    .restart local v18    # "rd":Ljava/io/BufferedReader;
    :cond_4
    const/16 v22, 0x0

    :try_start_5
    move/from16 v0, v22

    invoke-virtual {v10, v6, v0, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 942
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 961
    .end local v6    # "buffer":[B
    :catchall_0
    move-exception v22

    move-object v9, v10

    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    move-object v12, v13

    .line 963
    .end local v2    # "BUFFER_SIZE":I
    .end local v3    # "EXTRA_LEN":I
    .end local v4    # "_url":Ljava/net/URL;
    .end local v7    # "bytesRead":I
    .end local v13    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v15    # "len":I
    .restart local v12    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_3
    if-eqz v12, :cond_5

    .line 964
    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 966
    :cond_5
    if-eqz v9, :cond_6

    .line 967
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 969
    :cond_6
    if-eqz v18, :cond_7

    .line 970
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 975
    :cond_7
    :goto_4
    throw v22

    .line 958
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .end local v12    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v18    # "rd":Ljava/io/BufferedReader;
    .restart local v2    # "BUFFER_SIZE":I
    .restart local v3    # "EXTRA_LEN":I
    .restart local v4    # "_url":Ljava/net/URL;
    .restart local v6    # "buffer":[B
    .restart local v7    # "bytesRead":I
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v13    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v15    # "len":I
    .restart local v16    # "line":Ljava/lang/String;
    .restart local v19    # "rd":Ljava/io/BufferedReader;
    .restart local v20    # "sb":Ljava/lang/StringBuffer;
    :cond_8
    :try_start_7
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 961
    .end local v16    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v22

    move-object/from16 v18, v19

    .end local v19    # "rd":Ljava/io/BufferedReader;
    .restart local v18    # "rd":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    move-object v12, v13

    .end local v13    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v12    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 972
    .end local v2    # "BUFFER_SIZE":I
    .end local v3    # "EXTRA_LEN":I
    .end local v4    # "_url":Ljava/net/URL;
    .end local v6    # "buffer":[B
    .end local v7    # "bytesRead":I
    .end local v15    # "len":I
    .end local v20    # "sb":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v11

    .line 973
    .restart local v11    # "e":Ljava/io/IOException;
    const-string v23, "com.xiaomi.common.Network"

    const-string v24, "error while closing strean"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 961
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v22

    goto :goto_3

    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .restart local v3    # "EXTRA_LEN":I
    .restart local v4    # "_url":Ljava/net/URL;
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v15    # "len":I
    :catchall_3
    move-exception v22

    move-object v9, v10

    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    goto :goto_3
.end method
