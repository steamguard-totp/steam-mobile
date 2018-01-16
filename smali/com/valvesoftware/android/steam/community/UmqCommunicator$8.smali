.class Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "UmqCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/UmqCommunicator;->pollUmqForMessageContents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 1
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1100(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)V

    .line 417
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 380
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/jsontranslators/UmqPollResultTranslator;->translate(Lorg/json/JSONObject;)Lcom/valvesoftware/android/steam/community/model/UmqPollResult;

    move-result-object v1

    .line 382
    .local v1, "umqPollResult":Lcom/valvesoftware/android/steam/community/model/UmqPollResult;
    iget-object v2, v1, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->statusCode:Lcom/valvesoftware/android/steam/community/model/PollStatus;

    sget-object v3, Lcom/valvesoftware/android/steam/community/model/PollStatus;->NOT_LOGGED_ON:Lcom/valvesoftware/android/steam/community/model/PollStatus;

    if-ne v2, v3, :cond_1

    .line 383
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$000(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->loginToUmq()V

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    iget-wide v4, v1, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->lastMessageNumber:J

    invoke-static {v2, v4, v5}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1202(Lcom/valvesoftware/android/steam/community/UmqCommunicator;J)J

    .line 391
    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->containsMessageText()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 392
    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->getAllMessagesWithText()Ljava/util/List;

    move-result-object v0

    .line 393
    .local v0, "umqMessages":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$300(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v2

    new-instance v3, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;

    invoke-direct {v3, p0, v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;-><init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 411
    .end local v0    # "umqMessages":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    :cond_2
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v2}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1100(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)V

    goto :goto_0
.end method
