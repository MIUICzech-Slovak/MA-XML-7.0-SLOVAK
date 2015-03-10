.class public Lcom/daimajia/androidanimations/library/easing_functions/quint/QuintEaseOut;
.super Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;
.source "QuintEaseOut.java"


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
    .locals 6
    .param p1, "input"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 36
    sub-float v0, p1, v5

    .line 37
    .local v0, "x":F
    float-to-double v1, v0

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v1, v5

    return v1
.end method
