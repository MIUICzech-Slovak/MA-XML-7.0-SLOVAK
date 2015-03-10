.class public Lcom/xiaomi/channel/sdk/MLExtraInfo;
.super Ljava/lang/Object;
.source "MLExtraInfo.java"


# instance fields
.field public action:Ljava/lang/String;

.field public availableVersion:I

.field public extraUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/sdk/MLExtraInfo;->action:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/sdk/MLExtraInfo;->extraUri:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/channel/sdk/MLExtraInfo;->availableVersion:I

    .line 8
    return-void
.end method


# virtual methods
.method public parseFromJson(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "action"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/channel/sdk/MLExtraInfo;->action:Ljava/lang/String;

    .line 34
    const-string v2, "extraUri"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/channel/sdk/MLExtraInfo;->extraUri:Ljava/lang/String;

    .line 35
    const-string v2, "availableVersion"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/xiaomi/channel/sdk/MLExtraInfo;->availableVersion:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v1    # "obj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    .prologue
    .line 17
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 19
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "action"

    iget-object v3, p0, Lcom/xiaomi/channel/sdk/MLExtraInfo;->action:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v2, "extraUri"

    iget-object v3, p0, Lcom/xiaomi/channel/sdk/MLExtraInfo;->extraUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string v2, "availableVersion"

    iget v3, p0, Lcom/xiaomi/channel/sdk/MLExtraInfo;->availableVersion:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 26
    :goto_0
    return-object v2

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 26
    const-string v2, ""

    goto :goto_0
.end method
