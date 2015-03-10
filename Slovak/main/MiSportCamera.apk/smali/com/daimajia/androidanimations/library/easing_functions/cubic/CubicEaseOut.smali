.class public Lcom/daimajia/androidanimations/library/easing_functions/cubic/CubicEaseOut;
.super Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;
.source "CubicEaseOut.java"


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "duration"    # F

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;-><init>(F)V

    .line 33
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "input"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 37
    sub-float v0, p1, v2

    .line 38
    .local v0, "t":F
    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    return v1
.end method
