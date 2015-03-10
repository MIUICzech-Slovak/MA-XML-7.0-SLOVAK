.class Lcom/xiaomi/channel/gamesdk/GameServiceClient$2;
.super Ljava/lang/Object;
.source "GameServiceClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/channel/gamesdk/GameServiceClient;->init(Landroid/content/Context;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient$2;->val$context:Landroid/content/Context;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/xiaomi/channel/gamesdk/GameServiceClient$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/channel/gamesdk/GameServiceClient;->getInstance(Landroid/content/Context;)Lcom/xiaomi/channel/gamesdk/GameServiceClient;

    .line 244
    return-void
.end method
