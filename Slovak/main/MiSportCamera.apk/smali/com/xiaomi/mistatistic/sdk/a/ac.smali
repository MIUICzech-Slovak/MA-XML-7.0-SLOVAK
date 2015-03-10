.class public Lcom/xiaomi/mistatistic/sdk/a/ac;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/mistatistic/sdk/a/ac;


# instance fields
.field private b:I

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/ac;->a:Lcom/xiaomi/mistatistic/sdk/a/ac;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ac;->b:I

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/a/ac;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ac;->b:I

    return v0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/a/ac;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/mistatistic/sdk/a/ac;->b:I

    return p1
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/a/ac;J)J
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/a/ac;->c:J

    return-wide p1
.end method

.method public static declared-synchronized a()Lcom/xiaomi/mistatistic/sdk/a/ac;
    .locals 2

    const-class v1, Lcom/xiaomi/mistatistic/sdk/a/ac;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/ac;->a:Lcom/xiaomi/mistatistic/sdk/a/ac;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/ac;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/ac;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/ac;->a:Lcom/xiaomi/mistatistic/sdk/a/ac;

    :cond_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/ac;->a:Lcom/xiaomi/mistatistic/sdk/a/ac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/xiaomi/mistatistic/sdk/a/ac;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ac;->c:J

    return-wide v0
.end method


# virtual methods
.method public a(IJ)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/b;->a()Lcom/xiaomi/mistatistic/sdk/a/b;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/ae;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/a/ae;-><init>(Lcom/xiaomi/mistatistic/sdk/a/ac;IJ)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/mistatistic/sdk/a/e;)V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/b;->a()Lcom/xiaomi/mistatistic/sdk/a/b;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/ad;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/ad;-><init>(Lcom/xiaomi/mistatistic/sdk/a/ac;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/mistatistic/sdk/a/e;)V

    return-void
.end method

.method public c()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ac;->d:J

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ac;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/b;->a()Lcom/xiaomi/mistatistic/sdk/a/b;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/ag;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/ag;-><init>(Lcom/xiaomi/mistatistic/sdk/a/ac;)V

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/a/ac;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/mistatistic/sdk/a/e;J)V

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/b;->b()Lcom/xiaomi/mistatistic/sdk/a/b;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/ah;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/ah;-><init>(Lcom/xiaomi/mistatistic/sdk/a/ac;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/mistatistic/sdk/a/e;)V

    return-void
.end method

.method public d()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/u;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/a/ac;->b:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/r;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_3
    new-instance v2, Lcom/xiaomi/mistatistic/sdk/a/i;

    invoke-direct {v2}, Lcom/xiaomi/mistatistic/sdk/a/i;-><init>()V

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/a/i;->d()I

    move-result v2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/a/ac;->d:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/a/ac;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ac;->c:J

    return-wide v0
.end method
