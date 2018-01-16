.class Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10$1;
.super Ljava/lang/Object;
.source "FriendsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10;

.field final synthetic val$unreadMessages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10$1;->val$unreadMessages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 409
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10;

    iget-object v3, v3, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10;->val$friends:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/Persona;

    .line 410
    .local v0, "f":Lcom/valvesoftware/android/steam/community/model/Persona;
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/model/Persona;->clearUnreadMessageCount()V

    goto :goto_0

    .line 413
    .end local v0    # "f":Lcom/valvesoftware/android/steam/community/model/Persona;
    :cond_0
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10$1;->val$unreadMessages:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 414
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10$1;->val$unreadMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/valvesoftware/android/steam/community/model/UmqMessage;

    .line 415
    .local v2, "message":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10;

    iget-object v4, v4, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10;->val$friends:Ljava/util/Map;

    iget-object v5, v2, Lcom/valvesoftware/android/steam/community/model/UmqMessage;->chatPartnerSteamId:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/model/Persona;

    .line 416
    .local v1, "friend":Lcom/valvesoftware/android/steam/community/model/Persona;
    if-eqz v1, :cond_1

    .line 417
    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/model/Persona;->incrementUnreadMessageCount()V

    goto :goto_1

    .line 422
    .end local v1    # "friend":Lcom/valvesoftware/android/steam/community/model/Persona;
    .end local v2    # "message":Lcom/valvesoftware/android/steam/community/model/UmqMessage;
    :cond_2
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10;

    iget-object v3, v3, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$1100(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V

    .line 423
    return-void
.end method
