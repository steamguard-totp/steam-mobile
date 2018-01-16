.class public abstract Lcom/valvesoftware/android/steam/community/activity/BaseActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "BaseActivity.java"


# instance fields
.field protected activityLayoutId:I

.field private drawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private expandableListView:Landroid/widget/ExpandableListView;

.field private extraMenuItem:Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;

.field private limitedMenuBarSettingKey:Ljava/lang/String;

.field protected loggedInUser:Lcom/valvesoftware/android/steam/community/model/Persona;

.field m_listNotificationNavItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;",
            "Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

.field private navDrawerListAdapter:Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;

.field private navigationHeadersLayout:Landroid/widget/LinearLayout;

.field private progressView:Landroid/view/View;

.field private refreshClickListener:Landroid/view/View$OnClickListener;

.field private refreshItem:Landroid/view/MenuItem;

.field private searchTextWatcher:Landroid/text/TextWatcher;

.field private signOutHandler:Landroid/os/Handler;

.field private useLimitedMenuBar:Ljava/lang/Boolean;

.field protected final userNotificationCounts:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 84
    const v0, 0x7f03002a

    iput v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->activityLayoutId:I

    .line 87
    const-string v0, "limitedMenuBarNeeded"

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->limitedMenuBarSettingKey:Ljava/lang/String;

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->signOutHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;

    invoke-direct {v0}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->userNotificationCounts:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->useLimitedMenuBar:Ljava/lang/Boolean;

    .line 657
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->m_listNotificationNavItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->closeKeyboard()V

    return-void
.end method

