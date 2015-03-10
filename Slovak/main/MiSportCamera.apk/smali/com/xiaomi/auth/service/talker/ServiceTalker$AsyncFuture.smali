.class Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;
.super Ljava/util/concurrent/FutureTask;
.source "ServiceTalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/auth/service/talker/ServiceTalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;, "Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture<TV;>;"
    new-instance v0, Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture$1;

    invoke-direct {v0}, Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture$1;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 134
    return-void
.end method


# virtual methods
.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;, "Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/xiaomi/auth/service/talker/ServiceTalker$AsyncFuture;->set(Ljava/lang/Object;)V

    .line 138
    return-void
.end method
