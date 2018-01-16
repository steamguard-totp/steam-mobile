.class final Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$1;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "LoggedInUserAccountInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->reacquireWGTokenFromServer(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$steamWebView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/views/SteamWebView;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$1;->val$steamWebView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 0
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 341
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 322
    const-string v2, "token"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "wgtoken":Ljava/lang/String;
    const-string v2, "token_secure"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "wgtoken_secure":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 327
    :cond_0
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->logOut()V

    .line 328
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->access$002(J)J

    .line 336
    :goto_0
    return-void

    .line 332
    :cond_1
    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->updateWGToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->access$002(J)J

    .line 334
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo$1;->val$steamWebView:Lcom/valvesoftware/android/steam/community/views/SteamWebView;

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/views/SteamWebView;->reload()V

    goto :goto_0
.end method
