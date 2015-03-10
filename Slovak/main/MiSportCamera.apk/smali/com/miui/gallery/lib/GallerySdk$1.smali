.class Lcom/miui/gallery/lib/GallerySdk$1;
.super Ljava/lang/Object;
.source "GallerySdk.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/lib/GallerySdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/lib/GallerySdk;


# direct methods
.method constructor <init>(Lcom/miui/gallery/lib/GallerySdk;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/miui/gallery/lib/GallerySdk$1;->this$0:Lcom/miui/gallery/lib/GallerySdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/gallery/lib/GallerySdk$1;->this$0:Lcom/miui/gallery/lib/GallerySdk;

    invoke-static {p2}, Lcom/miui/gallery/lib/IGalleryCloudSdk$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gallery/lib/IGalleryCloudSdk;

    move-result-object v1

    # setter for: Lcom/miui/gallery/lib/GallerySdk;->mRemote:Lcom/miui/gallery/lib/IGalleryCloudSdk;
    invoke-static {v0, v1}, Lcom/miui/gallery/lib/GallerySdk;->access$002(Lcom/miui/gallery/lib/GallerySdk;Lcom/miui/gallery/lib/IGalleryCloudSdk;)Lcom/miui/gallery/lib/IGalleryCloudSdk;

    .line 69
    iget-object v0, p0, Lcom/miui/gallery/lib/GallerySdk$1;->this$0:Lcom/miui/gallery/lib/GallerySdk;

    iget-object v0, v0, Lcom/miui/gallery/lib/GallerySdk;->mOnBindServiceListener:Lcom/miui/gallery/lib/GallerySdk$OnBindServiceListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/miui/gallery/lib/GallerySdk$1;->this$0:Lcom/miui/gallery/lib/GallerySdk;

    iget-object v0, v0, Lcom/miui/gallery/lib/GallerySdk;->mOnBindServiceListener:Lcom/miui/gallery/lib/GallerySdk$OnBindServiceListener;

    invoke-interface {v0}, Lcom/miui/gallery/lib/GallerySdk$OnBindServiceListener;->onServiceConnected()V

    .line 72
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/gallery/lib/GallerySdk$1;->this$0:Lcom/miui/gallery/lib/GallerySdk;

    const/4 v1, 0x0

    # setter for: Lcom/miui/gallery/lib/GallerySdk;->mRemote:Lcom/miui/gallery/lib/IGalleryCloudSdk;
    invoke-static {v0, v1}, Lcom/miui/gallery/lib/GallerySdk;->access$002(Lcom/miui/gallery/lib/GallerySdk;Lcom/miui/gallery/lib/IGalleryCloudSdk;)Lcom/miui/gallery/lib/IGalleryCloudSdk;

    .line 63
    iget-object v0, p0, Lcom/miui/gallery/lib/GallerySdk$1;->this$0:Lcom/miui/gallery/lib/GallerySdk;

    iget-object v0, v0, Lcom/miui/gallery/lib/GallerySdk;->mOnBindServiceListener:Lcom/miui/gallery/lib/GallerySdk$OnBindServiceListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/miui/gallery/lib/GallerySdk$1;->this$0:Lcom/miui/gallery/lib/GallerySdk;

    iget-object v0, v0, Lcom/miui/gallery/lib/GallerySdk;->mOnBindServiceListener:Lcom/miui/gallery/lib/GallerySdk$OnBindServiceListener;

    invoke-interface {v0}, Lcom/miui/gallery/lib/GallerySdk$OnBindServiceListener;->onServiceDisconnected()V

    .line 66
    :cond_0
    return-void
.end method
