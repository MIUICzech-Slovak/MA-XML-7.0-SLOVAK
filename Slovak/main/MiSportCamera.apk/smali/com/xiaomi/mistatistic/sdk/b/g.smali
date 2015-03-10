.class public Lcom/xiaomi/mistatistic/sdk/b/g;
.super Lcom/xiaomi/mistatistic/sdk/b/a;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/b/a;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/b/g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/mistatistic/sdk/b/i;
    .locals 3

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b/i;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/b/i;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/b/g;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/b/i;->a:Ljava/lang/String;

    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/b/g;->a:J

    iput-wide v1, v0, Lcom/xiaomi/mistatistic/sdk/b/i;->b:J

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b/g;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/b/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "mistat_pv"

    return-object v0
.end method
