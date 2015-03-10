.class public Lcom/xiaomi/account/openauth/AuthorizeActivity;
.super Landroid/app/Activity;
.source "AuthorizeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/account/openauth/AuthorizeActivity$onAuthActivityInterface;
    }
.end annotation


# static fields
.field private static final AUTHORIZE_PATH:Ljava/lang/String;

.field private static final LOCALE_KEY_IN_URL:Ljava/lang/String; = "_locale"

.field public static RESULT_CANCEL:I = 0x0

.field public static RESULT_FAIL:I = 0x0

.field public static RESULT_SUCCESS:I = 0x0

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static locale2UrlParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSettings:Landroid/webkit/WebSettings;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->locale2UrlParamMap:Ljava/util/HashMap;

    .line 40
    sget-object v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->locale2UrlParamMap:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string v2, "zh_CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->locale2UrlParamMap:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "zh_CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->locale2UrlParamMap:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    const-string v2, "zh_CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->locale2UrlParamMap:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    const-string v2, "zh_TW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->locale2UrlParamMap:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    const-string v2, "zh_TW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->locale2UrlParamMap:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "en"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->locale2UrlParamMap:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v2, "en"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->locale2UrlParamMap:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "en"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/account/openauth/AuthorizeHelper;->OAUTH2_HOST:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    const-string v1, "/oauth2/authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->AUTHORIZE_PATH:Ljava/lang/String;

    .line 57
    sget v0, Lcom/xiaomi/account/openauth/AuthorizeWebViewClient;->RESULT_SUCCESS:I

    sput v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->RESULT_SUCCESS:I

    .line 59
    sget v0, Lcom/xiaomi/account/openauth/AuthorizeWebViewClient;->RESULT_FAIL:I

    sput v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->RESULT_FAIL:I

    .line 61
    sget v0, Lcom/xiaomi/account/openauth/AuthorizeWebViewClient;->RESULT_CANCEL:I

    sput v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->RESULT_CANCEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private addLocaleIfNeeded(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 175
    if-eqz p1, :cond_0

    const-string v1, "_locale"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-object p1

    .line 179
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 181
    .local v0, "defaultLocale":Ljava/util/Locale;
    sget-object v1, Lcom/xiaomi/account/openauth/AuthorizeActivity;->locale2UrlParamMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const-string v2, "_locale"

    sget-object v1, Lcom/xiaomi/account/openauth/AuthorizeActivity;->locale2UrlParamMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, -0x2

    .line 94
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "linear":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 96
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 98
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mWebView:Landroid/webkit/WebView;

    .line 99
    iget-object v1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 100
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    return-object v0
.end method

.method private parseBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .param p1, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    const-string v3, ""

    .line 163
    :goto_0
    return-object v3

    .line 156
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 163
    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 158
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 161
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v4, v0, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private parseUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v0, "b":Landroid/os/Bundle;
    if-eqz p1, :cond_1

    .line 131
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 132
    const-string v5, "UTF-8"

    .line 131
    invoke-static {v4, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 133
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 143
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_1
    :goto_1
    return-object v0

    .line 133
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    .line 134
    .local v3, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 135
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 136
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v3    # "pair":Lorg/apache/http/NameValuePair;
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/net/URISyntaxException;
    const-string v4, "openauth"

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setResultAndFinsih(ILjava/lang/String;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, p2}, Lcom/xiaomi/account/openauth/AuthorizeActivity;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, p1, v1}, Lcom/xiaomi/account/openauth/AuthorizeActivity;->setResult(ILandroid/content/Intent;)V

    .line 118
    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivity;->finish()V

    .line 119
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    sget v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->RESULT_CANCEL:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/account/openauth/AuthorizeActivity;->setResultAndFinsih(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-direct {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivity;->createView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaomi/account/openauth/AuthorizeActivity;->setContentView(Landroid/view/View;)V

    .line 74
    iget-object v2, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mSettings:Landroid/webkit/WebSettings;

    .line 76
    iget-object v2, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mSettings:Landroid/webkit/WebSettings;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 79
    iget-object v2, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 80
    iget-object v2, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/AuthorizeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "url_param"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 83
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/xiaomi/account/openauth/AuthorizeActivity;->addLocaleIfNeeded(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaomi/account/openauth/AuthorizeActivity;->AUTHORIZE_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/xiaomi/account/openauth/AuthorizeActivity;->parseBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mUrl:Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/xiaomi/account/openauth/AuthorizeWebViewClientFactory;->getInstance()Lcom/xiaomi/account/openauth/AuthorizeWebViewClientFactory;

    move-result-object v2

    .line 89
    invoke-virtual {v2, p0}, Lcom/xiaomi/account/openauth/AuthorizeWebViewClientFactory;->newWebViewClient(Landroid/app/Activity;)Landroid/webkit/WebViewClient;

    move-result-object v1

    .line 90
    .local v1, "client":Landroid/webkit/WebViewClient;
    iget-object v2, p0, Lcom/xiaomi/account/openauth/AuthorizeActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 91
    return-void
.end method
