.class public abstract Lcom/xiaomi/mistatistic/sdk/a/n;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/xiaomi/mistatistic/sdk/b/a;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/b;->a()Lcom/xiaomi/mistatistic/sdk/a/b;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/o;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/o;-><init>(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/mistatistic/sdk/a/e;)V

    return-void
.end method
