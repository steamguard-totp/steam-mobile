.class Lcom/valvesoftware/android/steam/community/UmqCommunicator$5;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "UmqCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/UmqCommunicator;->updateOfflineChats()V
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
    .line 200
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$5;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 0
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 211
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 203
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/jsontranslators/ActiveMessageSessionsTranslator;->translateList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 204
    .local v1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/MessageSession;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/MessageSession;

    .line 205
    .local v0, "session":Lcom/valvesoftware/android/steam/community/model/MessageSession;
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$5;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    iget-object v4, v0, Lcom/valvesoftware/android/steam/community/model/MessageSession;->steamId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->updateChatMessages(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    .end local v0    # "session":Lcom/valvesoftware/android/steam/community/model/MessageSession;
    :cond_0
    return-void
.end method
