.class public Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;
.super Ljava/lang/Object;
.source "ArcDownloadEngineController.java"


# static fields
.field private static final BASEPATH:Ljava/lang/String;

.field private static UIObject:Ljava/lang/Object; = null

.field private static mtdArcCallback:Ljava/lang/reflect/Method; = null

.field private static final sLogTag:Ljava/lang/String; = "ArcDownloadEngineController"

.field private static singleArcDownloadEngController:Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;->BASEPATH:Ljava/lang/String;

    .line 40
    sput-object v2, Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;->singleArcDownloadEngController:Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;

    .line 42
    sput-object v2, Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;->UIObject:Ljava/lang/Object;

    .line 43
    sput-object v2, Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;->mtdArcCallback:Ljava/lang/reflect/Method;

    .line 48
    :try_start_0
    const-string v1, "mv3_platform"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 49
    const-string v1, "mv3_common"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 50
    const-string v1, "mv3_sourceparser"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 53
    const-string v1, "externalio"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 54
    const-string v1, "arcDownloadEngine"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 55
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 56
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "ArcDownloadEngineController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsatisfied Link error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static creatDestinationFileFolder()I
    .locals 4

    .prologue
    .line 104
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;->BASEPATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/veengine/download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "destDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 109
    :cond_0
    const-string v1, "ArcDownloadEngineController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "creatDestinationFolder Destination: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    const-string v1, "ArcDownloadEngineController"

    const-string v2, "creatDestinationFolder failed !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v1, 0x1

    .line 115
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Ljava/lang/Object;)Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;
    .locals 8
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 65
    const-class v3, Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;

    monitor-enter v3

    :try_start_0
    const-string v4, "ArcDownloadEngineController"

    const-string v5, "Enter ArcDownloadEngineController.getInstance"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    if-nez p0, :cond_0

    .line 69
    const-string v4, "ArcDownloadEngineController"

    const-string v5, "UIClass is Null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_0
    monitor-exit v3

    return-object v2

    .line 72
    :cond_0
    :try_start_1
    sput-object p0, Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;->UIObject:Ljava/lang/Object;

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 75
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :try_start_2
    const-string v4, "ArcDownloadNotifyCallback"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;->mtdArcCallback:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    :try_start_3
    sget-object v4, Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;->singleArcDownloadEngController:Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;

    if-nez v4, :cond_1

    .line 85
    new-instance v4, Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;

    invoke-direct {v4}, Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;-><init>()V

    sput-object v4, Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;->singleArcDownloadEngController:Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;

    .line 92
    :goto_1
    invoke-static {}, Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;->creatDestinationFileFolder()I

    move-result v4

    if-eqz v4, :cond_2

    .line 94
    const-string v4, "ArcDownloadEngineController"

    const-string v5, "create veengine/download failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 65
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 76
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 79
    const-string v4, "ArcDownloadEngineController"

    const-string v5, "find ArcDownloadNotifyCallback method failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    const-string v4, "ArcDownloadEngineController"

    const-string v5, "singleSVideoEngineController!=null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 98
    :cond_2
    sget-object v2, Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;->singleArcDownloadEngController:Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public native ArcDownloadEngCancel()J
.end method

.method public native ArcDownloadEngDownload()J
.end method

.method public native ArcDownloadEngInit(J)J
.end method

.method public native ArcDownloadEngPause()J
.end method

.method public native ArcDownloadEngResume()J
.end method

.method public native ArcDownloadEngSetParameter(Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;)J
.end method

.method public native ArcDownloadEngUninit()J
.end method

.method public ArcDownloadNotifyCallback(JJJ)I
    .locals 7
    .param p1, "lNotifyId"    # J
    .param p3, "lParam1"    # J
    .param p5, "lParam2"    # J

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, "res":I
    const-string v2, "ArcDownloadEngineController"

    const-string v3, "recieve notify from engine!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :try_start_0
    sget-object v2, Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;->mtdArcCallback:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/arcsoft/arcdownload/app/ArcDownloadEngineController;->UIObject:Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 137
    :goto_0
    return v1

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method
