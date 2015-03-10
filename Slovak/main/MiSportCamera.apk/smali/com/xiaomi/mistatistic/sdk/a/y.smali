.class public Lcom/xiaomi/mistatistic/sdk/a/y;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/mistatistic/sdk/a/y;

.field private static c:J


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/xiaomi/mistatistic/sdk/a/y;->c:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/z;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/a/z;-><init>(Lcom/xiaomi/mistatistic/sdk/a/y;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/y;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/xiaomi/mistatistic/sdk/a/y;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/y;->a:Lcom/xiaomi/mistatistic/sdk/a/y;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/y;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/y;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/y;->a:Lcom/xiaomi/mistatistic/sdk/a/y;

    :cond_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/y;->a:Lcom/xiaomi/mistatistic/sdk/a/y;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/a/y;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private a(Landroid/content/Context;JJ)V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/r;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v5, "NULL"

    :cond_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b/h;

    move-wide v1, p2

    move-wide v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/b/h;-><init>(JJLjava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "session_begin"

    invoke-static {v0, v1, v6, v7}, Lcom/xiaomi/mistatistic/sdk/a/t;->b(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "last_deactivate"

    invoke-static {v0, v1, v6, v7}, Lcom/xiaomi/mistatistic/sdk/a/t;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b/g;

    invoke-direct {v0, p2}, Lcom/xiaomi/mistatistic/sdk/b/g;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    const-string v0, "pv_path"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/a/y;Landroid/content/Context;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Landroid/content/Context;JJ)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/a/y;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c()J
    .locals 2

    sget-wide v0, Lcom/xiaomi/mistatistic/sdk/a/y;->c:J

    return-wide v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/y;->b:Landroid/os/Handler;

    const v1, 0x1df5e77

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/b;->a()Lcom/xiaomi/mistatistic/sdk/a/b;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/aa;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a/aa;-><init>(Lcom/xiaomi/mistatistic/sdk/a/y;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/mistatistic/sdk/a/e;)V

    return-void
.end method

.method public b()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/b;->a()Lcom/xiaomi/mistatistic/sdk/a/b;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/ab;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/ab;-><init>(Lcom/xiaomi/mistatistic/sdk/a/y;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/mistatistic/sdk/a/e;)V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/y;->b:Landroid/os/Handler;

    const v1, 0x1df5e77

    sget-wide v2, Lcom/xiaomi/mistatistic/sdk/a/y;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
