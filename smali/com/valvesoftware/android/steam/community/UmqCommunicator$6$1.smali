.class Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;
.super Ljava/lang/Object;
.source "UmqCommunicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;->onSuccess(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;

.field final synthetic val$umqMessages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;->val$umqMessages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 249
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;

    iget-object v5, v5, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v5}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$500(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Lcom/valvesoftware/android/steam/community/LocalDb;

    move-result-object v5

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;

    iget-object v7, v7, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;->val$chatPartnerSteamId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/valvesoftware/android/steam/community/LocalDb;->getMostRecentDeletionTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 251
    .local v0, "mostRecentDeletedMessageTime":J
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;->val$umqMessages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "msgIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 252
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    .line 253
    .local v4, "umqMessage":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    iget-wide v6, v4, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->utcTimeStamp:J

    cmp-long v5, v6, v0

    if-gtz v5, :cond_0

    .line 254
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 257
    .end local v4    # "umqMessage":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    :cond_1
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;->val$umqMessages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 259
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;

    iget-object v5, v5, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v5}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$500(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Lcom/valvesoftware/android/steam/community/LocalDb;

    move-result-object v5

    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;->val$umqMessages:Ljava/util/List;

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;

    iget-boolean v8, v8, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;->val$enterNewMessagesAsUnread:Z

    invoke-virtual {v5, v6, v7, v8}, Lcom/valvesoftware/android/steam/community/LocalDb;->saveMessages(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v3

    .line 260
    .local v3, "numSaved":I
    if-lez v3, :cond_2

    .line 261
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;

    iget-object v5, v5, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v5}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$700(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1$1;

    invoke-direct {v6, p0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1$1;-><init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 269
    .end local v3    # "numSaved":I
    :cond_2
    return-void
.end method
