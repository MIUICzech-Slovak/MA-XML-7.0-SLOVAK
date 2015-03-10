.class public Lcom/daimajia/androidanimations/library/easing_functions/quad/QuadEaseInOut;
.super Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;
.source "QuadEaseInOut.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "duration"    # F

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;-><init>(F)V

    .line 32
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    .line 36
    mul-float v0, p1, v2

    .line 37
    .local v0, "x":F
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    .line 38
    mul-float v1, v0, v0

    div-float/2addr v1, v2

    .line 40
    :goto_0
    return v1

    :cond_0
    sub-float/2addr v0, v3

    sub-float v1, v0, v2

    mul-float/2addr v1, v0

    sub-float/2addr v1, v3

    neg-float v1, v1

    div-float/2addr v1, v2

    goto :goto_0
.end method
