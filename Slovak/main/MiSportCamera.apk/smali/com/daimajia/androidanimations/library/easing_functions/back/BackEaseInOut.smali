.class public Lcom/daimajia/androidanimations/library/easing_functions/back/BackEaseInOut;
.super Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;
.source "BackEaseInOut.java"


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

    iput v0, p0, Lcom/daimajia/androidanimations/library/easing_functions/back/BackEaseInOut;->s:F

    .line 35
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "duration"    # F
    .param p2, "back"    # F

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/daimajia/androidanimations/library/easing_functions/back/BackEaseInOut;-><init>(F)V

    .line 39
    iput p2, p0, Lcom/daimajia/androidanimations/library/easing_functions/back/BackEaseInOut;->s:F

    .line 40
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    const v5, 0x3fc33333    # 1.525f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 44
    mul-float v0, p1, v4

    .line 46
    .local v0, "t":F
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    .line 47
    mul-float v1, v0, v0

    iget v2, p0, Lcom/daimajia/androidanimations/library/easing_functions/back/BackEaseInOut;->s:F

    mul-float/2addr v2, v5

    iput v2, p0, Lcom/daimajia/androidanimations/library/easing_functions/back/BackEaseInOut;->s:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/daimajia/androidanimations/library/easing_functions/back/BackEaseInOut;->s:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    .line 49
    :goto_0
    return v1

    :cond_0
    sub-float/2addr v0, v4

    mul-float v1, v0, v0

    iget v2, p0, Lcom/daimajia/androidanimations/library/easing_functions/back/BackEaseInOut;->s:F

    mul-float/2addr v2, v5

    iput v2, p0, Lcom/daimajia/androidanimations/library/easing_functions/back/BackEaseInOut;->s:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/daimajia/androidanimations/library/easing_functions/back/BackEaseInOut;->s:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    div-float/2addr v1, v4

    goto :goto_0
.end method
