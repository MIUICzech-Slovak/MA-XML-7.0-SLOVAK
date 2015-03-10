.class public Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory;
.super Ljava/lang/Object;
.source "ServiceTalkerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$xiaomi$auth$service$talker$ServiceTalkerFactory$talkerType:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$xiaomi$auth$service$talker$ServiceTalkerFactory$talkerType()[I
    .locals 3

    .prologue
    .line 5
    sget-object v0, Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory;->$SWITCH_TABLE$com$xiaomi$auth$service$talker$ServiceTalkerFactory$talkerType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;->values()[Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;->GetToken:Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;

    invoke-virtual {v1}, Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;->InvalidateToken:Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;

    invoke-virtual {v1}, Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;->Sns:Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;

    invoke-virtual {v1}, Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;->UserInfo:Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;

    invoke-virtual {v1}, Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory;->$SWITCH_TABLE$com$xiaomi$auth$service$talker$ServiceTalkerFactory$talkerType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTalker(Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;)Lcom/xiaomi/auth/service/talker/ServiceTalker;
    .locals 2
    .param p0, "type"    # Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;

    .prologue
    .line 16
    invoke-static {}, Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory;->$SWITCH_TABLE$com$xiaomi$auth$service$talker$ServiceTalkerFactory$talkerType()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/auth/service/talker/ServiceTalkerFactory$talkerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unexpted type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :pswitch_0
    new-instance v0, Lcom/xiaomi/auth/service/talker/TalkerGetToken;

    invoke-direct {v0}, Lcom/xiaomi/auth/service/talker/TalkerGetToken;-><init>()V

    .line 25
    :goto_0
    return-object v0

    .line 21
    :pswitch_1
    new-instance v0, Lcom/xiaomi/auth/service/talker/TalkerSns;

    invoke-direct {v0}, Lcom/xiaomi/auth/service/talker/TalkerSns;-><init>()V

    goto :goto_0

    .line 23
    :pswitch_2
    new-instance v0, Lcom/xiaomi/auth/service/talker/TalkerUserInfo;

    invoke-direct {v0}, Lcom/xiaomi/auth/service/talker/TalkerUserInfo;-><init>()V

    goto :goto_0

    .line 25
    :pswitch_3
    new-instance v0, Lcom/xiaomi/auth/service/talker/TalkerInvalidateToken;

    invoke-direct {v0}, Lcom/xiaomi/auth/service/talker/TalkerInvalidateToken;-><init>()V

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
