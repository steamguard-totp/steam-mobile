.class Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Lcom/valvesoftware/android/steam/community/ChatStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTypingMessageReceived(Ljava/util/List;)V
    .locals 6
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
    .line 158
    .local p1, "isTypingNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    const/4 v0, 0x0

    .line 159
    .local v0, "chatPartnerIsTyping":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    .line 160
    .local v2, "notification":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    iget-object v4, v2, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->chatPartnerSteamId:Ljava/lang/String;

    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v5}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$100(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    const/4 v0, 0x1

    goto :goto_0

    .line 165
    .end local v2    # "notification":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$500(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 166
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$500(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->showIsTyping()V

    .line 167
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 168
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2$1;

    invoke-direct {v3, p0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;)V

    const-wide/16 v4, 0xfa0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_2
    return-void
.end method

.method public listenerWillHandleAllVisualChatNotifications()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public listenerWillHandleVisualChatNotificationForSteamId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "steamId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$100(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public messageSendFailed(Lcom/valvesoftware/android/steam/community/model/UmqMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    .prologue
    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->hadSendError:Z

    .line 150
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$400(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;

    move-result-object v0

    .line 151
    .local v0, "chatViewAdapter":Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatViewAdapter;->notifyDataSetChanged()V

    .line 154
    :cond_0
    return-void
.end method

.method public messageSent(Lcom/valvesoftware/android/steam/community/model/UmqMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    .prologue
    .line 139
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$300(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v1, v0}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$200(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;Ljava/util/List;)V

    goto :goto_0
.end method

.method public newMessagesSaved(Ljava/util/List;)V
    .locals 1
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
    .line 133
    .local p1, "umqMessages":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;

    invoke-static {v0, p1}, Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;->access$200(Lcom/valvesoftware/android/steam/community/fragment/ChatFragment;Ljava/util/List;)V

    goto :goto_0
.end method

.method public personaStateChanged(Ljava/util/List;)V
    .locals 0
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
    .line 179
    .local p1, "steamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public relationshipStateChanged(Ljava/util/List;)V
    .locals 0
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
    .line 183
    .local p1, "steamIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method
