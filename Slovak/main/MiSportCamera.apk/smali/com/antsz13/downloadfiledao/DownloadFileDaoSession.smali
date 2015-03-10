.class public Lcom/antsz13/downloadfiledao/DownloadFileDaoSession;
.super Lde/greenrobot/dao/AbstractDaoSession;
.source "DownloadFileDaoSession.java"


# instance fields
.field private final downloadFileDao:Lcom/antsz13/downloadfiledao/DownloadFileDao;

.field private final downloadFileDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "type"    # Lde/greenrobot/dao/identityscope/IdentityScopeType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lde/greenrobot/dao/identityscope/IdentityScopeType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lde/greenrobot/dao/AbstractDao",
            "<**>;>;",
            "Lde/greenrobot/dao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p3, "daoConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lde/greenrobot/dao/AbstractDao<**>;>;Lde/greenrobot/dao/internal/DaoConfig;>;"
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 33
    const-class v0, Lcom/antsz13/downloadfiledao/DownloadFileDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/antsz13/downloadfiledao/DownloadFileDaoSession;->downloadFileDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 34
    iget-object v0, p0, Lcom/antsz13/downloadfiledao/DownloadFileDaoSession;->downloadFileDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 36
    new-instance v0, Lcom/antsz13/downloadfiledao/DownloadFileDao;

    iget-object v1, p0, Lcom/antsz13/downloadfiledao/DownloadFileDaoSession;->downloadFileDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/antsz13/downloadfiledao/DownloadFileDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/antsz13/downloadfiledao/DownloadFileDaoSession;)V

    iput-object v0, p0, Lcom/antsz13/downloadfiledao/DownloadFileDaoSession;->downloadFileDao:Lcom/antsz13/downloadfiledao/DownloadFileDao;

    .line 38
    const-class v0, Lcom/antsz13/downloadfiledao/DownloadFile;

    iget-object v1, p0, Lcom/antsz13/downloadfiledao/DownloadFileDaoSession;->downloadFileDao:Lcom/antsz13/downloadfiledao/DownloadFileDao;

    invoke-virtual {p0, v0, v1}, Lcom/antsz13/downloadfiledao/DownloadFileDaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 39
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/antsz13/downloadfiledao/DownloadFileDaoSession;->downloadFileDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 43
    return-void
.end method

.method public getDownloadFileDao()Lcom/antsz13/downloadfiledao/DownloadFileDao;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/antsz13/downloadfiledao/DownloadFileDaoSession;->downloadFileDao:Lcom/antsz13/downloadfiledao/DownloadFileDao;

    return-object v0
.end method
