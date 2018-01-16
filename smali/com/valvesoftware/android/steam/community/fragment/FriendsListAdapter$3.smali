.class Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$3;
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
    .line 102
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$3;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;

    .line 107
    .local v0, "holder":Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;
    if-eqz v0, :cond_0

    .line 108
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$3;->val$activity:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, v0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->steamId:Ljava/lang/String;

    iget-object v4, v0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->personaName:Ljava/lang/String;

    iget-object v5, v0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$FriendListViewHolder;->avatarUrl:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->chatIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 109
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter$3;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 111
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
