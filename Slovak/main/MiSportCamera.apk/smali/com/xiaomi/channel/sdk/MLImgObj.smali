.class public Lcom/xiaomi/channel/sdk/MLImgObj;
.super Ljava/lang/Object;
.source "MLImgObj.java"


# static fields
.field static final BMP_MAX_SIZE:I = 0x200000


# instance fields
.field public filePath:Ljava/lang/String;

.field private final imgBitmap:Landroid/graphics/Bitmap;

.field public mImgSize:J

.field final targetHeight:I

.field final targetWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v0, 0x164

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->targetWidth:I

    .line 16
    iput v0, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->targetHeight:I

    .line 19
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->mImgSize:J

    .line 22
    iput-object p1, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->imgBitmap:Landroid/graphics/Bitmap;

    .line 23
    return-void
.end method


# virtual methods
.method public getCompressBmp()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    .line 26
    iget-object v6, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->imgBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_0

    .line 27
    const/4 v6, 0x0

    .line 37
    :goto_0
    return-object v6

    .line 29
    :cond_0
    iget-object v6, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 30
    .local v5, "width":I
    iget-object v6, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 31
    .local v0, "height":I
    mul-int v6, v5, v0

    int-to-long v3, v6

    .line 32
    .local v3, "s":J
    iget-wide v6, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->mImgSize:J

    cmp-long v6, v3, v6

    if-gtz v6, :cond_1

    .line 33
    iget-object v6, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->imgBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 35
    :cond_1
    iget-wide v6, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->mImgSize:J

    div-long v6, v3, v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 37
    .local v1, "i":D
    iget-object v6, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->imgBitmap:Landroid/graphics/Bitmap;

    .line 38
    int-to-double v7, v5

    div-double/2addr v7, v1

    double-to-int v7, v7

    int-to-double v8, v0

    div-double/2addr v8, v1

    double-to-int v8, v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 37
    invoke-static {v6, v7, v8, v9}, Lcom/xiaomi/channel/sdk/ShareUtils;->compressBitmapWithNoDistortion(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0
.end method

.method public getImgBmp()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xiaomi/channel/sdk/MLImgObj;->imgBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
