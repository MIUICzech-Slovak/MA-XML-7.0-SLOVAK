.class public Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseIn;
.super Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;
.source "BounceEaseIn.java"


# instance fields
.field private mBounceEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseOut;


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "duration"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;-><init>(F)V

    .line 35
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseOut;

    invoke-direct {v0, p1}, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseOut;-><init>(F)V

    iput-object v0, p0, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseIn;->mBounceEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseOut;

    .line 36
    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;
    .locals 7
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Number;
    .param p3, "endValue"    # Ljava/lang/Number;

    .prologue
    .line 45
    iget v2, p0, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseIn;->mDuration:F

    .line 46
    .local v2, "d":F
    iget v4, p0, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseIn;->mDuration:F

    mul-float v3, v4, p1

    .line 47
    .local v3, "t":F
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 48
    .local v0, "b":F
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v5

    sub-float v1, v4, v5

    .line 49
    .local v1, "c":F
    iget-object v4, p0, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseIn;->mBounceEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseOut;

    sub-float v5, v2, v3

    div-float/2addr v5, v2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6, p3}, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseOut;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float v4, v1, v4

    add-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p2, Ljava/lang/Number;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2, p3}, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseIn;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getInterpolation(F)F
    .locals 0
    .param p1, "input"    # F

    .prologue
    .line 40
    return p1
.end method
