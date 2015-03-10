.class public Lcom/dominantcolors/DominantColors;
.super Ljava/lang/Object;
.source "DominantColors.java"


# static fields
.field public static final DEFAULT_MIN_DIFF:D = 0.5

.field public static final DEFAULT_NUM_COLORS:I = 0x3

.field public static final SIDE_SIZE:I = 0x32


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    const-string v0, "dominantcolors"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateCenter(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "bSum":I
    move v1, v0

    .local v1, "gSum":I
    move v3, v0

    .line 150
    .local v3, "rSum":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 155
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 156
    const/4 v4, 0x0

    .line 158
    :goto_1
    return v4

    .line 150
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 151
    .local v2, "i":I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 152
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 153
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 158
    .end local v2    # "i":I
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    div-int v4, v3, v4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    div-int v5, v1, v5

    .line 159
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    div-int v6, v0, v6

    .line 158
    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    goto :goto_1
.end method

.method private static calculateDistance(II)D
    .locals 10
    .param p0, "c1"    # I
    .param p1, "c2"    # I

    .prologue
    const-wide v8, 0x3feccccccccccccdL    # 0.9

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 164
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v8

    const-wide v2, 0x3ff3333333333333L    # 1.2

    .line 165
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    .line 164
    add-double/2addr v0, v2

    .line 166
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 165
    mul-double/2addr v2, v8

    .line 164
    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDominantColors(Landroid/graphics/Bitmap;)[Lcom/dominantcolors/DominantColor;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 19
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/dominantcolors/DominantColors;->getDominantColors(Landroid/graphics/Bitmap;I)[Lcom/dominantcolors/DominantColor;

    move-result-object v0

    return-object v0
.end method

.method public static getDominantColors(Landroid/graphics/Bitmap;I)[Lcom/dominantcolors/DominantColor;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "numColors"    # I

    .prologue
    .line 23
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-static {p0, p1, v0, v1}, Lcom/dominantcolors/DominantColors;->getDominantColors(Landroid/graphics/Bitmap;ID)[Lcom/dominantcolors/DominantColor;

    move-result-object v0

    return-object v0
.end method

.method public static getDominantColors(Landroid/graphics/Bitmap;ID)[Lcom/dominantcolors/DominantColor;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "numColors"    # I
    .param p2, "minDiff"    # D

    .prologue
    .line 29
    const/16 v3, 0x32

    invoke-static {p0, v3}, Lcom/dominantcolors/DominantColors;->resizeToFitInSquare(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 30
    invoke-static {p0, p1}, Lcom/dominantcolors/DominantColors;->kmeans(Landroid/graphics/Bitmap;I)[I

    move-result-object v0

    .line 31
    .local v0, "c":[I
    if-nez v0, :cond_1

    .line 32
    const/4 v1, 0x0

    .line 40
    :cond_0
    return-object v1

    .line 35
    :cond_1
    new-array v1, p1, [Lcom/dominantcolors/DominantColor;

    .line 36
    .local v1, "colors":[Lcom/dominantcolors/DominantColor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 37
    new-instance v3, Lcom/dominantcolors/DominantColor;

    aget v4, v0, v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Lcom/dominantcolors/DominantColor;-><init>(IF)V

    aput-object v3, v1, v2

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getMeanShift(Landroid/graphics/Bitmap;F)[Lcom/dominantcolors/DominantColor;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # F

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/dominantcolors/DominantColors;->meanShift(Landroid/graphics/Bitmap;F)[I

    move-result-object v0

    .line 45
    .local v0, "c":[I
    array-length v3, v0

    new-array v1, v3, [Lcom/dominantcolors/DominantColor;

    .line 46
    .local v1, "colors":[Lcom/dominantcolors/DominantColor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 49
    return-object v1

    .line 47
    :cond_0
    new-instance v3, Lcom/dominantcolors/DominantColor;

    aget v4, v0, v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Lcom/dominantcolors/DominantColor;-><init>(IF)V

    aput-object v3, v1, v2

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static getPoints(Landroid/graphics/Bitmap;)[I
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    new-array v3, v5, [I

    .line 69
    .local v3, "points":[I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 70
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 72
    .local v0, "height":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 75
    return-object v3

    .line 73
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-lt v2, v4, :cond_1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_1
    mul-int v5, v1, v4

    add-int/2addr v5, v2

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    aput v6, v3, v5

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static getRandomMiddles([II)[I
    .locals 8
    .param p0, "points"    # [I
    .param p1, "numColors"    # I

    .prologue
    .line 129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v3, "indices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, p0

    if-lt v0, v7, :cond_0

    .line 133
    invoke-static {v3}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 134
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v4, "midArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-array v5, p1, [I

    .line 136
    .local v5, "middles":[I
    const/4 v1, 0x0

    .line 137
    .local v1, "index":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, p1, :cond_1

    .line 144
    return-object v5

    .line 131
    .end local v1    # "index":I
    .end local v4    # "midArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "middles":[I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .restart local v1    # "index":I
    .restart local v4    # "midArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v5    # "middles":[I
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget v6, p0, v7

    .line 139
    .local v6, "val":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 140
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    aput v6, v5, v7

    .line 141
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_1
.end method

.method private static kMeans([IID)[Lcom/dominantcolors/DominantColor;
    .locals 18
    .param p0, "points"    # [I
    .param p1, "numColors"    # I
    .param p2, "minDiff"    # D

    .prologue
    .line 81
    invoke-static/range {p0 .. p1}, Lcom/dominantcolors/DominantColors;->getRandomMiddles([II)[I

    move-result-object v7

    .line 82
    .local v7, "middles":[I
    move/from16 v0, p1

    new-array v1, v0, [Lcom/dominantcolors/DominantColor;

    .line 86
    .local v1, "colors":[Lcom/dominantcolors/DominantColor;
    :cond_0
    move/from16 v0, p1

    new-array v12, v0, [Ljava/util/ArrayList;

    .line 87
    .local v12, "newClusters":[Ljava/util/ArrayList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v0, p1

    if-lt v6, v0, :cond_1

    .line 90
    move-object/from16 v0, p0

    array-length v15, v0

    const/4 v14, 0x0

    :goto_1
    if-lt v14, v15, :cond_2

    .line 103
    const-wide/16 v2, 0x0

    .line 104
    .local v2, "diff":D
    const/4 v6, 0x0

    :goto_2
    array-length v14, v7

    if-lt v6, v14, :cond_5

    .line 109
    cmpg-double v14, v2, p2

    if-gez v14, :cond_0

    .line 110
    const/4 v6, 0x0

    :goto_3
    array-length v14, v7

    if-lt v6, v14, :cond_6

    .line 118
    new-instance v14, Lcom/dominantcolors/DominantColors$1;

    invoke-direct {v14}, Lcom/dominantcolors/DominantColors$1;-><init>()V

    invoke-static {v1, v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 125
    return-object v1

    .line 88
    .end local v2    # "diff":D
    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    aput-object v14, v12, v6

    .line 87
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 90
    :cond_2
    aget v13, p0, v14

    .line 91
    .local v13, "point":I
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 92
    .local v8, "minDist":D
    const/4 v10, 0x0

    .line 93
    .local v10, "minId":I
    const/4 v6, 0x0

    :goto_4
    array-length v0, v7

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v6, v0, :cond_3

    .line 100
    aget-object v16, v12, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 94
    :cond_3
    aget v16, v7, v6

    move/from16 v0, v16

    invoke-static {v13, v0}, Lcom/dominantcolors/DominantColors;->calculateDistance(II)D

    move-result-wide v4

    .line 95
    .local v4, "dist":D
    cmpg-double v16, v4, v8

    if-gez v16, :cond_4

    .line 96
    move-wide v8, v4

    .line 97
    move v10, v6

    .line 93
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 105
    .end local v4    # "dist":D
    .end local v8    # "minDist":D
    .end local v10    # "minId":I
    .end local v13    # "point":I
    .restart local v2    # "diff":D
    :cond_5
    aget-object v14, v12, v6

    invoke-static {v14}, Lcom/dominantcolors/DominantColors;->calculateCenter(Ljava/util/List;)I

    move-result v11

    .line 106
    .local v11, "newCenter":I
    aget v14, v7, v6

    invoke-static {v11, v14}, Lcom/dominantcolors/DominantColors;->calculateDistance(II)D

    move-result-wide v14

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 107
    aput v11, v7, v6

    .line 104
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 111
    .end local v11    # "newCenter":I
    :cond_6
    new-instance v14, Lcom/dominantcolors/DominantColor;

    aget v15, v7, v6

    .line 112
    aget-object v16, v12, v6

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    .line 113
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    .line 112
    div-float v16, v16, v17

    invoke-direct/range {v14 .. v16}, Lcom/dominantcolors/DominantColor;-><init>(IF)V

    .line 111
    aput-object v14, v1, v6

    .line 110
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method public static native kmeans(Landroid/graphics/Bitmap;I)[I
.end method

.method public static native meanShift(Landroid/graphics/Bitmap;F)[I
.end method

.method public static resizeToFitInSquare(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "side"    # I

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 56
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 57
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 56
    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 55
    invoke-static {p0, p1, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 64
    :cond_1
    :goto_0
    return-object p0

    .line 60
    :cond_2
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 61
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 60
    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 59
    invoke-static {p0, v0, p1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method
