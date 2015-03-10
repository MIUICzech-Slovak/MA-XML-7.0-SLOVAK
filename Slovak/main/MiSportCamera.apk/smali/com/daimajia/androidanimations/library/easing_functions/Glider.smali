.class public Lcom/daimajia/androidanimations/library/easing_functions/Glider;
.super Ljava/lang/Object;
.source "Glider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static glide(Lcom/daimajia/androidanimations/library/easing_functions/Skill;FLcom/nineoldandroids/animation/ObjectAnimator;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 1
    .param p0, "skill"    # Lcom/daimajia/androidanimations/library/easing_functions/Skill;
    .param p1, "duration"    # F
    .param p2, "animator"    # Lcom/nineoldandroids/animation/ObjectAnimator;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->getMethod(F)Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;

    move-result-object v0

    .line 39
    .local v0, "t":Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;
    invoke-virtual {p2, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 40
    invoke-virtual {p2, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    .line 41
    return-object p2
.end method

.method public static glide(Lcom/daimajia/androidanimations/library/easing_functions/Skill;FLcom/nineoldandroids/animation/PropertyValuesHolder;)Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1
    .param p0, "skill"    # Lcom/daimajia/androidanimations/library/easing_functions/Skill;
    .param p1, "duration"    # F
    .param p2, "propertyValuesHolder"    # Lcom/nineoldandroids/animation/PropertyValuesHolder;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->getMethod(F)Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    .line 34
    return-object p2
.end method
