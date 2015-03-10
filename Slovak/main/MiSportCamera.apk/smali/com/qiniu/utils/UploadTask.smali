.class public abstract Lcom/qiniu/utils/UploadTask;
.super Landroid/os/AsyncTask;
.source "UploadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/qiniu/rs/CallRet;",
        ">;"
    }
.end annotation


# instance fields
.field protected auth:Lcom/qiniu/auth/Authorizer;

.field protected final callback:Lcom/qiniu/rs/CallBack;

.field protected final contentLength:J

.field protected extra:Lcom/qiniu/rs/PutExtra;

.field protected final key:Ljava/lang/String;

.field protected orginIsa:Lcom/qiniu/utils/InputStreamAt;

.field protected volatile post:Lorg/apache/http/client/methods/HttpPost;

.field private volatile upCancelled:Z


# direct methods
.method public constructor <init>(Lcom/qiniu/auth/Authorizer;Lcom/qiniu/utils/InputStreamAt;Ljava/lang/String;Lcom/qiniu/rs/PutExtra;Lcom/qiniu/rs/CallBack;)V
    .locals 2
    .param p1, "auth"    # Lcom/qiniu/auth/Authorizer;
    .param p2, "isa"    # Lcom/qiniu/utils/InputStreamAt;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "extra"    # Lcom/qiniu/rs/PutExtra;
    .param p5, "ret"    # Lcom/qiniu/rs/CallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qiniu/utils/UploadTask;->upCancelled:Z

    .line 31
    iput-object p5, p0, Lcom/qiniu/utils/UploadTask;->callback:Lcom/qiniu/rs/CallBack;

    .line 32
    iput-object p1, p0, Lcom/qiniu/utils/UploadTask;->auth:Lcom/qiniu/auth/Authorizer;

    .line 33
    iput-object p2, p0, Lcom/qiniu/utils/UploadTask;->orginIsa:Lcom/qiniu/utils/InputStreamAt;

    .line 34
    iget-object v0, p0, Lcom/qiniu/utils/UploadTask;->orginIsa:Lcom/qiniu/utils/InputStreamAt;

    invoke-virtual {v0}, Lcom/qiniu/utils/InputStreamAt;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qiniu/utils/UploadTask;->contentLength:J

    .line 35
    iput-object p3, p0, Lcom/qiniu/utils/UploadTask;->key:Ljava/lang/String;

    .line 36
    if-eqz p4, :cond_0

    .end local p4    # "extra":Lcom/qiniu/rs/PutExtra;
    :goto_0
    iput-object p4, p0, Lcom/qiniu/utils/UploadTask;->extra:Lcom/qiniu/rs/PutExtra;

    .line 37
    return-void

    .line 36
    .restart local p4    # "extra":Lcom/qiniu/rs/PutExtra;
    :cond_0
    new-instance p4, Lcom/qiniu/rs/PutExtra;

    .end local p4    # "extra":Lcom/qiniu/rs/PutExtra;
    invoke-direct {p4}, Lcom/qiniu/rs/PutExtra;-><init>()V

    goto :goto_0
.end method

.method private abort()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/qiniu/utils/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/utils/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/qiniu/utils/UploadTask;->upCancelled:Z

    .line 103
    invoke-direct {p0}, Lcom/qiniu/utils/UploadTask;->abort()V

    .line 104
    invoke-virtual {p0, v0}, Lcom/qiniu/utils/UploadTask;->cancel(Z)Z

    .line 105
    invoke-direct {p0}, Lcom/qiniu/utils/UploadTask;->abort()V

    .line 106
    invoke-virtual {p0, v0}, Lcom/qiniu/utils/UploadTask;->cancel(Z)Z

    .line 107
    return-void
.end method

.method protected clean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lcom/qiniu/utils/UploadTask;->orginIsa:Lcom/qiniu/utils/InputStreamAt;

    invoke-virtual {v0}, Lcom/qiniu/utils/InputStreamAt;->close()V

    .line 54
    iput-object v1, p0, Lcom/qiniu/utils/UploadTask;->orginIsa:Lcom/qiniu/utils/InputStreamAt;

    .line 55
    iput-object v1, p0, Lcom/qiniu/utils/UploadTask;->extra:Lcom/qiniu/rs/PutExtra;

    .line 56
    iput-object v1, p0, Lcom/qiniu/utils/UploadTask;->auth:Lcom/qiniu/auth/Authorizer;

    .line 57
    iput-object v1, p0, Lcom/qiniu/utils/UploadTask;->post:Lorg/apache/http/client/methods/HttpPost;

    .line 58
    return-void
