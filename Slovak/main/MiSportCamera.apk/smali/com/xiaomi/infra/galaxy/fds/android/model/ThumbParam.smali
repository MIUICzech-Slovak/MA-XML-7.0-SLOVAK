.class public Lcom/xiaomi/infra/galaxy/fds/android/model/ThumbParam;
.super Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;
.source "ThumbParam.java"


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;-><init>()V

    .line 12
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ThumbParam;->params:Ljava/util/Map;

    const-string v1, "thumb"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ThumbParam;->params:Ljava/util/Map;

    const-string v1, "w"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ThumbParam;->params:Ljava/util/Map;

    const-string v1, "h"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-void
.end method