.method static synthetic access$1000(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->navDrawerListAdapter:Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->signOutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;Lcom/valvesoftware/android/steam/community/model/Persona;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity;
    .param p1, "x1"    # Lcom/valvesoftware/android/steam/community/model/Persona;
    .param p2, "x2"    # Landroid/widget/ImageView;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->loadAvatar(Lcom/valvesoftware/android/steam/community/model/Persona;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Landroid/widget/ExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->expandableListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Landroid/text/TextWatcher;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->searchTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->refreshClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->extraMenuItem:Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;

    return-object v0
.end method

.method static synthetic access$600(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->refreshItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$700(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->progressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->useLimitedMenuBar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)Lcom/valvesoftware/android/steam/community/views/MenuBar;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

    return-object v0
.end method

.method private closeKeyboard()V
    .locals 4

    .prologue
    .line 811
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 812
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 813
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 814
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 816
    :cond_0
    return-void
.end method

.method private getNavigationDrawerHeader()Landroid/view/View;
    .locals 5

    .prologue
    .line 510
    const v3, 0x7f030033

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 511
    .local v1, "headerView":Landroid/view/View;
    const v3, 0x7f0e00db

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 512
    .local v0, "avatarView":Landroid/widget/ImageView;
    const v3, 0x7f0e00de

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 513
    .local v2, "nameView":Landroid/widget/TextView;
    new-instance v3, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$15;

    invoke-direct {v3, p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$15;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    invoke-direct {p0, v0, v2}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->loadUserInfo(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 521
    return-object v1
.end method

.method private getNavigationItems()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v13

    .line 526
    .local v13, "context":Landroid/content/Context;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v14, "navDrawerItems":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;>;"
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const/4 v1, -0x1

    const v2, 0x7f0200b8

    const v3, 0x7f0800ba

    invoke-static {v13}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewSteamGuard(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v0 .. v5}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const/4 v1, -0x1

    const v2, 0x7f0200b8

    const v3, 0x7f08007c

    invoke-static {v13}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewConfirmations(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v0 .. v5}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v1, 0x7f0800db

    const/4 v2, 0x0

    const v3, 0x7f0800db

    invoke-static {v13}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewFriendsList(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v0 .. v5}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p0, v6}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getNotificationNavigationItems(Landroid/support/v4/widget/DrawerLayout;)Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    move-result-object v6

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v1, 0x7f0800c2

    const/4 v2, 0x0

    const v3, 0x7f0800c1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v0 .. v5}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    .line 542
    .local v0, "storeGroup":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v2, 0x7f0800c2

    const/4 v3, 0x0

    const v4, 0x7f080072

    invoke-static {v13}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewCatalog(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v1 .. v6}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 543
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v2, 0x7f0800c2

    const/4 v3, 0x0

    const v4, 0x7f080071

    invoke-static {v13}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewShoppingCart(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v1 .. v6}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 544
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v2, 0x7f0800c2

    const/4 v3, 0x0

    const v4, 0x7f0800a8

    invoke-static {v13}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->searchSteam(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v1 .. v6}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 546
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v2, 0x7f0800c2

    const/4 v3, 0x0

    const v4, 0x7f0800ca

    invoke-static {v13}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewWishList(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v1 .. v6}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 547
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v2, 0x7f0800c2

    const/4 v3, 0x0

    const v4, 0x7f0800bf

    invoke-static {v13}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewSteamNews(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v1 .. v6}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 548
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v2, 0x7f0800b4

    const/4 v3, 0x0

    const v4, 0x7f08006a

    invoke-static {v13}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewAccountDetails(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v1 .. v6}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 549
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v2, 0x7f08007a

    const/4 v3, 0x0

    const v4, 0x7f0800dc

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v1 .. v6}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    .line 555
    .local v1, "communityGroup":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v3, 0x7f08007a

    const/4 v4, 0x0

    const v5, 0x7f0800e0

    const-string v6, "/"

    invoke-static {v13, v6}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->communityURLIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    iget-object v7, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v2 .. v7}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 556
    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v3, 0x7f08007a

    const/4 v4, 0x0

    const v5, 0x7f0800de

    const-string v6, "/discussions/"

    invoke-static {v13, v6}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->communityURLIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    iget-object v7, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v2 .. v7}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 559
    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v3, 0x7f08007a

    const/4 v4, 0x0

    const v5, 0x7f0800e1

    const-string v6, "/market/"

    invoke-static {v13, v6}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->communityURLIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    iget-object v7, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v2 .. v7}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 560
    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v3, 0x7f08007a

    const/4 v4, 0x0

    const v5, 0x7f0800dd

    const-string v6, "/?subsection=broadcasts"

    invoke-static {v13, v6}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->communityURLIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    iget-object v7, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v2 .. v7}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 561
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v3, 0x7f0800e3

    const/4 v4, 0x0

    const v5, 0x7f0800e3

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v2 .. v7}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    .line 567
    .local v2, "personalGroup":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
    new-instance v3, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v4, 0x7f0800e3

    const/4 v5, 0x0

    const v6, 0x7f0800e4

    const-string v7, "/home/"

    invoke-static {v13, v7}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->profileURLIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    iget-object v8, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v3 .. v8}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 568
    new-instance v3, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v4, 0x7f0800e3

    const/4 v5, 0x0

    const v6, 0x7f0800ea

    const-string v7, "/"

    invoke-static {v13, v7}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->profileURLIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    iget-object v8, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v3 .. v8}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 569
    new-instance v3, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v4, 0x7f0800e3

    const/4 v5, 0x0

    const v6, 0x7f0800e7

    const-string v7, "/friends/"

    invoke-static {v13, v7}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->profileURLIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    iget-object v8, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v3 .. v8}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 570
    new-instance v3, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v4, 0x7f0800e3

    const/4 v5, 0x0

    const v6, 0x7f0800e8

    const-string v7, "/groups/"

    invoke-static {v13, v7}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->profileURLIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    iget-object v8, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v3 .. v8}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 571
    new-instance v3, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v4, 0x7f0800e3

    const/4 v5, 0x0

    const v6, 0x7f0800e6

    const-string v7, "/screenshots/"

    invoke-static {v13, v7}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->profileURLIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    iget-object v8, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v3 .. v8}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 572
    new-instance v3, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v4, 0x7f0800e3

    const/4 v5, 0x0

    const v6, 0x7f0800e5

    const-string v7, "/badges/"

    invoke-static {v13, v7}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->profileURLIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    iget-object v8, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v3 .. v8}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 573
    new-instance v3, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v4, 0x7f0800e3

    const/4 v5, 0x0

    const v6, 0x7f0800e9

    const-string v7, "/inventory/"

    invoke-static {v13, v7}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->profileURLIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    iget-object v8, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v3 .. v8}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 574
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    new-instance v3, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v4, 0x7f080093

    const/4 v5, 0x0

    const v6, 0x7f080093

    invoke-static {v13}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewLibrary(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    iget-object v8, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v3 .. v8}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    .line 578
    .local v3, "library":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    new-instance v4, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v5, 0x7f0800eb

    const/4 v6, 0x0

    const v7, 0x7f0800eb

    const-string v8, "/"

    invoke-static {v13, v8}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->helpURLIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    iget-object v9, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v4 .. v9}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    .line 581
    .local v4, "support":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    new-instance v5, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v6, 0x7f0800b4

    const/4 v7, 0x0

    const v8, 0x7f0800b2

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v5 .. v10}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    .line 584
    .local v5, "settingsGroup":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
    new-instance v6, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;

    const v7, 0x7f0800b4

    const/4 v8, 0x0

    const v9, 0x7f08006c

    invoke-static {v13}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewSettings(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v10

    iget-object v11, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct/range {v6 .. v11}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;-><init>(IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {v5, v6}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 585
    new-instance v6, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$16;

    const v8, 0x7f0800b4

    const/4 v9, 0x0

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->dontLoginToChat()Z

    move-result v7

    if-eqz v7, :cond_0

    const v10, 0x7f0800d0

    :goto_0
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    move-object v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$16;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {v5, v6}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 621
    new-instance v6, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17;

    const v8, 0x7f0800b4

    const/4 v9, 0x0

    const v10, 0x7f0800b6

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    move-object v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$17;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;IIILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {v5, v6}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 651
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    return-object v14

    .line 585
    :cond_0
    const v10, 0x7f0800cf

    goto :goto_0
.end method

.method private loadAvatar(Lcom/valvesoftware/android/steam/community/model/Persona;Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "persona"    # Lcom/valvesoftware/android/steam/community/model/Persona;
    .param p2, "avatarView"    # Landroid/widget/ImageView;

    .prologue
    .line 793
    iget-object v1, p1, Lcom/valvesoftware/android/steam/community/model/Persona;->fullAvatarUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getImageUrlRequestBuilder(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/ImageRequestBuilder;

    move-result-object v0

    .line 795
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/ImageRequestBuilder;
    new-instance v1, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$19;

    invoke-direct {v1, p0, p2}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$19;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/ImageRequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ImageResponseListener;)V

    .line 807
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 808
    return-void
.end method

.method private loadUserInfo(Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "avatarView"    # Landroid/widget/ImageView;
    .param p2, "nameView"    # Landroid/widget/TextView;

    .prologue
    .line 770
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->loggedInUser:Lcom/valvesoftware/android/steam/community/model/Persona;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->loggedInUser:Lcom/valvesoftware/android/steam/community/model/Persona;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/model/Persona;->personaName:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/valvesoftware/android/steam/community/AndroidUtils;->setTextViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->loggedInUser:Lcom/valvesoftware/android/steam/community/model/Persona;

    invoke-direct {p0, v0, p1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->loadAvatar(Lcom/valvesoftware/android/steam/community/model/Persona;Landroid/widget/ImageView;)V

    .line 775
    :cond_0
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 776
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$18;

    invoke-direct {v1, p0, p2, p1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$18;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/PersonaRepository;->getDetailedPersonaInfo(Ljava/lang/String;Lcom/valvesoftware/android/steam/community/RepositoryCallback;)V

    .line 790
    :cond_1
    return-void
.end method

.method private setUseLimitedMenuBar(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 104
    const-class v2, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 105
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->limitedMenuBarSettingKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->useLimitedMenuBar:Ljava/lang/Boolean;

    .line 109
    return-void
.end method

.method private setupNavHeader()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->navigationHeadersLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 479
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->navigationHeadersLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getNavigationDrawerHeader()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 480
    return-void
.end method

.method private setupSearchBarForLimitedMenuBar(Landroid/text/TextWatcher;)V
    .locals 3
    .param p1, "searchTextWatcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 399
    if-nez p1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->setSearchClickedListener(Landroid/view/View$OnClickListener;)V

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getSearchBar()Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;

    move-result-object v0

    .line 406
    .local v0, "searchBar":Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;
    if-eqz v0, :cond_0

    .line 407
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

    new-instance v2, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$12;

    invoke-direct {v2, p0, v0, p1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$12;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;Landroid/text/TextWatcher;)V

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->setSearchClickedListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private useLimitedMenuBar()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->useLimitedMenuBar:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 97
    const-class v1, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 98
    .local v0, "sp":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->limitedMenuBarSettingKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->useLimitedMenuBar:Ljava/lang/Boolean;

    .line 100
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->useLimitedMenuBar:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected clearExtraMenuItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 435
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->extraMenuItem:Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;

    .line 436
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->useLimitedMenuBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->setExtraMenuItem(Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;)V

    .line 439
    :cond_0
    return-void
.end method

.method protected clearRefreshButtonListener()V
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->setRefreshButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    return-void
.end method

.method protected clearSearchButtonListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 446
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->searchTextWatcher:Landroid/text/TextWatcher;

    .line 447
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->setSearchClickedListener(Landroid/view/View$OnClickListener;)V

    .line 450
    :cond_0
    return-void
.end method

.method protected clearTitleLabel()V
    .locals 1

    .prologue
    .line 442
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 443
    return-void
.end method

.method protected closeDrawer()Z
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 334
    const/4 v0, 0x1

    .line 336
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getNotificationNavigationItems(Landroid/support/v4/widget/DrawerLayout;)Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;
    .locals 18
    .param p1, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;

    .prologue
    .line 663
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v16

    .line 664
    .local v16, "context":Landroid/content/Context;
    new-instance v17, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem$NavDrawerGroupItem;

    const v11, 0x7f08009c

    const v12, 0x7f08009c

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v12, v1}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem$NavDrawerGroupItem;-><init>(IILandroid/support/v4/widget/DrawerLayout;)V

    .line 665
    .local v17, "notificationGroup":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;
    sget-object v11, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationInvalid:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->registerNotificationDrawerItem(Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;)V

    .line 667
    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;

    const v3, 0x7f08009c

    const v4, 0x7f0800f5

    invoke-static/range {v16 .. v16}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->notificationCommentsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;-><init>(IILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;Z)V

    .line 668
    .local v2, "commentNotifications":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;
    sget-object v11, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationComment:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->registerNotificationDrawerItem(Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;)V

    .line 669
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 671
    new-instance v3, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;

    const v4, 0x7f08009c

    const v5, 0x7f0800f8

    invoke-static/range {v16 .. v16}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->notificationItemsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;-><init>(IILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;Z)V

    .line 672
    .local v3, "items":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;
    sget-object v11, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationItem:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v3}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->registerNotificationDrawerItem(Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;)V

    .line 673
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 675
    new-instance v4, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;

    const v5, 0x7f08009c

    const v6, 0x7f0800f7

    invoke-static/range {v16 .. v16}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->notificationInvitesIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;-><init>(IILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;Z)V

    .line 676
    .local v4, "invites":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;
    sget-object v11, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationFriendInvite:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->registerNotificationDrawerItem(Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;)V

    .line 677
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 679
    new-instance v5, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;

    const v6, 0x7f08009c

    const v7, 0x7f0800f6

    invoke-static/range {v16 .. v16}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->notificationGiftsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v8

    const/4 v10, 0x0

    move-object/from16 v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;-><init>(IILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;Z)V

    .line 680
    .local v5, "gifts":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;
    sget-object v11, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationGift:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v5}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->registerNotificationDrawerItem(Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;)V

    .line 681
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 683
    new-instance v6, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;

    const v7, 0x7f08009c

    const v8, 0x7f0800fa

    invoke-static/range {v16 .. v16}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->notificationTradeOffersIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v9

    const/4 v11, 0x1

    move-object/from16 v10, p1

    invoke-direct/range {v6 .. v11}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;-><init>(IILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;Z)V

    .line 684
    .local v6, "tradeOffers":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;
    sget-object v11, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationTradeOffer:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v6}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->registerNotificationDrawerItem(Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;)V

    .line 685
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 687
    new-instance v7, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;

    const v8, 0x7f08009c

    const v9, 0x7f0800f2

    invoke-static/range {v16 .. v16}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->viewFriendsList(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v10

    const/4 v12, 0x1

    move-object/from16 v11, p1

    invoke-direct/range {v7 .. v12}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;-><init>(IILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;Z)V

    .line 688
    .local v7, "offlineMessages":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;
    sget-object v11, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationOfflineMessage:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v7}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->registerNotificationDrawerItem(Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;)V

    .line 689
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 691
    new-instance v8, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;

    const v9, 0x7f08009c

    const v10, 0x7f0800f1

    invoke-static/range {v16 .. v16}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->notificationAsyncGameIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v11

    const/4 v13, 0x1

    move-object/from16 v12, p1

    invoke-direct/range {v8 .. v13}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;-><init>(IILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;Z)V

    .line 692
    .local v8, "asyncgame":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;
    sget-object v11, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationAsyncGameState:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v8}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->registerNotificationDrawerItem(Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;)V

    .line 693
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 695
    new-instance v9, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;

    const v10, 0x7f08009c

    const v11, 0x7f0800f9

    invoke-static/range {v16 .. v16}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->notificationModeratorMessageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v12

    const/4 v14, 0x1

    move-object/from16 v13, p1

    invoke-direct/range {v9 .. v14}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;-><init>(IILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;Z)V

    .line 696
    .local v9, "moderatormessages":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;
    sget-object v11, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationModeratorMessage:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v9}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->registerNotificationDrawerItem(Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;)V

    .line 697
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 699
    new-instance v10, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;

    const v11, 0x7f08009c

    const v12, 0x7f080150

    invoke-static/range {v16 .. v16}, Lcom/valvesoftware/android/steam/community/SteamAppIntents;->notificationHelpRequestReplyIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v13

    const/4 v15, 0x1

    move-object/from16 v14, p1

    invoke-direct/range {v10 .. v15}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;-><init>(IILandroid/content/Intent;Landroid/support/v4/widget/DrawerLayout;Z)V

    .line 700
    .local v10, "helprequestreply":Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;
    sget-object v11, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationHelpRequestReply:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v10}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->registerNotificationDrawerItem(Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;)V

    .line 701
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->add(Lcom/valvesoftware/android/steam/community/fragment/NavDrawerItem;)V

    .line 703
    return-object v17
