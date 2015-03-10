.class public Lcom/xiaomi/mistatistic/sdk/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/e;


# instance fields
.field private a:Lcom/xiaomi/mistatistic/sdk/a/a/e;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/a/a/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/a/a/d;->a:Lcom/xiaomi/mistatistic/sdk/a/a/e;

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/a/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v0, 0x0

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/a/p;

    invoke-direct {v2}, Lcom/xiaomi/mistatistic/sdk/a/p;-><init>()V

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "app_id"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "app_key"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "device_id"

    new-instance v5, Lcom/xiaomi/mistatistic/sdk/a/g;

    invoke-direct {v5}, Lcom/xiaomi/mistatistic/sdk/a/g;-><init>()V

    invoke-virtual {v5}, Lcom/xiaomi/mistatistic/sdk/a/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "channel"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "version"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "stat_value"

    iget-object v5, p0, Lcom/xiaomi/mistatistic/sdk/a/a/d;->b:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/a;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isTest()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "http://10.99.168.145:8097/mistats"

    :goto_0
    invoke-static {v4, v1, v3}, Lcom/xiaomi/mistatistic/sdk/a/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upload MiStat data complete, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/p;->a(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ok"

    const-string v4, "status"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/a/d;->a:Lcom/xiaomi/mistatistic/sdk/a/a/e;

    invoke-interface {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/a/e;->a(Z)V

    return-void

    :cond_2
    :try_start_1
    const-string v1, "https://data.mistat.xiaomi.com/mistats"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Upload MiStat data failed"

    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/mistatistic/sdk/a/p;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v3, "Result parse failed"

    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/mistatistic/sdk/a/p;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
