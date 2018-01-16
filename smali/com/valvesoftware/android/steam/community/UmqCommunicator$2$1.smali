.class Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "UmqCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 2
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->numSwitchToPushRetries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$100(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 96
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$200(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getSwitchToPushRequestBuilder(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v0

    .line 97
    .local v0, "rb":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->numSwitchToPushRetries:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 98
    new-instance v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1$1;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1$1;-><init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 112
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$300(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 113
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$202(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    return-void
.end method
