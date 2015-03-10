.class public Lcom/xiaomi/mistatistic/sdk/b/e;
.super Lcom/xiaomi/mistatistic/sdk/b/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/b/a;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/b/e;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/b/e;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/b/e;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaomi/mistatistic/sdk/b/i;
    .locals 3

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b/i;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/b/i;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b/e;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/b/i;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b/e;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/b/i;->c:Ljava/lang/String;

    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/b/e;->a:J

    iput-wide v1, v0, Lcom/xiaomi/mistatistic/sdk/b/i;->b:J

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b/e;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/b/i;->e:Ljava/lang/String;

    const-string v1, "property"

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/b/i;->d:Ljava/lang/String;

    return-object v0
.end method
