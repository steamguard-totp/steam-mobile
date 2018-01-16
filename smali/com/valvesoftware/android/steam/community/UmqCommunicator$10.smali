.class Lcom/valvesoftware/android/steam/community/UmqCommunicator$10;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "UmqCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/UmqCommunicator;->setPushInfoOnServer(ZLcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V
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
    .line 484
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$10;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$10;->val$listener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 1
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$10;->val$listener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$10;->val$listener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    invoke-virtual {v0, p1}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;->onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V

    .line 493
    :cond_0
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$10;->val$listener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$10;->val$listener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    invoke-virtual {v0, p1}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;->onSuccess(Lorg/json/JSONObject;)V

    .line 488
    :cond_0
    return-void
.end method
