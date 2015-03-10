.class Lcom/xiaomi/channel/sdk/AccountManager$5;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/channel/sdk/AccountManager;->getRemoteAuthTokenFromService(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/channel/sdk/AccountManager;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$resultData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/channel/sdk/AccountManager;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xiaomi/channel/sdk/AccountManager$5;->this$0:Lcom/xiaomi/channel/sdk/AccountManager;

    iput-object p2, p0, Lcom/xiaomi/channel/sdk/AccountManager$5;->val$resultData:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/channel/sdk/AccountManager$5;->val$activity:Landroid/app/Activity;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 338
    new-instance v0, Landroid/content/Intent;

    .line 339
    const-string v1, "com.xiaomi.channel.VIEW_NOTIFICATION"

    .line 338
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "notification_url"

    iget-object v2, p0, Lcom/xiaomi/channel/sdk/AccountManager$5;->val$resultData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    iget-object v1, p0, Lcom/xiaomi/channel/sdk/AccountManager$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 342
    return-void
.end method
