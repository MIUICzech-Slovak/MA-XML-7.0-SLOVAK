.class public Lcom/antsz13/downloadfiledao/DownloadFileDao$Properties;
.super Ljava/lang/Object;
.source "DownloadFileDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/antsz13/downloadfiledao/DownloadFileDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final Addsuccess:Lde/greenrobot/dao/Property;

.field public static final Filepath:Lde/greenrobot/dao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 26
    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/String;

    const-string v3, "filepath"

    const-string v5, "FILEPATH"

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/antsz13/downloadfiledao/DownloadFileDao$Properties;->Filepath:Lde/greenrobot/dao/Property;

    .line 27
    new-instance v3, Lde/greenrobot/dao/Property;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v6, "addsuccess"

    const-string v8, "ADDSUCCESS"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/antsz13/downloadfiledao/DownloadFileDao$Properties;->Addsuccess:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
