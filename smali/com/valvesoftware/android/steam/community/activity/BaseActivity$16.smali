.class Lcom/valvesoftware/android/steam/community/activity/BaseActivity$16;
.super Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getNavigationItems()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V
    .locals 6
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity;
    .param p2, "groupId"    # I
    .param p3, "iconId"    # I
    .param p4, "nameId"    # I
    .param p5, "onClickIntent"    # Landroid/content/Intent;
    .param p6, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$16;->this$0:Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    return-void
.end method


# virtual methods
.method public getNameId()I
    .locals 1

    .prologue
    .line 617
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->dontLoginToChat()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0800d0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0800cf

    goto :goto_0
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 588
    new-instance v0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$16$1;

    invoke-direct {v0, p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$16$1;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity$16;)V

    .line 607
    .local v0, "listener":Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
    invoke-static {}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->getInstance()Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    move-result-object v1

    .line 608
    .local v1, "umqCommunicator":Lcom/valvesoftware/android/steam/community/UmqCommunicator;
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->dontLoginToChat()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 609
    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->loginToUmq(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 610
    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->start()V

    .line 614
    :goto_0
    return-void

    .line 612
    :cond_0
    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->logOffFromUmq(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    goto :goto_0
.end method
