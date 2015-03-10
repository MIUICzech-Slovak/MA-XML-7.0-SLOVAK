.class public Lcom/ant/liao/GifView;
.super Landroid/view/View;
.source "GifView.java"

# interfaces
.implements Lcom/ant/liao/GifAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ant/liao/GifView$DrawThread;,
        Lcom/ant/liao/GifView$GifImageType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$ant$liao$GifView$GifImageType:[I


# instance fields
.field private animationType:Lcom/ant/liao/GifView$GifImageType;

.field private currentImage:Landroid/graphics/Bitmap;

.field private drawThread:Lcom/ant/liao/GifView$DrawThread;

.field private gifDecoder:Lcom/ant/liao/GifDecoder;

.field private isRun:Z

.field private pause:Z

.field private rect:Landroid/graphics/Rect;

.field private redrawHandler:Landroid/os/Handler;

.field private showHeight:I

.field private showWidth:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$ant$liao$GifView$GifImageType()[I
    .locals 3

    .prologue
    .line 24
    sget-object v0, Lcom/ant/liao/GifView;->$SWITCH_TABLE$com$ant$liao$GifView$GifImageType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ant/liao/GifView$GifImageType;->values()[Lcom/ant/liao/GifView$GifImageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ant/liao/GifView$GifImageType;->COVER:Lcom/ant/liao/GifView$GifImageType;

    invoke-virtual {v1}, Lcom/ant/liao/GifView$GifImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ant/liao/GifView$GifImageType;->SYNC_DECODER:Lcom/ant/liao/GifView$GifImageType;

    invoke-virtual {v1}, Lcom/ant/liao/GifView$GifImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ant/liao/GifView$GifImageType;->WAIT_FINISH:Lcom/ant/liao/GifView$GifImageType;

    invoke-virtual {v1}, Lcom/ant/liao/GifView$GifImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/ant/liao/GifView;->$SWITCH_TABLE$com$ant$liao$GifView$GifImageType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object v1, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    .line 29
    iput-object v1, p0, Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ant/liao/GifView;->isRun:Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ant/liao/GifView;->pause:Z

    .line 35
    iput v2, p0, Lcom/ant/liao/GifView;->showWidth:I

    .line 36
    iput v2, p0, Lcom/ant/liao/GifView;->showHeight:I

    .line 37
    iput-object v1, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    .line 39
    iput-object v1, p0, Lcom/ant/liao/GifView;->drawThread:Lcom/ant/liao/GifView$DrawThread;

    .line 41
    sget-object v0, Lcom/ant/liao/GifView$GifImageType;->SYNC_DECODER:Lcom/ant/liao/GifView$GifImageType;

    iput-object v0, p0, Lcom/ant/liao/GifView;->animationType:Lcom/ant/liao/GifView$GifImageType;

    .line 297
    new-instance v0, Lcom/ant/liao/GifView$1;

    invoke-direct {v0, p0}, Lcom/ant/liao/GifView$1;-><init>(Lcom/ant/liao/GifView;)V

    iput-object v0, p0, Lcom/ant/liao/GifView;->redrawHandler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ant/liao/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput-object v1, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    .line 29
    iput-object v1, p0, Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ant/liao/GifView;->isRun:Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ant/liao/GifView;->pause:Z

    .line 35
    iput v2, p0, Lcom/ant/liao/GifView;->showWidth:I

    .line 36
    iput v2, p0, Lcom/ant/liao/GifView;->showHeight:I

    .line 37
    iput-object v1, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    .line 39
    iput-object v1, p0, Lcom/ant/liao/GifView;->drawThread:Lcom/ant/liao/GifView$DrawThread;

    .line 41
    sget-object v0, Lcom/ant/liao/GifView$GifImageType;->SYNC_DECODER:Lcom/ant/liao/GifView$GifImageType;

    iput-object v0, p0, Lcom/ant/liao/GifView;->animationType:Lcom/ant/liao/GifView$GifImageType;

    .line 297
    new-instance v0, Lcom/ant/liao/GifView$1;

    invoke-direct {v0, p0}, Lcom/ant/liao/GifView$1;-><init>(Lcom/ant/liao/GifView;)V

    iput-object v0, p0, Lcom/ant/liao/GifView;->redrawHandler:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method static synthetic access$0(Lcom/ant/liao/GifView;)Lcom/ant/liao/GifDecoder;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ant/liao/GifView;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/ant/liao/GifView;->isRun:Z

    return v0
.end method

.method static synthetic access$2(Lcom/ant/liao/GifView;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/ant/liao/GifView;->pause:Z

    return v0
.end method

.method static synthetic access$3(Lcom/ant/liao/GifView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$4(Lcom/ant/liao/GifView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/ant/liao/GifView;->redrawHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private reDraw()V
    .locals 2

    .prologue
    .line 291
    iget-object v1, p0, Lcom/ant/liao/GifView;->redrawHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/ant/liao/GifView;->redrawHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 293
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/ant/liao/GifView;->redrawHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setGifDecoderImage(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    invoke-virtual {v0}, Lcom/ant/liao/GifDecoder;->free()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    .line 106
    :cond_0
    new-instance v0, Lcom/ant/liao/GifDecoder;

    invoke-direct {v0, p1, p0}, Lcom/ant/liao/GifDecoder;-><init>(Ljava/io/InputStream;Lcom/ant/liao/GifAction;)V

    iput-object v0, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    .line 107
    iget-object v0, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    invoke-virtual {v0}, Lcom/ant/liao/GifDecoder;->start()V

    .line 108
    return-void
.end method

.method private setGifDecoderImage([B)V
    .locals 1
    .param p1, "gif"    # [B

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    invoke-virtual {v0}, Lcom/ant/liao/GifDecoder;->free()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    .line 93
    :cond_0
    new-instance v0, Lcom/ant/liao/GifDecoder;

    invoke-direct {v0, p1, p0}, Lcom/ant/liao/GifDecoder;-><init>([BLcom/ant/liao/GifAction;)V

    iput-object v0, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    .line 94
    iget-object v0, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    invoke-virtual {v0}, Lcom/ant/liao/GifDecoder;->start()V

    .line 95
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 137
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 138
    iget-object v1, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    if-nez v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    invoke-virtual {v1}, Lcom/ant/liao/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 147
    .local v0, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 148
    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 149
    iget v1, p0, Lcom/ant/liao/GifView;->showWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 150
    iget-object v1, p0, Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 154
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getPaddingLeft()I

    move-result v3

    .line 159
    .local v3, "pleft":I
    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getPaddingRight()I

    move-result v4

    .line 160
    .local v4, "pright":I
    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getPaddingTop()I

    move-result v5

    .line 161
    .local v5, "ptop":I
    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getPaddingBottom()I

    move-result v2

    .line 169
    .local v2, "pbottom":I
    iget-object v8, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    if-nez v8, :cond_0

    .line 170
    const/4 v6, 0x1

    .line 171
    .local v6, "w":I
    const/4 v0, 0x1

    .line 177
    .local v0, "h":I
    :goto_0
    add-int v8, v3, v4

    add-int/2addr v6, v8

    .line 178
    add-int v8, v5, v2

    add-int/2addr v0, v8

    .line 180
    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 181
    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 183
    invoke-static {v6, p1}, Lcom/ant/liao/GifView;->resolveSize(II)I

    move-result v7

    .line 184
    .local v7, "widthSize":I
    invoke-static {v0, p2}, Lcom/ant/liao/GifView;->resolveSize(II)I

    move-result v1

    .line 186
    .local v1, "heightSize":I
    invoke-virtual {p0, v7, v1}, Lcom/ant/liao/GifView;->setMeasuredDimension(II)V

    .line 187
    return-void

    .line 173
    .end local v0    # "h":I
    .end local v1    # "heightSize":I
    .end local v6    # "w":I
    .end local v7    # "widthSize":I
    :cond_0
    iget-object v8, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    iget v6, v8, Lcom/ant/liao/GifDecoder;->width:I

    .line 174
    .restart local v6    # "w":I
    iget-object v8, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    iget v0, v8, Lcom/ant/liao/GifDecoder;->height:I

    .restart local v0    # "h":I
    goto :goto_0
.end method

.method public parseOk(ZI)V
    .locals 6
    .param p1, "parseStatus"    # Z
    .param p2, "frameIndex"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 240
    if-eqz p1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    if-eqz v1, :cond_6

    .line 242
    invoke-static {}, Lcom/ant/liao/GifView;->$SWITCH_TABLE$com$ant$liao$GifView$GifImageType()[I

    move-result-object v1

    iget-object v2, p0, Lcom/ant/liao/GifView;->animationType:Lcom/ant/liao/GifView$GifImageType;

    invoke-virtual {v2}, Lcom/ant/liao/GifView$GifImageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 244
    :pswitch_0
    if-ne p2, v4, :cond_0

    .line 245
    iget-object v1, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    invoke-virtual {v1}, Lcom/ant/liao/GifDecoder;->getFrameCount()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 246
    new-instance v0, Lcom/ant/liao/GifView$DrawThread;

    invoke-direct {v0, p0, v5}, Lcom/ant/liao/GifView$DrawThread;-><init>(Lcom/ant/liao/GifView;Lcom/ant/liao/GifView$DrawThread;)V

    .line 247
    .local v0, "dt":Lcom/ant/liao/GifView$DrawThread;
    invoke-virtual {v0}, Lcom/ant/liao/GifView$DrawThread;->start()V

    goto :goto_0

    .line 249
    .end local v0    # "dt":Lcom/ant/liao/GifView$DrawThread;
    :cond_1
    invoke-direct {p0}, Lcom/ant/liao/GifView;->reDraw()V

    goto :goto_0

    .line 254
    :pswitch_1
    if-ne p2, v3, :cond_2

    .line 255
    iget-object v1, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    invoke-virtual {v1}, Lcom/ant/liao/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 256
    invoke-direct {p0}, Lcom/ant/liao/GifView;->reDraw()V

    goto :goto_0

    .line 257
    :cond_2
    if-ne p2, v4, :cond_0

    .line 258
    iget-object v1, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    invoke-virtual {v1}, Lcom/ant/liao/GifDecoder;->getFrameCount()I

    move-result v1

    if-le v1, v3, :cond_3

    .line 259
    iget-object v1, p0, Lcom/ant/liao/GifView;->drawThread:Lcom/ant/liao/GifView$DrawThread;

    if-nez v1, :cond_0

    .line 260
    new-instance v1, Lcom/ant/liao/GifView$DrawThread;

    invoke-direct {v1, p0, v5}, Lcom/ant/liao/GifView$DrawThread;-><init>(Lcom/ant/liao/GifView;Lcom/ant/liao/GifView$DrawThread;)V

    iput-object v1, p0, Lcom/ant/liao/GifView;->drawThread:Lcom/ant/liao/GifView$DrawThread;

    .line 261
    iget-object v1, p0, Lcom/ant/liao/GifView;->drawThread:Lcom/ant/liao/GifView$DrawThread;

    invoke-virtual {v1}, Lcom/ant/liao/GifView$DrawThread;->start()V

    goto :goto_0

    .line 264
    :cond_3
    invoke-direct {p0}, Lcom/ant/liao/GifView;->reDraw()V

    goto :goto_0

    .line 269
    :pswitch_2
    if-ne p2, v3, :cond_4

    .line 270
    iget-object v1, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    invoke-virtual {v1}, Lcom/ant/liao/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 271
    invoke-direct {p0}, Lcom/ant/liao/GifView;->reDraw()V

    goto :goto_0

    .line 272
    :cond_4
    if-ne p2, v4, :cond_5

    .line 273
    invoke-direct {p0}, Lcom/ant/liao/GifView;->reDraw()V

    goto :goto_0

    .line 275
    :cond_5
    iget-object v1, p0, Lcom/ant/liao/GifView;->drawThread:Lcom/ant/liao/GifView$DrawThread;

    if-nez v1, :cond_0

    .line 276
    new-instance v1, Lcom/ant/liao/GifView$DrawThread;

    invoke-direct {v1, p0, v5}, Lcom/ant/liao/GifView$DrawThread;-><init>(Lcom/ant/liao/GifView;Lcom/ant/liao/GifView$DrawThread;)V

    iput-object v1, p0, Lcom/ant/liao/GifView;->drawThread:Lcom/ant/liao/GifView$DrawThread;

    .line 277
    iget-object v1, p0, Lcom/ant/liao/GifView;->drawThread:Lcom/ant/liao/GifView$DrawThread;

    invoke-virtual {v1}, Lcom/ant/liao/GifView$DrawThread;->start()V

    goto :goto_0

    .line 284
    :cond_6
    const-string v1, "gif"

    const-string v2, "parse error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setGifImage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/ant/liao/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 132
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 133
    .local v0, "is":Ljava/io/InputStream;
    invoke-direct {p0, v0}, Lcom/ant/liao/GifView;->setGifDecoderImage(Ljava/io/InputStream;)V

    .line 134
    return-void
.end method

.method public setGifImage(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/ant/liao/GifView;->setGifDecoderImage(Ljava/io/InputStream;)V

    .line 124
    return-void
.end method

.method public setGifImage([B)V
    .locals 0
    .param p1, "gif"    # [B

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/ant/liao/GifView;->setGifDecoderImage([B)V

    .line 116
    return-void
.end method

.method public setGifImageType(Lcom/ant/liao/GifView$GifImageType;)V
    .locals 1
    .param p1, "type"    # Lcom/ant/liao/GifView$GifImageType;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    if-nez v0, :cond_0

    .line 218
    iput-object p1, p0, Lcom/ant/liao/GifView;->animationType:Lcom/ant/liao/GifView$GifImageType;

    .line 219
    :cond_0
    return-void
.end method

.method public setShowDimension(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 228
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 229
    iput p1, p0, Lcom/ant/liao/GifView;->showWidth:I

    .line 230
    iput p2, p0, Lcom/ant/liao/GifView;->showHeight:I

    .line 231
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    .line 232
    iget-object v0, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 233
    iget-object v0, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 234
    iget-object v0, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 235
    iget-object v0, p0, Lcom/ant/liao/GifView;->rect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 237
    :cond_0
    return-void
.end method

.method public showAnimation()V
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/ant/liao/GifView;->pause:Z

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ant/liao/GifView;->pause:Z

    .line 209
    :cond_0
    return-void
.end method

.method public showCover()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ant/liao/GifView;->pause:Z

    .line 197
    iget-object v0, p0, Lcom/ant/liao/GifView;->gifDecoder:Lcom/ant/liao/GifDecoder;

    invoke-virtual {v0}, Lcom/ant/liao/GifDecoder;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ant/liao/GifView;->currentImage:Landroid/graphics/Bitmap;

    .line 198
    invoke-virtual {p0}, Lcom/ant/liao/GifView;->invalidate()V

    goto :goto_0
.end method
