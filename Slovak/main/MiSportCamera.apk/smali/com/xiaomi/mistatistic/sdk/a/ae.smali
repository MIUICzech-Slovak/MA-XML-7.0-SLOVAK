.class Lcom/xiaomi/mistatistic/sdk/a/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/e;


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/xiaomi/mistatistic/sdk/a/ac;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/ac;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/ae;->c:Lcom/xiaomi/mistatistic/sdk/a/ac;

    iput p2, p0, Lcom/xiaomi/mistatistic/sdk/a/ae;->a:I

    iput-wide p3, p0, Lcom/xiaomi/mistatistic/sdk/a/ae;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ae;->c:Lcom/xiaomi/mistatistic/sdk/a/ac;

    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/a/ae;->a:I

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/ac;->a(Lcom/xiaomi/mistatistic/sdk/a/ac;I)I

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ae;->c:Lcom/xiaomi/mistatistic/sdk/a/ac;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/ac;->a(Lcom/xiaomi/mistatistic/sdk/a/ac;)I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ae;->c:Lcom/xiaomi/mistatistic/sdk/a/ac;

    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/a/ae;->b:J

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/ac;->a(Lcom/xiaomi/mistatistic/sdk/a/ac;J)J

    :goto_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upload_policy"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/ae;->c:Lcom/xiaomi/mistatistic/sdk/a/ac;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/ac;->a(Lcom/xiaomi/mistatistic/sdk/a/ac;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/t;->b(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ae;->c:Lcom/xiaomi/mistatistic/sdk/a/ac;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/ac;->a(Lcom/xiaomi/mistatistic/sdk/a/ac;)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "upload_interval"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/ae;->c:Lcom/xiaomi/mistatistic/sdk/a/ac;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/ac;->b(Lcom/xiaomi/mistatistic/sdk/a/ac;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/t;->b(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/b;->a()Lcom/xiaomi/mistatistic/sdk/a/b;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/af;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/af;-><init>(Lcom/xiaomi/mistatistic/sdk/a/ae;)V

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/ae;->c:Lcom/xiaomi/mistatistic/sdk/a/ac;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/ac;->b(Lcom/xiaomi/mistatistic/sdk/a/ac;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/mistatistic/sdk/a/e;J)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ae;->c:Lcom/xiaomi/mistatistic/sdk/a/ac;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/ac;->a(Lcom/xiaomi/mistatistic/sdk/a/ac;J)J

    goto :goto_0
.end method
