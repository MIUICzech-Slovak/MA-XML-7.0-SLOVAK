.class public abstract Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub;
.super Landroid/os/Binder;
.source "IBuddyService.java"

# interfaces
.implements Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.channel.relationservice.api.aidl.IBuddyService"

.field static final TRANSACTION_batchDeleteOfKeys:I = 0xc

.field static final TRANSACTION_bulkInsertOrUpdateKeyValues:I = 0xb

.field static final TRANSACTION_clearAccountData:I = 0xe

.field static final TRANSACTION_deleteAllBuddy:I = 0x6

.field static final TRANSACTION_deleteBuddyList:I = 0x4

.field static final TRANSACTION_getBuddyDataByUuid:I = 0x10

.field static final TRANSACTION_getBuddyDataList:I = 0x1

.field static final TRANSACTION_getDbSize:I = 0xd

.field static final TRANSACTION_getValueOfKey:I = 0x9

.field static final TRANSACTION_insertOrUpdateBuddyData:I = 0x3

.field static final TRANSACTION_insertOrUpdateBuddyDataList:I = 0x2

.field static final TRANSACTION_insertOrUpdateKeyValue:I = 0xa

.field static final TRANSACTION_openContactSelectActivity:I = 0xf

.field static final TRANSACTION_registerBuddyChangeListener:I = 0x7

.field static final TRANSACTION_unRegisterBuddyChangeListener:I = 0x8

