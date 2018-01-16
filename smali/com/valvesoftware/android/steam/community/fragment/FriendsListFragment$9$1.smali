.class Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;
.super Ljava/lang/Object;
.source "FriendsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;

.field final synthetic val$latestMessages:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;->val$latestMessages:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 380
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;->val$latestMessages:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/Persona;

    .line 383
    .local v0, "p":Lcom/valvesoftware/android/steam/community/model/Persona;
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;->val$latestMessages:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->steamId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 384
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;->val$latestMessages:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->steamId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/valvesoftware/android/steam/community/model/Persona;->setLastMessageTime(J)V

    .line 388
    :goto_2
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/model/Persona;->determineDisplayCategory()V

    goto :goto_1

    .line 386
    :cond_2
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/valvesoftware/android/steam/community/model/Persona;->setLastMessageTime(J)V

    goto :goto_2

    .line 391
    .end local v0    # "p":Lcom/valvesoftware/android/steam/community/model/Persona;
    :cond_3
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9$1;->this$1:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$1100(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V

    goto :goto_0
.end method
