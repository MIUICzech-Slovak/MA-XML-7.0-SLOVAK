.class Lcom/xiaomi/mistatistic/sdk/a/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/a/c;


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/a/u;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/u;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/v;->a:Lcom/xiaomi/mistatistic/sdk/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/v;->a:Lcom/xiaomi/mistatistic/sdk/a/u;

    invoke-static {v0, p2, p3}, Lcom/xiaomi/mistatistic/sdk/a/u;->a(Lcom/xiaomi/mistatistic/sdk/a/u;J)J

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/v;->a:Lcom/xiaomi/mistatistic/sdk/a/u;

    invoke-static {v0, p1}, Lcom/xiaomi/mistatistic/sdk/a/u;->a(Lcom/xiaomi/mistatistic/sdk/a/u;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/u;->a(Z)Z

    goto :goto_0
.end method
