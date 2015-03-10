.class public Lcom/antsz13/downloadfiledao/DownloadFile;
.super Ljava/lang/Object;
.source "DownloadFile.java"


# instance fields
.field private addsuccess:Z

.field private filepath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/antsz13/downloadfiledao/DownloadFile;->filepath:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "addsuccess"    # Z

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/antsz13/downloadfiledao/DownloadFile;->filepath:Ljava/lang/String;

    .line 22
    iput-boolean p2, p0, Lcom/antsz13/downloadfiledao/DownloadFile;->addsuccess:Z

    .line 23
    return-void
.end method


# virtual methods
.method public getAddsuccess()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/antsz13/downloadfiledao/DownloadFile;->addsuccess:Z

    return v0
.end method

.method public getFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/antsz13/downloadfiledao/DownloadFile;->filepath:Ljava/lang/String;

    return-object v0
.end method

.method public setAddsuccess(Z)V
    .locals 0
    .param p1, "addsuccess"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/antsz13/downloadfiledao/DownloadFile;->addsuccess:Z

    .line 41
    return-void
.end method

.method public setFilepath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/antsz13/downloadfiledao/DownloadFile;->filepath:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DownloadFile [filepath="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/antsz13/downloadfiledao/DownloadFile;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", addsuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 46
    iget-boolean v1, p0, Lcom/antsz13/downloadfiledao/DownloadFile;->addsuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
