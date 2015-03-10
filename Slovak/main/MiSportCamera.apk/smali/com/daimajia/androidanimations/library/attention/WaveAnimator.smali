.class public Lcom/daimajia/androidanimations/library/attention/WaveAnimator;
.super Lcom/daimajia/androidanimations/library/BaseViewAnimator;
.source "WaveAnimator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/daimajia/androidanimations/library/BaseViewAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method protected prepare(Landroid/view/View;)V
    .locals 12
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 35
    add-int/2addr v2, v3

    int-to-float v0, v2

    .line 37
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 38
    .local v1, "y":F
    invoke-virtual {p0}, Lcom/daimajia/androidanimations/library/attention/WaveAnimator;->getAnimatorAgent()Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v10, [Lcom/nineoldandroids/animation/Animator;

    .line 39
    const-string v4, "rotation"

    new-array v5, v11, [F

    fill-array-data v5, :array_0

    invoke-static {p1, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    .line 40
    const-string v4, "pivotX"

    new-array v5, v11, [F

    aput v0, v5, v7

    aput v0, v5, v8

    aput v0, v5, v9

    aput v0, v5, v10

    const/4 v6, 0x4

    aput v0, v5, v6

    invoke-static {p1, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    .line 41
    const-string v4, "pivotY"

    new-array v5, v11, [F

    aput v1, v5, v7

    aput v1, v5, v8

    aput v1, v5, v9

    aput v1, v5, v10

    const/4 v6, 0x4

    aput v1, v5, v6

    invoke-static {p1, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    .line 38
    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 43
    return-void

    .line 39
    :array_0
    .array-data 4
        0x41400000    # 12.0f
        -0x3ec00000    # -12.0f
        0x40400000    # 3.0f
        -0x3fc00000    # -3.0f
        0x0
    .end array-data
.end method
