.class public Lcom/qiniu/utils/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static id:Ljava/lang/String;

.field private static userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/qiniu/utils/Util;->genId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qiniu/utils/Util;->id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static genId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 151
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 152
    .local v0, "r":Ljava/util/Random;
    const/16 v2, 0x3e7

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 153
    .local v1, "rnum":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSDPath(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 96
    .local v1, "sdDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 97
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 98
    .local v0, "sdCardExist":Z
    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 101
    :cond_0
    return-object v1
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/qiniu/conf/Conf;->USER_AGENT:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lcom/qiniu/conf/Conf;->USER_AGENT:Ljava/lang/String;

    .line 147
    :goto_0
    return-object v0

    .line 142
    :cond_0
    sget-object v0, Lcom/qiniu/utils/Util;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QiniuAndroid/6.1.0 ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/qiniu/utils/Util;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_1
    sget-object v0, Lcom/qiniu/utils/Util;->userAgent:Ljava/lang/String;

    goto :goto_0
.end method

.method public static handleResult(Lorg/apache/http/HttpResponse;)Lcom/qiniu/rs/CallRet;
    .locals 8
    .param p0, "res"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 41
    const/4 v2, 0x0

    .line 43
    .local v2, "reqId":Ljava/lang/String;
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 44
    .local v4, "status":Lorg/apache/http/StatusLine;
    const-string v6, "X-Reqid"

    invoke-interface {p0, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 45
    .local v1, "header":Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    .line 46
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 48
    :cond_0
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 50
    .local v5, "statusCode":I
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    const-string v7, "utf-8"

    .line 49
    invoke-static {v6, v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "responseBody":Ljava/lang/String;
    new-instance v6, Lcom/qiniu/rs/CallRet;

    invoke-direct {v6, v5, v2, v3}, Lcom/qiniu/rs/CallRet;-><init>(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1    # "header":Lorg/apache/http/Header;
    .end local v3    # "responseBody":Ljava/lang/String;
    .end local v4    # "status":Lorg/apache/http/StatusLine;
    .end local v5    # "statusCode":I
    :goto_0
    return-object v6

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/qiniu/rs/CallRet;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v2, v0}, Lcom/qiniu/rs/CallRet;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static needChangeUpAdress(Lcom/qiniu/rs/CallRet;)Z
    .locals 3
    .param p0, "ret"    # Lcom/qiniu/rs/CallRet;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/qiniu/rs/CallRet;->getException()Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/qiniu/rs/CallRet;->getException()Ljava/lang/Exception;

    move-result-object v2

    throw v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/PortUnreachableException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/UnknownServiceException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    :catch_0
    move-exception v1

    .line 89
    :goto_0
    const/4 v1, 0x1

    .line 91
    :cond_0
    :goto_1
    return v1

    .line 85
    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    goto :goto_0

    .line 81
    :catch_3
    move-exception v1

    goto :goto_0

    .line 79
    :catch_4
    move-exception v1

    goto :goto_0

    .line 77
    :catch_5
    move-exception v1

    goto :goto_0

    .line 75
    :catch_6
    move-exception v1

    goto :goto_0

    .line 73
    :catch_7
    move-exception v1

    goto :goto_0

    .line 71
    :catch_8
    move-exception v1

    goto :goto_0

    .line 69
    :catch_9
    move-exception v1

    goto :goto_0
.end method

.method public static newPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "postMethod":Lorg/apache/http/client/methods/HttpPost;
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/qiniu/utils/Util;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-object v0
.end method

.method public static storeToFile(Landroid/content/Context;Ljava/io/InputStream;)Ljava/io/File;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    if-nez p1, :cond_1

    .line 106
    const/4 v3, 0x0

    .line 132
    :cond_0
    :goto_0
    return-object v3

    .line 108
    :cond_1
    const/4 v4, 0x0

    .line 109
    .local v4, "os":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 111
    .local v3, "f":Ljava/io/File;
    :try_start_0
    invoke-static {p0}, Lcom/qiniu/utils/Util;->getSDPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 112
    .local v6, "outputDir":Ljava/io/File;
    const-string v7, "qiniu-"

    const-string v8, ""

    invoke-static {v7, v8, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 113
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v4    # "os":Ljava/io/OutputStream;
    .local v5, "os":Ljava/io/OutputStream;
    const/high16 v7, 0x10000

    :try_start_1
    new-array v0, v7, [B

    .line 116
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .local v1, "bytesRead":I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_2

    .line 126
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 127
    :goto_2
    if-eqz v5, :cond_0

    .line 128
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    goto :goto_0

    .line 117
    :cond_2
    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {v5, v0, v7, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 119
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_1
    move-exception v2

    move-object v4, v5

    .line 120
    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v6    # "outputDir":Ljava/io/File;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :goto_3
    if-eqz v3, :cond_3

    .line 121
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 122
    const/4 v3, 0x0

    .line 124
    :cond_3
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 125
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 126
    :goto_4
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 127
    :goto_5
    if-eqz v4, :cond_4

    .line 128
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 130
    :cond_4
    :goto_6
    throw v7

    .line 126
    :catch_2
    move-exception v8

    goto :goto_5

    .line 128
    :catch_3
    move-exception v8

    goto :goto_6

    .line 126
    .end local v4    # "os":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v5    # "os":Ljava/io/OutputStream;
    .restart local v6    # "outputDir":Ljava/io/File;
    :catch_4
    move-exception v7

    goto :goto_2

    .line 125
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v4    # "os":Ljava/io/OutputStream;
    goto :goto_4

    .line 119
    .end local v6    # "outputDir":Ljava/io/File;
    :catch_5
    move-exception v2

    goto :goto_3
.end method

.method public static toByte(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 26
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static urlsafeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/qiniu/utils/Util;->toByte(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static urlsafeBase64([B)Ljava/lang/String;
    .locals 1
    .param p0, "binaryData"    # [B

    .prologue
    .line 37
    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
