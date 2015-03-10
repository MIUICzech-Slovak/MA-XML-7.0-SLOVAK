.class public Lcom/ant/liao/GifFrame;
.super Ljava/lang/Object;
.source "GifFrame.java"


# instance fields
.field public delay:I

.field public image:Landroid/graphics/Bitmap;

.field public nextFrame:Lcom/ant/liao/GifFrame;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "im"    # Landroid/graphics/Bitmap;
    .param p2, "del"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ant/liao/GifFrame;->nextFrame:Lcom/ant/liao/GifFrame;

    .line 12
    iput-object p1, p0, Lcom/ant/liao/GifFrame;->image:Landroid/graphics/Bitmap;

    .line 13
    iput p2, p0, Lcom/ant/liao/GifFrame;->delay:I

    .line 14
    return-void
.end method
