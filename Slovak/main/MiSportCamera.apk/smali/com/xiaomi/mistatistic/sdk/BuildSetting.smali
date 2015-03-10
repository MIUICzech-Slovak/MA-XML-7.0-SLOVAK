.class public Lcom/xiaomi/mistatistic/sdk/BuildSetting;
.super Ljava/lang/Object;


# static fields
.field private static sTest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->sTest:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTest()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->sTest:Z

    return v0
.end method

.method public static setTest(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->sTest:Z

    return-void
.end method
