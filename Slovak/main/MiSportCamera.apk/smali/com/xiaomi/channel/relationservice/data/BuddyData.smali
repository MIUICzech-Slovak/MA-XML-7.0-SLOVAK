.class public Lcom/xiaomi/channel/relationservice/data/BuddyData;
.super Ljava/lang/Object;
.source "BuddyData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/channel/relationservice/data/BuddyData;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_ADDED_ME:I = 0x10

.field public static final TYPE_BE_BLOCKED:I = 0xf

.field public static final TYPE_BIG_GROUP:I = 0x12

.field public static final TYPE_BLOCK:I = 0xe

.field public static final TYPE_BUMP:I = 0x13

.field public static final TYPE_COLLECTION:I = 0x15

.field public static final TYPE_CONTACT:I = 0x1

.field public static final TYPE_GROUP:I = 0x8

.field public static final TYPE_GROUP_MEMBER:I = 0x9

.field public static final TYPE_I_ADDED:I = 0x11

.field public static final TYPE_I_KNOW:I = 0x6

.field public static final TYPE_KNOW_ME:I = 0x7

.field public static final TYPE_MAY_KNOWN:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_ME:I = 0x4

.field public static final TYPE_MILIAO_ROBOT:I = 0x72

.field public static final TYPE_SEND_GROUP_SMS:I = 0x14

.field public static final TYPE_STRANGER:I = 0x5

.field public static final TYPE_SUBSCRIBE:I = 0xc

.field public static final TYPE_WEIBO_ROBOT:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public accountName:Ljava/lang/String;

.field public accountProperty:Ljava/lang/String;

.field public bindValues:Ljava/lang/String;

.field public bio:Ljava/lang/String;

.field public birthday:Ljava/lang/String;

.field public comments:Ljava/lang/String;

.field public company:Ljava/lang/String;

.field public correlation:Ljava/lang/String;

.field public detailFriendRelation:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public domainInfo:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public emailMd5:Ljava/lang/String;

.field public extra:Ljava/lang/String;

.field public flags:I

.field public homeTown:Ljava/lang/String;

.field public id:J

.field public industry:Ljava/lang/String;

.field public isVoiceSignatureRead:I

.field public lastSendMessageTs:J

.field public lastUpdate:J

.field public location:Ljava/lang/String;

.field public morePhotoUrl:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public phoneNumberMd5:Ljava/lang/String;

.field public photoUrl:Ljava/lang/String;

.field public reasonMsg:Ljava/lang/String;

.field public recommendReason:Ljava/lang/String;

.field public relationSource:Ljava/lang/String;

.field public relationTs:J

.field public school:Ljava/lang/String;

.field public sex:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public type:I

.field public verifyType:I

