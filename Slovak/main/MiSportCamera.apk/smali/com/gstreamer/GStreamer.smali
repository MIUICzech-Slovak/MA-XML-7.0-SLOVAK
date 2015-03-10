.class public Lcom/gstreamer/GStreamer;
.super Ljava/lang/Object;
.source "GStreamer.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    :try_start_0
    const-string v1, "gstreamer_android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    const-string v1, "gstplayer"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 19
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 20
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyCaCertificates(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 53
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    .line 54
    .local v4, "filesDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v6, "ssl"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .local v5, "sslDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v6, "certs"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .local v2, "certsDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v6, "ca-certificates.crt"

    invoke-direct {v1, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .local v1, "certs":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 62
    :try_start_0
    const-string v6, "ssl/certs/ca-certificates.crt"

    invoke-static {v0, v6, v1}, Lcom/gstreamer/GStreamer;->copyFile(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v3

    .line 64
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static copyFile(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;)V
    .locals 5
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "outFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 74
    .local v0, "buffer":[B
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 77
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 78
    .local v1, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 79
    .local v2, "out":Ljava/io/OutputStream;
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "read":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 82
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 83
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 84
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 85
    return-void

    .line 80
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private static copyFonts(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 31
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 32
    .local v3, "filesDir":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v8, "fontconfig"

    invoke-direct {v7, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .local v7, "fontsFCDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v8, "fonts"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .local v6, "fontsDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v8, "fonts.conf"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    .local v5, "fontsCfg":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 40
    :try_start_0
    const-string v8, "fontconfig/fonts.conf"

    invoke-static {v0, v8, v5}, Lcom/gstreamer/GStreamer;->copyFile(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;)V

    .line 42
    const-string v8, "fontconfig/fonts/truetype"

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v10, :cond_0

    .line 49
    :goto_1
    return-void

    .line 42
    :cond_0
    aget-object v2, v9, v8

    .line 43
    .local v2, "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .local v4, "font":Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "fontconfig/fonts/truetype/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11, v4}, Lcom/gstreamer/GStreamer;->copyFile(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 46
    .end local v2    # "filename":Ljava/lang/String;
    .end local v4    # "font":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0}, Lcom/gstreamer/GStreamer;->nativeInit(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private static native nativeInit(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
