.class Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "UmqCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/UmqCommunicator;->loginToUmq(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

.field final synthetic val$listener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;->val$listener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 4
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 454
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1900(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Lcom/valvesoftware/android/steam/community/LoggedInStatusChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1800(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 455
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1900(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Lcom/valvesoftware/android/steam/community/LoggedInStatusChangedListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/valvesoftware/android/steam/community/LoggedInStatusChangedListener;->loggedOff()V

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1808(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)I

    .line 458
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 459
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9$1;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9$1;-><init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 466
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1802(Lcom/valvesoftware/android/steam/community/UmqCommunicator;I)I

    .line 436
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    const-string v1, "umqid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$202(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Ljava/lang/String;)Ljava/lang/String;

    .line 437
    const-string v0, "push"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->setServerPushStateBasedOnUserPreference()V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    const-string v1, "message"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1202(Lcom/valvesoftware/android/steam/community/UmqCommunicator;J)J

    .line 441
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1100(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)V

    .line 442
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;->val$listener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;->val$listener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    invoke-virtual {v0, p1}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;->onSuccess(Lorg/json/JSONObject;)V

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1900(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Lcom/valvesoftware/android/steam/community/LoggedInStatusChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$1900(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Lcom/valvesoftware/android/steam/community/LoggedInStatusChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/valvesoftware/android/steam/community/LoggedInStatusChangedListener;->loggedIn()V

    .line 449
    :cond_2
    return-void
.end method
