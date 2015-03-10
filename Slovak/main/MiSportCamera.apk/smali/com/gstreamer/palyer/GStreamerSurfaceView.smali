.class public Lcom/gstreamer/palyer/GStreamerSurfaceView;
.super Landroid/view/SurfaceView;
.source "GStreamerSurfaceView.java"


# instance fields
.field public media_height:I

.field public media_width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 11
    const/16 v0, 0x280

    iput v0, p0, Lcom/gstreamer/palyer/GStreamerSurfaceView;->media_width:I

    .line 12
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/gstreamer/palyer/GStreamerSurfaceView;->media_height:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/16 v0, 0x280

    iput v0, p0, Lcom/gstreamer/palyer/GStreamerSurfaceView;->media_width:I

    .line 12
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/gstreamer/palyer/GStreamerSurfaceView;->media_height:I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const/16 v0, 0x280

    iput v0, p0, Lcom/gstreamer/palyer/GStreamerSurfaceView;->media_width:I

    .line 12
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/gstreamer/palyer/GStreamerSurfaceView;->media_height:I

    .line 18
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v11, -0x80000000

    .line 33
    const/4 v5, 0x0

    .local v5, "width":I
    const/4 v2, 0x0

    .line 34
    .local v2, "height":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 35
    .local v6, "wmode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 36
    .local v3, "hmode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 37
    .local v7, "wsize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 39
    .local v4, "hsize":I
    const-string v8, "GStreamer"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "onMeasure called with "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/gstreamer/palyer/GStreamerSurfaceView;->media_width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/gstreamer/palyer/GStreamerSurfaceView;->media_height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sparse-switch v6, :sswitch_data_0

    .line 55
    :goto_0
    sparse-switch v3, :sswitch_data_1

    .line 69
    :goto_1
    if-ne v3, v11, :cond_0

    if-ne v6, v11, :cond_0

    .line 70
    iget v8, p0, Lcom/gstreamer/palyer/GStreamerSurfaceView;->media_height:I

    mul-int/2addr v8, v5

    iget v9, p0, Lcom/gstreamer/palyer/GStreamerSurfaceView;->media_width:I

    div-int v0, v8, v9

    .line 71
    .local v0, "correct_height":I
    iget v8, p0, Lcom/gstreamer/palyer/GStreamerSurfaceView;->media_width:I

    mul-int/2addr v8, v2

    iget v9, p0, Lcom/gstreamer/palyer/GStreamerSurfaceView;->media_height:I

    div-int v1, v8, v9

    .line 73
    .local v1, "correct_width":I
    if-ge v0, v2, :cond_3

    .line 74
    move v2, v0

    .line 80
    .end local v0    # "correct_height":I
    .end local v1    # "correct_width":I
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/gstreamer/palyer/GStreamerSurfaceView;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 81
    invoke-virtual {p0}, Lcom/gstreamer/palyer/GStreamerSurfaceView;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 82
    invoke-virtual {p0, v5, v2}, Lcom/gstreamer/palyer/GStreamerSurfaceView;->setMeasuredDimension(II)V

    .line 83
    return-void

    .line 43
    :sswitch_0
    if-ne v3, v12, :cond_1

    .line 44
    iget v8, p0, Lcom/gstreamer/palyer/GStreamerSurfaceView;->media_width:I

    mul-int/2addr v8, v4

    iget v9, p0, Lcom/gstreamer/palyer/GStreamerSurfaceView;->media_height:I

    div-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 45
    goto :goto_0

    .line 48
    :cond_1
    :sswitch_1
    move v5, v7

    .line 49
    goto :goto_0

    .line 51
    :sswitch_2
    iget v5, p0, Lcom/gstreamer/palyer/GStreamerSurfaceView;->media_width:I

    goto :goto_0

    .line 57
    :sswitch_3
    if-ne v6, v12, :cond_2

    .line 58
    iget v8, p0, Lcom/gstreamer/palyer/GStreamerSurfaceView;->media_height:I

    mul-int/2addr v8, v7

    iget v9, p0, Lcom/gstreamer/palyer/GStreamerSurfaceView;->media_width:I

    div-int/2addr v8, v9

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 59
    goto :goto_1

    .line 62
    :cond_2
    :sswitch_4
    move v2, v4

    .line 63
    goto :goto_1

    .line 65
    :sswitch_5
    iget v2, p0, Lcom/gstreamer/palyer/GStreamerSurfaceView;->media_height:I

    goto :goto_1

    .line 76
    .restart local v0    # "correct_height":I
    .restart local v1    # "correct_width":I
    :cond_3
    move v5, v1

    goto :goto_2

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch

    .line 55
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_5
        0x40000000 -> :sswitch_4
    .end sparse-switch
.end method
