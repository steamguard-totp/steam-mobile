.class Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "UmqCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/UmqCommunicator;->updateChatMessages(Ljava/lang/String;ZLcom/valvesoftware/android/steam/community/CompleteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

.field final synthetic val$chatPartnerSteamId:Ljava/lang/String;

.field final synthetic val$enterNewMessagesAsUnread:Z

.field final synthetic val$onCompleteCallback:Lcom/valvesoftware/android/steam/community/CompleteCallback;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Ljava/lang/String;Lcom/valvesoftware/android/steam/community/CompleteCallback;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;->val$chatPartnerSteamId:Ljava/lang/String;

    iput-object p3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;->val$onCompleteCallback:Lcom/valvesoftware/android/steam/community/CompleteCallback;

    iput-boolean p4, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;->val$enterNewMessagesAsUnread:Z

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 0
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 277
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 240
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;->val$chatPartnerSteamId:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/valvesoftware/android/steam/community/jsontranslators/UmqMessageHistoryTranslator;->translateList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 241
    .local v0, "umqMessages":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v1

    new-instance v2, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;

    invoke-direct {v2, p0, v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;-><init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
