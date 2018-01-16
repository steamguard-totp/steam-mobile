.class Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$1;
.super Ljava/lang/Object;
.source "FriendsListFragment.java"

# interfaces
.implements Lcom/valvesoftware/android/steam/community/ChatStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTypingMessageReceived(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "isTypingNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    return-void
.end method

.method public listenerWillHandleAllVisualChatNotifications()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public listenerWillHandleVisualChatNotificationForSteamId(Ljava/lang/String;)Z
    .locals 1
    .param p1, "steamId"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$1;->listenerWillHandleAllVisualChatNotifications()Z

    move-result v0

    return v0
.end method

.method public messageSendFailed(Lcom/valvesoftware/android/steam/community/model/UmqMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    .prologue
    .line 111
    return-void
.end method

.method public messageSent(Lcom/valvesoftware/android/steam/community/model/UmqMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    .prologue
    .line 108
    return-void
.end method

.method public newMessagesSaved(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UmqMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "umqMessages":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$100(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;Ljava/util/Map;)V

    .line 92
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$200(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V

    goto :goto_0
.end method

.method public personaStateChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "steamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v0, p1}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$300(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public relationshipStateChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "steamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$400(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V

    goto :goto_0
.end method
