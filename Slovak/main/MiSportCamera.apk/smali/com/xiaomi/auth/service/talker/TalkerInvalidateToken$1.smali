.class Lcom/xiaomi/auth/service/talker/TalkerInvalidateToken$1;
.super Ljava/lang/Object;
.source "TalkerInvalidateToken.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/auth/service/talker/TalkerInvalidateToken;->talk(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/auth/service/talker/TalkerInvalidateToken;

.field private final synthetic val$account:Landroid/accounts/Account;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/xiaomi/auth/service/talker/TalkerInvalidateToken;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xiaomi/auth/service/talker/TalkerInvalidateToken$1;->this$0:Lcom/xiaomi/auth/service/talker/TalkerInvalidateToken;

    iput-object p2, p0, Lcom/xiaomi/auth/service/talker/TalkerInvalidateToken$1;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/xiaomi/auth/service/talker/TalkerInvalidateToken$1;->val$options:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/xiaomi/auth/service/talker/TalkerInvalidateToken$1;->val$context:Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/auth/service/talker/TalkerInvalidateToken$1;->this$0:Lcom/xiaomi/auth/service/talker/TalkerInvalidateToken;

    iget-object v2, p0, Lcom/xiaomi/auth/service/talker/TalkerInvalidateToken$1;->val$account:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/xiaomi/auth/service/talker/TalkerInvalidateToken$1;->val$options:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, p2}, Lcom/xiaomi/auth/service/talker/TalkerInvalidateToken;->tryTalkAsV6OrV5(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/os/IBinder;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/auth/service/talker/TalkerInvalidateToken$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 35
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 25
    return-void
.end method
