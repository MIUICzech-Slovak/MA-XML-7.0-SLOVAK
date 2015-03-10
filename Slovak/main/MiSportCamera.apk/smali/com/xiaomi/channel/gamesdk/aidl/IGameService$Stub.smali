.class public abstract Lcom/xiaomi/channel/gamesdk/aidl/IGameService$Stub;
.super Landroid/os/Binder;
.source "IGameService.java"

# interfaces
.implements Lcom/xiaomi/channel/gamesdk/aidl/IGameService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/gamesdk/aidl/IGameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/gamesdk/aidl/IGameService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.channel.gamesdk.aidl.IGameService"

.field static final TRANSACTION_addFriend:I = 0x5

.field static final TRANSACTION_checkHasJoinedUnion:I = 0xa

.field static final TRANSACTION_checkMiLiaoStatus:I = 0x6

.field static final TRANSACTION_checkVipIsScubscribed:I = 0x8

.field static final TRANSACTION_doShare:I = 0xb

.field static final TRANSACTION_getAccount:I = 0x3

.field static final TRANSACTION_getAuthToken:I = 0x4

.field static final TRANSACTION_getCurrentMiId:I = 0xd

.field static final TRANSACTION_isMiIdMyFriend:I = 0x1

.field static final TRANSACTION_joinUnion:I = 0x9

.field static final TRANSACTION_openComposeOrSixinActivity:I = 0xc

.field static final TRANSACTION_sendTextMsgToFriend:I = 0x2

.field static final TRANSACTION_subscribeVip:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.xiaomi.channel.gamesdk.aidl.IGameService"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/channel/gamesdk/aidl/IGameService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.xiaomi.channel.gamesdk.aidl.IGameService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/xiaomi/channel/gamesdk/aidl/IGameService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/xiaomi/channel/gamesdk/aidl/IGameService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 255
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v6, "com.xiaomi.channel.gamesdk.aidl.IGameService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "com.xiaomi.channel.gamesdk.aidl.IGameService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService$Stub;->isMiIdMyFriend(Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;

    move-result-object v4

    .line 51
    .local v4, "_result":Lcom/xiaomi/channel/gamesdk/Retobj;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v4, :cond_0

    .line 53
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {v4, p3, v5}, Lcom/xiaomi/channel/gamesdk/Retobj;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lcom/xiaomi/channel/gamesdk/Retobj;
    :sswitch_2
    const-string v6, "com.xiaomi.channel.gamesdk.aidl.IGameService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService$Stub;->sendTextMsgToFriend(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;

    move-result-object v4

    .line 69
    .restart local v4    # "_result":Lcom/xiaomi/channel/gamesdk/Retobj;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v4, :cond_1

    .line 71
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {v4, p3, v5}, Lcom/xiaomi/channel/gamesdk/Retobj;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Lcom/xiaomi/channel/gamesdk/Retobj;
    :sswitch_3
    const-string v6, "com.xiaomi.channel.gamesdk.aidl.IGameService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService$Stub;->getAccount()Landroid/os/Bundle;

    move-result-object v4

    .line 83
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v4, :cond_2

    .line 85
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_4
    const-string v6, "com.xiaomi.channel.gamesdk.aidl.IGameService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService$Stub;->getAuthToken(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 101
    .restart local v4    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v4, :cond_3

    .line 103
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 113
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_5
    const-string v6, "com.xiaomi.channel.gamesdk.aidl.IGameService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService$Stub;->addFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;

    move-result-object v4

    .line 123
    .local v4, "_result":Lcom/xiaomi/channel/gamesdk/Retobj;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v4, :cond_4

    .line 125
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    invoke-virtual {v4, p3, v5}, Lcom/xiaomi/channel/gamesdk/Retobj;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 129
    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 135
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Lcom/xiaomi/channel/gamesdk/Retobj;
    :sswitch_6
    const-string v6, "com.xiaomi.channel.gamesdk.aidl.IGameService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService$Stub;->checkMiLiaoStatus()Lcom/xiaomi/channel/gamesdk/Retobj;

    move-result-object v4

    .line 137
    .restart local v4    # "_result":Lcom/xiaomi/channel/gamesdk/Retobj;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v4, :cond_5

    .line 139
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    invoke-virtual {v4, p3, v5}, Lcom/xiaomi/channel/gamesdk/Retobj;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 143
    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    .end local v4    # "_result":Lcom/xiaomi/channel/gamesdk/Retobj;
    :sswitch_7
    const-string v6, "com.xiaomi.channel.gamesdk.aidl.IGameService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService$Stub;->subscribeVip(Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;

    move-result-object v4

    .line 153
    .restart local v4    # "_result":Lcom/xiaomi/channel/gamesdk/Retobj;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v4, :cond_6

    .line 155
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    invoke-virtual {v4, p3, v5}, Lcom/xiaomi/channel/gamesdk/Retobj;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 159
    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 165
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lcom/xiaomi/channel/gamesdk/Retobj;
    :sswitch_8
    const-string v6, "com.xiaomi.channel.gamesdk.aidl.IGameService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService$Stub;->checkVipIsScubscribed(Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;

    move-result-object v4

    .line 169
    .restart local v4    # "_result":Lcom/xiaomi/channel/gamesdk/Retobj;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v4, :cond_7

    .line 171
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {v4, p3, v5}, Lcom/xiaomi/channel/gamesdk/Retobj;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 175
    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 181
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lcom/xiaomi/channel/gamesdk/Retobj;
    :sswitch_9
    const-string v6, "com.xiaomi.channel.gamesdk.aidl.IGameService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 186
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService$Stub;->joinUnion(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;

    move-result-object v4

    .line 187
    .restart local v4    # "_result":Lcom/xiaomi/channel/gamesdk/Retobj;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    if-eqz v4, :cond_8

    .line 189
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    invoke-virtual {v4, p3, v5}, Lcom/xiaomi/channel/gamesdk/Retobj;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 193
    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 199
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Lcom/xiaomi/channel/gamesdk/Retobj;
    :sswitch_a
    const-string v6, "com.xiaomi.channel.gamesdk.aidl.IGameService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService$Stub;->checkHasJoinedUnion(Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;

    move-result-object v4

    .line 203
    .restart local v4    # "_result":Lcom/xiaomi/channel/gamesdk/Retobj;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v4, :cond_9

    .line 205
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    invoke-virtual {v4, p3, v5}, Lcom/xiaomi/channel/gamesdk/Retobj;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 209
    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 215
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lcom/xiaomi/channel/gamesdk/Retobj;
    :sswitch_b
    const-string v6, "com.xiaomi.channel.gamesdk.aidl.IGameService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 218
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 223
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService$Stub;->doShare(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":Ljava/lang/String;
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_1

    .line 230
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_c
    const-string v6, "com.xiaomi.channel.gamesdk.aidl.IGameService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 235
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService$Stub;->openComposeOrSixinActivity(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/channel/gamesdk/Retobj;

    move-result-object v4

    .line 236
    .local v4, "_result":Lcom/xiaomi/channel/gamesdk/Retobj;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    if-eqz v4, :cond_b

    .line 238
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    invoke-virtual {v4, p3, v5}, Lcom/xiaomi/channel/gamesdk/Retobj;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 242
    :cond_b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 248
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Lcom/xiaomi/channel/gamesdk/Retobj;
    :sswitch_d
    const-string v6, "com.xiaomi.channel.gamesdk.aidl.IGameService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/xiaomi/channel/gamesdk/aidl/IGameService$Stub;->getCurrentMiId()Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
