.class public abstract Lcom/xiaomi/mistatistic/sdk/b/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->a:J

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/xiaomi/mistatistic/sdk/b/i;
.end method
