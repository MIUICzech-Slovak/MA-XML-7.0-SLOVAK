.class public Lcom/xiaomi/channel/relationservice/data/BuddyColumns;
.super Ljava/lang/Object;
.source "BuddyColumns.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/channel/relationservice/data/BuddyColumns$COLUMN_INDEX;
    }
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "ACCOUNT_NAME"

.field public static final ACCOUNT_PROPERTY:Ljava/lang/String; = "account_property"

.field public static final BIND_VALUES:Ljava/lang/String; = "bind_values"

.field public static final BIO:Ljava/lang/String; = "bio"

.field public static final BIRTHDAY:Ljava/lang/String; = "birthday"

.field public static final Buddy_BASIC_PROJECTION:[Ljava/lang/String;

.field public static final Buddy_FULL_PROJECTION:[Ljava/lang/String;

.field public static final COMMENTS:Ljava/lang/String; = "comments"

.field public static final COMPANY:Ljava/lang/String; = "company"

.field public static final CORRELATION:Ljava/lang/String; = "correlation"

.field public static final DETAIL_FRIEND_RELATION:Ljava/lang/String; = "detail_friend_relation"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DOMAIN_INFO:Ljava/lang/String; = "domain_info"

.field public static final EMAIL:Ljava/lang/String; = "Email"

.field public static final EMAIL_MD5:Ljava/lang/String; = "Email_md5"

.field public static final EXTRA:Ljava/lang/String; = "extra"

.field public static final FLAGS:Ljava/lang/String; = "flags"

.field public static final HOMETOWN:Ljava/lang/String; = "hometown"

.field public static final INDUSTRY:Ljava/lang/String; = "industry"

.field public static final IS_VOICE_SIGNATURE_READ:Ljava/lang/String; = "is_voice_signature_read"

.field public static final LAST_SEND_MESSAGE_TS:Ljava/lang/String; = "last_send_message_ts"

.field public static final LAST_UPDATE:Ljava/lang/String; = "last_update"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final MORE_PHOTO_URL:Ljava/lang/String; = "more_photo_url"

.field public static PAGE_SIZE:I = 0x0

.field public static final PHONE_NUMBER:Ljava/lang/String; = "phone_num"

.field public static final PHONE_NUMBER_MD5:Ljava/lang/String; = "phone_num_md5"

.field public static final PHOTO_URL:Ljava/lang/String; = "photo_url"

.field public static final REASON_MSG:Ljava/lang/String; = "reason_msg"

.field public static final RECOMMEND_REASON:Ljava/lang/String; = "recommend"

.field public static final RELATION_SOURCE:Ljava/lang/String; = "relation_source"

.field public static final RELATION_TS:Ljava/lang/String; = "relation_ts"

.field public static final SCHOOL:Ljava/lang/String; = "school"

.field public static final SEX:Ljava/lang/String; = "sex"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VERIFIED_TYPE:Ljava/lang/String; = "verified_type"

.field public static final VOICE_SIGNATURE:Ljava/lang/String; = "voice_signature"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    const/16 v0, 0x50

    sput v0, Lcom/xiaomi/channel/relationservice/data/BuddyColumns;->PAGE_SIZE:I

    .line 82
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 83
    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "phone_num"

    aput-object v1, v0, v6

    const-string v1, "phone_num_md5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ACCOUNT_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 84
    const-string v2, "comments"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "detail_friend_relation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "verified_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "signature"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 85
    const-string v2, "relation_ts"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "relation_source"

    aput-object v2, v0, v1

    .line 82
    sput-object v0, Lcom/xiaomi/channel/relationservice/data/BuddyColumns;->Buddy_BASIC_PROJECTION:[Ljava/lang/String;

    .line 87
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 88
    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "comments"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "phone_num"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "phone_num_md5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 89
    const-string v2, "ACCOUNT_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Email"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_url"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "more_photo_url"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sex"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "location"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 90
    const-string v2, "birthday"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "school"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "company"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "bio"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "signature"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "voice_signature"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 91
    const-string v2, "is_voice_signature_read"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "last_update"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "detail_friend_relation"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 92
    const-string v2, "verified_type"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "relation_ts"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "relation_source"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "recommend"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 93
    const-string v2, "hometown"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "industry"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "correlation"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "account_property"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "extra"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 94
    const-string v2, "domain_info"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "last_send_message_ts"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "bind_values"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Email_md5"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 95
    const-string v2, "reason_msg"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "flags"

    aput-object v2, v0, v1

    .line 87
    sput-object v0, Lcom/xiaomi/channel/relationservice/data/BuddyColumns;->Buddy_FULL_PROJECTION:[Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
