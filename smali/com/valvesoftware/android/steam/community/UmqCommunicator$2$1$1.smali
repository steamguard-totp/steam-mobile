.class Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1$1;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "UmqCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;->onSuccess(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1$1;->this$2:Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 2
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1$1;->this$2:Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->numSwitchToPushRetries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1$1;->this$2:Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$100(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)V

    .line 109
    :cond_0
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1$1;->this$2:Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$2;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->numSwitchToPushRetries:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 102
    return-void
.end method
