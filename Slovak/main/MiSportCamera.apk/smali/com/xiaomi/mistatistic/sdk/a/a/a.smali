.class public Lcom/xiaomi/mistatistic/sdk/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "basic_info_reported"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/a/a/a;->a(Landroid/content/Context;)V

    const-string v1, "basic_info_reported"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/t;->b(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/u;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/a/u;-><init>()V

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/a/u;->a()V

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "basic_info_version"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/b/c;

    const-string v3, "mistat_basic"

    const-string v4, "upgrade"

    invoke-direct {v2, v3, v4}, Lcom/xiaomi/mistatistic/sdk/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    :cond_1
    const-string v2, "basic_info_version"

    invoke-static {v0, v2, v1}, Lcom/xiaomi/mistatistic/sdk/a/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b/c;

    const-string v1, "mistat_basic"

    const-string v2, "new"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b/e;

    const-string v1, "mistat_basic"

    const-string v2, "model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b/e;

    const-string v1, "mistat_basic"

    const-string v2, "OS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/b/e;

    const-string v2, "mistat_basic"

    const-string v3, "operator"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/a/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/b/e;

    const-string v2, "mistat_basic"

    const-string v3, "IMEI"

    invoke-direct {v1, v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/b/e;

    const-string v2, "mistat_basic"

    const-string v3, "resolution"

    invoke-direct {v1, v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/b/e;

    const-string v2, "mistat_basic"

    const-string v3, "locale"

    invoke-direct {v1, v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
