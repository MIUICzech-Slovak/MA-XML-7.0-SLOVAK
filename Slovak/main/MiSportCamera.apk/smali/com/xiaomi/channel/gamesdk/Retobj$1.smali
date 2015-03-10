.class Lcom/xiaomi/channel/gamesdk/Retobj$1;
.super Ljava/lang/Object;
.source "Retobj.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/gamesdk/Retobj;
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
        "Lcom/xiaomi/channel/gamesdk/Retobj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/channel/gamesdk/Retobj;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 54
    new-instance v0, Lcom/xiaomi/channel/gamesdk/Retobj;

    invoke-direct {v0, p1}, Lcom/xiaomi/channel/gamesdk/Retobj;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/channel/gamesdk/Retobj$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/channel/gamesdk/Retobj;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/xiaomi/channel/gamesdk/Retobj;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 49
    new-array v0, p1, [Lcom/xiaomi/channel/gamesdk/Retobj;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/channel/gamesdk/Retobj$1;->newArray(I)[Lcom/xiaomi/channel/gamesdk/Retobj;

    move-result-object v0

    return-object v0
.end method
