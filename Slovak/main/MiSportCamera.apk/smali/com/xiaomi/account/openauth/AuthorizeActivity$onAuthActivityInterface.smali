.class public interface abstract Lcom/xiaomi/account/openauth/AuthorizeActivity$onAuthActivityInterface;
.super Ljava/lang/Object;
.source "AuthorizeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/account/openauth/AuthorizeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "onAuthActivityInterface"
.end annotation


# virtual methods
.method public abstract onAuthorizeFailed(Landroid/os/Bundle;)V
.end method

.method public abstract onAuthorizeSucceeded(Landroid/os/Bundle;)V
.end method

.method public abstract onCancelled()V
.end method
