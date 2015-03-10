.class public Lcom/daimajia/androidanimations/library/easing_functions/quint/QuintEaseInOut;
.super Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;
.source "QuintEaseInOut.java"


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
    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const/high16 v3, 0x40000000    # 2.0f

    .line 36
    mul-float v0, p1, v3

    .line 37
    .local v0, "x":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 38
    float-to-double v1, v0

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v1, v3

    .line 41
    :goto_0
    return v1

    .line 40
    :cond_0
    sub-float/2addr v0, v3

    .line 41
    float-to-double v1, v0

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v1, v3

    div-float/2addr v1, v3

    goto :goto_0
.end method
