.class public Lcom/loopj/android/http/TextHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "TextHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextHttpResponseHandler"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/loopj/android/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/TextHttpResponseHandler;->setCharset(Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # Ljava/lang/String;
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    invoke-virtual {p0, p3, p4}, Lcom/loopj/android/http/TextHttpResponseHandler;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 5
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x0

    .line 107
    if-nez p3, :cond_0

    move-object v1, v2

    .line 108
    .local v1, "response":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/loopj/android/http/TextHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .end local v1    # "response":Ljava/lang/String;
    :goto_1
    return-void

    .line 107
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/loopj/android/http/TextHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p3, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "TextHttpResponseHandler"

    const-string v4, "String encoding failed, calling onFailure(int, Header[], String, Throwable)"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v3, 0x0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, p2, v2, v0}, Lcom/loopj/android/http/TextHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "responseBody"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-virtual {p0, p1, p3}, Lcom/loopj/android/http/TextHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 91
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 5
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # [B

    .prologue
    const/4 v2, 0x0

    .line 96
    if-nez p3, :cond_0

    move-object v1, v2

    .line 97
    .local v1, "response":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/loopj/android/http/TextHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    .line 102
    .end local v1    # "response":Ljava/lang/String;
    :goto_1
    return-void

    .line 96
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/loopj/android/http/TextHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p3, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "TextHttpResponseHandler"

    const-string v4, "String encoding failed, calling onFailure(int, Header[], String, Throwable)"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v3, 0x0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, p2, v2, v0}, Lcom/loopj/android/http/TextHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
