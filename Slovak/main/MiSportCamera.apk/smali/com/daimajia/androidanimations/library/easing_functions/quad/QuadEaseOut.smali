.class public Lcom/daimajia/androidanimations/library/easing_functions/quad/QuadEaseOut;
.super Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;
.source "QuadEaseOut.java"


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
    .locals 2
    .param p1, "input"    # F

    .prologue
    .line 36
    neg-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    return v0
.end method
