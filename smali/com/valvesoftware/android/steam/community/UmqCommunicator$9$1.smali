.class Lcom/valvesoftware/android/steam/community/UmqCommunicator$9$1;
.super Ljava/lang/Object;
.source "UmqCommunicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;->onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9$1;->this$1:Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/UmqCommunicator$9;->this$0:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->loginToUmq()V

    .line 463
    return-void
.end method
