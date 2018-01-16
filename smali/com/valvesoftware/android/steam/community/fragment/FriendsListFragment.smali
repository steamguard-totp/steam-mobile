.class public Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "FriendsListFragment.java"


# instance fields
.field private adapter:Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;

.field private chatIsOfflineNotice:Landroid/view/View;

.field private localDb:Lcom/valvesoftware/android/steam/community/LocalDb;

.field private mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

.field private searchString:Ljava/lang/String;

.field private final steamIdToFriendsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/valvesoftware/android/steam/community/model/Persona;",
            ">;"
        }
    .end annotation
.end field

.field private final uiThreadHandler:Landroid/os/Handler;

.field private umqCommunicator:Lcom/valvesoftware/android/steam/community/UmqCommunicator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->steamIdToFriendsMap:Ljava/util/Map;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->uiThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->steamIdToFriendsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->updateUnreadMessageCountsForEachFriend(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->cacheFriends()V

    return-void
.end method

.method static synthetic access$1100(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->notifyItemContentsChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Lcom/valvesoftware/android/steam/community/LocalDb;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->localDb:Lcom/valvesoftware/android/steam/community/LocalDb;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->uiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->updateFriendsWithLastMessageTimes()V

    return-void
.end method

.method static synthetic access$300(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->getDetailedFriendInfo(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$400(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->getFriendsList()V

    return-void
.end method

.method static synthetic access$500(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->chatIsOfflineNotice:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->adapter:Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->setSearchText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;Ljava/util/Collection;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->display(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private cacheFriends()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->steamData:Lcom/valvesoftware/android/steam/community/activity/MainActivity$SteamData;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->steamData:Lcom/valvesoftware/android/steam/community/activity/MainActivity$SteamData;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->steamIdToFriendsMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity$SteamData;->saveFriends(Ljava/util/Map;)V

    .line 340
    :cond_0
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$8;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$8;-><init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 352
    return-void
.end method

.method private display(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Persona;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Persona;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Persona;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "fullList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    .local p2, "additions":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    .local p3, "removals":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    if-nez p1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 203
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->adapter:Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;

    if-nez v1, :cond_2

    .line 208
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;

    invoke-direct {v1, p1, v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;-><init>(Ljava/util/Collection;Landroid/support/v4/app/FragmentActivity;)V

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->adapter:Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;

    .line 209
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->adapter:Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->searchString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->setSearchString(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->adapter:Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;

    invoke-virtual {p0, v1}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 214
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 215
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->adapter:Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;

    invoke-virtual {v1, p2}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->add(Ljava/util/List;)V

    .line 218
    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 219
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->adapter:Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;

    invoke-virtual {v1, p3}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->remove(Ljava/util/List;)V

    .line 222
    :cond_4
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->notifyItemContentsChanged()V

    goto :goto_0
.end method

.method private getDetailedFriendInfo(Ljava/util/Collection;)V
    .locals 1
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
    .line 311
    .local p1, "steamIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->showProgressDialog()V

    .line 312
    new-instance v0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$7;

    invoke-direct {v0, p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$7;-><init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V

    invoke-static {p1, v0}, Lcom/valvesoftware/android/steam/community/PersonaRepository;->getDetailedPersonaInfo(Ljava/util/Collection;Lcom/valvesoftware/android/steam/community/RepositoryCallback;)V

    .line 333
    return-void
.end method

.method private getFriendsList()V
    .locals 3

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->showProgressDialog()V

    .line 253
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->getLoginSteamID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "friend"

    invoke-static {v1, v2}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getFriendListRequestBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    move-result-object v0

    .line 254
    .local v0, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$6;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$6;-><init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 307
    invoke-direct {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 308
    return-void
.end method

.method private hideProgressDialog()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->hideProgressIndicator()V

    .line 183
    :cond_0
    return-void
.end method

.method private loadCachedFriendsList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 355
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->steamIdToFriendsMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->steamIdToFriendsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    iget-object v0, v0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->steamData:Lcom/valvesoftware/android/steam/community/activity/MainActivity$SteamData;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->steamIdToFriendsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    iget-object v1, v1, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->steamData:Lcom/valvesoftware/android/steam/community/activity/MainActivity$SteamData;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity$SteamData;->getSteamIdToFriendsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->steamIdToFriendsMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->steamIdToFriendsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0, v2, v2}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->display(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;)V

    .line 363
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->steamIdToFriendsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->getDetailedFriendInfo(Ljava/util/Collection;)V

    .line 365
    :cond_2
    return-void
.end method

.method private notifyItemContentsChanged()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->uiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$3;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$3;-><init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    return-void
.end method

.method private sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V
    .locals 1
    .param p1, "requestBuilder"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    .prologue
    .line 368
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 369
    return-void
.end method

.method private setSearchText(Ljava/lang/String;)V
    .locals 1
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->searchString:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->adapter:Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->adapter:Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;

    invoke-virtual {v0, p1}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListAdapter;->setSearchString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setTitleText()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    if-nez v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->fragmentIsActive(Landroid/support/v4/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    const v1, 0x7f080086

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->setTitle(I)V

    goto :goto_0
.end method

.method private setupEventListeners()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$4;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$4;-><init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->setRefreshButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$5;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$5;-><init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->setSearchTextListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method private showProgressDialog()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/activity/MainActivity;->showProgressIndicator()V

    .line 177
    :cond_0
    return-void
.end method

.method private updateFriendsWithLastMessageTimes()V
    .locals 2

    .prologue
    .line 372
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$9;-><init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 396
    return-void
.end method

.method private updateUnreadMessageCountsForEachFriend(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/valvesoftware/android/steam/community/model/Persona;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, "friends":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10;

    invoke-direct {v1, p0, p1}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$10;-><init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method protected getBaseActivity()Lcom/valvesoftware/android/steam/community/activity/MainActivity;
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 156
    .local v0, "parentActivity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 158
    .end local v0    # "parentActivity":Landroid/app/Activity;
    :goto_0
    return-object v0

    .restart local v0    # "parentActivity":Landroid/app/Activity;
    :cond_0
    check-cast v0, Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0e00c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->chatIsOfflineNotice:Landroid/view/View;

    .line 62
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 68
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->getBaseActivity()Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->mainActivity:Lcom/valvesoftware/android/steam/community/activity/MainActivity;

    .line 69
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/activity/ActivityHelper;->hideKeyboard(Landroid/app/Activity;)V

    .line 70
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->setupEventListeners()V

    .line 71
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->setTitleText()V

    .line 72
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->getLocalDb()Lcom/valvesoftware/android/steam/community/LocalDb;

    move-result-object v0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->localDb:Lcom/valvesoftware/android/steam/community/LocalDb;

    .line 73
    invoke-static {}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->getInstance()Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    move-result-object v0

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->umqCommunicator:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    .line 74
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->umqCommunicator:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$1;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$1;-><init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->setChatStateListener(Lcom/valvesoftware/android/steam/community/ChatStateListener;)V

    .line 117
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->umqCommunicator:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    new-instance v1, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$2;

    invoke-direct {v1, p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$2;-><init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V

    invoke-virtual {v0, v1}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->setChatLoggedInStatusChangedListener(Lcom/valvesoftware/android/steam/community/LoggedInStatusChangedListener;)V

    .line 133
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->showProgressDialog()V

    .line 135
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->loadCachedFriendsList()V

    .line 136
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->getFriendsList()V

    .line 138
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->umqCommunicator:Lcom/valvesoftware/android/steam/community/UmqCommunicator;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/UmqCommunicator;->updateOfflineChats()V

    .line 140
    invoke-static {}, Lcom/valvesoftware/android/steam/community/LoggedInUserAccountInfo;->dontLoginToChat()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->chatIsOfflineNotice:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :goto_0
    invoke-static {}, Lcom/valvesoftware/android/steam/community/NotificationSender;->getInstance()Lcom/valvesoftware/android/steam/community/NotificationSender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/NotificationSender;->clearRecentNotificationsTracking()V

    .line 147
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->chatIsOfflineNotice:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStop()V

    .line 152
    return-void
.end method
