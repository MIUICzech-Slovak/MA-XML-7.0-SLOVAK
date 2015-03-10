.class public Lcom/qiniu/io/IO;
.super Ljava/lang/Object;
.source "IO.java"


# static fields
.field public static UNDEFINED_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/qiniu/io/IO;->UNDEFINED_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static put(Lcom/qiniu/auth/Authorizer;Ljava/lang/String;Lcom/qiniu/utils/InputStreamAt;Lcom/qiniu/rs/PutExtra;Lcom/qiniu/rs/CallBack;)Lcom/qiniu/rs/UploadTaskExecutor;
    .locals 8
    .param p0, "auth"    # Lcom/qiniu/auth/Authorizer;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "input"    # Lcom/qiniu/utils/InputStreamAt;
    .param p3, "extra"    # Lcom/qiniu/rs/PutExtra;
    .param p4, "callback"    # Lcom/qiniu/rs/CallBack;

    .prologue
    const/4 v7, 0x0

    .line 43
    :try_start_0
    new-instance v0, Lcom/qiniu/io/SimpleUploadTask;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/qiniu/io/SimpleUploadTask;-><init>(Lcom/qiniu/auth/Authorizer;Lcom/qiniu/utils/InputStreamAt;Ljava/lang/String;Lcom/qiniu/rs/PutExtra;Lcom/qiniu/rs/CallBack;)V

    .line 44
    .local v0, "task":Lcom/qiniu/io/SimpleUploadTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/qiniu/io/SimpleUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    new-instance v1, Lcom/qiniu/rs/UploadTaskExecutor;

    invoke-direct {v1, v0}, Lcom/qiniu/rs/UploadTaskExecutor;-><init>(Lcom/qiniu/utils/UploadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0    # "task":Lcom/qiniu/io/SimpleUploadTask;
    :goto_0
    return-object v1

    .line 46
    :catch_0
    move-exception v6

    .line 47
    .local v6, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/qiniu/rs/CallRet;

    const-string v2, ""

    invoke-direct {v1, v7, v2, v6}, Lcom/qiniu/rs/CallRet;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p4, v1}, Lcom/qiniu/rs/CallBack;->onFailure(Lcom/qiniu/rs/CallRet;)V

    .line 48
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static putFile(Landroid/content/Context;Lcom/qiniu/auth/Authorizer;Ljava/lang/String;Landroid/net/Uri;Lcom/qiniu/rs/PutExtra;Lcom/qiniu/rs/CallBack;)Lcom/qiniu/rs/UploadTaskExecutor;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "auth"    # Lcom/qiniu/auth/Authorizer;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "extra"    # Lcom/qiniu/rs/PutExtra;
    .param p5, "callback"    # Lcom/qiniu/rs/CallBack;

    .prologue
    .line 23
    :try_start_0
    invoke-static {p0, p3}, Lcom/qiniu/utils/InputStreamAt;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/qiniu/utils/InputStreamAt$UriInput;

    move-result-object v1

    invoke-static {p1, p2, v1, p4, p5}, Lcom/qiniu/io/IO;->put(Lcom/qiniu/auth/Authorizer;Ljava/lang/String;Lcom/qiniu/utils/InputStreamAt;Lcom/qiniu/rs/PutExtra;Lcom/qiniu/rs/CallBack;)Lcom/qiniu/rs/UploadTaskExecutor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 26
    :goto_0
    return-object v1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/qiniu/rs/CallRet;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Lcom/qiniu/rs/CallRet;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p5, v1}, Lcom/qiniu/rs/CallBack;->onFailure(Lcom/qiniu/rs/CallRet;)V

    .line 26
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static putFile(Lcom/qiniu/auth/Authorizer;Ljava/lang/String;Ljava/io/File;Lcom/qiniu/rs/PutExtra;Lcom/qiniu/rs/CallBack;)Lcom/qiniu/rs/UploadTaskExecutor;
    .locals 4
    .param p0, "auth"    # Lcom/qiniu/auth/Authorizer;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "extra"    # Lcom/qiniu/rs/PutExtra;
    .param p4, "callback"    # Lcom/qiniu/rs/CallBack;

    .prologue
    .line 33
    :try_start_0
    invoke-static {p2}, Lcom/qiniu/utils/InputStreamAt;->fromFile(Ljava/io/File;)Lcom/qiniu/utils/InputStreamAt$FileInput;

    move-result-object v1

    invoke-static {p0, p1, v1, p3, p4}, Lcom/qiniu/io/IO;->put(Lcom/qiniu/auth/Authorizer;Ljava/lang/String;Lcom/qiniu/utils/InputStreamAt;Lcom/qiniu/rs/PutExtra;Lcom/qiniu/rs/CallBack;)Lcom/qiniu/rs/UploadTaskExecutor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 36
    :goto_0
    return-object v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/qiniu/rs/CallRet;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Lcom/qiniu/rs/CallRet;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p4, v1}, Lcom/qiniu/rs/CallBack;->onFailure(Lcom/qiniu/rs/CallRet;)V

    .line 36
    const/4 v1, 0x0

    goto :goto_0
.end method
