.class Lcom/xiaomi/mistatistic/sdk/a/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/e;


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/a/u;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/u;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/x;->a:Lcom/xiaomi/mistatistic/sdk/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/i;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/i;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/x;->a:Lcom/xiaomi/mistatistic/sdk/a/u;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/u;->b(Lcom/xiaomi/mistatistic/sdk/a/u;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/i;->a(J)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/u;->a(Z)Z

    return-void
.end method
