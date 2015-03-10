.class public Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseInOut;
.super Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;
.source "BounceEaseInOut.java"


# instance fields
.field private mBounceEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseIn;

.field private mBounceEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseOut;


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "duration"    # F

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;-><init>(F)V

    .line 36
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseIn;

    invoke-direct {v0, p1}, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseIn;-><init>(F)V

    iput-object v0, p0, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseInOut;->mBounceEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseIn;

    .line 37
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseOut;

    invoke-direct {v0, p1}, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseOut;-><init>(F)V

    iput-object v0, p0, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseInOut;->mBounceEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseOut;

    .line 38
    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;
    .locals 9
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Number;
    .param p3, "endValue"    # Ljava/lang/Number;

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v8, 0x3f000000    # 0.5f

    .line 47
    iget v2, p0, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseInOut;->mDuration:F

    .line 48
    .local v2, "d":F
    iget v4, p0, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseInOut;->mDuration:F

    mul-float v3, v4, p1

    .line 49
    .local v3, "t":F
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 50
    .local v0, "b":F
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v5

    sub-float v1, v4, v5

    .line 52
    .local v1, "c":F
    mul-float v4, v6, p1

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 53
    iget-object v4, p0, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseInOut;->mBounceEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseIn;

    mul-float v5, v3, v6

    div-float/2addr v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseIn;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v8

    add-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 55
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseInOut;->mBounceEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseOut;

    mul-float v5, v3, v6

    sub-float/2addr v5, v2

    div-float/2addr v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseOut;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v4, v8

    mul-float v5, v1, v8

    add-float/2addr v4, v5

    add-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p2, Ljava/lang/Number;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2, p3}, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseInOut;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getInterpolation(F)F
    .locals 0
    .param p1, "input"    # F

    .prologue
    .line 42
    return p1
.end method
