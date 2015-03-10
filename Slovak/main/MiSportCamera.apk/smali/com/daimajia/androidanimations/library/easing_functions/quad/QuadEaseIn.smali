.class public Lcom/daimajia/androidanimations/library/easing_functions/quad/QuadEaseIn;
.super Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;
.source "QuadEaseIn.java"


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
    .locals 1
    .param p1, "input"    # F

    .prologue
    .line 36
    mul-float v0, p1, p1

    return v0
.end method
