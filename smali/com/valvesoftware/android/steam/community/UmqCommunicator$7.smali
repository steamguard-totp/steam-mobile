.class Lcom/valvesoftware/android/steam/community/UmqCommunicator$7;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "UmqCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/UmqCommunicator;->pollUmqStatus()V
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
    .line 300
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$7;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 2
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$7;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1000(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 344
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$7;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->loginToUmq()V

    .line 345
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 303
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/jsontranslators/UmqPollResultTranslator;->translate(Lorg/json/JSONObject;)Lcom/valvesoftware/android/steam/community/model/UmqPollResult;

    move-result-object v2

    .line 304
    .local v2, "umqPollResult":Lcom/valvesoftware/android/steam/community/model/UmqPollResult;
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$7;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1000(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 306
    iget-object v3, v2, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->statusCode:Lcom/valvesoftware/android/steam/community/model/PollStatus;

    sget-object v4, Lcom/valvesoftware/android/steam/community/model/PollStatus;->NOT_LOGGED_ON:Lcom/valvesoftware/android/steam/community/model/PollStatus;

    if-ne v3, v4, :cond_1

    .line 307
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$7;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$000(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 308
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$7;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->loginToUmq()V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v3, v2, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->statusCode:Lcom/valvesoftware/android/steam/community/model/PollStatus;

    sget-object v4, Lcom/valvesoftware/android/steam/community/model/PollStatus;->TIMEOUT:Lcom/valvesoftware/android/steam/community/model/PollStatus;

    if-ne v3, v4, :cond_2

    .line 315
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$7;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1100(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)V

    goto :goto_0

    .line 319
    :cond_2
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$7;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    iget-wide v4, v2, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->lastMessageNumber:J

    invoke-static {v3, v4, v5}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1202(Lcom/valvesoftware/android/steam/community/UmqCommunicator;J)J

    .line 320
    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->containsMessageText()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 321
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$7;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1300(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)V

    goto :goto_0

    .line 325
    :cond_3
    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->steamIdsWithPersonaStateChange()Ljava/util/List;

    move-result-object v0

    .line 326
    .local v0, "steamIdsWithPersonaStateChange":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$7;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v3, v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1400(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Ljava/util/List;)V

    .line 328
    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->steamIdsWithRelationshipChanges()Ljava/util/List;

    move-result-object v1

    .line 329
    .local v1, "steamIdsWithRelationshipChanges":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$7;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v3, v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1500(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Ljava/util/List;)V

    .line 331
    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->containsIsTypingNotification()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 332
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$7;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->getTypingNotificationMessages()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1600(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Ljava/util/List;)V

    .line 335
    :cond_4
    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->containsNotificationCountUpdate()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 336
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$7;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/model/UmqPollResult;->getNotificationCountMessage()Lcom/valvesoftware/android/steam/community/model/UmqMessageNotificationCounts;

    move-result-object v4

    iget-object v4, v4, Lcom/valvesoftware/android/steam/community/model/UmqMessageNotificationCounts;->notificationCounts:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;

    invoke-static {v3, v4}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1700(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;)V

    .line 338
    :cond_5
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$7;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$000(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$7;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1100(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)V

    goto :goto_0
.end method
