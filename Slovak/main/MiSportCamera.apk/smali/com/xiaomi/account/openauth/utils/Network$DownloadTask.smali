.class Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;
.super Landroid/os/AsyncTask;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/account/openauth/utils/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private bOnlyWifi:Z

.field private handler:Lcom/xiaomi/account/openauth/utils/Network$PostDownloadHandler;

.field private mContext:Landroid/content/Context;

.field private output:Ljava/io/OutputStream;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;Lcom/xiaomi/account/openauth/utils/Network$PostDownloadHandler;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "handler"    # Lcom/xiaomi/account/openauth/utils/Network$PostDownloadHandler;

    .prologue
    .line 990
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;-><init>(Ljava/lang/String;Ljava/io/OutputStream;Lcom/xiaomi/account/openauth/utils/Network$PostDownloadHandler;ZLandroid/content/Context;)V

    .line 991
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;Lcom/xiaomi/account/openauth/utils/Network$PostDownloadHandler;ZLandroid/content/Context;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "handler"    # Lcom/xiaomi/account/openauth/utils/Network$PostDownloadHandler;
    .param p4, "bOnlyWifi"    # Z
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 993
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 995
    iput-object p1, p0, Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;->url:Ljava/lang/String;

    .line 996
    iput-object p2, p0, Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;->output:Ljava/io/OutputStream;

    .line 997
    iput-object p3, p0, Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;->handler:Lcom/xiaomi/account/openauth/utils/Network$PostDownloadHandler;

    .line 998
    iput-boolean p4, p0, Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;->bOnlyWifi:Z

    .line 999
    iput-object p5, p0, Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;->mContext:Landroid/content/Context;

    .line 1000
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;->output:Ljava/io/OutputStream;

    iget-boolean v2, p0, Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;->bOnlyWifi:Z

    iget-object v3, p0, Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/account/openauth/utils/Network;->downloadFile(Ljava/lang/String;Ljava/io/OutputStream;ZLandroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;->handler:Lcom/xiaomi/account/openauth/utils/Network$PostDownloadHandler;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaomi/account/openauth/utils/Network$PostDownloadHandler;->OnPostDownload(Z)V

    .line 1010
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/openauth/utils/Network$DownloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
