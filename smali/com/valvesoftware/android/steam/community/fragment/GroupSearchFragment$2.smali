.class Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment$2;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "GroupSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->getDetailedGroupInfo(Ljava/util/Collection;)V
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
    .line 94
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 1
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;

    invoke-virtual {v0}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->searchComplete()V

    .line 110
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 97
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/jsontranslators/GroupTranslator;->translateList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 99
    .local v0, "currentResults":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Group;>;"
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->access$100(Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 100
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;

    invoke-virtual {v1}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->searchComplete()V

    .line 101
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment$2;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;->access$200(Lcom/valvesoftware/android/steam/community/fragment/GroupSearchFragment;)V

    .line 102
    return-void
.end method
