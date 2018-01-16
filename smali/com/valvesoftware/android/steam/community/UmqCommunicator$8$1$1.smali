.class Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1$1;
.super Ljava/lang/Object;
.source "UmqCommunicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1$1;->this$2:Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 400
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1$1;->this$2:Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1$1;->this$2:Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;->val$umqMessages:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$900(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Ljava/util/List;)V

    .line 401
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1$1;->this$2:Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;->val$umqMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    .line 402
    .local v0, "message":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1$1;->this$2:Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;

    iget-object v2, v2, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->chatPartnerSteamId:Ljava/lang/String;

    iget-object v4, v0, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->sendNoticesAsNeeded(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 404
    .end local v0    # "message":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    :cond_0
    return-void
.end method
