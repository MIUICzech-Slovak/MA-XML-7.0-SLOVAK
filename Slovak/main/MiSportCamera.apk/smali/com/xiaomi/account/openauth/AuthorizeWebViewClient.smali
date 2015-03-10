.class public Lcom/xiaomi/account/openauth/AuthorizeWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AuthorizeWebViewClient.java"


# static fields
.field public static RESULT_CANCEL:I = 0x0

.field public static RESULT_FAIL:I = 0x0

.field public static RESULT_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AuthorizeWebViewClient"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, -0x1

    sput v0, Lcom/xiaomi/account/openauth/AuthorizeWebViewClient;->RESULT_SUCCESS:I

    .line 27
    const/4 v0, 0x1

    sput v0, Lcom/xiaomi/account/openauth/AuthorizeWebViewClient;->RESULT_FAIL:I

    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/account/openauth/AuthorizeWebViewClient;->RESULT_CANCEL:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/xiaomi/account/openauth/AuthorizeWebViewClient;->activity:Landroid/app/Activity;

    .line 35
    return-void
.end method

.method private parseUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, "b":Landroid/os/Bundle;
    if-eqz p1, :cond_1

    .line 92
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 93
    const-string v5, "UTF-8"

    .line 92
    invoke-static {v4, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 94
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 104
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_1
    :goto_1
    return-object v0

    .line 94
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    .line 95
    .local v3, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 96
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 97
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v3    # "pair":Lorg/apache/http/NameValuePair;
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/net/URISyntaxException;
    const-string v4, "openauth"

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setResultAndFinsih(ILjava/lang/String;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 75
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, p2}, Lcom/xiaomi/account/openauth/AuthorizeWebViewClient;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 77
    iget-object v2, p0, Lcom/xiaomi/account/openauth/AuthorizeWebViewClient;->activity:Landroid/app/Activity;

    invoke-virtual {v2, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 78
    iget-object v2, p0, Lcom/xiaomi/account/openauth/AuthorizeWebViewClient;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 79
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 41
    const-string v3, "AuthorizeWebViewClient"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "start to load url : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v1, -0x1

    .line 44
    .local v1, "index":I
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "currentUrl":Ljava/lang/String;
    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_4

    .line 46
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "param":Ljava/lang/String;
    const-string v3, "code="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "&code="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    :cond_0
    sget v3, Lcom/xiaomi/account/openauth/AuthorizeWebViewClient;->RESULT_SUCCESS:I

    invoke-direct {p0, v3, v0}, Lcom/xiaomi/account/openauth/AuthorizeWebViewClient;->setResultAndFinsih(ILjava/lang/String;)V

    .line 61
    .end local v2    # "param":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 49
    .restart local v2    # "param":Ljava/lang/String;
    :cond_2
    const-string v3, "error="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "&error="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    :cond_3
    sget v3, Lcom/xiaomi/account/openauth/AuthorizeWebViewClient;->RESULT_FAIL:I

    invoke-direct {p0, v3, v0}, Lcom/xiaomi/account/openauth/AuthorizeWebViewClient;->setResultAndFinsih(ILjava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v2    # "param":Ljava/lang/String;
    :cond_4
    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 53
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    .restart local v2    # "param":Ljava/lang/String;
    const-string v3, "access_token="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 55
    const-string v3, "&access_token="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 56
    :cond_5
    sget v3, Lcom/xiaomi/account/openauth/AuthorizeWebViewClient;->RESULT_SUCCESS:I

    const-string v4, "#"

    const-string v5, "?"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/xiaomi/account/openauth/AuthorizeWebViewClient;->setResultAndFinsih(ILjava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_6
    const-string v3, "error="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "&error="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    :cond_7
    sget v3, Lcom/xiaomi/account/openauth/AuthorizeWebViewClient;->RESULT_FAIL:I

    const-string v4, "#"

    const-string v5, "?"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/xiaomi/account/openauth/AuthorizeWebViewClient;->setResultAndFinsih(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
