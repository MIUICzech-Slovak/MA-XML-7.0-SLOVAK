.class public Lcom/xiaomi/channel/sdk/VersionManager;
.super Ljava/lang/Object;
.source "VersionManager.java"


# static fields
.field public static final MILIAO_AVAILABLE:I = 0x64

.field public static final MILIAO_NOT_INSTALLED:I = -0x2711

.field private static final MILIAO_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.channel"

.field public static final MILIAO_TOO_OLD:I = -0x2712


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMiliaoVersion(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, -0x2711

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 21
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 22
    .local v5, "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v5, :cond_0

    .line 23
    const/4 v2, 0x0

    .line 24
    .local v2, "miliaoInstalled":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lt v0, v8, :cond_1

    .line 37
    if-nez v2, :cond_0

    .line 41
    .end local v0    # "i":I
    .end local v2    # "miliaoInstalled":Z
    :cond_0
    :goto_1
    return v7

    .line 25
    .restart local v0    # "i":I
    .restart local v2    # "miliaoInstalled":Z
    :cond_1
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 26
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 27
    .local v1, "installPackageName":Ljava/lang/String;
    const-string v8, "com.xiaomi.channel"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 28
    const/4 v2, 0x1

    .line 29
    iget v6, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 30
    .local v6, "versionCode":I
    const/16 v7, 0x45d

    if-lt v6, v7, :cond_2

    .line 31
    const/16 v7, 0x64

    goto :goto_1

    .line 33
    :cond_2
    const/16 v7, -0x2712

    goto :goto_1

    .line 24
    .end local v6    # "versionCode":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getMiliaoVersion(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 88
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 89
    .local v4, "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v4, :cond_0

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lt v0, v6, :cond_1

    .line 98
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v5

    .line 91
    .restart local v0    # "i":I
    :cond_1
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 92
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 93
    .local v1, "installPackageName":Ljava/lang/String;
    const-string v6, "com.xiaomi.channel"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 94
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_1

    .line 90
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isMiliaoInstalled(Landroid/content/Context;)Z
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 102
    const-string v2, "com.xiaomi.channel"

    .line 105
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 106
    const-string v5, "com.xiaomi.channel"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 111
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 107
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 109
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isMiliaoVersionAvailable(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 53
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 54
    .local v4, "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v4, :cond_0

    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lt v0, v7, :cond_1

    .line 64
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v6

    .line 56
    .restart local v0    # "i":I
    :cond_1
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 57
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 58
    .local v1, "installPackageName":Ljava/lang/String;
    const-string v7, "com.xiaomi.channel"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 59
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 60
    .local v5, "versionCode":I
    const/16 v7, 0x45d

    if-lt v5, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    .line 55
    .end local v5    # "versionCode":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isMiliaoVersionAvailable(Landroid/content/Context;I)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # I

    .prologue
    const/4 v6, 0x0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 71
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 72
    .local v4, "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v4, :cond_0

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lt v0, v7, :cond_1

    .line 82
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v6

    .line 74
    .restart local v0    # "i":I
    :cond_1
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 75
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 76
    .local v1, "installPackageName":Ljava/lang/String;
    const-string v7, "com.xiaomi.channel"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 77
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 78
    .local v5, "versionCode":I
    if-lt v5, p1, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    .line 73
    .end local v5    # "versionCode":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
