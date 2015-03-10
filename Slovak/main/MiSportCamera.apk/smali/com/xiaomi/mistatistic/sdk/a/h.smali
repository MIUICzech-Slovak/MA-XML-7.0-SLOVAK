.class Lcom/xiaomi/mistatistic/sdk/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/e;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/h;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/h;->a:Landroid/content/Context;

    const-string v1, "device_id"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/h;->a:Landroid/content/Context;

    const-string v1, "device_id"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
