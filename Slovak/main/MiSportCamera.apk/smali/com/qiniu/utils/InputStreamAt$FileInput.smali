.class public Lcom/qiniu/utils/InputStreamAt$FileInput;
.super Lcom/qiniu/utils/InputStreamAt;
.source "InputStreamAt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/utils/InputStreamAt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileInput"
.end annotation


# instance fields
.field private final file:Ljava/io/File;

.field private final filename:Ljava/lang/String;

.field private final randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qiniu/utils/InputStreamAt$FileInput;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "aliasFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/qiniu/utils/InputStreamAt;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/qiniu/utils/InputStreamAt$FileInput;->file:Ljava/io/File;

    .line 178
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qiniu/utils/InputStreamAt$FileInput;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 179
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .end local p2    # "aliasFilename":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Lcom/qiniu/utils/InputStreamAt$FileInput;->filename:Ljava/lang/String;

    .line 180
    return-void

    .line 179
    .restart local p2    # "aliasFilename":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method public crc32()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$FileInput;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/qiniu/utils/Crc32;->calc(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public doClose()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$FileInput;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$FileInput;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$FileInput;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$FileInput;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method protected read(JI)[B
    .locals 3
    .param p1, "offset"    # J
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/qiniu/utils/InputStreamAt$FileInput;->length()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 209
    :goto_0
    return-object v0

    .line 205
    :cond_0
    new-array v0, p3, [B

    .line 206
    .local v0, "bs":[B
    iget-object v1, p0, Lcom/qiniu/utils/InputStreamAt$FileInput;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 207
    iget-object v1, p0, Lcom/qiniu/utils/InputStreamAt$FileInput;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 208
    int-to-long v1, p3

    add-long/2addr p1, v1

    .line 209
    goto :goto_0
.end method
