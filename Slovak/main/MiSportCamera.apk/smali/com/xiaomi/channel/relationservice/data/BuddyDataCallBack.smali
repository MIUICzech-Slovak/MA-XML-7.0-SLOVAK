.class public abstract Lcom/xiaomi/channel/relationservice/data/BuddyDataCallBack;
.super Ljava/lang/Object;
.source "BuddyDataCallBack.java"


# static fields
.field public static final BUDDY_DATA_CHOSED:Ljava/lang/String; = "buddy_data_chosed"

.field public static final EXTRA_TASK_ID:Ljava/lang/String; = "task_id"


# instance fields
.field public taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/channel/relationservice/data/BuddyDataCallBack;->taskId:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public abstract onBuddyDataChosed(Lcom/xiaomi/channel/relationservice/data/BuddyData;)V
.end method
