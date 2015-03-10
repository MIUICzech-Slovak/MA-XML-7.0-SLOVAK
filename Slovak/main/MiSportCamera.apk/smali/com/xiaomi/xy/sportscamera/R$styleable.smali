.class public final Lcom/xiaomi/xy/sportscamera/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/xy/sportscamera/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CircleImageView:[I

.field public static final CircleImageView_border_color:I = 0x1

.field public static final CircleImageView_border_width:I = 0x0

.field public static final RoundProgressBar:[I

.field public static final RoundProgressBar_max:I = 0x5

.field public static final RoundProgressBar_roundColor:I = 0x0

.field public static final RoundProgressBar_roundProgressColor:I = 0x1

.field public static final RoundProgressBar_roundWidth:I = 0x2

.field public static final RoundProgressBar_style:I = 0x7

.field public static final RoundProgressBar_textColor:I = 0x3

.field public static final RoundProgressBar_textIsDisplayable:I = 0x6

.field public static final RoundProgressBar_textSize:I = 0x4

.field public static final roundedimagebutton:[I

.field public static final roundedimagebutton_border_inside_color:I = 0x2

.field public static final roundedimagebutton_border_outside_color:I = 0x1

.field public static final roundedimagebutton_border_thickness:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2359
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/xy/sportscamera/R$styleable;->CircleImageView:[I

    .line 2417
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaomi/xy/sportscamera/R$styleable;->RoundProgressBar:[I

    .line 2557
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/xiaomi/xy/sportscamera/R$styleable;->roundedimagebutton:[I

    .line 2605
    return-void

    .line 2359
    :array_0
    .array-data 4
        0x7f01000b
        0x7f01000c
    .end array-data

    .line 2417
    :array_1
    .array-data 4
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
    .end array-data

    .line 2557
    :array_2
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
