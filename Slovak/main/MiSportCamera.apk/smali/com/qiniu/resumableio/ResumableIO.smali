.class public Lcom/qiniu/resumableio/ResumableIO;
.super Ljava/lang/Object;
.source "ResumableIO.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static put(Lcom/qiniu/auth/Authorizer;Ljava/lang/String;Lcom/qiniu/utils/InputStreamAt;Lcom/qiniu/rs/PutExtra;Lcom/qiniu/rs/CallBack;)Lcom/qiniu/rs/UploadTaskExecutor;
    .locals 6
    .param p0, "auth"    # Lcom/qiniu/auth/Authorizer;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "input"    # Lcom/qiniu/utils/InputStreamAt;
    .param p3, "extra"    # Lcom/qiniu/rs/PutExtra;
    .param p4, "callback"    # Lcom/qiniu/rs/CallBack;

    .prologue
    .line 53
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/qiniu/resumableio/ResumableIO;->put(Lcom/qiniu/auth/Authorizer;Ljava/lang/String;Lcom/qiniu/utils/InputStreamAt;Lcom/qiniu/rs/PutExtra;Ljava/util/List;Lcom/qiniu/rs/CallBack;)Lcom/qiniu/rs/UploadTaskExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static put(Lcom/qiniu/auth/Authorizer;Ljava/lang/String;Lcom/qiniu/utils/InputStreamAt;Lcom/qiniu/rs/PutExtra;Ljava/util/List;Lcom/qiniu/rs/CallBack;)Lcom/qiniu/rs/UploadTaskExecutor;
    .locals 8
    .param p0, "auth"    # Lcom/qiniu/auth/Authorizer;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "input"    # Lcom/qiniu/utils/InputStreamAt;
    .param p3, "extra"    # Lcom/qiniu/rs/PutExtra;
    .param p5, "callback"    # Lcom/qiniu/rs/CallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qiniu/auth/Authorizer;",
            "Ljava/lang/String;",
            "Lcom/qiniu/utils/InputStreamAt;",
            "Lcom/qiniu/rs/PutExtra;",
            "Ljava/util/List",
            "<",
            "Lcom/qiniu/resumableio/SliceUploadTask$Block;",
            ">;",
            "Lcom/qiniu/rs/CallBack;",
            ")",
            "Lcom/qiniu/rs/UploadTaskExecutor;"
        }
    .end annotation

    .prologue
    .local p4, "blocks":Ljava/util/List;, "Ljava/util/List<Lcom/qiniu/resumableio/SliceUploadTask$Block;>;"
    const/4 v7, 0x0

    .line 59
    :try_start_0
    new-instance v0, Lcom/qiniu/resumableio/SliceUploadTask;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/resumableio/SliceUploadTask;-><init>(Lcom/qiniu/auth/Authorizer;Lcom/qiniu/utils/InputStreamAt;Ljava/lang/String;Lcom/qiniu/rs/PutExtra;Lcom/qiniu/rs/CallBack;)V

    .line 60
    .local v0, "task":Lcom/qiniu/resumableio/SliceUploadTask;
    invoke-virtual {v0, p4}, Lcom/qiniu/resumableio/SliceUploadTask;->setLastUploadBlocks(Ljava/util/List;)V

    .line 61
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/qiniu/resumableio/SliceUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    new-instance v1, Lcom/qiniu/rs/UploadTaskExecutor;

    invoke-direct {v1, v0}, Lcom/qiniu/rs/UploadTaskExecutor;-><init>(Lcom/qiniu/utils/UploadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0    # "task":Lcom/qiniu/resumableio/SliceUploadTask;
    :goto_0
    return-object v1

    .line 63
    :catch_0
    move-exception v6

    .line 64
    .local v6, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/qiniu/rs/CallRet;

    const-string v2, ""

    invoke-direct {v1, v7, v2, v6}, Lcom/qiniu/rs/CallRet;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p5, v1}, Lcom/qiniu/rs/CallBack;->onFailure(Lcom/qiniu/rs/CallRet;)V

    .line 65
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static putFile(Landroid/content/Context;Lcom/qiniu/auth/Authorizer;Ljava/lang/String;Landroid/net/Uri;Lcom/qiniu/rs/PutExtra;Lcom/qiniu/rs/CallBack;)Lcom/qiniu/rs/UploadTaskExecutor;
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "auth"    # Lcom/qiniu/auth/Authorizer;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "extra"    # Lcom/qiniu/rs/PutExtra;
    .param p5, "callback"    # Lcom/qiniu/rs/CallBack;

    .prologue
    .line 22
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/qiniu/resumableio/ResumableIO;->putFile(Landroid/content/Context;Lcom/qiniu/auth/Authorizer;Ljava/lang/String;Landroid/net/Uri;Lcom/qiniu/rs/PutExtra;Ljava/util/List;Lcom/qiniu/rs/CallBack;)Lcom/qiniu/rs/UploadTaskExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static putFile(Landroid/content/Context;Lcom/qiniu/auth/Authorizer;Ljava/lang/String;Landroid/net/Uri;Lcom/qiniu/rs/PutExtra;Ljava/util/List;Lcom/qiniu/rs/CallBack;)Lcom/qiniu/rs/UploadTaskExecutor;
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "auth"    # Lcom/qiniu/auth/Authorizer;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "extra"    # Lcom/qiniu/rs/PutExtra;
    .param p6, "callback"    # Lcom/qiniu/rs/CallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/qiniu/auth/Authorizer;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Lcom/qiniu/rs/PutExtra;",
            "Ljava/util/List",
            "<",
            "Lcom/qiniu/resumableio/SliceUploadTask$Block;",
            ">;",
            "Lcom/qiniu/rs/CallBack;",
            ")",
            "Lcom/qiniu/rs/UploadTaskExecutor;"
        }
    .end annotation

    .prologue
    .line 29
    .local p5, "blocks":Ljava/util/List;, "Ljava/util/List<Lcom/qiniu/resumableio/SliceUploadTask$Block;>;"
    :try_start_0
    invoke-static {p0, p3}, Lcom/qiniu/utils/InputStreamAt;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/qiniu/utils/InputStreamAt$UriInput;

    move-result-object v2

    move-object v0, p1

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/qiniu/resumableio/ResumableIO;->put(Lcom/qiniu/auth/Authorizer;Ljava/lang/String;Lcom/qiniu/utils/InputStreamAt;Lcom/qiniu/rs/PutExtra;Ljava/util/List;Lcom/qiniu/rs/CallBack;)Lcom/qiniu/rs/UploadTaskExecutor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 30
    :catch_0
    move-exception v6

    .line 31
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lcom/qiniu/rs/CallRet;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2, v6}, Lcom/qiniu/rs/CallRet;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p6, v0}, Lcom/qiniu/rs/CallBack;->onFailure(Lcom/qiniu/rs/CallRet;)V

    .line 32
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static putFile(Lcom/qiniu/auth/Authorizer;Ljava/lang/String;Ljava/io/File;Lcom/qiniu/rs/PutExtra;Lcom/qiniu/rs/CallBack;)Lcom/qiniu/rs/UploadTaskExecutor;
    .locals 6
    .param p0, "auth"    # Lcom/qiniu/auth/Authorizer;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "extra"    # Lcom/qiniu/rs/PutExtra;
    .param p4, "callback"    # Lcom/qiniu/rs/CallBack;

    .prologue
    .line 38
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/qiniu/resumableio/ResumableIO;->putFile(Lcom/qiniu/auth/Authorizer;Ljava/lang/String;Ljava/io/File;Lcom/qiniu/rs/PutExtra;Ljava/util/List;Lcom/qiniu/rs/CallBack;)Lcom/qiniu/rs/UploadTaskExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static putFile(Lcom/qiniu/auth/Authorizer;Ljava/lang/String;Ljava/io/File;Lcom/qiniu/rs/PutExtra;Ljava/util/List;Lcom/qiniu/rs/CallBack;)Lcom/qiniu/rs/UploadTaskExecutor;
    .locals 7
    .param p0, "auth"    # Lcom/qiniu/auth/Authorizer;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "extra"    # Lcom/qiniu/rs/PutExtra;
    .param p5, "callback"    # Lcom/qiniu/rs/CallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qiniu/auth/Authorizer;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/qiniu/rs/PutExtra;",
            "Ljava/util/List",
            "<",
            "Lcom/qiniu/resumableio/SliceUploadTask$Block;",
            ">;",
            "Lcom/qiniu/rs/CallBack;",
            ")",
            "Lcom/qiniu/rs/UploadTaskExecutor;"
        }
    .end annotation

    .prologue
    .line 44
    .local p4, "blocks":Ljava/util/List;, "Ljava/util/List<Lcom/qiniu/resumableio/SliceUploadTask$Block;>;"
    :try_start_0
    invoke-static {p2}, Lcom/qiniu/utils/InputStreamAt;->fromFile(Ljava/io/File;)Lcom/qiniu/utils/InputStreamAt$FileInput;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/qiniu/resumableio/ResumableIO;->put(Lcom/qiniu/auth/Authorizer;Ljava/lang/String;Lcom/qiniu/utils/InputStreamAt;Lcom/qiniu/rs/PutExtra;Ljava/util/List;Lcom/qiniu/rs/CallBack;)Lcom/qiniu/rs/UploadTaskExecutor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v6

    .line 46
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lcom/qiniu/rs/CallRet;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2, v6}, Lcom/qiniu/rs/CallRet;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p5, v0}, Lcom/qiniu/rs/CallBack;->onFailure(Lcom/qiniu/rs/CallRet;)V

    .line 47
    const/4 v0, 0x0

    goto :goto_0
.end method
