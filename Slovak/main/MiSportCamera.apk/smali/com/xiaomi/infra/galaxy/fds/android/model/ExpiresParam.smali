.class public Lcom/xiaomi/infra/galaxy/fds/android/model/ExpiresParam;
.super Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;
.source "ExpiresParam.java"


# static fields
.field private static final EXPIRES:Ljava/lang/String; = "expires"


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "expiresMs"    # J

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/xiaomi/infra/galaxy/fds/android/model/UserParam;-><init>()V

    .line 10
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ExpiresParam;->params:Ljava/util/Map;

    const-string v1, "expires"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method
