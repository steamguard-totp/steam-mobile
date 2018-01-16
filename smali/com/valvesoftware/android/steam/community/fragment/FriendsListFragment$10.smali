.class Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10;
.super Ljava/lang/Object;
.source "FriendsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->updateUnreadMessageCountsForEachFriend(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

.field final synthetic val$friends:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10;->val$friends:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 404
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$1200(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Lcom/valvesoftware/android/steam/community/LocalDb;

    move-result-object v1

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/LocalDb;->getAllUnreadMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 406
    .local v0, "unreadMessages":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/UmqMessage;>;"
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$1300(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10$1;

    invoke-direct {v2, p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 426
    return-void
.end method
