.class public Lcom/decoder/util/H264Decoder;
.super Ljava/lang/Object;
.source "H264Decoder.java"


# static fields
.field public static final COLOR_FORMAT_BGR32:I = 0x2

.field public static final COLOR_FORMAT_RGB565LE:I = 0x1

.field public static final COLOR_FORMAT_YUV420:I


# instance fields
.field private cdata:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "videodecoder"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "colorFormat"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-direct {p0, p1}, Lcom/decoder/util/H264Decoder;->nativeInit(I)V

    .line 42
    return-void
.end method

.method private native nativeInit(I)V
.end method

.method public static yuv420pToyuv420sp([BII)[B
    .locals 8
    .param p0, "yuvbuff"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 45
    mul-int v6, p1, p2

    div-int/lit8 v6, v6, 0x2

    new-array v3, v6, [B

    .line 46
    .local v3, "uvbuf":[B
    mul-int v5, p1, p2

    .line 47
    .local v5, "ylength":I
    mul-int v6, p1, p2

    div-int/lit8 v2, v6, 0x4

    .line 48
    .local v2, "ulength":I
    const/4 v1, 0x0

    .line 49
    .local v1, "uindex":I
    const/4 v4, 0x0

    .line 50
    .local v4, "vindex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    mul-int v6, p1, p2

    div-int/lit8 v6, v6, 0x2

    if-lt v0, v6, :cond_0

    .line 60
    const/4 v6, 0x0

    array-length v7, v3

    invoke-static {v3, v6, p0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    return-object p0

    .line 51
    :cond_0
    rem-int/lit8 v6, v0, 0x2

    if-nez v6, :cond_1

    .line 52
    add-int v6, v5, v2

    add-int/2addr v6, v4

    aget-byte v6, p0, v6

    aput-byte v6, v3, v0

    .line 53
    add-int/lit8 v4, v4, 0x1

    .line 50
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    add-int v6, v5, v1

    aget-byte v6, p0, v6

    aput-byte v6, v3, v0

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public native consumeNalUnitsFromDirectBuffer([BIJ)I
.end method

.method public native getHeight()I
.end method

.method public native getOutputByteSize()I
.end method

.method public native getWidth()I
.end method

.method public native getYUVData([BI)J
.end method

.method public native isFrameReady()Z
.end method

.method public native nativeDestroy()V
.end method

.method public native yuv2argb([BIII)J
.end method
