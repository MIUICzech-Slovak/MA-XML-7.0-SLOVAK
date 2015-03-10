.class public Lcom/xiaomi/mistatistic/sdk/b/f;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 6

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/b/f;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JILjava/lang/String;)V
    .locals 8

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/b/f;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 8

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/b/f;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/b/f;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->e:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->g:J

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->f:Ljava/lang/String;

    iput-wide p2, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->a:J

    iput p6, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->b:I

    iput-object p7, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->g:J

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/b/f;->b()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/b/f;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/r;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->d:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 6

    const-wide/16 v4, 0x0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "net"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->a:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_0

    const-string v1, "cost"

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_0
    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v1, "code"

    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "exception"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->g:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_3

    const-string v1, "flow"

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_3
    const-string v1, "t"

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/xiaomi/mistatistic/sdk/b/f;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/xiaomi/mistatistic/sdk/b/f;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/b/f;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/b/f;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/b/f;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->b:I

    iget v2, p1, Lcom/xiaomi/mistatistic/sdk/b/f;->b:I

    if-ne v1, v2, :cond_0

    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->a:J

    iget-wide v3, p1, Lcom/xiaomi/mistatistic/sdk/b/f;->a:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->e:J

    iget-wide v3, p1, Lcom/xiaomi/mistatistic/sdk/b/f;->e:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/xiaomi/mistatistic/sdk/b/f;->g:J

    iget-wide v3, p1, Lcom/xiaomi/mistatistic/sdk/b/f;->g:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
