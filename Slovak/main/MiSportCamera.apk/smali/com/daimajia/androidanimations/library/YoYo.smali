.class public Lcom/daimajia/androidanimations/library/YoYo;
.super Ljava/lang/Object;
.source "YoYo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;
    }
.end annotation


# static fields
.field private static final DURATION:J = 0x3e8L

.field private static final NO_DELAY:J


# instance fields
.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nineoldandroids/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private delay:J

.field private duration:J

.field private interpolator:Landroid/view/animation/Interpolator;

.field private target:Landroid/view/View;

.field private techniques:Lcom/daimajia/androidanimations/library/Techniques;


# direct methods
.method private constructor <init>(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)V
    .locals 2
    .param p1, "animationComposer"    # Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    # getter for: Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->techniques:Lcom/daimajia/androidanimations/library/Techniques;
    invoke-static {p1}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->access$0(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)Lcom/daimajia/androidanimations/library/Techniques;

    move-result-object v0

    iput-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo;->techniques:Lcom/daimajia/androidanimations/library/Techniques;

    .line 50
    # getter for: Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->duration:J
    invoke-static {p1}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->access$1(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/daimajia/androidanimations/library/YoYo;->duration:J

    .line 51
    # getter for: Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->delay:J
    invoke-static {p1}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->access$2(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/daimajia/androidanimations/library/YoYo;->delay:J

    .line 52
    # getter for: Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->interpolator:Landroid/view/animation/Interpolator;
    invoke-static {p1}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->access$3(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo;->interpolator:Landroid/view/animation/Interpolator;

    .line 53
    # getter for: Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->callbacks:Ljava/util/List;
    invoke-static {p1}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->access$4(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo;->callbacks:Ljava/util/List;

    .line 54
    # getter for: Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->target:Landroid/view/View;
    invoke-static {p1}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->access$5(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo;->target:Landroid/view/View;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;Lcom/daimajia/androidanimations/library/YoYo;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/daimajia/androidanimations/library/YoYo;-><init>(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)V

    return-void
.end method

.method static synthetic access$1(Lcom/daimajia/androidanimations/library/YoYo;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/daimajia/androidanimations/library/YoYo;->play()V

    return-void
.end method

.method private play()V
    .locals 5

    .prologue
    .line 104
    iget-object v2, p0, Lcom/daimajia/androidanimations/library/YoYo;->techniques:Lcom/daimajia/androidanimations/library/Techniques;

    invoke-virtual {v2}, Lcom/daimajia/androidanimations/library/Techniques;->getAnimator()Lcom/daimajia/androidanimations/library/BaseViewAnimator;

    move-result-object v0

    .line 106
    .local v0, "animator":Lcom/daimajia/androidanimations/library/BaseViewAnimator;
    iget-wide v2, p0, Lcom/daimajia/androidanimations/library/YoYo;->duration:J

    invoke-virtual {v0, v2, v3}, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->setDuration(J)Lcom/daimajia/androidanimations/library/BaseViewAnimator;

    move-result-object v2

    .line 107
    iget-object v3, p0, Lcom/daimajia/androidanimations/library/YoYo;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/daimajia/androidanimations/library/BaseViewAnimator;

    move-result-object v2

    .line 108
    iget-wide v3, p0, Lcom/daimajia/androidanimations/library/YoYo;->delay:J

    invoke-virtual {v2, v3, v4}, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->setStartDelay(J)Lcom/daimajia/androidanimations/library/BaseViewAnimator;

    .line 110
    iget-object v2, p0, Lcom/daimajia/androidanimations/library/YoYo;->callbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/daimajia/androidanimations/library/YoYo;->callbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/daimajia/androidanimations/library/YoYo;->target:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->animate(Landroid/view/View;)V

    .line 117
    return-void

    .line 111
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .line 112
    .local v1, "callback":Lcom/nineoldandroids/animation/Animator$AnimatorListener;
    invoke-virtual {v0, v1}, Lcom/daimajia/androidanimations/library/BaseViewAnimator;->addAnimatorListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/daimajia/androidanimations/library/BaseViewAnimator;

    goto :goto_0
.end method

.method public static with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;
    .locals 2
    .param p0, "techniques"    # Lcom/daimajia/androidanimations/library/Techniques;

    .prologue
    .line 58
    new-instance v0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;-><init>(Lcom/daimajia/androidanimations/library/Techniques;Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)V

    return-object v0
.end method
