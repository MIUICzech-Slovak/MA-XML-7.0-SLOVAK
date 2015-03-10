.class Lcom/xiaomi/mistatistic/sdk/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/e;


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/a/k;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/l;->a:Lcom/xiaomi/mistatistic/sdk/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/l;->a:Lcom/xiaomi/mistatistic/sdk/a/k;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/k;->a:Lcom/xiaomi/mistatistic/sdk/a/j;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/l;->a:Lcom/xiaomi/mistatistic/sdk/a/k;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/k;->a:Lcom/xiaomi/mistatistic/sdk/a/j;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/j;->a(Lcom/xiaomi/mistatistic/sdk/a/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/l;->a:Lcom/xiaomi/mistatistic/sdk/a/k;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/k;->a:Lcom/xiaomi/mistatistic/sdk/a/j;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/j;->b(Lcom/xiaomi/mistatistic/sdk/a/j;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/l;->a:Lcom/xiaomi/mistatistic/sdk/a/k;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/k;->a:Lcom/xiaomi/mistatistic/sdk/a/j;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/j;->b(Lcom/xiaomi/mistatistic/sdk/a/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/p;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/a/p;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/a/p;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/p;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/a/p;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/a/p;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
