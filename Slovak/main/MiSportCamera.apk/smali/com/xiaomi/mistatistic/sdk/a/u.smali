.class public Lcom/xiaomi/mistatistic/sdk/a/u;
.super Ljava/lang/Object;


# static fields
.field private static b:Z


# instance fields
.field private a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/a/u;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/a/u;J)J
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/a/u;->a:J

    return-wide p1
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/a/u;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/a/u;->d()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/a/u;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/a/u;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/b;->b()Lcom/xiaomi/mistatistic/sdk/a/b;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/a/d;

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/a/w;

    invoke-direct {v2, p0}, Lcom/xiaomi/mistatistic/sdk/a/w;-><init>(Lcom/xiaomi/mistatistic/sdk/a/u;)V

    invoke-direct {v1, p1, v2}, Lcom/xiaomi/mistatistic/sdk/a/a/d;-><init>(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/a/a/e;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/mistatistic/sdk/a/e;)V

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/xiaomi/mistatistic/sdk/a/u;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/xiaomi/mistatistic/sdk/a/u;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/a/u;->a:J

    return-wide v0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/a/u;->b:Z

    return v0
.end method

.method private c()V
    .locals 5

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/b;->a()Lcom/xiaomi/mistatistic/sdk/a/b;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/a/b;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/ac;->a()Lcom/xiaomi/mistatistic/sdk/a/ac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/a/ac;->e()J

    move-result-wide v2

    new-instance v4, Lcom/xiaomi/mistatistic/sdk/a/v;

    invoke-direct {v4, p0}, Lcom/xiaomi/mistatistic/sdk/a/v;-><init>(Lcom/xiaomi/mistatistic/sdk/a/u;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/xiaomi/mistatistic/sdk/a/a/b;-><init>(JLcom/xiaomi/mistatistic/sdk/a/a/c;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/mistatistic/sdk/a/e;)V

    return-void
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/b;->a()Lcom/xiaomi/mistatistic/sdk/a/b;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/x;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/x;-><init>(Lcom/xiaomi/mistatistic/sdk/a/u;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/mistatistic/sdk/a/e;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/a/u;->b:Z

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/a/u;->c()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/ac;->a()Lcom/xiaomi/mistatistic/sdk/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/ac;->c()V

    return-void
.end method
