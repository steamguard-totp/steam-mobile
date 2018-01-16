.class Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->loadChats()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

.field final synthetic val$h:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7;->val$h:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 319
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$1000(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Lcom/valvesoftware/android/steam/community/LocalDb;

    move-result-object v1

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$100(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/valvesoftware/android/steam/community/LocalDb;->getMessages(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 321
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7;->val$h:Landroid/os/Handler;

    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7$1;

    invoke-direct {v2, p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$7;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    return-void
.end method
