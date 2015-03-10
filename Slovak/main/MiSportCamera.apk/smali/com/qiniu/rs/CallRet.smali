.class public Lcom/qiniu/rs/CallRet;
.super Ljava/lang/Object;
.source "CallRet.java"


# instance fields
.field private exception:Ljava/lang/Exception;

.field private final reqId:Ljava/lang/String;

.field private final response:Ljava/lang/String;

.field private final statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "reqId"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/qiniu/rs/CallRet;->statusCode:I

    .line 31
    iput-object p2, p0, Lcom/qiniu/rs/CallRet;->reqId:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/qiniu/rs/CallRet;->response:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/qiniu/rs/CallRet;->exception:Ljava/lang/Exception;

    .line 34
    invoke-direct {p0}, Lcom/qiniu/rs/CallRet;->doUnmarshal()V

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "reqId"    # Ljava/lang/String;
    .param p3, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/qiniu/rs/CallRet;->statusCode:I

    .line 24
    iput-object p2, p0, Lcom/qiniu/rs/CallRet;->reqId:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/qiniu/rs/CallRet;->response:Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Lcom/qiniu/rs/CallRet;->doUnmarshal()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/qiniu/rs/CallRet;)V
    .locals 1
    .param p1, "ret"    # Lcom/qiniu/rs/CallRet;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iget v0, p1, Lcom/qiniu/rs/CallRet;->statusCode:I

    iput v0, p0, Lcom/qiniu/rs/CallRet;->statusCode:I

    .line 16
    iget-object v0, p1, Lcom/qiniu/rs/CallRet;->reqId:Ljava/lang/String;

    iput-object v0, p0, Lcom/qiniu/rs/CallRet;->reqId:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lcom/qiniu/rs/CallRet;->response:Ljava/lang/String;

    iput-object v0, p0, Lcom/qiniu/rs/CallRet;->response:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lcom/qiniu/rs/CallRet;->exception:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/qiniu/rs/CallRet;->exception:Ljava/lang/Exception;

    .line 19
    invoke-direct {p0}, Lcom/qiniu/rs/CallRet;->doUnmarshal()V

    .line 20
    return-void
.end method

.method private doUnmarshal()V
    .locals 3

    .prologue
    .line 38
    iget-object v1, p0, Lcom/qiniu/rs/CallRet;->exception:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/qiniu/rs/CallRet;->response:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/qiniu/rs/CallRet;->response:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/qiniu/rs/CallRet;->unmarshal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/qiniu/rs/CallRet;->exception:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 46
    iput-object v0, p0, Lcom/qiniu/rs/CallRet;->exception:Ljava/lang/Exception;

    goto :goto_0
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/qiniu/rs/CallRet;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qiniu/rs/CallRet;->reqId:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/qiniu/rs/CallRet;->response:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/qiniu/rs/CallRet;->statusCode:I

    return v0
.end method

.method public isOk()Z
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lcom/qiniu/rs/CallRet;->statusCode:I

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "statusCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/qiniu/rs/CallRet;->statusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reqId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qiniu/rs/CallRet;->reqId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qiniu/rs/CallRet;->response:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/qiniu/rs/CallRet;->exception:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qiniu/rs/CallRet;->exception:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_0
    return-object v0
.end method

.method protected unmarshal()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    return-void
.end method
