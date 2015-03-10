.class Lcom/xiaomi/mistatistic/sdk/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/a/e;

.field final synthetic b:Lcom/xiaomi/mistatistic/sdk/a/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/b;Lcom/xiaomi/mistatistic/sdk/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->b:Lcom/xiaomi/mistatistic/sdk/a/b;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->a:Lcom/xiaomi/mistatistic/sdk/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->a:Lcom/xiaomi/mistatistic/sdk/a/e;

    invoke-interface {v0}, Lcom/xiaomi/mistatistic/sdk/a/e;->a()V

    return-void
.end method
