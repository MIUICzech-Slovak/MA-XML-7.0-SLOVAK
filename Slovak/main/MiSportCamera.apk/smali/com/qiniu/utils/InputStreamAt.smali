.class public abstract Lcom/qiniu/utils/InputStreamAt;
.super Ljava/lang/Object;
.source "InputStreamAt.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/utils/InputStreamAt$ByteInput;,
        Lcom/qiniu/utils/InputStreamAt$CleanCallBack;,
        Lcom/qiniu/utils/InputStreamAt$FileInput;,
        Lcom/qiniu/utils/InputStreamAt$Input;,
        Lcom/qiniu/utils/InputStreamAt$UriInfo;,
        Lcom/qiniu/utils/InputStreamAt$UriInput;
    }
.end annotation


# instance fields
.field protected cleans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qiniu/utils/InputStreamAt$CleanCallBack;",
            ">;"
        }
    .end annotation
.end field

.field protected outterOffset:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qiniu/utils/InputStreamAt;->cleans:Ljava/util/ArrayList;

    .line 12
    return-void
.end method

.method protected static buildNextInput(Lcom/qiniu/utils/InputStreamAt;I)Lcom/qiniu/utils/InputStreamAt$Input;
    .locals 1
    .param p0, "isa"    # Lcom/qiniu/utils/InputStreamAt;
    .param p1, "len"    # I

    .prologue
    .line 58
    new-instance v0, Lcom/qiniu/utils/InputStreamAt$2;

    invoke-direct {v0, p0, p1}, Lcom/qiniu/utils/InputStreamAt$2;-><init>(Lcom/qiniu/utils/InputStreamAt;I)V

    return-object v0
.end method

.method public static fromByte([B)Lcom/qiniu/utils/InputStreamAt$ByteInput;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 54
    new-instance v0, Lcom/qiniu/utils/InputStreamAt$ByteInput;

    invoke-direct {v0, p0}, Lcom/qiniu/utils/InputStreamAt$ByteInput;-><init>([B)V

    return-object v0
.end method

.method public static fromFile(Ljava/io/File;)Lcom/qiniu/utils/InputStreamAt$FileInput;
    .locals 1
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/qiniu/utils/InputStreamAt$FileInput;

    invoke-direct {v0, p0}, Lcom/qiniu/utils/InputStreamAt$FileInput;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static fromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Lcom/qiniu/utils/InputStreamAt$FileInput;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/qiniu/utils/InputStreamAt;->fromInputStream(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Lcom/qiniu/utils/InputStreamAt$FileInput;

    move-result-object v0

    return-object v0
.end method

.method public static fromInputStream(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Lcom/qiniu/utils/InputStreamAt$FileInput;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/qiniu/utils/Util;->storeToFile(Landroid/content/Context;Ljava/io/InputStream;)Ljava/io/File;

    move-result-object v1

    .line 24
    .local v1, "file":Ljava/io/File;
    if-nez v1, :cond_0

    .line 25
    const/4 v3, 0x0

    .line 46
    :goto_0
    return-object v3

    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 30
    .local v2, "isa":Lcom/qiniu/utils/InputStreamAt$FileInput;
    :try_start_0
    new-instance v3, Lcom/qiniu/utils/InputStreamAt$FileInput;

    invoke-direct {v3, v1, p2}, Lcom/qiniu/utils/InputStreamAt$FileInput;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    .end local v2    # "isa":Lcom/qiniu/utils/InputStreamAt$FileInput;
    .local v3, "isa":Lcom/qiniu/utils/InputStreamAt$FileInput;
    :try_start_1
    iget-object v4, v3, Lcom/qiniu/utils/InputStreamAt$FileInput;->cleans:Ljava/util/ArrayList;

    new-instance v5, Lcom/qiniu/utils/InputStreamAt$1;

    invoke-direct {v5, v1}, Lcom/qiniu/utils/InputStreamAt$1;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 40
    .end local v3    # "isa":Lcom/qiniu/utils/InputStreamAt$FileInput;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "isa":Lcom/qiniu/utils/InputStreamAt$FileInput;
    :goto_1
    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 43
    :cond_1
    throw v0

    .line 39
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/qiniu/utils/InputStreamAt$UriInput;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 15
    new-instance v0, Lcom/qiniu/utils/InputStreamAt$UriInput;

    invoke-direct {v0, p0, p1}, Lcom/qiniu/utils/InputStreamAt$UriInput;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/qiniu/utils/InputStreamAt;->doClose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/qiniu/utils/InputStreamAt;->cleans:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    return-void

    .line 116
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/utils/InputStreamAt$CleanCallBack;

    .line 117
    .local v0, "clean":Lcom/qiniu/utils/InputStreamAt$CleanCallBack;
    :try_start_1
    invoke-interface {v0}, Lcom/qiniu/utils/InputStreamAt$CleanCallBack;->clean()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    .line 115
    .end local v0    # "clean":Lcom/qiniu/utils/InputStreamAt$CleanCallBack;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public abstract crc32()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract doClose()V
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getOffset()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/qiniu/utils/InputStreamAt;->outterOffset:J

    return-wide v0
.end method

.method public abstract length()J
.end method

.method protected abstract read(JI)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public readNext(I)Lcom/qiniu/utils/InputStreamAt$Input;
    .locals 5
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    int-to-long v1, p1

    iget-wide v3, p0, Lcom/qiniu/utils/InputStreamAt;->outterOffset:J

    add-long/2addr v1, v3

    invoke-virtual {p0}, Lcom/qiniu/utils/InputStreamAt;->length()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/qiniu/utils/InputStreamAt;->length()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/qiniu/utils/InputStreamAt;->outterOffset:J

    sub-long/2addr v1, v3

    long-to-int p1, v1

    .line 99
    :cond_0
    invoke-static {p0, p1}, Lcom/qiniu/utils/InputStreamAt;->buildNextInput(Lcom/qiniu/utils/InputStreamAt;I)Lcom/qiniu/utils/InputStreamAt$Input;

    move-result-object v0

    .line 100
    .local v0, "input":Lcom/qiniu/utils/InputStreamAt$Input;
    iget-wide v1, p0, Lcom/qiniu/utils/InputStreamAt;->outterOffset:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/qiniu/utils/InputStreamAt;->outterOffset:J

    .line 101
    return-object v0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qiniu/utils/InputStreamAt;->outterOffset:J

    .line 106
    return-void
.end method
