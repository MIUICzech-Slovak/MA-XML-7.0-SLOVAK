.class public Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResultList;
.super Ljava/lang/Object;
.source "UploadPartResultList.java"


# instance fields
.field private uploadPartResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUploadPartResultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResultList;->uploadPartResultList:Ljava/util/List;

    return-object v0
.end method

.method public setUploadPartResultList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "uploadPartResultList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;>;"
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResultList;->uploadPartResultList:Ljava/util/List;

    .line 14
    return-void
.end method
