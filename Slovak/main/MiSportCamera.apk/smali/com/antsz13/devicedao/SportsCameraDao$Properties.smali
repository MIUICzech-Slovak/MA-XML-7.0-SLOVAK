.class public Lcom/antsz13/devicedao/SportsCameraDao$Properties;
.super Ljava/lang/Object;
.source "SportsCameraDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/antsz13/devicedao/SportsCameraDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final MacAdress:Lde/greenrobot/dao/Property;

.field public static final Password:Lde/greenrobot/dao/Property;

.field public static final Ssid:Lde/greenrobot/dao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 23
    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/String;

    const-string v3, "macAdress"

    const-string v5, "MAC_ADRESS"

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/antsz13/devicedao/SportsCameraDao$Properties;->MacAdress:Lde/greenrobot/dao/Property;

    .line 24
    new-instance v3, Lde/greenrobot/dao/Property;

    const-class v5, Ljava/lang/String;

    const-string v6, "ssid"

    const-string v8, "SSID"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/antsz13/devicedao/SportsCameraDao$Properties;->Ssid:Lde/greenrobot/dao/Property;

    .line 25
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "password"

    const-string v7, "PASSWORD"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/antsz13/devicedao/SportsCameraDao$Properties;->Password:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
