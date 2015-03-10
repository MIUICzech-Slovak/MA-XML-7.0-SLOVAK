.class public Lcom/qiniu/rs/UploadTaskExecutor;
.super Ljava/lang/Object;
.source "UploadTaskExecutor.java"


# instance fields
.field private volatile task:Lcom/qiniu/utils/UploadTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/qiniu/utils/UploadTask;)V
    .locals 0
    .param p1, "task"    # Lcom/qiniu/utils/UploadTask;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/qiniu/rs/UploadTaskExecutor;->task:Lcom/qiniu/utils/UploadTask;

    .line 14
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/qiniu/rs/UploadTaskExecutor;->task:Lcom/qiniu/utils/UploadTask;

    if-eqz v0, :cond_0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/rs/UploadTaskExecutor;->task:Lcom/qiniu/utils/UploadTask;

    invoke-virtual {v0}, Lcom/qiniu/utils/UploadTask;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public get()Lcom/qiniu/rs/CallRet;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/qiniu/rs/UploadTaskExecutor;->task:Lcom/qiniu/utils/UploadTask;

    if-eqz v0, :cond_0

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/qiniu/rs/UploadTaskExecutor;->task:Lcom/qiniu/utils/UploadTask;

    invoke-virtual {v0}, Lcom/qiniu/utils/UploadTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/rs/CallRet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-object v0

    .line 22
    :catch_0
    move-exception v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpCancelled()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/qiniu/rs/UploadTaskExecutor;->task:Lcom/qiniu/utils/UploadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qiniu/rs/UploadTaskExecutor;->task:Lcom/qiniu/utils/UploadTask;

    invoke-virtual {v0}, Lcom/qiniu/utils/UploadTask;->isUpCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTask(Lcom/qiniu/utils/UploadTask;)V
    .locals 0
    .param p1, "task"    # Lcom/qiniu/utils/UploadTask;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/qiniu/rs/UploadTaskExecutor;->task:Lcom/qiniu/utils/UploadTask;

    .line 18
    return-void
.end method
