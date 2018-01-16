.class Lcom/valvesoftware/android/steam/community/activity/BaseActivity$4;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->setupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$4;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$4;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->access$000(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$4;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->access$200(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$4;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$4;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->visitProfileIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 211
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$4;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->access$000(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 213
    :cond_0
    return-void
.end method
