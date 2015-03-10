.class public Lcom/daimajia/androidanimations/library/easing_functions/back/BackEaseIn;
.super Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;
.source "BackEaseIn.java"


# instance fields
.field private s:F


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "duration"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;-><init>(F)V

    .line 31
    const v0, 0x3fd9cd60

    iput v0, p0, Lcom/daimajia/androidanimations/library/easing_functions/back/BackEaseIn;->s:F

    .line 35
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "duration"    # F
    .param p2, "back"    # F

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/daimajia/androidanimations/library/easing_functions/back/BackEaseIn;-><init>(F)V

    .line 39
    iput p2, p0, Lcom/daimajia/androidanimations/library/easing_functions/back/BackEaseIn;->s:F

    .line 40
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "input"    # F

    .prologue
    .line 44
    mul-float v0, p1, p1

    iget v1, p0, Lcom/daimajia/androidanimations/library/easing_functions/back/BackEaseIn;->s:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/daimajia/androidanimations/library/easing_functions/back/BackEaseIn;->s:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method
