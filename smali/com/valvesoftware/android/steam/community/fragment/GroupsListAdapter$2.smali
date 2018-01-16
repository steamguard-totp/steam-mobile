.class Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$2;
.super Ljava/lang/Object;
.source "GroupsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;-><init>(Ljava/util/List;Landroid/support/v4/app/FragmentActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;

.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$2;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    const-string v0, "0"

    .line 65
    .local v0, "clickedSteamId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;

    .line 67
    .local v3, "viewHolder":Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;
    iget-object v4, v3, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->group:Lcom/valvesoftware/android/steam/community/model/Group;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->group:Lcom/valvesoftware/android/steam/community/model/Group;

    iget-object v0, v4, Lcom/valvesoftware/android/steam/community/model/Group;->steamId:Ljava/lang/String;

    .line 69
    :cond_0
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 70
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$2;->val$activity:Landroid/support/v4/app/FragmentActivity;

    const-class v6, Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x20000000

    .line 71
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;

    .line 72
    invoke-virtual {v5}, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->getSearchString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->createGroupsSearchUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 73
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$2;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    iget-object v1, v3, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$GroupViewHolder;->group:Lcom/valvesoftware/android/steam/community/model/Group;

    .line 78
    .local v1, "entry":Lcom/valvesoftware/android/steam/community/model/Group;
    if-eqz v1, :cond_1

    .line 80
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x18000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$2;->val$activity:Landroid/support/v4/app/FragmentActivity;

    const-class v6, Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    .line 81
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, v1, Lcom/valvesoftware/android/steam/community/model/Group;->profileUrl:Ljava/lang/String;

    .line 82
    invoke-static {v5}, Lcom/valvesoftware/android/steam/community/SteamAppUri;->groupWebPage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.action.VIEW"

    .line 83
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 84
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter$2;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
