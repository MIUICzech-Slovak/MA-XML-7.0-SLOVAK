.class Lcom/qiniu/utils/InputStreamAt$UriInput$1;
.super Ljava/lang/Object;
.source "InputStreamAt.java"

# interfaces
.implements Lcom/qiniu/utils/InputStreamAt$Input;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/utils/InputStreamAt$UriInput;->readNext(I)Lcom/qiniu/utils/InputStreamAt$Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private bi:Lcom/qiniu/utils/InputStreamAt$ByteInput;

.field private content:[B

.field final synthetic this$1:Lcom/qiniu/utils/InputStreamAt$UriInput;


# direct methods
.method constructor <init>(Lcom/qiniu/utils/InputStreamAt$UriInput;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qiniu/utils/InputStreamAt$UriInput$1;->this$1:Lcom/qiniu/utils/InputStreamAt$UriInput;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    # invokes: Lcom/qiniu/utils/InputStreamAt$UriInput;->readNextContent(I)[B
    invoke-static {p1, p2}, Lcom/qiniu/utils/InputStreamAt$UriInput;->access$0(Lcom/qiniu/utils/InputStreamAt$UriInput;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput$1;->content:[B

    .line 293
    new-instance v0, Lcom/qiniu/utils/InputStreamAt$ByteInput;

    iget-object v1, p0, Lcom/qiniu/utils/InputStreamAt$UriInput$1;->content:[B

    invoke-direct {v0, v1}, Lcom/qiniu/utils/InputStreamAt$ByteInput;-><init>([B)V

    iput-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput$1;->bi:Lcom/qiniu/utils/InputStreamAt$ByteInput;

    return-void
.end method


# virtual methods
.method public readAll()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput$1;->content:[B

    return-object v0
.end method

.method public readNext(I)[B
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$UriInput$1;->bi:Lcom/qiniu/utils/InputStreamAt$ByteInput;

    invoke-virtual {v0, p1}, Lcom/qiniu/utils/InputStreamAt$ByteInput;->readNext(I)Lcom/qiniu/utils/InputStreamAt$Input;

    move-result-object v0

    invoke-interface {v0}, Lcom/qiniu/utils/InputStreamAt$Input;->readAll()[B

    move-result-object v0

    return-object v0
.end method
