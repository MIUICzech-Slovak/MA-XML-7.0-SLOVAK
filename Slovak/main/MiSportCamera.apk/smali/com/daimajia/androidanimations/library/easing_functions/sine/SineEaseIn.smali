.class public Lcom/daimajia/androidanimations/library/easing_functions/sine/SineEaseIn;
.super Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;
.source "SineEaseIn.java"


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
    .locals 5
    .param p1, "input"    # F

    .prologue
    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    float-to-double v1, p1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method
