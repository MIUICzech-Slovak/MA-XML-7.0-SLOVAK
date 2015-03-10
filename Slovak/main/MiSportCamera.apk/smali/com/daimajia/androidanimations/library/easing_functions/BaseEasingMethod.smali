.class public abstract Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;
.super Lcom/nineoldandroids/animation/FloatEvaluator;
.source "BaseEasingMethod.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field protected mDuration:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "duration"    # F

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/nineoldandroids/animation/FloatEvaluator;-><init>()V

    .line 36
    iput p1, p0, Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;->mDuration:F

    .line 37
    return-void
.end method


# virtual methods
.method public abstract getInterpolation(F)F
.end method

.method public setDuration(F)V
    .locals 0
    .param p1, "duration"    # F

    .prologue
    .line 42
    iput p1, p0, Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;->mDuration:F

    .line 43
    return-void
.end method
