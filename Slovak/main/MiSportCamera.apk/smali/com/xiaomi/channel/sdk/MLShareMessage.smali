.class public Lcom/xiaomi/channel/sdk/MLShareMessage;
.super Ljava/lang/Object;
.source "MLShareMessage.java"


# instance fields
.field public defaultText:Ljava/lang/String;

.field public extraLargeImgPath:Ljava/lang/String;

.field public extraLargeImgUrl:Ljava/lang/String;

.field public imgObj:Lcom/xiaomi/channel/sdk/MLImgObj;

.field public imgPath:Ljava/lang/String;

.field public imgUrl:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/sdk/MLShareMessage;->url:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/sdk/MLShareMessage;->text:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/channel/sdk/MLShareMessage;->imgObj:Lcom/xiaomi/channel/sdk/MLImgObj;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/sdk/MLShareMessage;->imgUrl:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/sdk/MLShareMessage;->imgPath:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/sdk/MLShareMessage;->defaultText:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/sdk/MLShareMessage;->extraLargeImgPath:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/sdk/MLShareMessage;->extraLargeImgUrl:Ljava/lang/String;

    .line 33
    return-void
.end method
