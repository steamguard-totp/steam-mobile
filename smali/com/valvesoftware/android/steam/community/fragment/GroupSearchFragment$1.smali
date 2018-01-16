.class Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment$1;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "GroupSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->query(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 2
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 55
    const-string v0, "error"

    const-string v1, "error processing data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 46
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/jsontranslators/SearchResultsTranslator;->translate(Lorg/json/JSONObject;)Lcom/valvesoftware/android/steam/community/model/SearchResults;

    move-result-object v0

    .line 47
    .local v0, "searchResults":Lcom/valvesoftware/android/steam/community/model/SearchResults;
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;

    iget v2, v0, Lcom/valvesoftware/android/steam/community/model/SearchResults;->total:I

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->setNumTotalResults(I)V

    .line 48
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/model/SearchResults;->getCurrentCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->setNumCurrentResults(I)V

    .line 50
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment$1;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/model/SearchResults;->getResultIds()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;Ljava/util/Collection;)V

    .line 51
    return-void
.end method
