.class public Lcom/xiaomi/channel/gamesdk/Retobj;
.super Ljava/lang/Object;
.source "Retobj.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/channel/gamesdk/Retobj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private retCode:I

.field private retDes:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/xiaomi/channel/gamesdk/Retobj$1;

    invoke-direct {v0}, Lcom/xiaomi/channel/gamesdk/Retobj$1;-><init>()V

    sput-object v0, Lcom/xiaomi/channel/gamesdk/Retobj;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/channel/gamesdk/Retobj;->retCode:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/gamesdk/Retobj;->retDes:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/channel/gamesdk/Retobj;->retCode:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/gamesdk/Retobj;->retDes:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/channel/gamesdk/Retobj;->retCode:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/gamesdk/Retobj;->retDes:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public getRetCode()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/xiaomi/channel/gamesdk/Retobj;->retCode:I

    return v0
.end method

.method public getRetDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xiaomi/channel/gamesdk/Retobj;->retDes:Ljava/lang/String;

    return-object v0
.end method

.method public setRetCode(I)V
    .locals 0
    .param p1, "retCode"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/xiaomi/channel/gamesdk/Retobj;->retCode:I

    .line 25
    return-void
.end method

.method public setRetDes(Ljava/lang/String;)V
    .locals 0
    .param p1, "retDes"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/xiaomi/channel/gamesdk/Retobj;->retDes:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 37
    iget v0, p0, Lcom/xiaomi/channel/gamesdk/Retobj;->retCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object v0, p0, Lcom/xiaomi/channel/gamesdk/Retobj;->retDes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    return-void
.end method
