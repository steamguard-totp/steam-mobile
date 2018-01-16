.class Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment$2;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "FriendSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->query(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 2
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 97
    const-string v0, "error"

    const-string v1, "error processing data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 88
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/jsontranslators/SearchResultsTranslator;->translate(Lorg/json/JSONObject;)Lcom/valvesoftware/android/steam/community/model/SearchResults;

    move-result-object v0

    .line 89
    .local v0, "searchResults":Lcom/valvesoftware/android/steam/community/model/SearchResults;
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;

    iget v2, v0, Lcom/valvesoftware/android/steam/community/model/SearchResults;->total:I

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->setNumTotalResults(I)V

    .line 90
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/model/SearchResults;->getCurrentCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->setNumCurrentResults(I)V

    .line 92
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/model/SearchResults;->getResultIds()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/FriendSearchFragment;Ljava/util/Collection;)V

    .line 93
    return-void
.end method
