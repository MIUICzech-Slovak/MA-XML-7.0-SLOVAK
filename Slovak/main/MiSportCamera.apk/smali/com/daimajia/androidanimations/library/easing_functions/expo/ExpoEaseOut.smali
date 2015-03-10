.class public Lcom/daimajia/androidanimations/library/easing_functions/expo/ExpoEaseOut;
.super Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;
.source "ExpoEaseOut.java"


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
    .locals 5
    .param p1, "input"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 36
    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 39
    :goto_0
    return v0

    :cond_0
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    const/high16 v3, -0x3ee00000    # -10.0f

    mul-float/2addr v3, p1

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    neg-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0
.end method
