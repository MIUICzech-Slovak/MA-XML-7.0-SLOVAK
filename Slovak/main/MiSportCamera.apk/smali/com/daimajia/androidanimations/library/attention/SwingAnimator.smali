.class public Lcom/daimajia/androidanimations/library/attention/SwingAnimator;
.super Lcom/daimajia/androidanimations/library/BaseViewAnimator;
.source "SwingAnimator.java"


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
    .locals 5
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/daimajia/androidanimations/library/attention/SwingAnimator;->getAnimatorAgent()Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/nineoldandroids/animation/Animator;

    const/4 v2, 0x0

    .line 36
    const-string v3, "rotation"

    const/16 v4, 0x8

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {p1, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 35
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 38
    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0x0
        0x41200000    # 10.0f
        -0x3ee00000    # -10.0f
        0x40c00000    # 6.0f
        -0x3f400000    # -6.0f
        0x40400000    # 3.0f
        -0x3fc00000    # -3.0f
        0x0
    .end array-data
.end method
