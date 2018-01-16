.class Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1$1;
.super Ljava/lang/Object;
.source "UmqCommunicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1$1;->this$2:Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1$1;->this$2:Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1$1;->this$2:Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/UmqCommunicator$6$1;->val$umqMessages:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->access$900(Lcom/valvesoftware/android/steam/community/UmqCommunicator;Ljava/util/List;)V

    .line 265
    return-void
.end method
