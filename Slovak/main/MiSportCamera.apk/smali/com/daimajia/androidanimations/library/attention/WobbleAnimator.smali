.class public Lcom/daimajia/androidanimations/library/attention/WobbleAnimator;
.super Lcom/daimajia/androidanimations/library/BaseViewAnimator;
.source "WobbleAnimator.java"


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
    .locals 12
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x7

    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v1, v2

    .line 36
    .local v1, "width":F
    float-to-double v2, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-float v0, v2

    .line 37
    .local v0, "one":F
    invoke-virtual {p0}, Lcom/daimajia/androidanimations/library/attention/WobbleAnimator;->getAnimatorAgent()Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v7, [Lcom/nineoldandroids/animation/Animator;

    .line 38
    const-string v4, "translationX"

    const/16 v5, 0x8

    new-array v5, v5, [F

    mul-float v6, v8, v0

    aput v6, v5, v9

    const/high16 v6, -0x3e380000    # -25.0f

    mul-float/2addr v6, v0

    aput v6, v5, v10

    const/high16 v6, 0x41a00000    # 20.0f

    mul-float/2addr v6, v0

    aput v6, v5, v7

    const/4 v6, 0x3

    const/high16 v7, -0x3e900000    # -15.0f

    mul-float/2addr v7, v0

    aput v7, v5, v6

    const/4 v6, 0x4

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v7, v0

    aput v7, v5, v6

    const/4 v6, 0x5

    const/high16 v7, -0x3f600000    # -5.0f

    mul-float/2addr v7, v0

    aput v7, v5, v6

    const/4 v6, 0x6

    mul-float v7, v8, v0

    aput v7, v5, v6

    aput v8, v5, v11

    invoke-static {p1, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    .line 39
    const-string v4, "rotation"

    new-array v5, v11, [F

    fill-array-data v5, :array_0

    invoke-static {p1, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v10

    .line 37
    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 41
    return-void

    .line 39
    nop

    :array_0
    .array-data 4
        0x0
        -0x3f600000    # -5.0f
        0x40400000    # 3.0f
        -0x3fc00000    # -3.0f
        0x40000000    # 2.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data
.end method
