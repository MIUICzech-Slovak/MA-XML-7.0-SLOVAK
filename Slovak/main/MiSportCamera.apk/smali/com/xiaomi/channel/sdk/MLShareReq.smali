.class public Lcom/xiaomi/channel/sdk/MLShareReq;
.super Ljava/lang/Object;
.source "MLShareReq.java"

# interfaces
.implements Lcom/xiaomi/channel/sdk/IShareReq;


# instance fields
.field private mBackInfo:Lcom/xiaomi/channel/sdk/MLExtraInfo;

.field private mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

.field private mShareSubType:I

.field private final mShareTarget:I

.field private mShareType:I


# direct methods
.method public constructor <init>(ILcom/xiaomi/channel/sdk/MLShareMessage;I)V
    .locals 0
    .param p1, "shareType"    # I
    .param p2, "shareMsg"    # Lcom/xiaomi/channel/sdk/MLShareMessage;
    .param p3, "shareTarget"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/channel/sdk/MLShareReq;-><init>(Lcom/xiaomi/channel/sdk/MLShareMessage;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/channel/sdk/MLShareMessage;I)V
    .locals 1
    .param p1, "shareMsg"    # Lcom/xiaomi/channel/sdk/MLShareMessage;
    .param p2, "shareTarget"    # I

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mShareType:I

    .line 19
    iput v0, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mShareSubType:I

    .line 32
    iput-object p1, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    .line 33
    iput p2, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mShareTarget:I

    .line 34
    return-void
.end method


# virtual methods
.method public getJumpBackInfo()Lcom/xiaomi/channel/sdk/MLExtraInfo;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mBackInfo:Lcom/xiaomi/channel/sdk/MLExtraInfo;

    return-object v0
.end method

