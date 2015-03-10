.class public Lcom/daimajia/androidanimations/library/fading_entrances/FadeInDownAnimator;
.super Lcom/daimajia/androidanimations/library/BaseViewAnimator;
.source "FadeInDownAnimator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/daimajia/androidanimations/library/BaseViewAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public prepare(Landroid/view/View;)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    .line 35
    invoke-virtual {p0}, Lcom/daimajia/androidanimations/library/fading_entrances/FadeInDownAnimator;->getAnimatorAgent()Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    new-array v1, v5, [Lcom/nineoldandroids/animation/Animator;

    const/4 v2, 0x0

    .line 36
    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {p1, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 37
    const-string v3, "translationY"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {p1, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 35
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 39
    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 37
    :array_1
    .array-data 4
        -0x3e600000    # -20.0f
        0x0
    .end array-data
.end method
