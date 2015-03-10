.class Lcom/xiaomi/auth/service/talker/ServiceTalker$1;
.super Ljava/lang/Object;
.source "ServiceTalker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/auth/service/talker/ServiceTalker;->talk(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/auth/service/talker/ServiceTalker;

.field private final synthetic val$account:Landroid/accounts/Account;

.field private final synthetic val$future:Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;

.field private final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/xiaomi/auth/service/talker/ServiceTalker;Landroid/accounts/Account;Landroid/os/Bundle;Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xiaomi/auth/service/talker/ServiceTalker$1;->this$0:Lcom/xiaomi/auth/service/talker/ServiceTalker;

    iput-object p2, p0, Lcom/xiaomi/auth/service/talker/ServiceTalker$1;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/xiaomi/auth/service/talker/ServiceTalker$1;->val$options:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/xiaomi/auth/service/talker/ServiceTalker$1;->val$future:Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/xiaomi/auth/service/talker/ServiceTalker$1;)Lcom/xiaomi/auth/service/talker/ServiceTalker;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xiaomi/auth/service/talker/ServiceTalker$1;->this$0:Lcom/xiaomi/auth/service/talker/ServiceTalker;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 39
    new-instance v0, Lcom/xiaomi/auth/service/talker/ServiceTalker$1$1;

    iget-object v2, p0, Lcom/xiaomi/auth/service/talker/ServiceTalker$1;->val$account:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/xiaomi/auth/service/talker/ServiceTalker$1;->val$options:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/xiaomi/auth/service/talker/ServiceTalker$1;->val$future:Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/auth/service/talker/ServiceTalker$1$1;-><init>(Lcom/xiaomi/auth/service/talker/ServiceTalker$1;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/os/IBinder;Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;)V

    .line 52
    invoke-virtual {v0}, Lcom/xiaomi/auth/service/talker/ServiceTalker$1$1;->start()V

    .line 53
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 35
    return-void
.end method
