.class public abstract Lcom/daimajia/androidanimations/library/BaseViewAnimator;
.super Ljava/lang/Object;
.source "BaseViewAnimator.java"


# static fields
.field public static final DURATION:J = 0x3e8L


# instance fields
.field private mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

.field private mDuration:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->mDuration:J

    .line 42
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 34
    return-void
.end method


# virtual methods
.method public addAnimatorListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/daimajia/androidanimations/library/BaseViewAnimator;
    .locals 1
    .param p1, "l"    # Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 96
    return-object p0
.end method

.method public animate(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->reset(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->prepare(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->start()V

    .line 52
    return-void
.end method

.method public getAnimatorAgent()Lcom/nineoldandroids/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->getStartDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract prepare(Landroid/view/View;)V
.end method

.method public removeAllListener()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->removeAllListeners()V

    .line 105
    return-void
.end method

.method public removeAnimatorListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "l"    # Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/AnimatorSet;->removeListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 101
    return-void
.end method

.method public reset(Landroid/view/View;)V
    .locals 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 60
    invoke-static {p1, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 61
    invoke-static {p1, v1}, Lcom/nineoldandroids/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    .line 62
    invoke-static {p1, v1}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    .line 63
    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 64
    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 65
    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setRotation(Landroid/view/View;F)V

    .line 66
    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setRotationY(Landroid/view/View;F)V

    .line 67
    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setRotationX(Landroid/view/View;F)V

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setPivotX(Landroid/view/View;F)V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {p1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setPivotY(Landroid/view/View;F)V

    .line 70
    return-void
.end method

.method public setDuration(J)Lcom/daimajia/androidanimations/library/BaseViewAnimator;
    .locals 0
    .param p1, "duration"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->mDuration:J

    .line 82
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/daimajia/androidanimations/library/BaseViewAnimator;
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 109
    return-object p0
.end method

.method public setStartDelay(J)Lcom/daimajia/androidanimations/library/BaseViewAnimator;
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->getAnimatorAgent()Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nineoldandroids/animation/AnimatorSet;->setStartDelay(J)V

    .line 87
    return-object p0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    iget-wide v1, p0, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->mDuration:J

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 77
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->mAnimatorSet:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 78
    return-void
.end method
