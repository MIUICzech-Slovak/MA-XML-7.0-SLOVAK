.class public Lcom/qiniu/conf/Conf;
.super Ljava/lang/Object;
.source "Conf.java"


# static fields
.field public static final BLOCK_SIZE:I = 0x400000

.field public static BLOCK_TRY_TIMES:I = 0x0

.field public static final CANCEL_CODE:I = -0x1

.field public static final CHARSET:Ljava/lang/String; = "utf-8"

.field public static CHUNK_SIZE:I = 0x0

.field public static CHUNK_TRY_TIMES:I = 0x0

.field public static CONNECTION_TIMEOUT:I = 0x0

.field public static final ERROR_CODE:I = 0x0

.field public static FIRST_CHUNK:I = 0x0

.field public static ONCE_WRITE_SIZE:I = 0x0

.field public static PROCESS_MSG:Ljava/lang/String; = null

.field public static SO_TIMEOUT:I = 0x0

.field public static UP_HOST:Ljava/lang/String; = null

.field public static UP_HOST2:Ljava/lang/String; = null

.field public static USER_AGENT:Ljava/lang/String; = null

.field public static final VERSION:Ljava/lang/String; = "6.1.0"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x40000

    const/16 v1, 0x7530

    .line 5
    const-string v0, "http://upload.qiniu.com"

    sput-object v0, Lcom/qiniu/conf/Conf;->UP_HOST:Ljava/lang/String;

    .line 6
    const-string v0, "http://up.qiniu.com"

    sput-object v0, Lcom/qiniu/conf/Conf;->UP_HOST2:Ljava/lang/String;

    .line 18
    sput v1, Lcom/qiniu/conf/Conf;->CONNECTION_TIMEOUT:I

    .line 28
    sput v1, Lcom/qiniu/conf/Conf;->SO_TIMEOUT:I

    .line 31
    sput v2, Lcom/qiniu/conf/Conf;->CHUNK_SIZE:I

    .line 32
    sput v2, Lcom/qiniu/conf/Conf;->FIRST_CHUNK:I

    .line 33
    const v0, 0x8000

    sput v0, Lcom/qiniu/conf/Conf;->ONCE_WRITE_SIZE:I

    .line 35
    const/4 v0, 0x2

    sput v0, Lcom/qiniu/conf/Conf;->BLOCK_TRY_TIMES:I

    .line 36
    const/4 v0, 0x3

    sput v0, Lcom/qiniu/conf/Conf;->CHUNK_TRY_TIMES:I

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/qiniu/conf/Conf;->USER_AGENT:Ljava/lang/String;

    .line 42
    const-string v0, "upload alread in process or procssed or canceled."

    sput-object v0, Lcom/qiniu/conf/Conf;->PROCESS_MSG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
