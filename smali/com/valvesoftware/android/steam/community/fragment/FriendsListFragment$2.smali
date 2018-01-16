.class Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$2;
.super Ljava/lang/Object;
.source "FriendsListFragment.java"

# interfaces
.implements Lcom/valvesoftware/android/steam/community/LoggedInStatusChangedListener;


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
    .line 117
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loggedIn()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$500(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$500(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public loggedOff()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$500(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$500(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
