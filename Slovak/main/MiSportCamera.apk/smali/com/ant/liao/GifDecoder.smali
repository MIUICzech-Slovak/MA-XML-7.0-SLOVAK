.class public Lcom/ant/liao/GifDecoder;
.super Ljava/lang/Thread;
.source "GifDecoder.java"


# static fields
.field private static final MaxStackSize:I = 0x1000

.field public static final STATUS_FINISH:I = -0x1

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OPEN_ERROR:I = 0x2

.field public static final STATUS_PARSING:I


# instance fields
.field private act:[I

.field private action:Lcom/ant/liao/GifAction;

.field private bgColor:I

.field private bgIndex:I

.field private block:[B

.field private blockSize:I

.field private currentFrame:Lcom/ant/liao/GifFrame;

.field private delay:I

.field private dispose:I

.field private frameCount:I

.field private gct:[I

.field private gctFlag:Z

.field private gctSize:I

.field private gifData:[B

.field private gifFrame:Lcom/ant/liao/GifFrame;

.field public height:I

.field private ih:I

.field private image:Landroid/graphics/Bitmap;

.field private in:Ljava/io/InputStream;

.field private interlace:Z

.field private isShow:Z

.field private iw:I

.field private ix:I

.field private iy:I

.field private lastBgColor:I

.field private lastDispose:I

.field private lastImage:Landroid/graphics/Bitmap;

.field private lct:[I

.field private lctFlag:Z

.field private lctSize:I

.field private loopCount:I

.field private lrh:I

.field private lrw:I

.field private lrx:I

.field private lry:I

.field private pixelAspect:I

.field private pixelStack:[B

.field private pixels:[B

.field private prefix:[S

.field private status:I

.field private suffix:[B

.field private transIndex:I

.field private transparency:Z

.field public width:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/ant/liao/GifAction;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "act"    # Lcom/ant/liao/GifAction;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/ant/liao/GifDecoder;->loopCount:I

    .line 47
    iput-object v2, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    .line 49
    iput-boolean v1, p0, Lcom/ant/liao/GifDecoder;->isShow:Z

    .line 52
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->block:[B

    .line 53
    iput v1, p0, Lcom/ant/liao/GifDecoder;->blockSize:I

    .line 56
    iput v1, p0, Lcom/ant/liao/GifDecoder;->dispose:I

    .line 58
    iput v1, p0, Lcom/ant/liao/GifDecoder;->lastDispose:I

    .line 59
    iput-boolean v1, p0, Lcom/ant/liao/GifDecoder;->transparency:Z

    .line 60
    iput v1, p0, Lcom/ant/liao/GifDecoder;->delay:I

    .line 75
    iput-object v2, p0, Lcom/ant/liao/GifDecoder;->action:Lcom/ant/liao/GifAction;

    .line 78
    iput-object v2, p0, Lcom/ant/liao/GifDecoder;->gifData:[B

    .line 87
    iput-object p1, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    .line 88
    iput-object p2, p0, Lcom/ant/liao/GifDecoder;->action:Lcom/ant/liao/GifAction;

    .line 89
    return-void
.end method

.method public constructor <init>([BLcom/ant/liao/GifAction;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "act"    # Lcom/ant/liao/GifAction;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/ant/liao/GifDecoder;->loopCount:I

    .line 47
    iput-object v2, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    .line 49
    iput-boolean v1, p0, Lcom/ant/liao/GifDecoder;->isShow:Z

    .line 52
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->block:[B

    .line 53
    iput v1, p0, Lcom/ant/liao/GifDecoder;->blockSize:I

    .line 56
    iput v1, p0, Lcom/ant/liao/GifDecoder;->dispose:I

    .line 58
    iput v1, p0, Lcom/ant/liao/GifDecoder;->lastDispose:I

    .line 59
    iput-boolean v1, p0, Lcom/ant/liao/GifDecoder;->transparency:Z

    .line 60
    iput v1, p0, Lcom/ant/liao/GifDecoder;->delay:I

    .line 75
    iput-object v2, p0, Lcom/ant/liao/GifDecoder;->action:Lcom/ant/liao/GifAction;

    .line 78
    iput-object v2, p0, Lcom/ant/liao/GifDecoder;->gifData:[B

    .line 82
    iput-object p1, p0, Lcom/ant/liao/GifDecoder;->gifData:[B

    .line 83
    iput-object p2, p0, Lcom/ant/liao/GifDecoder;->action:Lcom/ant/liao/GifAction;

    .line 84
    return-void
.end method

.method private decodeImageData()V
    .locals 25

    .prologue
    .line 379
    const/4 v2, -0x1

    .line 380
    .local v2, "NullCode":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ant/liao/GifDecoder;->iw:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ant/liao/GifDecoder;->ih:I

    move/from16 v24, v0

    mul-int v17, v23, v24

    .line 383
    .local v17, "npix":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 384
    :cond_0
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ant/liao/GifDecoder;->pixels:[B

    .line 386
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 387
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [S

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ant/liao/GifDecoder;->prefix:[S

    .line 389
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 390
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ant/liao/GifDecoder;->suffix:[B

    .line 392
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 393
    const/16 v23, 0x1001

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ant/liao/GifDecoder;->pixelStack:[B

    .line 396
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v11

    .line 397
    .local v11, "data_size":I
    const/16 v23, 0x1

    shl-int v6, v23, v11

    .line 398
    .local v6, "clear":I
    add-int/lit8 v13, v6, 0x1

    .line 399
    .local v13, "end_of_information":I
    add-int/lit8 v3, v6, 0x2

    .line 400
    .local v3, "available":I
    move/from16 v18, v2

    .line 401
    .local v18, "old_code":I
    add-int/lit8 v9, v11, 0x1

    .line 402
    .local v9, "code_size":I
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 403
    .local v8, "code_mask":I
    const/4 v7, 0x0

    .local v7, "code":I
    :goto_0
    if-lt v7, v6, :cond_6

    .line 409
    const/4 v4, 0x0

    .local v4, "bi":I
    move/from16 v19, v4

    .local v19, "pi":I
    move/from16 v21, v4

    .local v21, "top":I
    move v14, v4

    .local v14, "first":I
    move v10, v4

    .local v10, "count":I
    move v5, v4

    .local v5, "bits":I
    move v12, v4

    .line 410
    .local v12, "datum":I
    const/4 v15, 0x0

    .local v15, "i":I
    move/from16 v20, v19

    .end local v19    # "pi":I
    .local v20, "pi":I
    move/from16 v22, v21

    .end local v21    # "top":I
    .local v22, "top":I
    :goto_1
    move/from16 v0, v17

    if-lt v15, v0, :cond_7

    :cond_5
    move/from16 v21, v22

    .line 482
    .end local v22    # "top":I
    .restart local v21    # "top":I
    :goto_2
    move/from16 v15, v20

    :goto_3
    move/from16 v0, v17

    if-lt v15, v0, :cond_12

    .line 485
    return-void

    .line 404
    .end local v4    # "bi":I
    .end local v5    # "bits":I
    .end local v10    # "count":I
    .end local v12    # "datum":I
    .end local v14    # "first":I
    .end local v15    # "i":I
    .end local v20    # "pi":I
    .end local v21    # "top":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-short v24, v23, v7

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v7

    move/from16 v24, v0

    aput-byte v24, v23, v7

    .line 403
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 411
    .restart local v4    # "bi":I
    .restart local v5    # "bits":I
    .restart local v10    # "count":I
    .restart local v12    # "datum":I
    .restart local v14    # "first":I
    .restart local v15    # "i":I
    .restart local v20    # "pi":I
    .restart local v22    # "top":I
    :cond_7
    if-nez v22, :cond_13

    .line 412
    if-ge v5, v9, :cond_a

    .line 414
    if-nez v10, :cond_9

    .line 416
    invoke-direct/range {p0 .. p0}, Lcom/ant/liao/GifDecoder;->readBlock()I

    move-result v10

    .line 417
    if-gtz v10, :cond_8

    move/from16 v21, v22

    .line 418
    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto :goto_2

    .line 420
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_8
    const/4 v4, 0x0

    .line 422
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->block:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v4

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int v23, v23, v5

    add-int v12, v12, v23

    .line 423
    add-int/lit8 v5, v5, 0x8

    .line 424
    add-int/lit8 v4, v4, 0x1

    .line 425
    add-int/lit8 v10, v10, -0x1

    .line 426
    goto :goto_1

    .line 429
    :cond_a
    and-int v7, v12, v8

    .line 430
    shr-int/2addr v12, v9

    .line 431
    sub-int/2addr v5, v9

    .line 434
    if-gt v7, v3, :cond_5

    if-ne v7, v13, :cond_b

    move/from16 v21, v22

    .line 435
    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto :goto_2

    .line 437
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_b
    if-ne v7, v6, :cond_c

    .line 439
    add-int/lit8 v9, v11, 0x1

    .line 440
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 441
    add-int/lit8 v3, v6, 0x2

    .line 442
    move/from16 v18, v2

    .line 443
    goto :goto_1

    .line 445
    :cond_c
    move/from16 v0, v18

    if-ne v0, v2, :cond_d

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 447
    move/from16 v18, v7

    .line 448
    move v14, v7

    move/from16 v22, v21

    .line 449
    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto/16 :goto_1

    .line 451
    :cond_d
    move/from16 v16, v7

    .line 452
    .local v16, "in_code":I
    if-ne v7, v3, :cond_e

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 454
    move/from16 v7, v18

    move/from16 v22, v21

    .line 456
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_e
    :goto_4
    if-gt v7, v6, :cond_f

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v7

    move/from16 v0, v23

    and-int/lit16 v14, v0, 0xff

    .line 462
    const/16 v23, 0x1000

    move/from16 v0, v23

    if-lt v3, v0, :cond_10

    move/from16 v21, v22

    .line 463
    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_2

    .line 457
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    aget-short v7, v23, v7

    move/from16 v22, v21

    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto :goto_4

    .line 465
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v24, v0

    aput-short v24, v23, v3

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v3

    .line 468
    add-int/lit8 v3, v3, 0x1

    .line 469
    and-int v23, v3, v8

    if-nez v23, :cond_11

    .line 470
    const/16 v23, 0x1000

    move/from16 v0, v23

    if-ge v3, v0, :cond_11

    .line 471
    add-int/lit8 v9, v9, 0x1

    .line 472
    add-int/2addr v8, v3

    .line 474
    :cond_11
    move/from16 v18, v16

    .line 478
    .end local v16    # "in_code":I
    :goto_5
    add-int/lit8 v21, v21, -0x1

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "pi":I
    .restart local v19    # "pi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->pixelStack:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v21

    aput-byte v24, v23, v20

    .line 480
    add-int/lit8 v15, v15, 0x1

    move/from16 v20, v19

    .end local v19    # "pi":I
    .restart local v20    # "pi":I
    move/from16 v22, v21

    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto/16 :goto_1

    .line 483
    .end local v22    # "top":I
    .restart local v21    # "top":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-byte v24, v23, v15

    .line 482
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_13
    move/from16 v21, v22

    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto :goto_5
.end method

.method private err()Z
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/ant/liao/GifDecoder;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 492
    iput v1, p0, Lcom/ant/liao/GifDecoder;->status:I

    .line 493
    iput v1, p0, Lcom/ant/liao/GifDecoder;->frameCount:I

    .line 494
    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    .line 495
    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->gct:[I

    .line 496
    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->lct:[I

    .line 497
    return-void
.end method

.method private read()I
    .locals 3

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 503
    .local v0, "curByte":I
    :try_start_0
    iget-object v2, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 507
    :goto_0
    return v0

    .line 504
    :catch_0
    move-exception v1

    .line 505
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    iput v2, p0, Lcom/ant/liao/GifDecoder;->status:I

    goto :goto_0
.end method

.method private readBlock()I
    .locals 6

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v3

    iput v3, p0, Lcom/ant/liao/GifDecoder;->blockSize:I

    .line 515
    const/4 v2, 0x0

    .line 516
    .local v2, "n":I
    iget v3, p0, Lcom/ant/liao/GifDecoder;->blockSize:I

    if-lez v3, :cond_1

    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, "count":I
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/ant/liao/GifDecoder;->blockSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v3, :cond_2

    .line 529
    :cond_0
    :goto_1
    iget v3, p0, Lcom/ant/liao/GifDecoder;->blockSize:I

    if-ge v2, v3, :cond_1

    .line 530
    const/4 v3, 0x1

    iput v3, p0, Lcom/ant/liao/GifDecoder;->status:I

    .line 533
    .end local v0    # "count":I
    :cond_1
    return v2

    .line 520
    .restart local v0    # "count":I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/ant/liao/GifDecoder;->block:[B

    iget v5, p0, Lcom/ant/liao/GifDecoder;->blockSize:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 521
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 524
    add-int/2addr v2, v0

    goto :goto_0

    .line 526
    :catch_0
    move-exception v1

    .line 527
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private readByte()I
    .locals 2

    .prologue
    .line 341
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/ant/liao/GifDecoder;->gifData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->gifData:[B

    .line 343
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readStream()I

    move-result v0

    return v0
.end method

.method private readColorTable(I)[I
    .locals 14
    .param p1, "ncolors"    # I

    .prologue
    .line 537
    mul-int/lit8 v9, p1, 0x3

    .line 538
    .local v9, "nbytes":I
    const/4 v11, 0x0

    check-cast v11, [I

    .line 539
    .local v11, "tab":[I
    new-array v1, v9, [B

    .line 540
    .local v1, "c":[B
    const/4 v8, 0x0

    .line 542
    .local v8, "n":I
    :try_start_0
    iget-object v12, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v12, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 546
    :goto_0
    if-ge v8, v9, :cond_1

    .line 547
    const/4 v12, 0x1

    iput v12, p0, Lcom/ant/liao/GifDecoder;->status:I

    .line 559
    :cond_0
    return-object v11

    .line 543
    :catch_0
    move-exception v2

    .line 544
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 549
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v12, 0x100

    new-array v11, v12, [I

    .line 550
    const/4 v4, 0x0

    .line 551
    .local v4, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    move v7, v6

    .end local v6    # "j":I
    .local v7, "j":I
    move v5, v4

    .line 552
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_1
    if-ge v5, p1, :cond_0

    .line 553
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    aget-byte v12, v1, v7

    and-int/lit16 v10, v12, 0xff

    .line 554
    .local v10, "r":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    aget-byte v12, v1, v6

    and-int/lit16 v3, v12, 0xff

    .line 555
    .local v3, "g":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    aget-byte v12, v1, v7

    and-int/lit16 v0, v12, 0xff

    .line 556
    .local v0, "b":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/high16 v12, -0x1000000

    shl-int/lit8 v13, v10, 0x10

    or-int/2addr v12, v13

    shl-int/lit8 v13, v3, 0x8

    or-int/2addr v12, v13

    or-int/2addr v12, v0

    aput v12, v11, v5

    move v7, v6

    .end local v6    # "j":I
    .restart local v7    # "j":I
    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1
.end method

.method private readContents()V
    .locals 6

    .prologue
    .line 564
    const/4 v2, 0x0

    .line 565
    .local v2, "done":Z
    :goto_0
    :sswitch_0
    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->err()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 602
    :cond_0
    return-void

    .line 566
    :cond_1
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v1

    .line 567
    .local v1, "code":I
    sparse-switch v1, :sswitch_data_0

    .line 599
    const/4 v4, 0x1

    iput v4, p0, Lcom/ant/liao/GifDecoder;->status:I

    goto :goto_0

    .line 569
    :sswitch_1
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readImage()V

    goto :goto_0

    .line 572
    :sswitch_2
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v1

    .line 573
    sparse-switch v1, :sswitch_data_1

    .line 590
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->skip()V

    goto :goto_0

    .line 575
    :sswitch_3
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readGraphicControlExt()V

    goto :goto_0

    .line 578
    :sswitch_4
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readBlock()I

    .line 579
    const-string v0, ""

    .line 580
    .local v0, "app":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v4, 0xb

    if-lt v3, v4, :cond_2

    .line 583
    const-string v4, "NETSCAPE2.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 584
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readNetscapeExt()V

    goto :goto_0

    .line 581
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ant/liao/GifDecoder;->block:[B

    aget-byte v5, v5, v3

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 586
    :cond_3
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->skip()V

    goto :goto_0

    .line 594
    .end local v0    # "app":Ljava/lang/String;
    .end local v3    # "i":I
    :sswitch_5
    const/4 v2, 0x1

    .line 595
    goto :goto_0

    .line 567
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_5
    .end sparse-switch

    .line 573
    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method private readGraphicControlExt()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 605
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    .line 606
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v0

    .line 607
    .local v0, "packed":I
    and-int/lit8 v2, v0, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/ant/liao/GifDecoder;->dispose:I

    .line 608
    iget v2, p0, Lcom/ant/liao/GifDecoder;->dispose:I

    if-nez v2, :cond_0

    .line 609
    iput v1, p0, Lcom/ant/liao/GifDecoder;->dispose:I

    .line 611
    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/ant/liao/GifDecoder;->transparency:Z

    .line 612
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/ant/liao/GifDecoder;->delay:I

    .line 613
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/ant/liao/GifDecoder;->transIndex:I

    .line 614
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    .line 615
    return-void

    .line 611
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readHeader()V
    .locals 4

    .prologue
    .line 618
    const-string v1, ""

    .line 619
    .local v1, "id":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-lt v0, v2, :cond_1

    .line 622
    const-string v2, "GIF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 623
    const/4 v2, 0x1

    iput v2, p0, Lcom/ant/liao/GifDecoder;->status:I

    .line 631
    :cond_0
    :goto_1
    return-void

    .line 620
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 619
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    :cond_2
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readLSD()V

    .line 627
    iget-boolean v2, p0, Lcom/ant/liao/GifDecoder;->gctFlag:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_0

    .line 628
    iget v2, p0, Lcom/ant/liao/GifDecoder;->gctSize:I

    invoke-direct {p0, v2}, Lcom/ant/liao/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/ant/liao/GifDecoder;->gct:[I

    .line 629
    iget-object v2, p0, Lcom/ant/liao/GifDecoder;->gct:[I

    iget v3, p0, Lcom/ant/liao/GifDecoder;->bgIndex:I

    aget v2, v2, v3

    iput v2, p0, Lcom/ant/liao/GifDecoder;->bgColor:I

    goto :goto_1
.end method

.method private readImage()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 634
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readShort()I

    move-result v3

    iput v3, p0, Lcom/ant/liao/GifDecoder;->ix:I

    .line 635
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readShort()I

    move-result v3

    iput v3, p0, Lcom/ant/liao/GifDecoder;->iy:I

    .line 636
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readShort()I

    move-result v3

    iput v3, p0, Lcom/ant/liao/GifDecoder;->iw:I

    .line 637
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readShort()I

    move-result v3

    iput v3, p0, Lcom/ant/liao/GifDecoder;->ih:I

    .line 638
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v1

    .line 639
    .local v1, "packed":I
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_4

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/ant/liao/GifDecoder;->lctFlag:Z

    .line 640
    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_5

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/ant/liao/GifDecoder;->interlace:Z

    .line 643
    const/4 v3, 0x2

    and-int/lit8 v6, v1, 0x7

    shl-int/2addr v3, v6

    iput v3, p0, Lcom/ant/liao/GifDecoder;->lctSize:I

    .line 644
    iget-boolean v3, p0, Lcom/ant/liao/GifDecoder;->lctFlag:Z

    if-eqz v3, :cond_6

    .line 645
    iget v3, p0, Lcom/ant/liao/GifDecoder;->lctSize:I

    invoke-direct {p0, v3}, Lcom/ant/liao/GifDecoder;->readColorTable(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/ant/liao/GifDecoder;->lct:[I

    .line 646
    iget-object v3, p0, Lcom/ant/liao/GifDecoder;->lct:[I

    iput-object v3, p0, Lcom/ant/liao/GifDecoder;->act:[I

    .line 653
    :cond_0
    :goto_2
    const/4 v2, 0x0

    .line 654
    .local v2, "save":I
    iget-boolean v3, p0, Lcom/ant/liao/GifDecoder;->transparency:Z

    if-eqz v3, :cond_1

    .line 655
    iget-object v3, p0, Lcom/ant/liao/GifDecoder;->act:[I

    iget v6, p0, Lcom/ant/liao/GifDecoder;->transIndex:I

    aget v2, v3, v6

    .line 656
    iget-object v3, p0, Lcom/ant/liao/GifDecoder;->act:[I

    iget v6, p0, Lcom/ant/liao/GifDecoder;->transIndex:I

    aput v5, v3, v6

    .line 658
    :cond_1
    iget-object v3, p0, Lcom/ant/liao/GifDecoder;->act:[I

    if-nez v3, :cond_2

    .line 659
    iput v4, p0, Lcom/ant/liao/GifDecoder;->status:I

    .line 661
    :cond_2
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->err()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 691
    :cond_3
    :goto_3
    return-void

    .end local v2    # "save":I
    :cond_4
    move v3, v5

    .line 639
    goto :goto_0

    :cond_5
    move v3, v5

    .line 640
    goto :goto_1

    .line 648
    :cond_6
    iget-object v3, p0, Lcom/ant/liao/GifDecoder;->gct:[I

    iput-object v3, p0, Lcom/ant/liao/GifDecoder;->act:[I

    .line 649
    iget v3, p0, Lcom/ant/liao/GifDecoder;->bgIndex:I

    iget v6, p0, Lcom/ant/liao/GifDecoder;->transIndex:I

    if-ne v3, v6, :cond_0

    .line 650
    iput v5, p0, Lcom/ant/liao/GifDecoder;->bgColor:I

    goto :goto_2

    .line 664
    .restart local v2    # "save":I
    :cond_7
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->decodeImageData()V

    .line 665
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->skip()V

    .line 666
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->err()Z

    move-result v3

    if-nez v3, :cond_3

    .line 669
    iget v3, p0, Lcom/ant/liao/GifDecoder;->frameCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/ant/liao/GifDecoder;->frameCount:I

    .line 671
    iget v3, p0, Lcom/ant/liao/GifDecoder;->width:I

    iget v5, p0, Lcom/ant/liao/GifDecoder;->height:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/ant/liao/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 673
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->setPixels()V

    .line 674
    iget-object v3, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    if-nez v3, :cond_9

    .line 675
    new-instance v3, Lcom/ant/liao/GifFrame;

    iget-object v5, p0, Lcom/ant/liao/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/ant/liao/GifDecoder;->delay:I

    invoke-direct {v3, v5, v6}, Lcom/ant/liao/GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v3, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    .line 676
    iget-object v3, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    iput-object v3, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    .line 686
    :goto_4
    iget-boolean v3, p0, Lcom/ant/liao/GifDecoder;->transparency:Z

    if-eqz v3, :cond_8

    .line 687
    iget-object v3, p0, Lcom/ant/liao/GifDecoder;->act:[I

    iget v5, p0, Lcom/ant/liao/GifDecoder;->transIndex:I

    aput v2, v3, v5

    .line 689
    :cond_8
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->resetFrame()V

    .line 690
    iget-object v3, p0, Lcom/ant/liao/GifDecoder;->action:Lcom/ant/liao/GifAction;

    iget v5, p0, Lcom/ant/liao/GifDecoder;->frameCount:I

    invoke-interface {v3, v4, v5}, Lcom/ant/liao/GifAction;->parseOk(ZI)V

    goto :goto_3

    .line 678
    :cond_9
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    .line 679
    .local v0, "f":Lcom/ant/liao/GifFrame;
    :goto_5
    iget-object v3, v0, Lcom/ant/liao/GifFrame;->nextFrame:Lcom/ant/liao/GifFrame;

    if-nez v3, :cond_a

    .line 682
    new-instance v3, Lcom/ant/liao/GifFrame;

    iget-object v5, p0, Lcom/ant/liao/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/ant/liao/GifDecoder;->delay:I

    invoke-direct {v3, v5, v6}, Lcom/ant/liao/GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v3, v0, Lcom/ant/liao/GifFrame;->nextFrame:Lcom/ant/liao/GifFrame;

    goto :goto_4

    .line 680
    :cond_a
    iget-object v0, v0, Lcom/ant/liao/GifFrame;->nextFrame:Lcom/ant/liao/GifFrame;

    goto :goto_5
.end method

.method private readLSD()V
    .locals 3

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lcom/ant/liao/GifDecoder;->width:I

    .line 696
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lcom/ant/liao/GifDecoder;->height:I

    .line 698
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v0

    .line 699
    .local v0, "packed":I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/ant/liao/GifDecoder;->gctFlag:Z

    .line 702
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x7

    shl-int/2addr v1, v2

    iput v1, p0, Lcom/ant/liao/GifDecoder;->gctSize:I

    .line 703
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/ant/liao/GifDecoder;->bgIndex:I

    .line 704
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/ant/liao/GifDecoder;->pixelAspect:I

    .line 705
    return-void

    .line 699
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readNetscapeExt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 709
    :cond_0
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readBlock()I

    .line 710
    iget-object v2, p0, Lcom/ant/liao/GifDecoder;->block:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    .line 712
    iget-object v2, p0, Lcom/ant/liao/GifDecoder;->block:[B

    aget-byte v2, v2, v4

    and-int/lit16 v0, v2, 0xff

    .line 713
    .local v0, "b1":I
    iget-object v2, p0, Lcom/ant/liao/GifDecoder;->block:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 714
    .local v1, "b2":I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    iput v2, p0, Lcom/ant/liao/GifDecoder;->loopCount:I

    .line 716
    .end local v0    # "b1":I
    .end local v1    # "b2":I
    :cond_1
    iget v2, p0, Lcom/ant/liao/GifDecoder;->blockSize:I

    if-lez v2, :cond_2

    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->err()Z

    move-result v2

    .line 708
    if-eqz v2, :cond_0

    .line 717
    :cond_2
    return-void
.end method

.method private readShort()I
    .locals 2

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v0

    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private readStream()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 352
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->init()V

    .line 353
    iget-object v1, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    .line 354
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readHeader()V

    .line 355
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->err()Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readContents()V

    .line 357
    iget v1, p0, Lcom/ant/liao/GifDecoder;->frameCount:I

    if-gez v1, :cond_1

    .line 358
    iput v4, p0, Lcom/ant/liao/GifDecoder;->status:I

    .line 359
    iget-object v1, p0, Lcom/ant/liao/GifDecoder;->action:Lcom/ant/liao/GifAction;

    invoke-interface {v1, v3, v2}, Lcom/ant/liao/GifAction;->parseOk(ZI)V

    .line 366
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_1
    iget v1, p0, Lcom/ant/liao/GifDecoder;->status:I

    return v1

    .line 361
    :cond_1
    iput v2, p0, Lcom/ant/liao/GifDecoder;->status:I

    .line 362
    iget-object v1, p0, Lcom/ant/liao/GifDecoder;->action:Lcom/ant/liao/GifAction;

    invoke-interface {v1, v4, v2}, Lcom/ant/liao/GifAction;->parseOk(ZI)V

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 372
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/ant/liao/GifDecoder;->status:I

    .line 373
    iget-object v1, p0, Lcom/ant/liao/GifDecoder;->action:Lcom/ant/liao/GifAction;

    invoke-interface {v1, v3, v2}, Lcom/ant/liao/GifAction;->parseOk(ZI)V

    goto :goto_1
.end method

.method private resetFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 725
    iget v0, p0, Lcom/ant/liao/GifDecoder;->dispose:I

    iput v0, p0, Lcom/ant/liao/GifDecoder;->lastDispose:I

    .line 726
    iget v0, p0, Lcom/ant/liao/GifDecoder;->ix:I

    iput v0, p0, Lcom/ant/liao/GifDecoder;->lrx:I

    .line 727
    iget v0, p0, Lcom/ant/liao/GifDecoder;->iy:I

    iput v0, p0, Lcom/ant/liao/GifDecoder;->lry:I

    .line 728
    iget v0, p0, Lcom/ant/liao/GifDecoder;->iw:I

    iput v0, p0, Lcom/ant/liao/GifDecoder;->lrw:I

    .line 729
    iget v0, p0, Lcom/ant/liao/GifDecoder;->ih:I

    iput v0, p0, Lcom/ant/liao/GifDecoder;->lrh:I

    .line 730
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    .line 731
    iget v0, p0, Lcom/ant/liao/GifDecoder;->bgColor:I

    iput v0, p0, Lcom/ant/liao/GifDecoder;->lastBgColor:I

    .line 732
    iput v1, p0, Lcom/ant/liao/GifDecoder;->dispose:I

    .line 733
    iput-boolean v1, p0, Lcom/ant/liao/GifDecoder;->transparency:Z

    .line 734
    iput v1, p0, Lcom/ant/liao/GifDecoder;->delay:I

    .line 735
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->lct:[I

    .line 736
    return-void
.end method

.method private setPixels()V
    .locals 25

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ant/liao/GifDecoder;->height:I

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    .line 192
    .local v3, "dest":[I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->lastDispose:I

    if-lez v2, :cond_2

    .line 193
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->lastDispose:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 195
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->frameCount:I

    add-int/lit8 v19, v2, -0x2

    .line 196
    .local v19, "n":I
    if-lez v19, :cond_3

    .line 197
    add-int/lit8 v2, v19, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ant/liao/GifDecoder;->getFrameImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ant/liao/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    .line 202
    .end local v19    # "n":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ant/liao/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ant/liao/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ant/liao/GifDecoder;->width:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/ant/liao/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/ant/liao/GifDecoder;->height:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 205
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->lastDispose:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 207
    const/4 v10, 0x0

    .line 208
    .local v10, "c":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ant/liao/GifDecoder;->transparency:Z

    if-nez v2, :cond_1

    .line 209
    move-object/from16 v0, p0

    iget v10, v0, Lcom/ant/liao/GifDecoder;->lastBgColor:I

    .line 211
    :cond_1
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->lrh:I

    if-lt v13, v2, :cond_4

    .line 223
    .end local v10    # "c":I
    .end local v13    # "i":I
    :cond_2
    const/16 v22, 0x1

    .line 224
    .local v22, "pass":I
    const/16 v15, 0x8

    .line 225
    .local v15, "inc":I
    const/4 v14, 0x0

    .line 226
    .local v14, "iline":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->ih:I

    if-lt v13, v2, :cond_6

    .line 267
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ant/liao/GifDecoder;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ant/liao/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 268
    return-void

    .line 199
    .end local v13    # "i":I
    .end local v14    # "iline":I
    .end local v15    # "inc":I
    .end local v22    # "pass":I
    .restart local v19    # "n":I
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ant/liao/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 212
    .end local v19    # "n":I
    .restart local v10    # "c":I
    .restart local v13    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->lry:I

    add-int/2addr v2, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ant/liao/GifDecoder;->width:I

    mul-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ant/liao/GifDecoder;->lrx:I

    add-int v20, v2, v4

    .line 213
    .local v20, "n1":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->lrw:I

    add-int v21, v20, v2

    .line 214
    .local v21, "n2":I
    move/from16 v17, v20

    .local v17, "k":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v21

    if-lt v0, v1, :cond_5

    .line 211
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 215
    :cond_5
    aput v10, v3, v17

    .line 214
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 227
    .end local v10    # "c":I
    .end local v17    # "k":I
    .end local v20    # "n1":I
    .end local v21    # "n2":I
    .restart local v14    # "iline":I
    .restart local v15    # "inc":I
    .restart local v22    # "pass":I
    :cond_6
    move/from16 v18, v13

    .line 228
    .local v18, "line":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ant/liao/GifDecoder;->interlace:Z

    if-eqz v2, :cond_8

    .line 229
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->ih:I

    if-lt v14, v2, :cond_7

    .line 230
    add-int/lit8 v22, v22, 0x1

    .line 231
    packed-switch v22, :pswitch_data_0

    .line 244
    :cond_7
    :goto_4
    move/from16 v18, v14

    .line 245
    add-int/2addr v14, v15

    .line 247
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->iy:I

    add-int v18, v18, v2

    .line 248
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->height:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_a

    .line 249
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->width:I

    mul-int v17, v18, v2

    .line 250
    .restart local v17    # "k":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->ix:I

    add-int v12, v17, v2

    .line 251
    .local v12, "dx":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->iw:I

    add-int v11, v12, v2

    .line 252
    .local v11, "dlim":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->width:I

    add-int v2, v2, v17

    if-ge v2, v11, :cond_9

    .line 253
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->width:I

    add-int v11, v17, v2

    .line 255
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->iw:I

    mul-int v23, v13, v2

    .local v23, "sx":I
    move/from16 v24, v23

    .line 256
    .end local v23    # "sx":I
    .local v24, "sx":I
    :goto_5
    if-lt v12, v11, :cond_b

    .line 226
    .end local v11    # "dlim":I
    .end local v12    # "dx":I
    .end local v17    # "k":I
    .end local v24    # "sx":I
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 233
    :pswitch_0
    const/4 v14, 0x4

    .line 234
    goto :goto_4

    .line 236
    :pswitch_1
    const/4 v14, 0x2

    .line 237
    const/4 v15, 0x4

    .line 238
    goto :goto_4

    .line 240
    :pswitch_2
    const/4 v14, 0x1

    .line 241
    const/4 v15, 0x2

    goto :goto_4

    .line 258
    .restart local v11    # "dlim":I
    .restart local v12    # "dx":I
    .restart local v17    # "k":I
    .restart local v24    # "sx":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ant/liao/GifDecoder;->pixels:[B

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "sx":I
    .restart local v23    # "sx":I
    aget-byte v2, v2, v24

    and-int/lit16 v0, v2, 0xff

    move/from16 v16, v0

    .line 259
    .local v16, "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ant/liao/GifDecoder;->act:[I

    aget v10, v2, v16

    .line 260
    .restart local v10    # "c":I
    if-eqz v10, :cond_c

    .line 261
    aput v10, v3, v12

    .line 263
    :cond_c
    add-int/lit8 v12, v12, 0x1

    move/from16 v24, v23

    .end local v23    # "sx":I
    .restart local v24    # "sx":I
    goto :goto_5

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private skip()V
    .locals 1

    .prologue
    .line 743
    :cond_0
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readBlock()I

    .line 744
    iget v0, p0, Lcom/ant/liao/GifDecoder;->blockSize:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->err()Z

    move-result v0

    .line 742
    if-eqz v0, :cond_0

    .line 745
    :cond_1
    return-void
.end method


# virtual methods
.method public free()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    .line 105
    .local v0, "fg":Lcom/ant/liao/GifFrame;
    :goto_0
    if-nez v0, :cond_1

    .line 111
    iget-object v1, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_1
    iput-object v2, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    .line 117
    :cond_0
    iput-object v2, p0, Lcom/ant/liao/GifDecoder;->gifData:[B

    .line 118
    return-void

    .line 106
    :cond_1
    iput-object v2, v0, Lcom/ant/liao/GifFrame;->image:Landroid/graphics/Bitmap;

    .line 107
    const/4 v0, 0x0

    .line 108
    iget-object v1, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    iget-object v1, v1, Lcom/ant/liao/GifFrame;->nextFrame:Lcom/ant/liao/GifFrame;

    iput-object v1, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    .line 109
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getCurrentFrame()Lcom/ant/liao/GifFrame;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    return-object v0
.end method

.method public getDelay(I)I
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 142
    const/4 v1, -0x1

    iput v1, p0, Lcom/ant/liao/GifDecoder;->delay:I

    .line 143
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/ant/liao/GifDecoder;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 145
    invoke-virtual {p0, p1}, Lcom/ant/liao/GifDecoder;->getFrame(I)Lcom/ant/liao/GifFrame;

    move-result-object v0

    .line 146
    .local v0, "f":Lcom/ant/liao/GifFrame;
    if-eqz v0, :cond_0

    .line 147
    iget v1, v0, Lcom/ant/liao/GifFrame;->delay:I

    iput v1, p0, Lcom/ant/liao/GifDecoder;->delay:I

    .line 149
    .end local v0    # "f":Lcom/ant/liao/GifFrame;
    :cond_0
    iget v1, p0, Lcom/ant/liao/GifDecoder;->delay:I

    return v1
.end method

.method public getDelays()[I
    .locals 4

    .prologue
    .line 157
    iget-object v1, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    .line 158
    .local v1, "f":Lcom/ant/liao/GifFrame;
    iget v3, p0, Lcom/ant/liao/GifDecoder;->frameCount:I

    new-array v0, v3, [I

    .line 159
    .local v0, "d":[I
    const/4 v2, 0x0

    .line 160
    .local v2, "i":I
    :goto_0
    if-eqz v1, :cond_0

    iget v3, p0, Lcom/ant/liao/GifDecoder;->frameCount:I

    if-lt v2, v3, :cond_1

    .line 165
    :cond_0
    return-object v0

    .line 161
    :cond_1
    iget v3, v1, Lcom/ant/liao/GifFrame;->delay:I

    aput v3, v0, v2

    .line 162
    iget-object v1, v1, Lcom/ant/liao/GifFrame;->nextFrame:Lcom/ant/liao/GifFrame;

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getFrame(I)Lcom/ant/liao/GifFrame;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 297
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    .line 298
    .local v0, "frame":Lcom/ant/liao/GifFrame;
    const/4 v1, 0x0

    .line 299
    .local v1, "i":I
    :goto_0
    if-nez v0, :cond_1

    .line 307
    const/4 v0, 0x0

    .end local v0    # "frame":Lcom/ant/liao/GifFrame;
    :cond_0
    return-object v0

    .line 300
    .restart local v0    # "frame":Lcom/ant/liao/GifFrame;
    :cond_1
    if-eq v1, p1, :cond_0

    .line 303
    iget-object v0, v0, Lcom/ant/liao/GifFrame;->nextFrame:Lcom/ant/liao/GifFrame;

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/ant/liao/GifDecoder;->frameCount:I

    return v0
.end method

.method public getFrameImage(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/ant/liao/GifDecoder;->getFrame(I)Lcom/ant/liao/GifFrame;

    move-result-object v0

    .line 277
    .local v0, "frame":Lcom/ant/liao/GifFrame;
    if-nez v0, :cond_0

    .line 278
    const/4 v1, 0x0

    .line 280
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/ant/liao/GifFrame;->image:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ant/liao/GifDecoder;->getFrameImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/ant/liao/GifDecoder;->loopCount:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/ant/liao/GifDecoder;->status:I

    return v0
.end method

.method public next()Lcom/ant/liao/GifFrame;
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/ant/liao/GifDecoder;->isShow:Z

    if-nez v0, :cond_0

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ant/liao/GifDecoder;->isShow:Z

    .line 324
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    .line 336
    :goto_0
    return-object v0

    .line 326
    :cond_0
    iget v0, p0, Lcom/ant/liao/GifDecoder;->status:I

    if-nez v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    iget-object v0, v0, Lcom/ant/liao/GifFrame;->nextFrame:Lcom/ant/liao/GifFrame;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    iget-object v0, v0, Lcom/ant/liao/GifFrame;->nextFrame:Lcom/ant/liao/GifFrame;

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    .line 336
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    goto :goto_0

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    iget-object v0, v0, Lcom/ant/liao/GifFrame;->nextFrame:Lcom/ant/liao/GifFrame;

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    .line 332
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    if-nez v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    goto :goto_1
.end method

.method public parseOk()Z
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lcom/ant/liao/GifDecoder;->status:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    .line 315
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readStream()I

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->gifData:[B

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readByte()I

    goto :goto_0
.end method