.end method

.method protected final varargs doInBackground([Ljava/lang/Object;)Lcom/qiniu/rs/CallRet;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/qiniu/utils/UploadTask;->execDoInBackground([Ljava/lang/Object;)Lcom/qiniu/rs/CallRet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/qiniu/utils/UploadTask;->clean()V

    .line 46
    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    invoke-virtual {p0}, Lcom/qiniu/utils/UploadTask;->clean()V

    .line 49
    throw v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/qiniu/utils/UploadTask;->doInBackground([Ljava/lang/Object;)Lcom/qiniu/rs/CallRet;

    move-result-object v0

    return-object v0
.end method

.method protected varargs abstract execDoInBackground([Ljava/lang/Object;)Lcom/qiniu/rs/CallRet;
.end method

.method protected getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/qiniu/utils/Http;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public isUpCancelled()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/qiniu/utils/UploadTask;->upCancelled:Z

    return v0
.end method

.method protected onCancelled(Lcom/qiniu/rs/CallRet;)V
    .locals 0
    .param p1, "ret"    # Lcom/qiniu/rs/CallRet;

    .prologue
    .line 79
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/qiniu/rs/CallRet;

    invoke-virtual {p0, p1}, Lcom/qiniu/utils/UploadTask;->onCancelled(Lcom/qiniu/rs/CallRet;)V

    return-void
.end method

.method protected onPostExecute(Lcom/qiniu/rs/CallRet;)V
    .locals 6
    .param p1, "ret"    # Lcom/qiniu/rs/CallRet;

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/qiniu/utils/UploadTask;->callback:Lcom/qiniu/rs/CallBack;

    new-instance v2, Lcom/qiniu/rs/CallRet;

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "result is null"

    invoke-direct {v2, v3, v4, v5}, Lcom/qiniu/rs/CallRet;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/qiniu/rs/CallBack;->onFailure(Lcom/qiniu/rs/CallRet;)V

    .line 98
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/qiniu/rs/CallRet;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/qiniu/utils/UploadTask;->callback:Lcom/qiniu/rs/CallBack;

    invoke-virtual {v1, p1}, Lcom/qiniu/rs/CallBack;->onFailure(Lcom/qiniu/rs/CallRet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/qiniu/rs/CallRet;->isOk()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/qiniu/utils/UploadTask;->callback:Lcom/qiniu/rs/CallBack;

    new-instance v2, Lcom/qiniu/rs/UploadCallRet;

    invoke-direct {v2, p1}, Lcom/qiniu/rs/UploadCallRet;-><init>(Lcom/qiniu/rs/CallRet;)V

    invoke-virtual {v1, v2}, Lcom/qiniu/rs/CallBack;->onSuccess(Lcom/qiniu/rs/UploadCallRet;)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/qiniu/utils/UploadTask;->callback:Lcom/qiniu/rs/CallBack;

    invoke-virtual {v1, p1}, Lcom/qiniu/rs/CallBack;->onFailure(Lcom/qiniu/rs/CallRet;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/qiniu/rs/CallRet;

    invoke-virtual {p0, p1}, Lcom/qiniu/utils/UploadTask;->onPostExecute(Lcom/qiniu/rs/CallRet;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 7
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 65
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p1, v5

    instance-of v5, v5, Ljava/lang/Long;

    if-eqz v5, :cond_1

    .line 66
    const/4 v5, 0x0

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 67
    .local v0, "current":J
    const/4 v5, 0x1

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 68
    .local v3, "total":J
    iget-object v5, p0, Lcom/qiniu/utils/UploadTask;->callback:Lcom/qiniu/rs/CallBack;

    invoke-virtual {v5, v0, v1, v3, v4}, Lcom/qiniu/rs/CallBack;->onProcess(JJ)V

    .line 75
    .end local v0    # "current":J
    .end local v3    # "total":J
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const/4 v5, 0x0

    aget-object v5, p1, v5

    instance-of v5, v5, Lcom/qiniu/resumableio/SliceUploadTask$Block;

    if-eqz v5, :cond_0

    .line 70
    iget-object v6, p0, Lcom/qiniu/utils/UploadTask;->callback:Lcom/qiniu/rs/CallBack;

    const/4 v5, 0x0

    aget-object v5, p1, v5

    check-cast v5, Lcom/qiniu/resumableio/SliceUploadTask$Block;

    invoke-virtual {v6, v5}, Lcom/qiniu/rs/CallBack;->onBlockSuccess(Lcom/qiniu/resumableio/SliceUploadTask$Block;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
