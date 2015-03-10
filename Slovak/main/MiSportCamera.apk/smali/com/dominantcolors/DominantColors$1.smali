.class Lcom/dominantcolors/DominantColors$1;
.super Ljava/lang/Object;
.source "DominantColors.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dominantcolors/DominantColors;->kMeans([IID)[Lcom/dominantcolors/DominantColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/dominantcolors/DominantColor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/dominantcolors/DominantColor;Lcom/dominantcolors/DominantColor;)I
    .locals 3
    .param p1, "lhs"    # Lcom/dominantcolors/DominantColor;
    .param p2, "rhs"    # Lcom/dominantcolors/DominantColor;

    .prologue
    .line 121
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p1, Lcom/dominantcolors/DominantColor;->percentage:F

    iget v2, p2, Lcom/dominantcolors/DominantColor;->percentage:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/dominantcolors/DominantColor;

    check-cast p2, Lcom/dominantcolors/DominantColor;

    invoke-virtual {p0, p1, p2}, Lcom/dominantcolors/DominantColors$1;->compare(Lcom/dominantcolors/DominantColor;Lcom/dominantcolors/DominantColor;)I

    move-result v0

    return v0
.end method
