.class Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$7;
.super Ljava/lang/Object;
.source "FriendsListFragment.java"

# interfaces
.implements Lcom/valvesoftware/android/steam/community/RepositoryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->getDetailedFriendInfo(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/valvesoftware/android/steam/community/RepositoryCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/valvesoftware/android/steam/community/model/Persona;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$7;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic dataAvailable(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 312
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$7;->dataAvailable(Ljava/util/List;)V

    return-void
.end method

.method public dataAvailable(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Persona;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "friendDetails":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/Persona;

    .line 317
    .local v0, "detail":Lcom/valvesoftware/android/steam/community/model/Persona;
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$7;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v3}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->steamId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/model/Persona;

    .line 318
    .local v1, "friend":Lcom/valvesoftware/android/steam/community/model/Persona;
    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/model/Persona;->overwriteOrMergeWith(Lcom/valvesoftware/android/steam/community/model/Persona;)V

    goto :goto_0

    .line 324
    .end local v0    # "detail":Lcom/valvesoftware/android/steam/community/model/Persona;
    .end local v1    # "friend":Lcom/valvesoftware/android/steam/community/model/Persona;
    :cond_1
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$7;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$1000(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V

    .line 329
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$7;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$800(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V

    .line 330
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$7;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$1100(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V

    .line 331
    return-void
.end method
