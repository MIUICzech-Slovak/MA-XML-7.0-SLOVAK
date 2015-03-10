.class public Lcom/xiaomi/infra/galaxy/fds/android/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final DATE_FOPMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/android/util/Util$1;

    invoke-direct {v0}, Lcom/xiaomi/infra/galaxy/fds/android/util/Util$1;-><init>()V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/android/util/Util;->DATE_FOPMAT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadObjectToFile(Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;Ljava/io/File;Z)V
    .locals 10
    .param p0, "object"    # Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;
    .param p1, "destinationFile"    # Ljava/io/File;
    .param p2, "isAppend"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x1000

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 49
    .local v6, "parentDirectory":Ljava/io/File;
    if-nez p2, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 50
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 53
    :cond_0
    const/4 v1, 0x0

    .line 54
    .local v1, "bytesRead":I
    new-array v0, v8, [B

    .line 55
    .local v0, "buffer":[B
    invoke-virtual {p0}, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;->getObjectContent()Ljava/io/InputStream;

    move-result-object v3

    .line 56
    .local v3, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 58
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .end local v4    # "out":Ljava/io/OutputStream;
    .local v5, "out":Ljava/io/OutputStream;
    :goto_0
    const/4 v7, 0x0

    const/16 v8, 0x1000

    :try_start_1
    invoke-virtual {v3, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_2

    .line 61
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 63
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 64
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    new-instance v7, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to store object["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;->getBucketName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;->getObjectName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] content "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "to disk:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lcom/xiaomi/infra/galaxy/fds/android/exception/GalaxyFDSClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 69
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 70
    if-eqz v4, :cond_1

    .line 71
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 75
    :cond_1
    :goto_3
    throw v7

    .line 69
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 70
    if-eqz v5, :cond_3

    .line 71
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 77
    :cond_3
    :goto_4
    return-void

    .line 73
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v8

    goto :goto_3

    .line 68
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 63
    :catch_2
    move-exception v2

    goto :goto_1

    .line 73
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v7

    goto :goto_4
.end method

.method public static formatDateString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 128
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/android/util/Util;->DATE_FOPMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMimeType(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "fileName":Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 106
    .local v2, "lastPeriodIndex":I
    if-lez v2, :cond_0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 107
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "ext":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "mimetype":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 113
    .end local v0    # "ext":Ljava/lang/String;
    .end local v3    # "mimetype":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    sget-object v3, Lcom/xiaomi/infra/galaxy/fds/android/util/Consts;->APPLICATION_OCTET_STREAM:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 80
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 81
    .local v1, "stringWriter":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 82
    .local v0, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 84
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "dateString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 121
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/android/util/Util;->DATE_FOPMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
