.class public Lcom/qiniu/rs/PutExtra;
.super Ljava/lang/Object;
.source "PutExtra.java"


# static fields
.field public static final AUTO_CRC32:I = 0x1

.field public static final SPECIFY_CRC32:I = 0x2

.field public static final UNUSE_CRC32:I


# instance fields
.field public checkCrc:I

.field public crc32:J

.field public mimeType:Ljava/lang/String;

.field public params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qiniu/rs/PutExtra;->params:Ljava/util/HashMap;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/qiniu/rs/PutExtra;->checkCrc:I

    .line 5
    return-void
.end method
