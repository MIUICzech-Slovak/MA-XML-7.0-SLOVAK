.class Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask$1;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask;-><init>(Lcom/xiaomi/channel/sdk/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$this$0:Lcom/xiaomi/channel/sdk/AccountManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/sdk/AccountManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask$1;->val$this$0:Lcom/xiaomi/channel/sdk/AccountManager;

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 414
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 415
    const-string v1, "this should never be called"

    .line 414
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/channel/sdk/AccountManager$AccountManagerTask$1;->call()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
