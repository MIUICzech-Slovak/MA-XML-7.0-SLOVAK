.class public Lcom/loopj/android/http/JsonHttpResponseHandler;
.super Lcom/loopj/android/http/TextHttpResponseHandler;
.source "JsonHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JsonHttpResponseHandler"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "e"    # Ljava/lang/Throwable;
    .param p3, "errorResponse"    # Lorg/json/JSONArray;

    .prologue
    .line 138
    invoke-virtual {p0, p2, p3}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONArray;)V

    .line 139
    return-void
.end method

.method public onFailure(ILjava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "e"    # Ljava/lang/Throwable;
    .param p3, "errorResponse"    # Lorg/json/JSONObject;

    .prologue
    .line 126
    invoke-virtual {p0, p2, p3}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 127
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 185
    if-eqz p3, :cond_0

    .line 186
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/loopj/android/http/JsonHttpResponseHandler$2;-><init>(Lcom/loopj/android/http/JsonHttpResponseHandler;Ljava/lang/String;I[Lorg/apache/http/Header;Ljava/lang/Throwable;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 216
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 221
    :goto_0
    return-void

    .line 218
    :cond_0
    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "response body is null, calling onFailure(Throwable, JSONObject)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "e"    # Ljava/lang/Throwable;
    .param p4, "errorResponse"    # Lorg/json/JSONArray;

    .prologue
    .line 142
    invoke-virtual {p0, p1, p3, p4}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(ILjava/lang/Throwable;Lorg/json/JSONArray;)V

    .line 143
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "e"    # Ljava/lang/Throwable;
    .param p4, "errorResponse"    # Lorg/json/JSONObject;

    .prologue
    .line 130
    invoke-virtual {p0, p1, p3, p4}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(ILjava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 131
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "errorResponse"    # Lorg/json/JSONArray;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "errorResponse"    # Lorg/json/JSONObject;

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 123
    return-void
.end method

.method public onSuccess(ILorg/json/JSONArray;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "response"    # Lorg/json/JSONArray;

    .prologue
    .line 118
    invoke-virtual {p0, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(Lorg/json/JSONArray;)V

    .line 119
    return-void
.end method

.method public onSuccess(ILorg/json/JSONObject;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 95
    invoke-virtual {p0, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(Lorg/json/JSONObject;)V

    .line 96
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 147
    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/loopj/android/http/JsonHttpResponseHandler$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/loopj/android/http/JsonHttpResponseHandler$1;-><init>(Lcom/loopj/android/http/JsonHttpResponseHandler;Ljava/lang/String;I[Lorg/apache/http/Header;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 177
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "response"    # Lorg/json/JSONArray;

    .prologue
    .line 107
    invoke-virtual {p0, p1, p3}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONArray;)V

    .line 108
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 84
    invoke-virtual {p0, p1, p3}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onSuccess(ILorg/json/JSONObject;)V

    .line 85
    return-void
.end method

.method public onSuccess(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "response"    # Lorg/json/JSONArray;

    .prologue
    .line 73
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 63
    return-void
.end method

.method protected parseResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "responseBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 224
    if-nez p1, :cond_1

    .line 225
    const/4 v1, 0x0

    .line 235
    :cond_0
    :goto_0
    return-object v1

    .line 226
    :cond_1
    const/4 v1, 0x0

    .line 228
    .local v1, "result":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "jsonString":Ljava/lang/String;
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 230
    :cond_2
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 232
    .end local v1    # "result":Ljava/lang/Object;
    :cond_3
    if-nez v1, :cond_0

    .line 233
    move-object v1, v0

    .local v1, "result":Ljava/lang/String;
    goto :goto_0
.end method
