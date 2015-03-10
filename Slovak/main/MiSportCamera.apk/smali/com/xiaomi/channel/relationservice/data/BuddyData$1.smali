.class Lcom/xiaomi/channel/relationservice/data/BuddyData$1;
.super Ljava/lang/Object;
.source "BuddyData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/relationservice/data/BuddyData;
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
        "Lcom/xiaomi/channel/relationservice/data/BuddyData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/channel/relationservice/data/BuddyData;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 280
    new-instance v0, Lcom/xiaomi/channel/relationservice/data/BuddyData;

    invoke-direct {v0, p1}, Lcom/xiaomi/channel/relationservice/data/BuddyData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/channel/relationservice/data/BuddyData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/channel/relationservice/data/BuddyData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/xiaomi/channel/relationservice/data/BuddyData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 285
    new-array v0, p1, [Lcom/xiaomi/channel/relationservice/data/BuddyData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/channel/relationservice/data/BuddyData$1;->newArray(I)[Lcom/xiaomi/channel/relationservice/data/BuddyData;

    move-result-object v0

    return-object v0
.end method
