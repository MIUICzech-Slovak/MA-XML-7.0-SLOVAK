.class public interface abstract Lcom/gstreamer/palyer/GStreamerVideoPlayer$OnGStreamerListener;
.super Ljava/lang/Object;
.source "GStreamerVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gstreamer/palyer/GStreamerVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnGStreamerListener"
.end annotation


# virtual methods
.method public abstract buffering_callback(II)V
.end method

.method public abstract current_position_callback(JJ)V
.end method

.method public abstract eos_callback(Ljava/lang/String;)V
.end method

.method public abstract error_callback(Ljava/lang/String;)V
.end method

.method public abstract onMediaSizeChanged(II)V
.end method

.method public abstract state_changed_callback(II)V
.end method
