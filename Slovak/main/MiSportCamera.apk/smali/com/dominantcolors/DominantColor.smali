.class public Lcom/dominantcolors/DominantColor;
.super Ljava/lang/Object;
.source "DominantColor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/dominantcolors/DominantColor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public color:I

.field public percentage:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/dominantcolors/DominantColor$1;

    invoke-direct {v0}, Lcom/dominantcolors/DominantColor$1;-><init>()V

    sput-object v0, Lcom/dominantcolors/DominantColor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "percentage"    # F

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/dominantcolors/DominantColor;->color:I

    .line 14
    iput p2, p0, Lcom/dominantcolors/DominantColor;->percentage:F

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bndl"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dominantcolors/DominantColor;->color:I

    .line 19
    const-string v0, "percentage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/dominantcolors/DominantColor;->percentage:F

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "bndl":Landroid/os/Bundle;
    const-string v1, "color"

    iget v2, p0, Lcom/dominantcolors/DominantColor;->color:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    const-string v1, "percentage"

    iget v2, p0, Lcom/dominantcolors/DominantColor;->percentage:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 42
    return-void
.end method
