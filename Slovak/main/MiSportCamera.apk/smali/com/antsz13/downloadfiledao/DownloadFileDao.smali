.class public Lcom/antsz13/downloadfiledao/DownloadFileDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "DownloadFileDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/antsz13/downloadfiledao/DownloadFileDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/antsz13/downloadfiledao/DownloadFile;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "DOWNLOAD_FILE"


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .locals 0
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/antsz13/downloadfiledao/DownloadFileDaoSession;)V
    .locals 0
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/antsz13/downloadfiledao/DownloadFileDaoSession;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 37
    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 41
    if-eqz p1, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 42
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TABLE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'DOWNLOAD_FILE\' ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 43
    const-string v2, "\'FILEPATH\' TEXT PRIMARY KEY NOT NULL ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 44
    const-string v2, "\'ADDSUCCESS\' INTEGER NOT NULL );"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    return-void

    .line 41
    .end local v0    # "constraint":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifExists"    # Z

    .prologue
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "DROP TABLE "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "IF EXISTS "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'DOWNLOAD_FILE\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    return-void

    .line 49
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/antsz13/downloadfiledao/DownloadFile;)V
    .locals 3
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/antsz13/downloadfiledao/DownloadFile;

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/antsz13/downloadfiledao/DownloadFile;->getFilepath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 58
    const/4 v2, 0x2

    invoke-virtual {p2}, Lcom/antsz13/downloadfiledao/DownloadFile;->getAddsuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 59
    return-void

    .line 58
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lcom/antsz13/downloadfiledao/DownloadFile;

    invoke-virtual {p0, p1, p2}, Lcom/antsz13/downloadfiledao/DownloadFileDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/antsz13/downloadfiledao/DownloadFile;)V

    return-void
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/antsz13/downloadfiledao/DownloadFile;

    invoke-virtual {p0, p1}, Lcom/antsz13/downloadfiledao/DownloadFileDao;->getKey(Lcom/antsz13/downloadfiledao/DownloadFile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Lcom/antsz13/downloadfiledao/DownloadFile;)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/antsz13/downloadfiledao/DownloadFile;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/antsz13/downloadfiledao/DownloadFile;->getFilepath()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/antsz13/downloadfiledao/DownloadFile;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 70
    new-instance v0, Lcom/antsz13/downloadfiledao/DownloadFile;

    .line 71
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 70
    :goto_0
    invoke-direct {v0, v2, v1}, Lcom/antsz13/downloadfiledao/DownloadFile;-><init>(Ljava/lang/String;Z)V

    .line 74
    .local v0, "entity":Lcom/antsz13/downloadfiledao/DownloadFile;
    return-object v0

    .line 72
    .end local v0    # "entity":Lcom/antsz13/downloadfiledao/DownloadFile;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/antsz13/downloadfiledao/DownloadFileDao;->readEntity(Landroid/database/Cursor;I)Lcom/antsz13/downloadfiledao/DownloadFile;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/antsz13/downloadfiledao/DownloadFile;I)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/antsz13/downloadfiledao/DownloadFile;
    .param p3, "offset"    # I

    .prologue
    .line 80
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/antsz13/downloadfiledao/DownloadFile;->setFilepath(Ljava/lang/String;)V

    .line 81
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/antsz13/downloadfiledao/DownloadFile;->setAddsuccess(Z)V

    .line 82
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lcom/antsz13/downloadfiledao/DownloadFile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/antsz13/downloadfiledao/DownloadFileDao;->readEntity(Landroid/database/Cursor;Lcom/antsz13/downloadfiledao/DownloadFile;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/antsz13/downloadfiledao/DownloadFileDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 64
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/antsz13/downloadfiledao/DownloadFile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/antsz13/downloadfiledao/DownloadFileDao;->updateKeyAfterInsert(Lcom/antsz13/downloadfiledao/DownloadFile;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/antsz13/downloadfiledao/DownloadFile;J)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/antsz13/downloadfiledao/DownloadFile;
    .param p2, "rowId"    # J

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/antsz13/downloadfiledao/DownloadFile;->getFilepath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
