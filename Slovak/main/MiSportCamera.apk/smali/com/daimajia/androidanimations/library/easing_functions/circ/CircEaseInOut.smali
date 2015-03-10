.class public Lcom/daimajia/androidanimations/library/easing_functions/circ/CircEaseInOut;
.super Ljava/lang/Object;
.source "CircEaseInOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5
    .param p1, "input"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 32
    mul-float v0, p1, v4

    .line 33
    .local v0, "x":F
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    .line 34
    mul-float v1, v0, v0

    sub-float v1, v3, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v1, v3

    neg-float v1, v1

    div-float/2addr v1, v4

    .line 37
    :goto_0
    return v1

    .line 36
    :cond_0
    sub-float/2addr v0, v4

    .line 37
    mul-float v1, v0, v0

    sub-float v1, v3, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v1, v3

    div-float/2addr v1, v4

    goto :goto_0
.end method
