.class public final Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;
.super Ljava/lang/Object;
.source "YoYo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/daimajia/androidanimations/library/YoYo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimationComposer"
.end annotation


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
.method private constructor <init>(Lcom/daimajia/androidanimations/library/Techniques;)V
    .locals 2
    .param p1, "techniques"    # Lcom/daimajia/androidanimations/library/Techniques;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    .line 66
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->duration:J

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->delay:J

    .line 72
    iput-object p1, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->techniques:Lcom/daimajia/androidanimations/library/Techniques;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/daimajia/androidanimations/library/Techniques;Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;-><init>(Lcom/daimajia/androidanimations/library/Techniques;)V

    return-void
.end method

.method static synthetic access$0(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)Lcom/daimajia/androidanimations/library/Techniques;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->techniques:Lcom/daimajia/androidanimations/library/Techniques;

    return-object v0
.end method

.method static synthetic access$1(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->duration:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->delay:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->interpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$4(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)Ljava/util/List;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;)Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->target:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public delay(J)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;
    .locals 0
    .param p1, "delay"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->delay:J

    .line 82
    return-object p0
.end method

.method public duration(J)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;
    .locals 0
    .param p1, "duration"    # J

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->duration:J

    .line 77
    return-object p0
.end method

.method public interpolate(Landroid/view/animation/Interpolator;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->interpolator:Landroid/view/animation/Interpolator;

    .line 87
    return-object p0
.end method

.method public playOn(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->target:Landroid/view/View;

    .line 98
    new-instance v0, Lcom/daimajia/androidanimations/library/YoYo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/daimajia/androidanimations/library/YoYo;-><init>(Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;Lcom/daimajia/androidanimations/library/YoYo;)V

    # invokes: Lcom/daimajia/androidanimations/library/YoYo;->play()V
    invoke-static {v0}, Lcom/daimajia/androidanimations/library/YoYo;->access$1(Lcom/daimajia/androidanimations/library/YoYo;)V

    .line 99
    return-void
.end method

.method public withListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;
    .locals 1
    .param p1, "listener"    # Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-object p0
.end method
