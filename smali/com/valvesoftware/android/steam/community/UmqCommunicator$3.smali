.class Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "UmqCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/UmqCommunicator;->sendMessage(Lcom/valvesoftware/android/steam/community/model/UmqMessage;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

.field final synthetic val$chatPartnerSteamId:Ljava/lang/String;

.field final synthetic val$message:Lcom/valvesoftware/android/steam/community/model/UmqMessage;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Lcom/valvesoftware/android/steam/community/model/UmqMessage;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;->val$message:Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    iput-object p3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;->val$chatPartnerSteamId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 2
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$600(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Lcom/valvesoftware/android/steam/community/ChatStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$600(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Lcom/valvesoftware/android/steam/community/ChatStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;->val$message:Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    invoke-interface {v0, v1}, Lcom/valvesoftware/android/steam/community/ChatStateListener;->messageSendFailed(Lcom/valvesoftware/android/steam/community/model/UmqMessage;)V

    .line 172
    :cond_0
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$300(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    new-instance v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;

    invoke-direct {v1, p0, p1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;-><init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method
