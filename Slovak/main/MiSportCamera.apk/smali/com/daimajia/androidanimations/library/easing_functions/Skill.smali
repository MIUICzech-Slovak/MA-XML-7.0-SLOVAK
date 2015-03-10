.class public final enum Lcom/daimajia/androidanimations/library/easing_functions/Skill;
.super Ljava/lang/Enum;
.source "Skill.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/daimajia/androidanimations/library/easing_functions/Skill;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BackEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum BackEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum BackEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum BounceEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum BounceEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum BounceEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum CircEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum CircEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum CircEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum CubicEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum CubicEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum CubicEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field private static final synthetic ENUM$VALUES:[Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum ElasticEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum ElasticEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum ExpoEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum ExpoEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum ExpoEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum QuadEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum QuadEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum QuadEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum QuintEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum QuintEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum QuintEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum SineEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum SineEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

.field public static final enum SineEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;


# instance fields
.field private easingMethod:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "BackEaseIn"

    const-class v2, Lcom/daimajia/androidanimations/library/easing_functions/back/BackEaseIn;

    invoke-direct {v0, v1, v4, v2}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->BackEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 57
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "BackEaseOut"

    const-class v2, Lcom/daimajia/androidanimations/library/easing_functions/back/BackEaseOut;

    invoke-direct {v0, v1, v5, v2}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->BackEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 58
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "BackEaseInOut"

    const-class v2, Lcom/daimajia/androidanimations/library/easing_functions/back/BackEaseInOut;

    invoke-direct {v0, v1, v6, v2}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->BackEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 60
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "BounceEaseIn"

    const-class v2, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseIn;

    invoke-direct {v0, v1, v7, v2}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->BounceEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 61
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "BounceEaseOut"

    const-class v2, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseOut;

    invoke-direct {v0, v1, v8, v2}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->BounceEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 62
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "BounceEaseInOut"

    const/4 v2, 0x5

    const-class v3, Lcom/daimajia/androidanimations/library/easing_functions/bounce/BounceEaseInOut;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->BounceEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 64
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "CircEaseIn"

    const/4 v2, 0x6

    const-class v3, Lcom/daimajia/androidanimations/library/easing_functions/circ/CircEaseIn;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->CircEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 65
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "CircEaseOut"

    const/4 v2, 0x7

    const-class v3, Lcom/daimajia/androidanimations/library/easing_functions/circ/CircEaseOut;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->CircEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 66
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "CircEaseInOut"

    const/16 v2, 0x8

    const-class v3, Lcom/daimajia/androidanimations/library/easing_functions/circ/CircEaseInOut;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->CircEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 68
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "CubicEaseIn"

    const/16 v2, 0x9

    const-class v3, Lcom/daimajia/androidanimations/library/easing_functions/cubic/CubicEaseIn;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->CubicEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 69
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "CubicEaseOut"

    const/16 v2, 0xa

    const-class v3, Lcom/daimajia/androidanimations/library/easing_functions/cubic/CubicEaseOut;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->CubicEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 70
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "CubicEaseInOut"

    const/16 v2, 0xb

    const-class v3, Lcom/daimajia/androidanimations/library/easing_functions/cubic/CubicEaseInOut;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->CubicEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 72
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "ElasticEaseIn"

    const/16 v2, 0xc

    const-class v3, Lcom/daimajia/androidanimations/library/easing_functions/elastic/ElasticEaseIn;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->ElasticEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 73
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "ElasticEaseOut"

    const/16 v2, 0xd

    const-class v3, Lcom/daimajia/androidanimations/library/easing_functions/elastic/ElasticEaseOut;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->ElasticEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 75
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "ExpoEaseIn"

    const/16 v2, 0xe

    const-class v3, Lcom/daimajia/androidanimations/library/easing_functions/expo/ExpoEaseIn;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->ExpoEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 76
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "ExpoEaseOut"

    const/16 v2, 0xf

    const-class v3, Lcom/daimajia/androidanimations/library/easing_functions/expo/ExpoEaseOut;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->ExpoEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 77
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "ExpoEaseInOut"

    const/16 v2, 0x10

    const-class v3, Lcom/daimajia/androidanimations/library/easing_functions/expo/ExpoEaseInOut;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->ExpoEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 79
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "QuadEaseIn"

    const/16 v2, 0x11

    const-class v3, Lcom/daimajia/androidanimations/library/easing_functions/quad/QuadEaseIn;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->QuadEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 80
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "QuadEaseOut"

    const/16 v2, 0x12

    const-class v3, Lcom/daimajia/androidanimations/library/easing_functions/quad/QuadEaseOut;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->QuadEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 81
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "QuadEaseInOut"

    const/16 v2, 0x13

    const-class v3, Lcom/daimajia/androidanimations/library/easing_functions/quad/QuadEaseInOut;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->QuadEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 83
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "QuintEaseIn"

    const/16 v2, 0x14

    const-class v3, Lcom/daimajia/androidanimations/library/easing_functions/quint/QuintEaseIn;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->QuintEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 84
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "QuintEaseOut"

    const/16 v2, 0x15

    const-class v3, Lcom/daimajia/androidanimations/library/easing_functions/quint/QuintEaseOut;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->QuintEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 85
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "QuintEaseInOut"

    const/16 v2, 0x16

    const-class v3, Lcom/daimajia/androidanimations/library/easing_functions/quint/QuintEaseInOut;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->QuintEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 87
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "SineEaseIn"

    const/16 v2, 0x17

    const-class v3, Lcom/daimajia/androidanimations/library/easing_functions/sine/SineEaseIn;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->SineEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 88
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "SineEaseOut"

    const/16 v2, 0x18

    const-class v3, Lcom/daimajia/androidanimations/library/easing_functions/sine/SineEaseOut;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->SineEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 89
    new-instance v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    const-string v1, "SineEaseInOut"

    const/16 v2, 0x19

    const-class v3, Lcom/daimajia/androidanimations/library/easing_functions/sine/SineEaseInOut;

    invoke-direct {v0, v1, v2, v3}, Lcom/daimajia/androidanimations/library/easing_functions/Skill;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->SineEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    .line 54
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    sget-object v1, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->BackEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v1, v0, v4

    sget-object v1, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->BackEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v1, v0, v5

    sget-object v1, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->BackEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v1, v0, v6

    sget-object v1, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->BounceEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v1, v0, v7

    sget-object v1, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->BounceEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->BounceEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->CircEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->CircEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->CircEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->CubicEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->CubicEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->CubicEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->ElasticEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->ElasticEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->ExpoEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->ExpoEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->ExpoEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->QuadEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->QuadEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->QuadEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->QuintEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->QuintEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->QuintEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->SineEaseIn:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->SineEaseOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->SineEaseInOut:Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    aput-object v2, v0, v1

    sput-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->ENUM$VALUES:[Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .param p3, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput-object p3, p0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->easingMethod:Ljava/lang/Class;

    .line 96
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/daimajia/androidanimations/library/easing_functions/Skill;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    return-object v0
.end method

.method public static values()[Lcom/daimajia/androidanimations/library/easing_functions/Skill;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->ENUM$VALUES:[Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    array-length v1, v0

    new-array v2, v1, [Lcom/daimajia/androidanimations/library/easing_functions/Skill;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getMethod(F)Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;
    .locals 5
    .param p1, "duration"    # F

    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/daimajia/androidanimations/library/easing_functions/Skill;->easingMethod:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/daimajia/androidanimations/library/easing_functions/BaseEasingMethod;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Can not init easingMethod instance"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method
