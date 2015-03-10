.class public Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseOut;
.super Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;
.source "BounceEaseOut.java"


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
.method public evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;
    .locals 9
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Number;
    .param p3, "endValue"    # Ljava/lang/Number;

    .prologue
    const/high16 v8, 0x40f20000    # 7.5625f

    .line 42
    iget v2, p0, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseOut;->mDuration:F

    .line 43
    .local v2, "d":F
    iget v4, p0, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseOut;->mDuration:F

    mul-float v3, p1, v4

    .line 44
    .local v3, "t":F
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 45
    .local v0, "b":F
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v5

    sub-float v1, v4, v5

    .line 46
    .local v1, "c":F
    div-float/2addr v3, v2

    const v4, 0x3eba2e8c

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 47
    mul-float v4, v8, v3

    mul-float/2addr v4, v3

    mul-float/2addr v4, v1

    add-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 53
    :goto_0
    return-object v4

    .line 48
    :cond_0
    const v4, 0x3f3a2e8c

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    .line 49
    const v4, 0x3f0ba2e9

    sub-float/2addr v3, v4

    mul-float v4, v8, v3

    mul-float/2addr v4, v3

    const/high16 v5, 0x3f400000    # 0.75f

    add-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_0

    .line 50
    :cond_1
    float-to-double v4, v3

    const-wide v6, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    .line 51
    const v4, 0x3f51745d

    sub-float/2addr v3, v4

    mul-float v4, v8, v3

    mul-float/2addr v4, v3

    const/high16 v5, 0x3f700000    # 0.9375f

    add-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_0

    .line 53
    :cond_2
    const v4, 0x3f745d17

    sub-float/2addr v3, v4

    mul-float v4, v8, v3

    mul-float/2addr v4, v3

    const/high16 v5, 0x3f7c0000    # 0.984375f

    add-float/2addr v4, v5

    mul-float/2addr v4, v1

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseOut;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getInterpolation(F)F
    .locals 0
    .param p1, "input"    # F

    .prologue
    .line 37
    return p1
.end method
