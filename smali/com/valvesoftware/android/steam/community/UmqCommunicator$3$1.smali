.class Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;
.super Ljava/lang/Object;
.source "UmqCommunicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;->onSuccess(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;

.field final synthetic val$response:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;->val$response:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 151
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;->val$response:Lorg/json/JSONObject;

    const-string v1, "utc_timestamp"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 152
    .local v2, "timestamp":J
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;->val$message:Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    iput-wide v2, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->utcTimeStamp:J

    .line 153
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$500(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Lcom/valvesoftware/android/steam/community/LocalDb;

    move-result-object v0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;->val$message:Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->text:Ljava/lang/String;

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;

    iget-object v5, v5, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;->val$chatPartnerSteamId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/valvesoftware/android/steam/community/LocalDb;->saveSentMessage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$600(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Lcom/valvesoftware/android/steam/community/ChatStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$700(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1$1;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1$1;-><init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    :cond_0
    return-void
.end method
