.class public Lcom/daimajia/androidanimations/library/easing_functions/cubic/CubicEaseInOut;
.super Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;
.source "CubicEaseInOut.java"


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
    const/high16 v2, 0x40000000    # 2.0f

    .line 37
    mul-float v0, p1, v2

    .line 38
    .local v0, "x":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 39
    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    div-float/2addr v1, v2

    .line 42
    :goto_0
    return v1

    .line 41
    :cond_0
    sub-float/2addr v0, v2

    .line 42
    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    div-float/2addr v1, v2

    goto :goto_0
.end method
