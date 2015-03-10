.class Lcom/xiaomi/mistatistic/sdk/a/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/e;


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/a/ac;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/ag;->a:Lcom/xiaomi/mistatistic/sdk/a/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ag;->a:Lcom/xiaomi/mistatistic/sdk/a/ac;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/ac;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/u;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/u;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/u;->a()V

    :cond_0
    return-void
.end method
