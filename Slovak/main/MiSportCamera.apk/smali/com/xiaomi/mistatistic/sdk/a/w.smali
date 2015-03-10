.class Lcom/xiaomi/mistatistic/sdk/a/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/a/e;


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/a/u;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/u;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/w;->a:Lcom/xiaomi/mistatistic/sdk/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/w;->a:Lcom/xiaomi/mistatistic/sdk/a/u;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/u;->a(Lcom/xiaomi/mistatistic/sdk/a/u;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/u;->a(Z)Z

    goto :goto_0
.end method
