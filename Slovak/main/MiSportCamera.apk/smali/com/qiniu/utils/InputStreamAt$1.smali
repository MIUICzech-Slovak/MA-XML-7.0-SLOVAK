.class Lcom/qiniu/utils/InputStreamAt$1;
.super Ljava/lang/Object;
.source "InputStreamAt.java"

# interfaces
.implements Lcom/qiniu/utils/InputStreamAt$CleanCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/utils/InputStreamAt;->fromInputStream(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Lcom/qiniu/utils/InputStreamAt$FileInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qiniu/utils/InputStreamAt$1;->val$file:Ljava/io/File;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/qiniu/utils/InputStreamAt$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 36
    return-void
.end method
