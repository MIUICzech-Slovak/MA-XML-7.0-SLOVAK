.class public Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
.super Ljava/lang/Object;
.source "ObjectMetadata.java"


# static fields
.field private static final PREDEFINED_HEADERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final predefinedMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final userMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->PREDEFINED_HEADERS:Ljava/util/Set;

    .line 23
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->PREDEFINED_HEADERS:Ljava/util/Set;

    const-string v1, "Last-Modified"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->PREDEFINED_HEADERS:Ljava/util/Set;

    const-string v1, "Content-MD5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->PREDEFINED_HEADERS:Ljava/util/Set;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->PREDEFINED_HEADERS:Ljava/util/Set;

    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->PREDEFINED_HEADERS:Ljava/util/Set;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->PREDEFINED_HEADERS:Ljava/util/Set;

    const-string v1, "Cache-Control"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->predefinedMetadata:Ljava/util/Map;

    return-void
.end method

.method public static parseObjectMetadata([Lorg/apache/http/Header;)Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    .locals 8
    .param p0, "headers"    # [Lorg/apache/http/Header;

    .prologue
    .line 32
    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

    invoke-direct {v5}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;-><init>()V

    .line 34
    .local v5, "metadata":Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    move-object v0, p0

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v0, v2

    .line 35
    .local v1, "header":Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 38
    .local v6, "value":Ljava/lang/String;
    const-string v7, "x-xiaomi-meta-"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 39
    invoke-virtual {v5, v3, v6}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_1
    sget-object v7, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->PREDEFINED_HEADERS:Ljava/util/Set;

    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 41
    invoke-virtual {v5, v3, v6}, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->addPredefinedMetadata(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 44
    .end local v1    # "header":Lorg/apache/http/Header;
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    return-object v5
.end method


# virtual methods
.method public addPredefinedMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->predefinedMetadata:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    return-void
.end method

.method public addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public getAllMetadata()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->predefinedMetadata:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 416
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 417
    return-object v0
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->predefinedMetadata:Ljava/util/Map;

    const-string v1, "Cache-Control"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->predefinedMetadata:Ljava/util/Map;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->predefinedMetadata:Ljava/util/Map;

    const-string v2, "Content-Length"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    .local v0, "contentLength":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 143
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 145
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getContentMD5()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->predefinedMetadata:Ljava/util/Map;

    const-string v1, "Content-MD5"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->predefinedMetadata:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 376
    iget-object v3, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->predefinedMetadata:Ljava/util/Map;

    const-string v4, "Last-Modified"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 377
    .local v1, "lastModified":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 379
    :try_start_0
    invoke-static {v1}, Lcom/xiaomi/infra/galaxy/fds/android/util/Util;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 384
    :cond_0
    :goto_0
    return-object v2

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/text/ParseException;
    goto :goto_0
.end method

.method public getUserMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->userMetadata:Ljava/util/Map;

    return-object v0
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 2
    .param p1, "cacheControl"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->predefinedMetadata:Ljava/util/Map;

    const-string v1, "Cache-Control"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentEncoding"    # Ljava/lang/String;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->predefinedMetadata:Ljava/util/Map;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    return-void
.end method

.method public setContentLength(J)V
    .locals 3
    .param p1, "contentLength"    # J

    .prologue
    .line 173
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->predefinedMetadata:Ljava/util/Map;

    const-string v1, "Content-Length"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentMD5"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->predefinedMetadata:Ljava/util/Map;

    const-string v1, "Content-MD5"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->predefinedMetadata:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 3
    .param p1, "lastModified"    # Ljava/util/Date;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;->predefinedMetadata:Ljava/util/Map;

    const-string v1, "Last-Modified"

    invoke-static {p1}, Lcom/xiaomi/infra/galaxy/fds/android/util/Util;->formatDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    return-void
.end method
