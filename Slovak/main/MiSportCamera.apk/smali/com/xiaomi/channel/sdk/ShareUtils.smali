.class public Lcom/xiaomi/channel/sdk/ShareUtils;
.super Ljava/lang/Object;
.source "ShareUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "srcBmp"    # Landroid/graphics/Bitmap;
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v6, 0x0

    .line 70
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 71
    .local v4, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 72
    .local v3, "srcHeight":I
    if-ge v4, p1, :cond_0

    if-ge v3, p1, :cond_0

    .line 81
    .end local p0    # "srcBmp":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 75
    .restart local p0    # "srcBmp":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6, v6, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 76
    .local v2, "rcSrc":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v6, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 77
    .local v1, "rcDest":Landroid/graphics/Rect;
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 79
    .local v5, "targetBmp":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p0, v2, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object p0, v5

    .line 81
    goto :goto_0
.end method

.method public static compressBitmapWithNoDistortion(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "srcBmp"    # Landroid/graphics/Bitmap;
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 44
    .local v3, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 46
    .local v2, "srcHeight":I
    if-ge v3, p1, :cond_0

    if-ge v2, p1, :cond_0

    .line 55
    .end local p0    # "srcBmp":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 50
    .restart local p0    # "srcBmp":Landroid/graphics/Bitmap;
    :cond_0
    int-to-double v4, v3

    int-to-double v6, p1

    div-double/2addr v4, v6

    int-to-double v6, v2

    int-to-double v8, p2

    div-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 51
    int-to-double v4, v3

    int-to-double v6, p1

    div-double v0, v4, v6

    .line 53
    .local v0, "rate":D
    :goto_1
    int-to-double v4, v3

    div-double/2addr v4, v0

    double-to-int p1, v4

    .line 54
    int-to-double v4, v2

    div-double/2addr v4, v0

    double-to-int p2, v4

    .line 55
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/channel/sdk/ShareUtils;->compressBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 52
    .end local v0    # "rate":D
    :cond_1
    int-to-double v4, v2

    int-to-double v6, p2

    div-double v0, v4, v6

    goto :goto_1
.end method

.method public static createDirForNewFile(Ljava/lang/String;)V
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "dir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "dirFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 95
    :cond_0
    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 19
    if-nez p0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 23
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 24
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 25
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 22
    :goto_1
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 28
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 32
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 33
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 32
    invoke-virtual {p0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 35
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 26
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method public static getTmpImgFile()Ljava/io/File;
    .locals 7

    .prologue
    .line 99
    const/4 v2, 0x0

    .line 101
    .local v2, "imgFile":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/File;

    .line 102
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "miliaoshare"

    .line 101
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v4, "miliaoRoot":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v5, "images"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .local v1, "imageRoot":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    :cond_0
    new-instance v3, Ljava/io/File;

    .line 106
    const-string v5, "sharedSourceImgTmp.jpg"

    .line 105
    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "imgFile":Ljava/io/File;
    .local v3, "imgFile":Ljava/io/File;
    move-object v2, v3

    .line 111
    .end local v1    # "imageRoot":Ljava/io/File;
    .end local v3    # "imgFile":Ljava/io/File;
    .end local v4    # "miliaoRoot":Ljava/io/File;
    .restart local v2    # "imgFile":Ljava/io/File;
    :cond_1
    :goto_0
    return-object v2

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 2
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/channel/sdk/ShareUtils;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Z

    move-result v0

    return v0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .locals 5
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "quality"    # I

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 118
    .local v1, "output":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/channel/sdk/ShareUtils;->createDirForNewFile(Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 123
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .local v2, "output":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p0, p2, p3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 127
    if-eqz v2, :cond_1

    .line 129
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    move-object v1, v2

    .line 134
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    :goto_1
    return v3

    .line 125
    :catch_0
    move-exception v3

    .line 127
    :goto_2
    if-eqz v1, :cond_2

    .line 129
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 134
    :cond_2
    :goto_3
    const/4 v3, 0x0

    goto :goto_1

    .line 126
    :catchall_0
    move-exception v3

    .line 127
    :goto_4
    if-eqz v1, :cond_3

    .line 129
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 133
    :cond_3
    :goto_5
    throw v3

    .line 130
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    goto :goto_3

    :catch_3
    move-exception v4

    goto :goto_5

    .line 126
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 125
    .end local v1    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "output":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "output":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
