.class Lcom/dominantcolors/VideoInfo$1;
.super Ljava/lang/Object;
.source "VideoInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dominantcolors/VideoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/dominantcolors/VideoInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/dominantcolors/VideoInfo;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 21
    new-instance v0, Lcom/dominantcolors/VideoInfo;

    invoke-direct {v0}, Lcom/dominantcolors/VideoInfo;-><init>()V

    .line 22
    .local v0, "videoinfo":Lcom/dominantcolors/VideoInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dominantcolors/VideoInfo;->mUrl:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/dominantcolors/VideoInfo;->mDuration:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/dominantcolors/VideoInfo;->mWidth:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/dominantcolors/VideoInfo;->mHeight:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/dominantcolors/VideoInfo;->mRatio:I

    .line 28
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/dominantcolors/VideoInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/dominantcolors/VideoInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/dominantcolors/VideoInfo;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/dominantcolors/VideoInfo$1;->newArray(I)[Lcom/dominantcolors/VideoInfo;

    move-result-object v0

    return-object v0
.end method
