.class public Lcom/xiaomi/mistatistic/sdk/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/e;


# instance fields
.field private a:J

.field private b:Ljava/util/HashMap;

.field private c:J

.field private d:J

.field private e:Lorg/json/JSONArray;

.field private f:Lorg/json/JSONObject;

.field private g:Ljava/util/ArrayList;

.field private h:Lcom/xiaomi/mistatistic/sdk/a/a/c;

.field private i:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(JLcom/xiaomi/mistatistic/sdk/a/a/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->b:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->d:J

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->e:Lorg/json/JSONArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->f:Lorg/json/JSONObject;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->i:Ljava/util/HashMap;

    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->a:J

    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->h:Lcom/xiaomi/mistatistic/sdk/a/a/c;

    return-void
.end method

.method private a(Lcom/xiaomi/mistatistic/sdk/b/i;)V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->b:Ljava/util/HashMap;

    const-string v1, "mistat_session"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "category"

    const-string v3, "mistat_session"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "values"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->b:Ljava/util/HashMap;

    const-string v2, "mistat_session"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->f:Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->e:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v2, "start"

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "end"

    invoke-virtual {v1, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "env"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "values"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method private b(Lcom/xiaomi/mistatistic/sdk/b/i;)V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->b:Ljava/util/HashMap;

    const-string v1, "mistat_pv"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "category"

    const-string v3, "mistat_pv"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "values"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->b:Ljava/util/HashMap;

    const-string v2, "mistat_pv"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->f:Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->g:Ljava/util/ArrayList;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->g:Ljava/util/ArrayList;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v1, ","

    invoke-static {v1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "values"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, ","

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->g:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "index"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private c(Lcom/xiaomi/mistatistic/sdk/b/i;)V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->b:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "category"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "values"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->b:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->f:Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v1, v0

    :goto_0
    const-string v0, "event"

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->i:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "value"

    iget-object v4, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->e:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v1, v4

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "key"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "value"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "values"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->i:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "key"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "count"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "numeric"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const-string v2, "value"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_2
    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "params"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->f:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string v2, "values"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_4
    const-string v2, "value"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/b/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/a/a/b;->b()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->h:Lcom/xiaomi/mistatistic/sdk/a/a/c;

    const-string v1, ""

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->d:J

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/a/c;->a(Ljava/lang/String;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->h:Lcom/xiaomi/mistatistic/sdk/a/a/c;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->d:J

    invoke-interface {v1, v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/a/c;->a(Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->h:Lcom/xiaomi/mistatistic/sdk/a/a/c;

    const-string v1, ""

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->d:J

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/a/c;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public b()Lorg/json/JSONArray;
    .locals 10

    const-wide/16 v8, 0x0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/p;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/a/p;-><init>()V

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/i;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/i;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/i;->c()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/i;->b()Landroid/database/Cursor;

    move-result-object v2

    const-string v0, "Begin to packing data from local DB"

    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/p;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/i;->a(Landroid/database/Cursor;)Lcom/xiaomi/mistatistic/sdk/b/i;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Packing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/xiaomi/mistatistic/sdk/b/i;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/xiaomi/mistatistic/sdk/a/p;->a(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->d:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    iget-wide v4, v3, Lcom/xiaomi/mistatistic/sdk/b/i;->b:J

    iput-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->d:J

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->d:J

    iput-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->c:J

    :cond_1
    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->a:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->c:J

    iget-wide v6, v3, Lcom/xiaomi/mistatistic/sdk/b/i;->b:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->a:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->f:Lorg/json/JSONObject;

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->f:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-wide v4, v3, Lcom/xiaomi/mistatistic/sdk/b/i;->b:J

    iput-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->c:J

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->i:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    :cond_2
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->f:Lorg/json/JSONObject;

    if-nez v4, :cond_3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->f:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->f:Lorg/json/JSONObject;

    const-string v5, "endTS"

    iget-wide v6, v3, Lcom/xiaomi/mistatistic/sdk/b/i;->b:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iget-object v5, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->f:Lorg/json/JSONObject;

    const-string v6, "content"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->e:Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->f:Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    const-string v4, "mistat_session"

    iget-object v5, v3, Lcom/xiaomi/mistatistic/sdk/b/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v3}, Lcom/xiaomi/mistatistic/sdk/a/a/b;->a(Lcom/xiaomi/mistatistic/sdk/b/i;)V

    :goto_0
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->f:Lorg/json/JSONObject;

    const-string v5, "startTS"

    iget-wide v6, v3, Lcom/xiaomi/mistatistic/sdk/b/i;->b:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Packing complete, total "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " records were packed and to be uploaded"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/p;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->e:Lorg/json/JSONArray;

    return-object v0

    :cond_5
    :try_start_1
    const-string v4, "mistat_pv"

    iget-object v5, v3, Lcom/xiaomi/mistatistic/sdk/b/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, v3}, Lcom/xiaomi/mistatistic/sdk/a/a/b;->b(Lcom/xiaomi/mistatistic/sdk/b/i;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    :try_start_2
    invoke-direct {p0, v3}, Lcom/xiaomi/mistatistic/sdk/a/a/b;->c(Lcom/xiaomi/mistatistic/sdk/b/i;)V

    goto :goto_0

    :cond_8
    const-string v0, "No data available to be packed"

    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/p;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/a/b;->e:Lorg/json/JSONArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