.field static final TRANSACTION_updateBuddyByBundle:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.xiaomi.channel.relationservice.api.aidl.IBuddyService"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;
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
    const-string v1, "com.xiaomi.channel.relationservice.api.aidl.IBuddyService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 228
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.xiaomi.channel.relationservice.api.aidl.IBuddyService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.xiaomi.channel.relationservice.api.aidl.IBuddyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg5":Ljava/lang/String;
    move-object v0, p0

    .line 60
    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub;->getBuddyDataList(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 61
    .local v11, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/channel/relationservice/data/BuddyData;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 63
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/channel/relationservice/data/BuddyData;>;"
    :sswitch_2
    const-string v0, "com.xiaomi.channel.relationservice.api.aidl.IBuddyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 70
    .local v7, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/channel/relationservice/data/BuddyData;>;"
    invoke-virtual {p0, v7}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub;->insertOrUpdateBuddyDataList(Ljava/util/List;)Z

    move-result v10

    .line 71
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v10, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 77
    .end local v7    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/channel/relationservice/data/BuddyData;>;"
    .end local v10    # "_result":Z
    :sswitch_3
    const-string v0, "com.xiaomi.channel.relationservice.api.aidl.IBuddyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    sget-object v0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/channel/relationservice/data/BuddyData;

    .line 85
    .local v1, "_arg0":Lcom/xiaomi/channel/relationservice/data/BuddyData;
    :goto_2
    invoke-virtual {p0, v1}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub;->insertOrUpdateBuddyData(Lcom/xiaomi/channel/relationservice/data/BuddyData;)Z

    move-result v10

    .line 86
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v10, :cond_2

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "_arg0":Lcom/xiaomi/channel/relationservice/data/BuddyData;
    .end local v10    # "_result":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Lcom/xiaomi/channel/relationservice/data/BuddyData;
    goto :goto_2

    .line 87
    .restart local v10    # "_result":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 92
    .end local v1    # "_arg0":Lcom/xiaomi/channel/relationservice/data/BuddyData;
    .end local v10    # "_result":Z
    :sswitch_4
    const-string v0, "com.xiaomi.channel.relationservice.api.aidl.IBuddyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 95
    .local v8, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v8}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub;->deleteBuddyList(Ljava/util/List;)I

    move-result v10

    .line 96
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 102
    .end local v8    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "_result":I
    :sswitch_5
    const-string v0, "com.xiaomi.channel.relationservice.api.aidl.IBuddyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 108
    .restart local v2    # "_arg1":[Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    .line 109
    .local v9, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {p0, v1, v2, v9}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub;->updateBuddyByBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)I

    move-result v10

    .line 110
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 116
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v10    # "_result":I
    :sswitch_6
    const-string v0, "com.xiaomi.channel.relationservice.api.aidl.IBuddyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub;->deleteAllBuddy()Z

    move-result v10

    .line 118
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v10, :cond_3

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 119
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .line 124
    .end local v10    # "_result":Z
    :sswitch_7
    const-string v0, "com.xiaomi.channel.relationservice.api.aidl.IBuddyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyChangeListener;

    move-result-object v1

    .line 127
    .local v1, "_arg0":Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyChangeListener;
    invoke-virtual {p0, v1}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub;->registerBuddyChangeListener(Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyChangeListener;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 133
    .end local v1    # "_arg0":Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyChangeListener;
    :sswitch_8
    const-string v0, "com.xiaomi.channel.relationservice.api.aidl.IBuddyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyChangeListener;

    move-result-object v1

    .line 136
    .restart local v1    # "_arg0":Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyChangeListener;
    invoke-virtual {p0, v1}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub;->unRegisterBuddyChangeListener(Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyChangeListener;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 142
    .end local v1    # "_arg0":Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyChangeListener;
    :sswitch_9
    const-string v0, "com.xiaomi.channel.relationservice.api.aidl.IBuddyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub;->getValueOfKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 146
    .local v10, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 152
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string v0, "com.xiaomi.channel.relationservice.api.aidl.IBuddyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 156
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub;->insertOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 158
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    if-eqz v10, :cond_4

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 159
    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    .line 164
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_b
    const-string v0, "com.xiaomi.channel.relationservice.api.aidl.IBuddyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 167
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 172
    .local v1, "_arg0":Landroid/os/Bundle;
    :goto_6
    invoke-virtual {p0, v1}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub;->bulkInsertOrUpdateKeyValues(Landroid/os/Bundle;)Z

    move-result v10

    .line 173
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v10, :cond_6

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 170
    .end local v1    # "_arg0":Landroid/os/Bundle;
    .end local v10    # "_result":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/Bundle;
    goto :goto_6

    .line 174
    .restart local v10    # "_result":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_7

    .line 179
    .end local v1    # "_arg0":Landroid/os/Bundle;
    .end local v10    # "_result":Z
    :sswitch_c
    const-string v0, "com.xiaomi.channel.relationservice.api.aidl.IBuddyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 182
    .restart local v8    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v8}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub;->batchDeleteOfKeys(Ljava/util/List;)Z

    move-result v10

    .line 183
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz v10, :cond_7

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 184
    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    .line 189
    .end local v8    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "_result":Z
    :sswitch_d
    const-string v0, "com.xiaomi.channel.relationservice.api.aidl.IBuddyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub;->getDbSize()I

    move-result v10

    .line 191
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 197
    .end local v10    # "_result":I
    :sswitch_e
    const-string v0, "com.xiaomi.channel.relationservice.api.aidl.IBuddyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub;->clearAccountData()Z

    move-result v10

    .line 199
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v10, :cond_8

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 200
    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .line 205
    .end local v10    # "_result":Z
    :sswitch_f
    const-string v0, "com.xiaomi.channel.relationservice.api.aidl.IBuddyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub;->openContactSelectActivity()Ljava/lang/String;

    move-result-object v10

    .line 207
    .local v10, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 213
    .end local v10    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string v0, "com.xiaomi.channel.relationservice.api.aidl.IBuddyService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/xiaomi/channel/relationservice/api/aidl/IBuddyService$Stub;->getBuddyDataByUuid(Ljava/lang/String;)Lcom/xiaomi/channel/relationservice/data/BuddyData;

    move-result-object v10

    .line 217
    .local v10, "_result":Lcom/xiaomi/channel/relationservice/data/BuddyData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v10, :cond_9

    .line 219
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Lcom/xiaomi/channel/relationservice/data/BuddyData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 225
    :goto_a
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 223
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 38
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
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
