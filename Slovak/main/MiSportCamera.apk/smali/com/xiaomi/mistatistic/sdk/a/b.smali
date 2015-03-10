.class public Lcom/xiaomi/mistatistic/sdk/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/mistatistic/sdk/a/b;

.field private static b:Lcom/xiaomi/mistatistic/sdk/a/b;


# instance fields
.field private volatile c:Landroid/os/Handler;

.field private d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/b;->a:Lcom/xiaomi/mistatistic/sdk/a/b;

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/b;->b:Lcom/xiaomi/mistatistic/sdk/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/b;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/f;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/mistatistic/sdk/a/f;-><init>(Lcom/xiaomi/mistatistic/sdk/a/b;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/f;->start()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/a/b;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/b;->c:Landroid/os/Handler;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/xiaomi/mistatistic/sdk/a/b;
    .locals 3

    const-class v1, Lcom/xiaomi/mistatistic/sdk/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/b;->a:Lcom/xiaomi/mistatistic/sdk/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/b;

    const-string v2, "local_job_dispatcher"

    invoke-direct {v0, v2}, Lcom/xiaomi/mistatistic/sdk/a/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/b;->a:Lcom/xiaomi/mistatistic/sdk/a/b;

    :cond_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/b;->a:Lcom/xiaomi/mistatistic/sdk/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/a/b;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/b;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static declared-synchronized b()Lcom/xiaomi/mistatistic/sdk/a/b;
    .locals 3

    const-class v1, Lcom/xiaomi/mistatistic/sdk/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/b;->b:Lcom/xiaomi/mistatistic/sdk/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/b;

    const-string v2, "remote_job_dispatcher"

    invoke-direct {v0, v2}, Lcom/xiaomi/mistatistic/sdk/a/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/b;->b:Lcom/xiaomi/mistatistic/sdk/a/b;

    :cond_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/b;->b:Lcom/xiaomi/mistatistic/sdk/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/xiaomi/mistatistic/sdk/a/e;)V
    .locals 3

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/b;->d:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/b;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/b;->c:Landroid/os/Handler;

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/a/c;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/mistatistic/sdk/a/c;-><init>(Lcom/xiaomi/mistatistic/sdk/a/b;Lcom/xiaomi/mistatistic/sdk/a/e;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/xiaomi/mistatistic/sdk/a/e;J)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/b;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/b;->c:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/d;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/a/d;-><init>(Lcom/xiaomi/mistatistic/sdk/a/b;Lcom/xiaomi/mistatistic/sdk/a/e;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
