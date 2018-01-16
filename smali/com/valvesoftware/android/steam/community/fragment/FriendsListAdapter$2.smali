.class Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$2;
.super Ljava/lang/Object;
.source "FriendsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;-><init>(Ljava/util/Collection;Landroid/support/v4/app/FragmentActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;

.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$2;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 79
    .local v2, "tag":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 80
    .local v1, "steamId":Ljava/lang/String;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 81
    check-cast v1, Ljava/lang/String;

    .line 84
    :cond_0
    instance-of v3, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;

    if-eqz v3, :cond_1

    .line 85
    check-cast v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;

    .end local v2    # "tag":Ljava/lang/Object;
    iget-object v1, v2, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->steamId:Ljava/lang/String;

    .line 88
    :cond_1
    if-nez v1, :cond_2

    .line 99
    :goto_0
    return-void

    .line 90
    :cond_2
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$2;->val$activity:Landroid/support/v4/app/FragmentActivity;

    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;

    invoke-virtual {v4}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->getSearchString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->searchFriendIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->setSearchString(Ljava/lang/String;)V

    .line 93
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$2;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 95
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$2;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3, v1}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->visitProfileIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 96
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$2;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
