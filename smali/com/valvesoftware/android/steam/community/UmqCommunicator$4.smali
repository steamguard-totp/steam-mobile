.class Lcom/valvesoftware/android/steam/community/UmqCommunicator$4;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "UmqCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/UmqCommunicator;->sendTypingNotification(Ljava/lang/String;)V
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
    .line 183
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$4;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 2
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$4;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$802(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Z)Z

    .line 192
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$4;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$802(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Z)Z

    .line 187
    return-void
.end method
