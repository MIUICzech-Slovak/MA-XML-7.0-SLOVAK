.class public abstract Lcom/xiaomi/mistatistic/sdk/MiStatInterface;
.super Ljava/lang/Object;


# static fields
.field public static final MAX_UPLOAD_INTERVAL:J = 0x5265c00L

.field public static final MIN_UPLOAD_INTERVAL:J = 0x493e0L

.field public static final UPLOAD_POLICY_BATCH:I = 0x2

.field public static final UPLOAD_POLICY_DEVELOPMENT:I = 0x5

.field public static final UPLOAD_POLICY_INTERVAL:I = 0x4

.field public static final UPLOAD_POLICY_REALTIME:I = 0x0

.field public static final UPLOAD_POLICY_WHILE_INITIALIZE:I = 0x3

.field public static final UPLOAD_POLICY_WIFI_ONLY:I = 0x1

.field private static sInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mistat_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "category cannot start with mistat_"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mistat_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot start with mistat_"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static checkInitialized()V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not initialized, do you forget to call initialize when application started?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static enableExceptionCatcher(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a;->a(Z)V

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a;->a(I)V

    return-void

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static final enableLog()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/p;->a()V

    return-void
.end method

.method public static final getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/a/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appID or appKey is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez p3, :cond_2

    const-string p3, ""

    :cond_2
    invoke-static {v0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/i;->a()V

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/g;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/g;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/g;->a()Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/ac;->a()Lcom/xiaomi/mistatistic/sdk/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/ac;->b()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->sInitialized:Z

    return-void
.end method

.method public static isExceptionCatcherEnabled()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a;->d()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public static final recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 6

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "basic_info_reported"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "mistat_default"

    :goto_1
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b/b;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    goto :goto_1
.end method

.method public static final recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "basic_info_reported"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "mistat_default"

    :cond_1
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    goto :goto_0
.end method

.method public static final recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "basic_info_reported"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "mistat_default"

    :cond_1
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    goto :goto_0
.end method

.method public static final recordPageEnd()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/y;->a()Lcom/xiaomi/mistatistic/sdk/a/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/y;->b()V

    return-void
.end method

.method public static final recordPageStart(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/y;->a()Lcom/xiaomi/mistatistic/sdk/a/y;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/mistatistic/sdk/a/y;->a(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/b;->a()Lcom/xiaomi/mistatistic/sdk/a/b;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/a/a;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/a/a/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/b;->a(Lcom/xiaomi/mistatistic/sdk/a/e;)V

    return-void
.end method

.method public static final recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkCategoryAndKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "basic_info_reported"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "mistat_default"

    :cond_1
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    goto :goto_0
.end method

.method public static final setUploadPolicy(IJ)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const-wide/32 v0, 0x493e0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x5265c00

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interval should be set between 5 minutes and 1 day"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/ac;->a()Lcom/xiaomi/mistatistic/sdk/a/ac;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a/ac;->a(IJ)V

    return-void
.end method

.method public static shouldExceptionUploadImmediately()Z
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final triggerUploadManually()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->checkInitialized()V

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/u;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/u;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/u;->a()V

    return-void
.end method
