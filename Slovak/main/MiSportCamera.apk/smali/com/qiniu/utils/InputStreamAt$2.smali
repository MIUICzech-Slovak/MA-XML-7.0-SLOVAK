.class Lcom/qiniu/utils/InputStreamAt$2;
.super Ljava/lang/Object;
.source "InputStreamAt.java"

# interfaces
.implements Lcom/qiniu/utils/InputStreamAt$Input;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/utils/InputStreamAt;->buildNextInput(Lcom/qiniu/utils/InputStreamAt;I)Lcom/qiniu/utils/InputStreamAt$Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private innerOffset:I

.field private final start:J

.field private final synthetic val$isa:Lcom/qiniu/utils/InputStreamAt;

.field private final synthetic val$len:I


# direct methods
.method constructor <init>(Lcom/qiniu/utils/InputStreamAt;I)V
    .locals 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qiniu/utils/InputStreamAt$2;->val$isa:Lcom/qiniu/utils/InputStreamAt;

    iput p2, p0, Lcom/qiniu/utils/InputStreamAt$2;->val$len:I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/qiniu/utils/InputStreamAt;->getOffset()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qiniu/utils/InputStreamAt$2;->start:J

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/qiniu/utils/InputStreamAt$2;->innerOffset:I

    return-void
.end method


# virtual methods
.method public readAll()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$2;->val$isa:Lcom/qiniu/utils/InputStreamAt;

    iget-wide v1, p0, Lcom/qiniu/utils/InputStreamAt$2;->start:J

    iget v3, p0, Lcom/qiniu/utils/InputStreamAt$2;->val$len:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/qiniu/utils/InputStreamAt;->read(JI)[B

    move-result-object v0

    return-object v0
.end method

.method public readNext(I)[B
    .locals 6
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget v1, p0, Lcom/qiniu/utils/InputStreamAt$2;->innerOffset:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/qiniu/utils/InputStreamAt$2;->val$len:I

    if-le v1, v2, :cond_0

    .line 69
    iget v1, p0, Lcom/qiniu/utils/InputStreamAt$2;->val$len:I

    iget v2, p0, Lcom/qiniu/utils/InputStreamAt$2;->innerOffset:I

    sub-int p1, v1, v2

    .line 71
    :cond_0
    if-gtz p1, :cond_1

    .line 72
    const/4 v1, 0x0

    new-array v0, v1, [B

    .line 76
    :goto_0
    return-object v0

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/qiniu/utils/InputStreamAt$2;->val$isa:Lcom/qiniu/utils/InputStreamAt;

    iget-wide v2, p0, Lcom/qiniu/utils/InputStreamAt$2;->start:J

    iget v4, p0, Lcom/qiniu/utils/InputStreamAt$2;->innerOffset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3, p1}, Lcom/qiniu/utils/InputStreamAt;->read(JI)[B

    move-result-object v0

    .line 75
    .local v0, "bs":[B
    iget v1, p0, Lcom/qiniu/utils/InputStreamAt$2;->innerOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/qiniu/utils/InputStreamAt$2;->innerOffset:I

    goto :goto_0
.end method
