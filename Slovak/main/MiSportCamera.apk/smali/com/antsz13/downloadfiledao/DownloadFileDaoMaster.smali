.class public Lcom/antsz13/downloadfiledao/DownloadFileDaoMaster;
.super Lde/greenrobot/dao/AbstractDaoMaster;
.source "DownloadFileDaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/antsz13/downloadfiledao/DownloadFileDaoMaster$DevOpenHelper;,
        Lcom/antsz13/downloadfiledao/DownloadFileDaoMaster$OpenHelper;
    }
.end annotation


# static fields
.field public static final SCHEMA_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lde/greenrobot/dao/AbstractDaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 59
    const-class v0, Lcom/antsz13/downloadfiledao/DownloadFileDao;

    invoke-virtual {p0, v0}, Lcom/antsz13/downloadfiledao/DownloadFileDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 60
    return-void
.end method

.method public static createAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/antsz13/downloadfiledao/DownloadFileDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 23
    return-void
.end method

.method public static dropAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifExists"    # Z

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/antsz13/downloadfiledao/DownloadFileDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 28
    return-void
.end method


# virtual methods
.method public newSession()Lcom/antsz13/downloadfiledao/DownloadFileDaoSession;
    .locals 4

    .prologue
    .line 63
    new-instance v0, Lcom/antsz13/downloadfiledao/DownloadFileDaoSession;

    iget-object v1, p0, Lcom/antsz13/downloadfiledao/DownloadFileDaoMaster;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lde/greenrobot/dao/identityscope/IdentityScopeType;->Session:Lde/greenrobot/dao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/antsz13/downloadfiledao/DownloadFileDaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/antsz13/downloadfiledao/DownloadFileDaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lcom/antsz13/downloadfiledao/DownloadFileDaoSession;
    .locals 3
    .param p1, "type"    # Lde/greenrobot/dao/identityscope/IdentityScopeType;

    .prologue
    .line 67
    new-instance v0, Lcom/antsz13/downloadfiledao/DownloadFileDaoSession;

    iget-object v1, p0, Lcom/antsz13/downloadfiledao/DownloadFileDaoMaster;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/antsz13/downloadfiledao/DownloadFileDaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/antsz13/downloadfiledao/DownloadFileDaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lde/greenrobot/dao/AbstractDaoSession;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/antsz13/downloadfiledao/DownloadFileDaoMaster;->newSession()Lcom/antsz13/downloadfiledao/DownloadFileDaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lde/greenrobot/dao/AbstractDaoSession;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/antsz13/downloadfiledao/DownloadFileDaoMaster;->newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lcom/antsz13/downloadfiledao/DownloadFileDaoSession;

    move-result-object v0

    return-object v0
.end method
