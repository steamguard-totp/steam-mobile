.class Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;
.super Ljava/lang/Object;
.source "FriendsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->updateFriendsWithLastMessageTimes()V
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
    .line 372
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 375
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$1200(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Lcom/valvesoftware/android/steam/community/LocalDb;

    move-result-object v1

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/LocalDb;->getLatestMessagesFromAllUsers(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 377
    .local v0, "latestMessages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$1300(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;

    invoke-direct {v2, p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;Ljava/util/HashMap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 394
    return-void
.end method
