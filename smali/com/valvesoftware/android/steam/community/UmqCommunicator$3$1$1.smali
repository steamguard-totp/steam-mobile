.class Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1$1;
.super Ljava/lang/Object;
.source "UmqCommunicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1$1;->this$2:Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1$1;->this$2:Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$600(Lcom/valvesoftware/android/steam/community/UmqCommunicator;)Lcom/valvesoftware/android/steam/community/ChatStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1$1;->this$2:Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$3;->val$message:Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    invoke-interface {v0, v1}, Lcom/valvesoftware/android/steam/community/ChatStateListener;->messageSent(Lcom/valvesoftware/android/steam/community/model/UmqMessage;)V

    .line 159
    return-void
.end method
