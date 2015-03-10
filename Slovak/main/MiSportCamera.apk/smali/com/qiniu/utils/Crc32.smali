.class public Lcom/qiniu/utils/Crc32;
.super Ljava/lang/Object;
.source "Crc32.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calc(Ljava/io/File;)J
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 23
    .local v0, "fis":Ljava/io/FileInputStream;
    invoke-static {v0}, Lcom/qiniu/utils/Crc32;->calc(Ljava/io/InputStream;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static calc(Ljava/io/InputStream;)J
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 27
    const/high16 v0, 0x10000

    .line 28
    .local v0, "blockSize":I
    new-array v1, v0, [B

    .line 29
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .line 30
    .local v3, "read":I
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 31
    .local v2, "crc32":Ljava/util/zip/CRC32;
    :goto_0
    array-length v4, v1

    invoke-virtual {p0, v1, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gtz v3, :cond_0

    .line 34
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    return-wide v4

    .line 32
    :cond_0
    invoke-virtual {v2, v1, v5, v3}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_0
.end method

.method public static calc([B)J
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 18
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/qiniu/utils/Crc32;->calc([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static calc([BII)J
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 12
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 13
    .local v0, "crc32":Ljava/util/zip/CRC32;
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 14
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    return-wide v1
.end method