.end method

.method protected getSearchBar()Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;
    .locals 3

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0e00f0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 463
    .local v0, "f":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;

    if-eqz v1, :cond_0

    .line 464
    check-cast v0, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;

    .line 466
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hideKeyboard()V
    .locals 3

    .prologue
    .line 457
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 458
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 459
    return-void
.end method

.method protected hideMenuAndActionBar()V
    .locals 3

    .prologue
    .line 757
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->useLimitedMenuBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 758
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->setVisibility(I)V

    .line 766
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 767
    return-void

    .line 760
    :cond_1
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 761
    .local v0, "supportActionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method public hideProgressIndicator()V
    .locals 1

    .prologue
    .line 360
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->hideProgressIndicator(I)V

    .line 361
    return-void
.end method

.method protected hideProgressIndicator(I)V
    .locals 4
    .param p1, "delayMs"    # I

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    :goto_0
    return-void

    .line 366
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 367
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$11;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$11;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected hideSearchBar()V
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getSearchBar()Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;

    move-result-object v0

    .line 472
    .local v0, "searchBar":Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;
    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;->closeSearch()V

    .line 475
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 825
    if-nez p3, :cond_1

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    sget v1, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->ringToneSelectorRequestCode:I

    if-ne p1, v1, :cond_0

    .line 828
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 829
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 830
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetSettingInfoDB()Lcom/valvesoftware/android/steam/community/SettingInfoDB;

    move-result-object v1

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/SettingInfoDB;->m_settingRing:Lcom/valvesoftware/android/steam/community/SettingInfo;

    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/valvesoftware/android/steam/community/SettingInfo;->setValueAndCommit(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 115
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v2, :cond_0

    .line 116
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->isTaskRoot()Z

    move-result v2

    if-nez v2, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->finish()V

    .line 143
    :cond_1
    :goto_0
    return-void

    .line 124
    :cond_2
    invoke-static {}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->getInstance()Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    move-result-object v2

    new-instance v3, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$1;

    invoke-direct {v3, p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$1;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)V

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->setNotificationCountUpdateListener(Lcom/valvesoftware/android/steam/community/NotificationCountUpdateListener;)V

    .line 133
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->updateLanguage()V

    .line 135
    iget v2, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->activityLayoutId:I

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->setContentView(I)V

    .line 136
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->navigationHeadersLayout:Landroid/widget/LinearLayout;

    .line 137
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->navigationHeadersLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 138
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->setupView()V

    .line 139
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 140
    new-instance v1, Lcom/valvesoftware/android/steam/community/GcmRegistrar;

    invoke-direct {v1}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;-><init>()V

    .line 141
    .local v1, "gcmRegistrar":Lcom/valvesoftware/android/steam/community/GcmRegistrar;
    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/GcmRegistrar;->registerWithGcm()V

    goto :goto_0
.end method

.method protected onNotificationCountsChanged()V
    .locals 8

    .prologue
    .line 717
    const/4 v0, 0x0

    .line 718
    .local v0, "bNeedRefresh":Z
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->userNotificationCounts:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;

    invoke-virtual {v5}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->GetTotalNotificationCount()I

    move-result v2

    .line 719
    .local v2, "cTotalNotifications":I
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->m_listNotificationNavItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 723
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v7, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationInvalid:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    if-ne v5, v7, :cond_1

    .line 724
    move v3, v2

    .line 728
    .local v3, "count":I
    :goto_1
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;

    invoke-virtual {v5}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->isHidden()Z

    move-result v1

    .line 730
    .local v1, "bWasHidden":Z
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;

    invoke-virtual {v5, v3}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->setNotificationCount(I)V

    .line 732
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;

    invoke-virtual {v5}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->isHidden()Z

    move-result v5

    if-eq v1, v5, :cond_0

    .line 733
    const/4 v0, 0x1

    goto :goto_0

    .line 726
    .end local v1    # "bWasHidden":Z
    .end local v3    # "count":I
    :cond_1
    iget-object v7, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->userNotificationCounts:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    invoke-virtual {v7, v5}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->GetNotificationCount(Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;)I

    move-result v3

    .restart local v3    # "count":I
    goto :goto_1

    .line 738
    .end local v3    # "count":I
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;>;"
    :cond_2
    if-eqz v0, :cond_3

    .line 739
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->expandableListView:Landroid/widget/ExpandableListView;

    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->navDrawerListAdapter:Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 741
    :cond_3
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v11, 0x7f0200b7

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 229
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 231
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->useLimitedMenuBar()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 232
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->searchTextWatcher:Landroid/text/TextWatcher;

    if-eqz v6, :cond_1

    .line 233
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->searchTextWatcher:Landroid/text/TextWatcher;

    invoke-direct {p0, v6}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->setupSearchBarForLimitedMenuBar(Landroid/text/TextWatcher;)V

    .line 238
    :goto_0
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

    iget-object v7, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->refreshClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->setRefreshClickedListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->extraMenuItem:Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;

    if-eqz v6, :cond_0

    .line 241
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

    iget-object v7, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->extraMenuItem:Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;

    invoke-virtual {v6, v7}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->setExtraMenuItem(Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;)V

    .line 328
    :cond_0
    :goto_1
    return v10

    .line 235
    :cond_1
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

    invoke-virtual {v6, v9}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->setSearchClickedListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 247
    :cond_2
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 249
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->searchTextWatcher:Landroid/text/TextWatcher;

    if-eqz v6, :cond_4

    .line 250
    const-string v6, ""

    invoke-interface {p1, v6}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 251
    .local v4, "searchViewMenuItem":Landroid/view/MenuItem;
    invoke-interface {v4, v11}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 252
    invoke-static {v4, v8}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 253
    invoke-static {p0}, Landroid/support/v4/widget/SearchViewCompat;->newSearchView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    .line 254
    .local v3, "searchView":Landroid/view/View;
    if-eqz v3, :cond_6

    .line 255
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "android:id/search_button"

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 256
    .local v2, "searchImgId":I
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 257
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_3

    instance-of v6, v5, Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    .line 258
    check-cast v5, Landroid/widget/ImageView;

    .end local v5    # "v":Landroid/view/View;
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    :cond_3
    new-instance v6, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$5;

    invoke-direct {v6, p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$5;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)V

    invoke-static {v3, v6}, Landroid/support/v4/widget/SearchViewCompat;->setOnQueryTextListener(Landroid/view/View;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;)V

    .line 271
    new-instance v6, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$6;

    invoke-direct {v6, p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$6;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)V

    invoke-static {v3, v6}, Landroid/support/v4/widget/SearchViewCompat;->setOnCloseListener(Landroid/view/View;Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;)V

    .line 278
    invoke-static {v4, v3}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 295
    .end local v2    # "searchImgId":I
    .end local v3    # "searchView":Landroid/view/View;
    .end local v4    # "searchViewMenuItem":Landroid/view/MenuItem;
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->refreshClickListener:Landroid/view/View$OnClickListener;

    if-eqz v6, :cond_5

    .line 296
    const-string v6, ""

    invoke-interface {p1, v6}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->refreshItem:Landroid/view/MenuItem;

    .line 297
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->refreshItem:Landroid/view/MenuItem;

    const v7, 0x7f0200b6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 298
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->refreshItem:Landroid/view/MenuItem;

    invoke-static {v6, v8}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 299
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->refreshItem:Landroid/view/MenuItem;

    new-instance v7, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$8;

    invoke-direct {v7, p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$8;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)V

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 312
    :cond_5
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->extraMenuItem:Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;

    if-eqz v6, :cond_0

    .line 313
    const-string v6, ""

    invoke-interface {p1, v6}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 314
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->extraMenuItem:Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;

    iget v6, v6, Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;->iconResourceId:I

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 315
    invoke-static {v0, v8}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 316
    new-instance v6, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$9;

    invoke-direct {v6, p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$9;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)V

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 281
    .end local v0    # "item":Landroid/view/MenuItem;
    .restart local v3    # "searchView":Landroid/view/View;
    .restart local v4    # "searchViewMenuItem":Landroid/view/MenuItem;
    :cond_6
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getSearchBar()Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;

    move-result-object v1

    .line 282
    .local v1, "searchBar":Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;
    if-eqz v1, :cond_4

    .line 283
    new-instance v6, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$7;

    invoke-direct {v6, p0, v1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$7;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;Lcom/valvesoftware/android/steam/community/fragment/SearchBarFragment;)V

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method protected refreshNavDrawer()V
    .locals 3

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->setupNavHeader()V

    .line 490
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getNavigationItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->navDrawerListAdapter:Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;

    .line 491
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->expandableListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->navDrawerListAdapter:Lcom/valvesoftware/android/steam/community/fragment/NavDrawerListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 492
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->expandableListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/valvesoftware/android/steam/community/activity/CustomOnGroupExpandListener;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->expandableListView:Landroid/widget/ExpandableListView;

    invoke-direct {v1, v2}, Lcom/valvesoftware/android/steam/community/activity/CustomOnGroupExpandListener;-><init>(Landroid/widget/ExpandableListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 493
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->expandableListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$13;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$13;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 500
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->expandableListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$14;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$14;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 507
    return-void
.end method

.method protected registerNotificationDrawerItem(Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;)V
    .locals 2
    .param p1, "eUserNotification"    # Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;
    .param p2, "item"    # Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;

    .prologue
    .line 707
    sget-object v0, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;->k_EUserNotificationInvalid:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;

    if-ne p1, v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->userNotificationCounts:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->GetTotalNotificationCount()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->setNotificationCount(I)V

    .line 712
    :goto_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->m_listNotificationNavItems:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->userNotificationCounts:Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;

    invoke-virtual {v0, p1}, Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts;->GetNotificationCount(Lcom/valvesoftware/android/steam/community/model/UserNotificationCounts$EUserNotification;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/valvesoftware/android/steam/community/fragment/NavDrawerNotificationItem;->setNotificationCount(I)V

    goto :goto_0
.end method

.method public setExtraToolbarItem(Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;)V
    .locals 2
    .param p1, "toolbarItem"    # Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->extraMenuItem:Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;

    .line 419
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->useLimitedMenuBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->extraMenuItem:Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->setExtraMenuItem(Lcom/valvesoftware/android/steam/community/views/SteamMenuItem;)V

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public setRefreshButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "refreshClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->useLimitedMenuBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

    invoke-virtual {v0, p1}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->setRefreshClickedListener(Landroid/view/View$OnClickListener;)V

    .line 386
    :goto_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->invalidateOptionsMenu()V

    .line 387
    return-void

    .line 384
    :cond_0
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->refreshClickListener:Landroid/view/View$OnClickListener;

    goto :goto_0
.end method

.method public setSearchTextListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "searchTextWatcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->searchTextWatcher:Landroid/text/TextWatcher;

    .line 391
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->useLimitedMenuBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->setupSearchBarForLimitedMenuBar(Landroid/text/TextWatcher;)V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/CharSequence;

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->useLimitedMenuBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

    invoke-virtual {v0, p1}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setupNavDrawer()V
    .locals 2

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->setupNavHeader()V

    .line 484
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->expandableListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->navigationHeadersLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 485
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->refreshNavDrawer()V

    .line 486
    return-void
.end method

.method protected setupView()V
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 147
    const v1, 0x7f0e00ec

    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 148
    const v1, 0x7f0e00f2

    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->expandableListView:Landroid/widget/ExpandableListView;

    .line 149
    const v1, 0x7f0e00ee

    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/Toolbar;

    .line 150
    .local v4, "toolbar":Landroid/support/v7/widget/Toolbar;
    const v1, 0x7f0e00ef

    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/views/MenuBar;

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

    .line 152
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 153
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030048

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->progressView:Landroid/view/View;

    .line 154
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->progressView:Landroid/view/View;

    const v2, 0x7f0e00c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    .line 155
    .local v10, "progressBar":Landroid/widget/ProgressBar;
    invoke-virtual {v10}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0c004d

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 157
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->useLimitedMenuBar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

    new-instance v2, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$2;

    invoke-direct {v2, p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$2;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)V

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->setHamburgerClickedListener(Landroid/view/View$OnClickListener;)V

    .line 201
    :goto_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->setupNavDrawer()V

    .line 203
    const v1, 0x7f0e0117

    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 205
    .local v14, "v":Landroid/view/View;
    if-eqz v14, :cond_0

    .line 206
    new-instance v1, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$4;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$4;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)V

    invoke-virtual {v14, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :cond_0
    const-string v9, "NavigationDrawerShown"

    .line 217
    .local v9, "key":Ljava/lang/String;
    const-class v1, Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 218
    .local v11, "sp":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v11, v9, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 219
    .local v13, "userHasSeenNavigationDrawer":Z
    if-nez v13, :cond_1

    .line 220
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    .line 221
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 222
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x1

    invoke-interface {v7, v9, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 223
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "key":Ljava/lang/String;
    .end local v11    # "sp":Landroid/content/SharedPreferences;
    .end local v13    # "userHasSeenNavigationDrawer":Z
    .end local v14    # "v":Landroid/view/View;
    :cond_1
    :goto_1
    return-void

    .line 170
    :cond_2
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    .line 184
    new-instance v0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$3;

    iget-object v3, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v5, 0x7f0800ce

    const v6, 0x7f0800ce

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$3;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    .line 197
    .local v0, "mDrawerToggle":Landroid/support/v7/app/ActionBarDrawerToggle;
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 198
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    goto :goto_0

    .line 171
    .end local v0    # "mDrawerToggle":Landroid/support/v7/app/ActionBarDrawerToggle;
    :catch_0
    move-exception v12

    .line 172
    .local v12, "t":Ljava/lang/Throwable;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_3

    .line 173
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->setUseLimitedMenuBar(Z)V

    .line 174
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->recreate()V

    goto :goto_1

    .line 177
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected showMenuAndActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 744
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->useLimitedMenuBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 745
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->setVisibility(I)V

    .line 753
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 754
    return-void

    .line 747
    :cond_1
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 748
    .local v0, "supportActionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 749
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    goto :goto_0
.end method

.method public showProgressIndicator()V
    .locals 3

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->useLimitedMenuBar()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

    if-eqz v2, :cond_2

    .line 344
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->menuBar:Lcom/valvesoftware/android/steam/community/views/MenuBar;

    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/views/MenuBar;->showProgressIndicator()V

    goto :goto_0

    .line 345
    :cond_2
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->refreshItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_0

    .line 346
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->refreshItem:Landroid/view/MenuItem;

    invoke-static {v2}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 347
    .local v0, "existingView":Landroid/view/View;
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/activity/BaseActivity;->progressView:Landroid/view/View;

    if-eq v0, v2, :cond_0

    .line 349
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 350
    .local v1, "h":Landroid/os/Handler;
    new-instance v2, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$10;

    invoke-direct {v2, p0}, Lcom/valvesoftware/android/steam/community/activity/BaseActivity$10;-><init>(Lcom/valvesoftware/android/steam/community/activity/BaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
