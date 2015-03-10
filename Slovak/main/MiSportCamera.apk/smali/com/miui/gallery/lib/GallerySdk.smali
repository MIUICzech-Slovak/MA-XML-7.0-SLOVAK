.class public Lcom/miui/gallery/lib/GallerySdk;
.super Ljava/lang/Object;
.source "GallerySdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;,
        Lcom/miui/gallery/lib/GallerySdk$OnBindServiceListener;
    }
.end annotation


# static fields
.field public static final CLIENT_REMOTE_ERROR:I = -0x1

.field public static final FILE_NAME_SEPARATOR:Ljava/lang/String; = "\n"

.field public static final REQUEST_ABLUM_DOES_NOT_EXIST_ERROR:I = -0x4

.field public static final REQUEST_INSERTIMAGE_FILEFOLDER_IS_EMPTY:I = -0xb

.field public static final REQUEST_INSERTIMAGE_FILENAMES_IS_EMPTY:I = -0xc

.field public static final REQUEST_MICLOUD_USERID_ERROR:I = -0x8

.field public static final REQUEST_NETWORDK_REQEUST_FAILED_ERROR:I = -0x2

.field public static final REQUEST_NOT_LOGIN_ERROR:I = -0x7

.field public static final REQUEST_PARAMETERS_ERROR:I = -0x6

.field public static final REQUEST_SUCCESS:I = 0x0

.field public static final REQUEST_TOKEN_PAST_ERROR:I = -0x3

.field public static final REQUEST_UNKONWN_ERROR:I = -0x5

.field public static final RESULT_CODE:Ljava/lang/String; = "result_code"

.field public static final RESULT_MESSAGE:Ljava/lang/String; = "result_message"

.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.miui.gallery.openapisdk.GalleryCloudSdk"

.field private static final TAG:Ljava/lang/String; = "MiuiGallerySdk"

.field private static sInstance:Lcom/miui/gallery/lib/GallerySdk;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field protected mOnBindServiceListener:Lcom/miui/gallery/lib/GallerySdk$OnBindServiceListener;

.field private mRemote:Lcom/miui/gallery/lib/IGalleryCloudSdk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/gallery/lib/GallerySdk;->sInstance:Lcom/miui/gallery/lib/GallerySdk;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/lib/GallerySdk;->mOnBindServiceListener:Lcom/miui/gallery/lib/GallerySdk$OnBindServiceListener;

    .line 60
    new-instance v0, Lcom/miui/gallery/lib/GallerySdk$1;

    invoke-direct {v0, p0}, Lcom/miui/gallery/lib/GallerySdk$1;-><init>(Lcom/miui/gallery/lib/GallerySdk;)V

    iput-object v0, p0, Lcom/miui/gallery/lib/GallerySdk;->mConnection:Landroid/content/ServiceConnection;

    .line 136
    return-void
.end method

.method static synthetic access$002(Lcom/miui/gallery/lib/GallerySdk;Lcom/miui/gallery/lib/IGalleryCloudSdk;)Lcom/miui/gallery/lib/IGalleryCloudSdk;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/lib/GallerySdk;
    .param p1, "x1"    # Lcom/miui/gallery/lib/IGalleryCloudSdk;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/miui/gallery/lib/GallerySdk;->mRemote:Lcom/miui/gallery/lib/IGalleryCloudSdk;

    return-object p1
.end method

.method public static getInstance()Lcom/miui/gallery/lib/GallerySdk;
    .locals 2

    .prologue
    .line 52
    const-class v1, Lcom/miui/gallery/lib/GallerySdk;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/miui/gallery/lib/GallerySdk;->sInstance:Lcom/miui/gallery/lib/GallerySdk;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/miui/gallery/lib/GallerySdk;

    invoke-direct {v0}, Lcom/miui/gallery/lib/GallerySdk;-><init>()V

    sput-object v0, Lcom/miui/gallery/lib/GallerySdk;->sInstance:Lcom/miui/gallery/lib/GallerySdk;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    sget-object v0, Lcom/miui/gallery/lib/GallerySdk;->sInstance:Lcom/miui/gallery/lib/GallerySdk;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getPhotoStatus(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;II)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p3, "pageNo"    # I
    .param p4, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .local p2, "photoStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;>;"
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 170
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 171
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    new-instance v0, Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .local v0, "photoStatus":Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    .end local v0    # "photoStatus":Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_1
    return v9
.end method

