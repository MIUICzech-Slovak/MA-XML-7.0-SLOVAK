.class public interface abstract Lcom/xiaomi/channel/gamesdk/aidl/IGameService;
.super Ljava/lang/Object;
.source "IGameService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/gamesdk/aidl/IGameService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkHasJoinedUnion(Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkMiLiaoStatus()Lcom/xiaomi/channel/gamesdk/Retobj;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkVipIsScubscribed(Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract doShare(Landroid/os/Bundle;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAccount()Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAuthToken(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCurrentMiId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isMiIdMyFriend(Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract joinUnion(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract openComposeOrSixinActivity(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendTextMsgToFriend(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract subscribeVip(Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
