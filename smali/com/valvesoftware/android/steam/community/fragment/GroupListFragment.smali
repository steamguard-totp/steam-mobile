.class public Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "GroupListFragment.java"


# instance fields
.field private adapter:Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;

.field private final groupsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Group;",
            ">;"
        }
    .end annotation
.end field

.field private mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->groupsSet:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->getGroupsList()V

    return-void
.end method

.method static synthetic access$100(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->setSearchText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->groupsSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->display(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->hideProgressIndicator()V

    return-void
.end method

.method static synthetic access$500(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->getDetailedGroupInfo(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$600(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->notifyDataSetChanged()V

    return-void
.end method

.method private display(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Group;>;"
    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->adapter:Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;

    if-nez v0, :cond_2

    .line 123
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;-><init>(Ljava/util/List;Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->adapter:Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;

    .line 124
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->adapter:Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->adapter:Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->clear()V

    .line 127
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->adapter:Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;

    invoke-virtual {v0, p1}, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->add(Ljava/util/List;)V

    goto :goto_0
.end method

.method private getDetailedGroupInfo(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/valvesoftware/android/steam/community/model/Group;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 216
    :cond_0
    return-void

    .line 176
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v4, "steamIdToInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/valvesoftware/android/steam/community/model/Group;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/model/Group;

    .line 178
    .local v1, "g":Lcom/valvesoftware/android/steam/community/model/Group;
    iget-object v6, v1, Lcom/valvesoftware/android/steam/community/model/Group;->steamId:Ljava/lang/String;

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 181
    .end local v1    # "g":Lcom/valvesoftware/android/steam/community/model/Group;
    :cond_2
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getGroupSummariesRequestBuilder(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 182
    .local v3, "requestBuilders":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;>;"
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->showProgressIndicator()V

    .line 184
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 185
    .local v0, "callsRemaining":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    .line 186
    .local v2, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v6, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$4;

    invoke-direct {v6, p0, v4, v0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$4;-><init>(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v2, v6}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 214
    invoke-direct {p0, v2}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    goto :goto_1
.end method

.method private getGroupsList()V
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->showProgressIndicator()V

    .line 140
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getGroupListRequestBuilder(Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v0

    .line 141
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$3;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$3;-><init>(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 171
    invoke-direct {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 172
    return-void
.end method

.method private hideProgressIndicator()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->hideProgressIndicator()V

    .line 84
    :cond_0
    return-void
.end method

.method private notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 132
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->adapter:Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->adapter:Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V
    .locals 1
    .param p1, "requestBuilder"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    .prologue
    .line 219
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 220
    return-void
.end method

.method private setSearchText(Ljava/lang/String;)V
    .locals 1
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->adapter:Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->adapter:Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;

    invoke-virtual {v0, p1}, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;->setSearchString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setTitleText()V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->getBaseActivity()Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    move-result-object v0

    .line 61
    .local v0, "mainActivity":Lcom/valvesoftware/android/steam/community/activity/MainActivity;
    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const v1, 0x7f08008b

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->setTitle(I)V

    goto :goto_0
.end method

.method private setupEventListeners()V
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 88
    .local v1, "parentActivity":Landroid/app/Activity;
    instance-of v2, v1, Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    if-nez v2, :cond_0

    .line 111
    :goto_0
    return-void

    :cond_0
    move-object v0, v1

    .line 90
    check-cast v0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    .line 92
    .local v0, "mainActivity":Lcom/valvesoftware/android/steam/community/activity/MainActivity;
    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$1;

    invoke-direct {v2, p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)V

    invoke-virtual {v0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->setRefreshButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance v2, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$2;

    invoke-direct {v2, p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$2;-><init>(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)V

    invoke-virtual {v0, v2}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->setSearchTextListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method private showProgressIndicator()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->showProgressIndicator()V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method protected getBaseActivity()Lcom/valvesoftware/android/steam/community/activity/MainActivity;
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 69
    .local v0, "parentActivity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 71
    .end local v0    # "parentActivity":Landroid/app/Activity;
    :goto_0
    return-object v0

    .restart local v0    # "parentActivity":Landroid/app/Activity;
    :cond_0
    check-cast v0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    const v0, 0x7f030027

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 52
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->hideKeyboard(Landroid/app/Activity;)V

    .line 53
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->setupEventListeners()V

    .line 54
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->setTitleText()V

    .line 55
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->getBaseActivity()Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    .line 56
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->getGroupsList()V

    .line 57
    return-void
.end method
