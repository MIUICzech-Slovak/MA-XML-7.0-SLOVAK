.class public Lcom/gstreamer/palyer/GStreamerVideoPlayer;
.super Ljava/lang/Object;
.source "GStreamerVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/gstreamer/palyer/GStreamerVideoPlayer;


# instance fields
.field private isPlaying:Z

.field private is_playing_desired:Z

.field private mIsRTSP:Z

.field private mLatency:I

.field private mListener:Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;

.field private mTimeout:J

.field private native_custom_data:J

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 18
    invoke-static {}, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->nativeClassInit()Z

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v2, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->is_playing_desired:Z

    .line 11
    const/16 v0, 0x12c

    iput v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mLatency:I

    .line 12
    const-wide/32 v0, 0x4c4b40

    iput-wide v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mTimeout:J

    .line 13
    iput-boolean v2, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mIsRTSP:Z

    .line 22
    invoke-direct {p0}, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->nativeInit()V

    .line 23
    return-void
.end method

.method private buffering_notify(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "percent"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mListener:Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mListener:Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;

    invoke-interface {v0, p1, p2}, Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;->buffering_callback(II)V

    .line 119
    :cond_0
    return-void
.end method

.method private current_position_notify(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "duration"    # J

    .prologue
    .line 104
    iget-object v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mListener:Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mListener:Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;->current_position_callback(JJ)V

    .line 107
    :cond_0
    return-void
.end method

.method private eos_notify(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mListener:Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mListener:Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;

    invoke-interface {v0, p1}, Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;->eos_callback(Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method

.method private error_notify(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mListener:Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mListener:Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;

    invoke-interface {v0, p1}, Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;->error_callback(Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method

.method private static native nativeClassInit()Z
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeInit()V
.end method

.method private native nativePause()V
.end method

.method private native nativePlay()V
.end method

.method private native nativeSetParam(IJZ)V
.end method

.method private native nativeSetPosition(I)V
.end method

.method private native nativeSetUri(Ljava/lang/String;)V
.end method

.method private native nativeSurfaceFinalize()V
.end method

.method private native nativeSurfaceInit(Ljava/lang/Object;)V
.end method

.method private onGStreamerInitialized()V
    .locals 2

    .prologue
    .line 87
    const-class v0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGStreamerInitialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method private onMediaSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mListener:Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mListener:Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;

    invoke-interface {v0, p1, p2}, Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;->onMediaSizeChanged(II)V

    .line 95
    :cond_0
    return-void
.end method

.method private state_changed_notify(II)V
    .locals 1
    .param p1, "oldstate"    # I
    .param p2, "newstate"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mListener:Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mListener:Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;

    invoke-interface {v0, p1, p2}, Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;->state_changed_callback(II)V

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public attachSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->nativeSurfaceInit(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->nativeFinalize()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->isPlaying:Z

    .line 72
    return-void
.end method

.method public detachSurface()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->nativeSurfaceFinalize()V

    .line 84
    return-void
.end method

.method public getmLatency()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mLatency:I

    return v0
.end method

.method public getmTimeout()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mTimeout:J

    return-wide v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->isPlaying:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->nativePause()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->isPlaying:Z

    .line 67
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->nativePlay()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->isPlaying:Z

    .line 62
    return-void
.end method

.method public playMRL(Ljava/lang/String;)V
    .locals 5
    .param p1, "mrl"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 26
    iput-object p1, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->url:Ljava/lang/String;

    .line 27
    const-string v0, "rtsp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iput-boolean v4, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mIsRTSP:Z

    .line 32
    :goto_0
    iget v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mLatency:I

    iget-wide v1, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mTimeout:J

    iget-boolean v3, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mIsRTSP:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->nativeSetParam(IJZ)V

    .line 33
    iget-object v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->nativeSetUri(Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->nativePlay()V

    .line 35
    iput-boolean v4, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->isPlaying:Z

    .line 36
    iput-boolean v4, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->is_playing_desired:Z

    .line 37
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mIsRTSP:Z

    goto :goto_0
.end method

.method public setOnGStreamerListener(Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mListener:Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;

    .line 41
    return-void
.end method

.method public setmLatency(I)V
    .locals 0
    .param p1, "mLatency"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mLatency:I

    .line 49
    return-void
.end method

.method public setmTimeout(J)V
    .locals 0
    .param p1, "mTimeout"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/gstreamer/palyer/GStreamerVideoPlayer;->mTimeout:J

    .line 57
    return-void
.end method
