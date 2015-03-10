.class Lcom/xiaomi/mistatistic/sdk/a/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/e;


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/a/ac;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/ad;->a:Lcom/xiaomi/mistatistic/sdk/a/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ad;->a:Lcom/xiaomi/mistatistic/sdk/a/ac;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/a;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "upload_policy"

    invoke-static {v1, v2, v5}, Lcom/xiaomi/mistatistic/sdk/a/t;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/ac;->a(Lcom/xiaomi/mistatistic/sdk/a/ac;I)I

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ad;->a:Lcom/xiaomi/mistatistic/sdk/a/ac;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/ac;->a(Lcom/xiaomi/mistatistic/sdk/a/ac;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ad;->a:Lcom/xiaomi/mistatistic/sdk/a/ac;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/a;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "upload_interval"

    const-wide/32 v3, 0x5265c00

    invoke-static {v1, v2, v3, v4}, Lcom/xiaomi/mistatistic/sdk/a/t;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/ac;->a(Lcom/xiaomi/mistatistic/sdk/a/ac;J)J

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ad;->a:Lcom/xiaomi/mistatistic/sdk/a/ac;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/ac;->a(Lcom/xiaomi/mistatistic/sdk/a/ac;)I

    move-result v0

    if-ne v0, v5, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/u;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/u;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/u;->a()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ad;->a:Lcom/xiaomi/mistatistic/sdk/a/ac;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/ac;->a(Lcom/xiaomi/mistatistic/sdk/a/ac;J)J

    goto :goto_0
.end method
