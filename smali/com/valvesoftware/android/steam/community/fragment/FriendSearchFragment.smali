.class public Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;
.super Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;
.source "FriendSearchFragment.java"


# instance fields
.field private searchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Persona;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/BaseSearchListFragment;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->searchResults:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->getDetailedPersonaInfo(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$100(Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->searchResults:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->display()V

    return-void
.end method

.method private display()V
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->searchResults:Ljava/util/List;

    if-nez v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentOrActivityIsActive(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->searchResults:Ljava/util/List;

    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment$1;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 51
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->searchResults:Ljava/util/List;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;-><init>(Ljava/util/Collection;Landroid/support/v4/app/FragmentActivity;Z)V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->adapter:Landroid/widget/BaseAdapter;

    .line 52
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private getDetailedPersonaInfo(Ljava/util/Collection;)V
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
    .line 105
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getUserSummariesRequestBuilder(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 107
    .local v1, "requestBuilders":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;>;"
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->searchResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 109
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    .line 110
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v3, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment$3;

    invoke-direct {v3, p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment$3;-><init>(Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;)V

    invoke-virtual {v0, v3}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 129
    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    goto :goto_0

    .line 131
    .end local v0    # "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    :cond_0
    return-void
.end method


# virtual methods
.method protected query(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 83
    iget v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->queryOffset:I

    const/16 v2, 0x32

    invoke-static {p1, v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getFriendsSearchRequestBuilder(Ljava/lang/String;II)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v0

    .line 85
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment$2;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment$2;-><init>(Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 102
    return-void
.end method

.method protected setTitleBarText(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->getBaseActivity()Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    move-result-object v0

    .line 58
    .local v0, "mainActivity":Lcom/valvesoftware/android/steam/community/activity/MainActivity;
    if-nez v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b0

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
    .line 66
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->displayInProgress()V

    .line 67
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 69
    const-string v2, "friends"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "friendsSearchString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 71
    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->queryString:Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->queryString:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->setTitleBarText(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->queryString:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->query(Ljava/lang/String;)V

    .line 79
    .end local v1    # "friendsSearchString":Ljava/lang/String;
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method
