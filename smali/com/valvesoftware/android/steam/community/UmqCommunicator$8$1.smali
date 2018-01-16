.class Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;
.super Ljava/lang/Object;
.source "UmqCommunicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;->onSuccess(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;

.field final synthetic val$umqMessages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;->val$umqMessages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 396
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$500(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Lcom/valvesoftware/android/steam/community/LocalDb;

    move-result-object v0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;->val$umqMessages:Ljava/util/List;

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/valvesoftware/android/steam/community/LocalDb;->saveMessages(Ljava/util/List;Ljava/lang/String;Z)I

    .line 397
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$700(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1$1;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1$1;-><init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator$8$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    return-void
.end method
