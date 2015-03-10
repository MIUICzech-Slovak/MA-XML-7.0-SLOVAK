.class public Lcom/daimajia/androidanimations/library/easing_functions/elastic/ElasticEaseOut;
.super Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;
.source "ElasticEaseOut.java"


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
    .locals 11
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Number;
    .param p3, "endValue"    # Ljava/lang/Number;

    .prologue
    .line 42
    iget v3, p0, Lcom/daimajia/androidanimations/library/easing_functions/elastic/ElasticEaseOut;->mDuration:F

    .line 43
    .local v3, "d":F
    iget v7, p0, Lcom/daimajia/androidanimations/library/easing_functions/elastic/ElasticEaseOut;->mDuration:F

    mul-float v6, v7, p1

    .line 44
    .local v6, "t":F
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 45
    .local v1, "b":F
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v8

    sub-float v2, v7, v8

    .line 47
    .local v2, "c":F
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-nez v7, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 51
    :goto_0
    return-object v7

    .line 47
    :cond_0
    div-float/2addr v6, v3

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v6, v7

    if-nez v7, :cond_1

    add-float v7, v1, v2

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_0

    .line 48
    :cond_1
    const v7, 0x3e99999a    # 0.3f

    mul-float v4, v3, v7

    .line 49
    .local v4, "p":F
    move v0, v2

    .line 50
    .local v0, "a":F
    const/high16 v7, 0x40800000    # 4.0f

    div-float v5, v4, v7

    .line 51
    .local v5, "s":F
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const/high16 v9, -0x3ee00000    # -10.0f

    mul-float/2addr v9, v6

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v7, v0

    mul-float v8, v6, v3

    sub-float/2addr v8, v5

    const v9, 0x40c90fdb

    mul-float/2addr v8, v9

    div-float/2addr v8, v4

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v2

    add-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p2, Ljava/lang/Number;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2, p3}, Lcom/daimajia/androidanimations/library/easing_functions/elastic/ElasticEaseOut;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

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