.field public voiceSignature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 277
    new-instance v0, Lcom/xiaomi/channel/relationservice/data/BuddyData$1;

    invoke-direct {v0}, Lcom/xiaomi/channel/relationservice/data/BuddyData$1;-><init>()V

    sput-object v0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 287
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->id:J

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->phoneNumber:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->phoneNumberMd5:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->displayName:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->accountName:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->email:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->emailMd5:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->type:I

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->photoUrl:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->morePhotoUrl:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->sex:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->location:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->birthday:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->school:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->company:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->bio:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->signature:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->voiceSignature:Ljava/lang/String;

    .line 73
    iput v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->isVoiceSignatureRead:I

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->comments:Ljava/lang/String;

    .line 75
    iput-wide v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->lastUpdate:J

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->bindValues:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->detailFriendRelation:Ljava/lang/String;

    .line 78
    iput v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->verifyType:I

    .line 79
    iput-wide v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->relationTs:J

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->relationSource:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->reasonMsg:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->recommendReason:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->homeTown:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->industry:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->correlation:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->accountProperty:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->extra:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->domainInfo:Ljava/lang/String;

    .line 89
    iput-wide v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->lastSendMessageTs:J

    .line 90
    iput v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->flags:I

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->id:J

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->phoneNumber:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->phoneNumberMd5:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->displayName:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->accountName:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->email:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->emailMd5:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->type:I

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->photoUrl:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->morePhotoUrl:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->sex:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->location:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->birthday:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->school:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->company:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->bio:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->signature:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->voiceSignature:Ljava/lang/String;

    .line 73
    iput v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->isVoiceSignatureRead:I

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->comments:Ljava/lang/String;

    .line 75
    iput-wide v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->lastUpdate:J

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->bindValues:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->detailFriendRelation:Ljava/lang/String;

    .line 78
    iput v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->verifyType:I

    .line 79
    iput-wide v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->relationTs:J

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->relationSource:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->reasonMsg:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->recommendReason:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->homeTown:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->industry:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->correlation:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->accountProperty:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->extra:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->domainInfo:Ljava/lang/String;

    .line 89
    iput-wide v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->lastSendMessageTs:J

    .line 90
    iput v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->flags:I

    .line 180
    if-eqz p1, :cond_0

    .line 181
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->id:J

    .line 183
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->accountName:Ljava/lang/String;

    .line 185
    const/16 v0, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->accountProperty:Ljava/lang/String;

    .line 187
    const/16 v0, 0x20

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->bindValues:Ljava/lang/String;

    .line 188
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->bio:Ljava/lang/String;

    .line 189
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->birthday:Ljava/lang/String;

    .line 190
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->comments:Ljava/lang/String;

    .line 191
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->company:Ljava/lang/String;

    .line 193
    const/16 v0, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->correlation:Ljava/lang/String;

    .line 195
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->detailFriendRelation:Ljava/lang/String;

    .line 197
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->displayName:Ljava/lang/String;

    .line 199
    const/16 v0, 0x1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->domainInfo:Ljava/lang/String;

    .line 200
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->email:Ljava/lang/String;

    .line 201
    const/16 v0, 0x21

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->emailMd5:Ljava/lang/String;

    .line 202
    const/16 v0, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->extra:Ljava/lang/String;

    .line 203
    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->homeTown:Ljava/lang/String;

    .line 204
    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->industry:Ljava/lang/String;

    .line 206
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 205
    iput v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->isVoiceSignatureRead:I

    .line 208
    const/16 v0, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 207
    iput-wide v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->lastSendMessageTs:J

    .line 209
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->lastUpdate:J

    .line 210
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->location:Ljava/lang/String;

    .line 212
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->morePhotoUrl:Ljava/lang/String;

    .line 214
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->phoneNumber:Ljava/lang/String;

    .line 216
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->phoneNumberMd5:Ljava/lang/String;

    .line 217
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->photoUrl:Ljava/lang/String;

    .line 218
    const/16 v0, 0x22

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->reasonMsg:Ljava/lang/String;

    .line 220
    const/16 v0, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->recommendReason:Ljava/lang/String;

    .line 222
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->relationSource:Ljava/lang/String;

    .line 223
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->relationTs:J

    .line 224
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->school:Ljava/lang/String;

    .line 225
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->sex:Ljava/lang/String;

    .line 226
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->signature:Ljava/lang/String;

    .line 227
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->type:I

    .line 228
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->verifyType:I

    .line 230
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->voiceSignature:Ljava/lang/String;

    .line 231
    const/16 v0, 0x23

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->flags:I

    .line 233
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->id:J

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->phoneNumber:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->phoneNumberMd5:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->displayName:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->accountName:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->email:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->emailMd5:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->type:I

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->photoUrl:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->morePhotoUrl:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->sex:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->location:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->birthday:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->school:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->company:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->bio:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->signature:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->voiceSignature:Ljava/lang/String;

    .line 73
    iput v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->isVoiceSignatureRead:I

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->comments:Ljava/lang/String;

    .line 75
    iput-wide v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->lastUpdate:J

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->bindValues:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->detailFriendRelation:Ljava/lang/String;

    .line 78
    iput v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->verifyType:I

    .line 79
    iput-wide v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->relationTs:J

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->relationSource:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->reasonMsg:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->recommendReason:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->homeTown:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->industry:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->correlation:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->accountProperty:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->extra:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->domainInfo:Ljava/lang/String;

    .line 89
    iput-wide v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->lastSendMessageTs:J

    .line 90
    iput v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->flags:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->id:J

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->phoneNumber:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->phoneNumberMd5:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->displayName:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->accountName:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->email:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->emailMd5:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->type:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->photoUrl:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->morePhotoUrl:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->sex:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->location:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->birthday:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->school:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->company:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->bio:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->signature:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->voiceSignature:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->isVoiceSignatureRead:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->comments:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->lastUpdate:J

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->bindValues:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->detailFriendRelation:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->verifyType:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->relationTs:J

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->relationSource:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->reasonMsg:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->recommendReason:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->homeTown:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->industry:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->correlation:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->accountProperty:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->extra:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->domainInfo:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->lastSendMessageTs:J

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->flags:I

    .line 132
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 236
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 237
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "ACCOUNT_NAME"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-wide v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->id:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 239
    const-string v1, "_id"

    iget-wide v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 241
    :cond_0
    const-string v1, "account_property"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->accountProperty:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "bind_values"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->bindValues:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "bio"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->bio:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "birthday"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v1, "comments"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->comments:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "company"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->company:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v1, "correlation"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->correlation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "detail_friend_relation"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->detailFriendRelation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v1, "display_name"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v1, "domain_info"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->domainInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v1, "Email"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v1, "Email_md5"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->emailMd5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v1, "extra"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v1, "hometown"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->homeTown:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v1, "industry"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->industry:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v1, "is_voice_signature_read"

    iget v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->isVoiceSignatureRead:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    const-string v1, "last_send_message_ts"

    iget-wide v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->lastSendMessageTs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 258
    const-string v1, "last_update"

    iget-wide v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->lastUpdate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 259
    const-string v1, "location"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->location:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v1, "more_photo_url"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->morePhotoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v1, "phone_num"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v1, "phone_num_md5"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->phoneNumberMd5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "photo_url"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->photoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v1, "reason_msg"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->reasonMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v1, "recommend"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->recommendReason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v1, "relation_source"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->relationSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v1, "relation_ts"

    iget-wide v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->relationTs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 268
    const-string v1, "school"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->school:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v1, "sex"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->sex:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v1, "signature"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v1, "type"

    iget v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    const-string v1, "verified_type"

    iget v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->verifyType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    const-string v1, "voice_signature"

    iget-object v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->voiceSignature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v1, "flags"

    iget v2, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BuddyData [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    const-string v1, ", phoneNumberMd5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->phoneNumberMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accountName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emailMd5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->emailMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 300
    const-string v1, ", photoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->photoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", morePhotoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->morePhotoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 301
    const-string v1, ", sex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->sex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", birthday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", school="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->school:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", company="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->company:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 303
    const-string v1, ", bio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->bio:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 304
    const-string v1, ", voiceSignature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->voiceSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 305
    const-string v1, ", isVoiceSignatureRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->isVoiceSignatureRead:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 306
    const-string v1, ", comments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->comments:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->lastUpdate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 307
    const-string v1, ", bindValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->bindValues:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", detailFriendRelation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->detailFriendRelation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verifyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->verifyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 309
    const-string v1, ", relationTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->relationTs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", relationSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->relationSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reasonMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->reasonMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 311
    const-string v1, ", recommendReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->recommendReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", homeTown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->homeTown:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", industry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->industry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", correlation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->correlation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accountProperty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->accountProperty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 314
    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", domainInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->domainInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 315
    const-string v1, ", lastSendMessageTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->lastSendMessageTs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 316
    iget v1, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 136
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->phoneNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->phoneNumberMd5:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->displayName:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->accountName:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->email:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->emailMd5:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->photoUrl:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->morePhotoUrl:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->sex:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->location:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->birthday:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->school:Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->company:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->bio:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->signature:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, ""

    :goto_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->voiceSignature:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, ""

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->isVoiceSignatureRead:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->comments:Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, ""

    :goto_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-wide v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->lastUpdate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 156
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->bindValues:Ljava/lang/String;

    if-nez v0, :cond_11

    const-string v0, ""

    :goto_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->detailFriendRelation:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 158
    const-string v0, ""

    .line 157
    :goto_12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->verifyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-wide v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->relationTs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 162
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->relationSource:Ljava/lang/String;

    if-nez v0, :cond_13

    const-string v0, ""

    :goto_13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->reasonMsg:Ljava/lang/String;

    if-nez v0, :cond_14

    const-string v0, ""

    :goto_14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->recommendReason:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 165
    const-string v0, ""

    .line 164
    :goto_15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->homeTown:Ljava/lang/String;

    if-nez v0, :cond_16

    const-string v0, ""

    :goto_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->industry:Ljava/lang/String;

    if-nez v0, :cond_17

    const-string v0, ""

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->correlation:Ljava/lang/String;

    if-nez v0, :cond_18

    const-string v0, ""

    :goto_18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->accountProperty:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 171
    const-string v0, ""

    .line 170
    :goto_19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->extra:Ljava/lang/String;

    if-nez v0, :cond_1a

    const-string v0, ""

    :goto_1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->domainInfo:Ljava/lang/String;

    if-nez v0, :cond_1b

    const-string v0, ""

    :goto_1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-wide v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->lastSendMessageTs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 176
    iget v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->phoneNumberMd5:Ljava/lang/String;

    goto/16 :goto_1

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->displayName:Ljava/lang/String;

    goto/16 :goto_2

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->accountName:Ljava/lang/String;

    goto/16 :goto_3

    .line 140
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->email:Ljava/lang/String;

    goto/16 :goto_4

    .line 141
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->emailMd5:Ljava/lang/String;

    goto/16 :goto_5

    .line 143
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->photoUrl:Ljava/lang/String;

    goto/16 :goto_6

    .line 144
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->morePhotoUrl:Ljava/lang/String;

    goto/16 :goto_7

    .line 145
    :cond_8
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->sex:Ljava/lang/String;

    goto/16 :goto_8

    .line 146
    :cond_9
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->location:Ljava/lang/String;

    goto/16 :goto_9

    .line 147
    :cond_a
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->birthday:Ljava/lang/String;

    goto/16 :goto_a

    .line 148
    :cond_b
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->school:Ljava/lang/String;

    goto/16 :goto_b

    .line 149
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->company:Ljava/lang/String;

    goto/16 :goto_c

    .line 150
    :cond_d
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->bio:Ljava/lang/String;

    goto/16 :goto_d

    .line 151
    :cond_e
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->signature:Ljava/lang/String;

    goto/16 :goto_e

    .line 152
    :cond_f
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->voiceSignature:Ljava/lang/String;

    goto/16 :goto_f

    .line 154
    :cond_10
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->comments:Ljava/lang/String;

    goto/16 :goto_10

    .line 156
    :cond_11
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->bindValues:Ljava/lang/String;

    goto/16 :goto_11

    .line 159
    :cond_12
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->detailFriendRelation:Ljava/lang/String;

    goto/16 :goto_12

    .line 162
    :cond_13
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->relationSource:Ljava/lang/String;

    goto/16 :goto_13

    .line 163
    :cond_14
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->reasonMsg:Ljava/lang/String;

    goto/16 :goto_14

    .line 166
    :cond_15
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->recommendReason:Ljava/lang/String;

    goto/16 :goto_15

    .line 167
    :cond_16
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->homeTown:Ljava/lang/String;

    goto/16 :goto_16

    .line 168
    :cond_17
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->industry:Ljava/lang/String;

    goto/16 :goto_17

    .line 169
    :cond_18
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->correlation:Ljava/lang/String;

    goto/16 :goto_18

    .line 172
    :cond_19
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->accountProperty:Ljava/lang/String;

    goto/16 :goto_19

    .line 173
    :cond_1a
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->extra:Ljava/lang/String;

    goto/16 :goto_1a

    .line 174
    :cond_1b
    iget-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyData;->domainInfo:Ljava/lang/String;

    goto :goto_1b
.end method
