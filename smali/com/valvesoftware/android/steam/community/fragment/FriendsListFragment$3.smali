.class Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$3;
.super Ljava/lang/Object;
.source "FriendsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->notifyItemContentsChanged()V
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
    .line 162
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$600(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$600(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