.method private grantProviderPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 9
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "albumId"    # Ljava/lang/String;
    .param p4, "albumName"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "pageNo"    # I
    .param p7, "pageSize"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/gallery/lib/GallerySdk;->mRemote:Lcom/miui/gallery/lib/IGalleryCloudSdk;

    if-eqz v0, :cond_0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/lib/GallerySdk;->mRemote:Lcom/miui/gallery/lib/IGalleryCloudSdk;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/miui/gallery/lib/IGalleryCloudSdk;->grantProviderPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v8

    .line 127
    .local v8, "bundle":Landroid/os/Bundle;
    const-string v0, "MiuiGallerySdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiuiGallerySdk grandProviderPermission = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v8    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v8

    .line 129
    :catch_0
    move-exception v0

    .line 133
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindService(Landroid/content/Context;Lcom/miui/gallery/lib/GallerySdk$OnBindServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/miui/gallery/lib/GallerySdk$OnBindServiceListener;

    .prologue
    .line 206
    invoke-virtual {p0, p2}, Lcom/miui/gallery/lib/GallerySdk;->setOnBindServiceListener(Lcom/miui/gallery/lib/GallerySdk$OnBindServiceListener;)V

    .line 207
    iput-object p1, p0, Lcom/miui/gallery/lib/GallerySdk;->mContext:Landroid/content/Context;

    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v0, "service":Landroid/content/Intent;
    const-string v1, "com.miui.gallery.openapisdk.GalleryCloudSdk"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lcom/miui/gallery/lib/GallerySdk;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/lib/GallerySdk;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 211
    iget-object v1, p0, Lcom/miui/gallery/lib/GallerySdk;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 212
    return-void
.end method

.method public getPhotoStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;II)I
    .locals 15
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "albumId"    # Ljava/lang/String;
    .param p4, "albumName"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p7, "pageNo"    # I
    .param p8, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 186
    .local p6, "photoStatusList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/lib/GallerySdk$PhotoStatus;>;"
    iget-object v3, p0, Lcom/miui/gallery/lib/GallerySdk;->mRemote:Lcom/miui/gallery/lib/IGalleryCloudSdk;

    if-nez v3, :cond_1

    .line 187
    const/4 v13, -0x1

    .line 202
    :cond_0
    :goto_0
    return v13

    .line 189
    :cond_1
    const/4 v11, 0x0

    .line 191
    .local v11, "bundle":Landroid/os/Bundle;
    :try_start_0
    iget-object v3, p0, Lcom/miui/gallery/lib/GallerySdk;->mRemote:Lcom/miui/gallery/lib/IGalleryCloudSdk;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v3 .. v10}, Lcom/miui/gallery/lib/IGalleryCloudSdk;->grantProviderPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v11

    .line 192
    const-string v3, "MiuiGallerySdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MiuiGallerySdk grandProviderPermission = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    const-string v3, "result_code"

    const/4 v4, -0x5

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 197
    .local v13, "resultCode":I
    if-nez v13, :cond_0

    .line 201
    const-string v3, "result_message"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 202
    .local v14, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/miui/gallery/lib/GallerySdk;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-static {v3, v14, v0, v1, v2}, Lcom/miui/gallery/lib/GallerySdk;->getPhotoStatus(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;II)I

    move-result v13

    goto :goto_0

    .line 193
    .end local v13    # "resultCode":I
    .end local v14    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v12

    .line 194
    .local v12, "e":Landroid/os/RemoteException;
    const/4 v13, -0x1

    goto :goto_0
.end method

.method public insertImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 11
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "albumId"    # Ljava/lang/String;
    .param p4, "albumName"    # Ljava/lang/String;
    .param p5, "fileFolder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 103
    .local p6, "fileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/gallery/lib/GallerySdk;->mRemote:Lcom/miui/gallery/lib/IGalleryCloudSdk;

    if-eqz v0, :cond_1

    .line 104
    if-nez p6, :cond_0

    .line 105
    const/16 v9, -0xc

    .line 119
    :goto_0
    return v9

    .line 108
    :cond_0
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v8, "names":Ljava/lang/StringBuilder;
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 110
    .local v10, "str":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 115
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "names":Ljava/lang/StringBuilder;
    .end local v10    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 119
    :cond_1
    const/4 v9, -0x1

    goto :goto_0

    .line 112
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "names":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v0, p0, Lcom/miui/gallery/lib/GallerySdk;->mRemote:Lcom/miui/gallery/lib/IGalleryCloudSdk;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/miui/gallery/lib/IGalleryCloudSdk;->insertImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 113
    .local v9, "ret":I
    const-string v0, "MiuiGallerySdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiuiGallerySdk insertImage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public isCloudOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "albumId"    # Ljava/lang/String;
    .param p4, "albumName"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/miui/gallery/lib/GallerySdk;->mRemote:Lcom/miui/gallery/lib/IGalleryCloudSdk;

    if-eqz v1, :cond_0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/lib/GallerySdk;->mRemote:Lcom/miui/gallery/lib/IGalleryCloudSdk;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/miui/gallery/lib/IGalleryCloudSdk;->isCloudOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, "ret":I
    const-string v1, "MiuiGallerySdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiuiGallerySdk isCloudOpen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "ret":I
    :goto_0
    return v0

    .line 81
    :catch_0
    move-exception v1

    .line 85
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setOnBindServiceListener(Lcom/miui/gallery/lib/GallerySdk$OnBindServiceListener;)V
    .locals 0
    .param p1, "l"    # Lcom/miui/gallery/lib/GallerySdk$OnBindServiceListener;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/gallery/lib/GallerySdk;->mOnBindServiceListener:Lcom/miui/gallery/lib/GallerySdk$OnBindServiceListener;

    .line 49
    return-void
.end method

.method public startAlbumPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "albumId"    # Ljava/lang/String;
    .param p4, "albumName"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v1, p0, Lcom/miui/gallery/lib/GallerySdk;->mRemote:Lcom/miui/gallery/lib/IGalleryCloudSdk;

    if-eqz v1, :cond_0

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.intent.action.CLOUD_ALBUM_VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v1, "token"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "album_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v1, "album_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v1, p0, Lcom/miui/gallery/lib/GallerySdk;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 97
    const/4 v1, 0x0

    .line 99
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public unBindService()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/miui/gallery/lib/GallerySdk;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/miui/gallery/lib/GallerySdk;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gallery/lib/GallerySdk;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 218
    :cond_0
    return-void
.end method
