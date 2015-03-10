.class Lcom/loopj/android/http/AsyncHttpClient$3;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/AsyncHttpClient;->setEnableRedirects(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/http/AsyncHttpClient;

.field final synthetic val$enableRedirects:Z


# direct methods
.method constructor <init>(Lcom/loopj/android/http/AsyncHttpClient;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/loopj/android/http/AsyncHttpClient;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient$3;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    iput-boolean p2, p0, Lcom/loopj/android/http/AsyncHttpClient$3;->val$enableRedirects:Z

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 1
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient$3;->val$enableRedirects:Z

    return v0
.end method
