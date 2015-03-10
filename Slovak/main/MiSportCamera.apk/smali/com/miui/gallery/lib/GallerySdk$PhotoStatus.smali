.class public Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;
.super Ljava/lang/Object;
.source "GallerySdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/lib/GallerySdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoStatus"
.end annotation


# instance fields
.field public final localFilePath:Ljava/lang/String;

.field public final localFlag:Ljava/lang/String;

.field public final localId:J

.field public final serverId:Ljava/lang/String;

.field public final serverStatus:Ljava/lang/String;

.field public final sha1:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "localId"    # J
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "serverStatus"    # Ljava/lang/String;
    .param p5, "localFlag"    # Ljava/lang/String;
    .param p6, "localFilePath"    # Ljava/lang/String;
    .param p7, "sha1"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-wide p1, p0, Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;->localId:J

    .line 146
    iput-object p4, p0, Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;->serverStatus:Ljava/lang/String;

    .line 147
    iput-object p3, p0, Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;->serverId:Ljava/lang/String;

    .line 148
    iput-object p5, p0, Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;->localFlag:Ljava/lang/String;

    .line 149
    iput-object p6, p0, Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;->localFilePath:Ljava/lang/String;

    .line 150
    iput-object p7, p0, Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;->sha1:Ljava/lang/String;

    .line 151
    return-void
.end method


# virtual methods
.method public hasUploadedToServer()Z
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;->serverStatus:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;->serverStatus:Ljava/lang/String;

    const-string v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhotoStatus(localId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;->localId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " serverStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;->serverStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,localFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;->localFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,localFilePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;->localFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,sha1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;->sha1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
