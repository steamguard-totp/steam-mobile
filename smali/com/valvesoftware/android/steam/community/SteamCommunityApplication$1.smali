.class Lcom/valvesoftware/android/steam/community/SteamCommunityApplication$1;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "SteamCommunityApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

.field final synthetic val$originalResponseListener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication$1;->this$0:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication$1;->val$originalResponseListener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 4
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 115
    if-eqz p1, :cond_2

    .line 116
    const-string v1, "SteamApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request error HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;->getStatusCode()I

    move-result v1

    const/16 v2, 0x191

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "no authentication challenges"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    :cond_0
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->logOut()V

    .line 119
    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->mMainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    if-eqz v1, :cond_1

    .line 120
    sget-object v1, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->mMainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->finish()V

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication$1;->this$0:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->loginIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 124
    .local v0, "loginIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication$1;->this$0:Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->startActivity(Landroid/content/Intent;)V

    .line 129
    .end local v0    # "loginIntent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication$1;->val$originalResponseListener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    invoke-virtual {v1, p1}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;->onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V

    .line 130
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication$1;->val$originalResponseListener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    invoke-virtual {v0, p1}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;->onSuccess(Lorg/json/JSONObject;)V

    .line 111
    return-void
.end method
