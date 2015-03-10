.class public Lcom/daimajia/androidanimations/library/easing_functions/expo/ExpoEaseInOut;
.super Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;
.source "ExpoEaseInOut.java"


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
    .locals 7
    .param p1, "input"    # F

    .prologue
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 36
    cmpl-float v1, p1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    .line 43
    .end local p1    # "input":F
    :cond_0
    :goto_0
    return p1

    .line 39
    .restart local p1    # "input":F
    :cond_1
    mul-float v0, p1, v4

    .line 40
    .local v0, "x":F
    cmpg-float v1, v0, v3

    if-gez v1, :cond_2

    .line 41
    const/high16 v1, 0x41200000    # 10.0f

    sub-float v2, p1, v3

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    div-float p1, v1, v4

    goto :goto_0

    .line 43
    :cond_2
    const/high16 v1, -0x3ee00000    # -10.0f

    mul-float/2addr v1, p1

    float-to-double v1, v1

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    neg-float v1, v1

    add-float/2addr v1, v3

    div-float p1, v1, v4

    goto :goto_0
.end method