.method public parseFromBundle(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 139
    if-eqz p1, :cond_2

    .line 140
    const-string v2, "share_type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mShareType:I

    .line 141
    const-string v2, "share_title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "title":Ljava/lang/String;
    new-instance v2, Lcom/xiaomi/channel/sdk/MLShareMessage;

    invoke-direct {v2}, Lcom/xiaomi/channel/sdk/MLShareMessage;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    .line 143
    iget-object v2, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    iput-object v1, v2, Lcom/xiaomi/channel/sdk/MLShareMessage;->title:Ljava/lang/String;

    .line 144
    const-string v2, "share_text"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    const-string v3, "share_text"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xiaomi/channel/sdk/MLShareMessage;->text:Ljava/lang/String;

    .line 147
    :cond_0
    const-string v2, "share_url"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    iget-object v2, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    const-string v3, "share_url"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xiaomi/channel/sdk/MLShareMessage;->url:Ljava/lang/String;

    .line 150
    :cond_1
    const-string v2, "share_img_data_bmp"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    new-instance v0, Lcom/xiaomi/channel/sdk/MLImgObj;

    .line 153
    const-string v2, "share_img_data_bmp"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 151
    invoke-direct {v0, v2}, Lcom/xiaomi/channel/sdk/MLImgObj;-><init>(Landroid/graphics/Bitmap;)V

    .line 154
    .local v0, "imgObj":Lcom/xiaomi/channel/sdk/MLImgObj;
    iget-object v2, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    iput-object v0, v2, Lcom/xiaomi/channel/sdk/MLShareMessage;->imgObj:Lcom/xiaomi/channel/sdk/MLImgObj;

    .line 157
    .end local v0    # "imgObj":Lcom/xiaomi/channel/sdk/MLImgObj;
    .end local v1    # "title":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setJumpBackInfo(Lcom/xiaomi/channel/sdk/MLExtraInfo;)V
    .locals 0
    .param p1, "backInfo"    # Lcom/xiaomi/channel/sdk/MLExtraInfo;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mBackInfo:Lcom/xiaomi/channel/sdk/MLExtraInfo;

    .line 38
    return-void
.end method

.method public setShareSubType(I)V
    .locals 0
    .param p1, "shareSubType"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mShareSubType:I

    .line 132
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 10

    .prologue
    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "b":Landroid/os/Bundle;
    const-string v7, "share_target"

    iget v8, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mShareTarget:I

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    iget-object v7, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    if-eqz v7, :cond_6

    .line 52
    const/4 v5, 0x0

    .line 53
    .local v5, "hasText":Z
    const/4 v6, 0x0

    .line 54
    .local v6, "hasUrl":Z
    const/4 v4, 0x0

    .line 55
    .local v4, "hasImg":Z
    iget-object v7, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    iget-object v7, v7, Lcom/xiaomi/channel/sdk/MLShareMessage;->title:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 56
    const-string v7, "share_title"

    iget-object v8, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    iget-object v8, v8, Lcom/xiaomi/channel/sdk/MLShareMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v5, 0x1

    .line 59
    :cond_0
    iget-object v7, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    iget-object v7, v7, Lcom/xiaomi/channel/sdk/MLShareMessage;->text:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 60
    const-string v7, "share_text"

    iget-object v8, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    iget-object v8, v8, Lcom/xiaomi/channel/sdk/MLShareMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v5, 0x1

    .line 63
    :cond_1
    iget-object v7, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    iget-object v7, v7, Lcom/xiaomi/channel/sdk/MLShareMessage;->url:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 64
    const-string v7, "share_url"

    iget-object v8, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    iget-object v8, v8, Lcom/xiaomi/channel/sdk/MLShareMessage;->url:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v6, 0x1

    .line 67
    :cond_2
    iget-object v7, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    iget-object v7, v7, Lcom/xiaomi/channel/sdk/MLShareMessage;->defaultText:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 68
    const-string v7, "share_default_text"

    .line 69
    iget-object v8, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    iget-object v8, v8, Lcom/xiaomi/channel/sdk/MLShareMessage;->defaultText:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_3
    iget-object v7, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    iget-object v7, v7, Lcom/xiaomi/channel/sdk/MLShareMessage;->imgUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 72
    const-string v7, "share_img_url"

    iget-object v8, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    iget-object v8, v8, Lcom/xiaomi/channel/sdk/MLShareMessage;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v4, 0x1

    .line 102
    :cond_4
    :goto_0
    if-eqz v5, :cond_c

    if-nez v4, :cond_c

    if-nez v6, :cond_c

    .line 103
    const v7, 0x18704

    iput v7, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mShareType:I

    .line 112
    :goto_1
    iget-object v7, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    iget-object v7, v7, Lcom/xiaomi/channel/sdk/MLShareMessage;->extraLargeImgPath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 113
    const-string v7, "share_extra_large_img_path"

    iget-object v8, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    iget-object v8, v8, Lcom/xiaomi/channel/sdk/MLShareMessage;->extraLargeImgPath:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_5
    :goto_2
    const-string v7, "share_type"

    iget v8, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mShareType:I

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    iget v7, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mShareSubType:I

    if-lez v7, :cond_6

    .line 119
    const-string v7, "share_type_sub"

    iget v8, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mShareSubType:I

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v4    # "hasImg":Z
    .end local v5    # "hasText":Z
    .end local v6    # "hasUrl":Z
    :cond_6
    :goto_3
    return-object v0

    .line 74
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v4    # "hasImg":Z
    .restart local v5    # "hasText":Z
    .restart local v6    # "hasUrl":Z
    :cond_7
    iget-object v7, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    iget-object v7, v7, Lcom/xiaomi/channel/sdk/MLShareMessage;->imgObj:Lcom/xiaomi/channel/sdk/MLImgObj;

    if-eqz v7, :cond_b

    .line 75
    iget-object v7, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    iget-object v7, v7, Lcom/xiaomi/channel/sdk/MLShareMessage;->imgObj:Lcom/xiaomi/channel/sdk/MLImgObj;

    invoke-virtual {v7}, Lcom/xiaomi/channel/sdk/MLImgObj;->getCompressBmp()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 76
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    .line 77
    invoke-static {}, Lcom/xiaomi/channel/sdk/ShareUtils;->getTmpImgFile()Ljava/io/File;

    move-result-object v2

    .line 78
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_a

    .line 79
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 80
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 82
    :cond_8
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/xiaomi/channel/sdk/ShareUtils;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 84
    const-string v7, "MLShare"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "MLShare shareFilePath:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 84
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v7, "share_img_file_path"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .end local v3    # "filePath":Ljava/lang/String;
    :goto_4
    const/4 v4, 0x1

    .line 97
    goto :goto_0

    .line 89
    .restart local v3    # "filePath":Ljava/lang/String;
    :cond_9
    const-string v7, "share_img_data_bmp"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_4

    .line 93
    .end local v3    # "filePath":Ljava/lang/String;
    :cond_a
    const-string v7, "share_img_data_bmp"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_4

    .line 97
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "file":Ljava/io/File;
    :cond_b
    iget-object v7, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    iget-object v7, v7, Lcom/xiaomi/channel/sdk/MLShareMessage;->imgPath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 98
    const-string v7, "share_img_file_path"

    .line 99
    iget-object v8, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    iget-object v8, v8, Lcom/xiaomi/channel/sdk/MLShareMessage;->imgPath:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 104
    :cond_c
    if-eqz v4, :cond_d

    if-nez v5, :cond_d

    if-nez v6, :cond_d

    .line 105
    const v7, 0x18705

    iput v7, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mShareType:I

    goto/16 :goto_1

    .line 106
    :cond_d
    if-eqz v4, :cond_e

    if-nez v5, :cond_10

    :cond_e
    if-eqz v4, :cond_f

    if-nez v6, :cond_10

    .line 107
    :cond_f
    if-eqz v5, :cond_11

    if-eqz v6, :cond_11

    .line 108
    :cond_10
    const v7, 0x18708

    iput v7, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mShareType:I

    goto/16 :goto_1

    .line 110
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 114
    :cond_12
    iget-object v7, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    iget-object v7, v7, Lcom/xiaomi/channel/sdk/MLShareMessage;->extraLargeImgUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 115
    const-string v7, "share_extra_large_img_url"

    iget-object v8, p0, Lcom/xiaomi/channel/sdk/MLShareReq;->mMessage:Lcom/xiaomi/channel/sdk/MLShareMessage;

    iget-object v8, v8, Lcom/xiaomi/channel/sdk/MLShareMessage;->extraLargeImgUrl:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
