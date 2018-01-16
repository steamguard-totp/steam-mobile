.class public Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;
.super Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;
.source "GroupSearchFragment.java"


# instance fields
.field private searchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->searchResults:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->getDetailedGroupInfo(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$100(Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->searchResults:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->display()V

    return-void
.end method

.method private display()V
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->searchResults:Ljava/util/List;

    if-nez v0, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentOrActivityIsActive(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->searchResults:Ljava/util/List;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/valvesoftware/android/steam/community/fragment/GroupsListAdapter;-><init>(Ljava/util/List;Landroid/support/v4/app/FragmentActivity;Z)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->adapter:Landroid/widget/BaseAdapter;

    .line 36
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private getDetailedGroupInfo(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getGroupSummariesRequestBuilder(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 91
    .local v1, "requestBuilders":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;>;"
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->searchResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 93
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    .line 94
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v3, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment$2;

    invoke-direct {v3, p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment$2;-><init>(Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;)V

    invoke-virtual {v0, v3}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 113
    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    goto :goto_0

    .line 115
    .end local v0    # "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    :cond_0
    return-void
.end method


# virtual methods
.method protected query(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 41
    iget v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->queryOffset:I

    const/16 v2, 0x32

    invoke-static {p1, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getGroupsSearchRequestBuilder(Ljava/lang/String;II)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v0

    .line 43
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment$1;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 60
    return-void
.end method

.method protected setTitleBarText(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->getBaseActivity()Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    move-result-object v0

    .line 65
    .local v0, "mainActivity":Lcom/valvesoftware/android/steam/community/activity/MainActivity;
    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected startSearch()V
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->displayInProgress()V

    .line 74
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 76
    const-string v2, "groups"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "friendsSearchString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 78
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->queryString:Ljava/lang/String;

    .line 79
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->queryString:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->setTitleBarText(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->queryString:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->query(Ljava/lang/String;)V

    .line 87
    .end local v1    # "friendsSearchString":Ljava/lang/String;
    :cond_0
    return-void
.end method
