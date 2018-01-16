.class Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$4;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "GroupListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->getDetailedGroupInfo(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

.field final synthetic val$callsRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$steamIdToInfoMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$4;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$4;->val$steamIdToInfoMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$4;->val$callsRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 2
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 206
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$4;->val$callsRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 207
    .local v0, "remaining":I
    if-nez v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$4;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->access$400(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)V

    .line 209
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$4;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->access$600(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)V

    .line 211
    :cond_0
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 189
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/jsontranslators/GroupTranslator;->translateList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    .line 191
    .local v2, "groupsWithDetails":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Group;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/Group;

    .line 192
    .local v0, "detail":Lcom/valvesoftware/android/steam/community/model/Group;
    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$4;->val$steamIdToInfoMap:Ljava/util/Map;

    iget-object v6, v0, Lcom/valvesoftware/android/steam/community/model/Group;->steamId:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/model/Group;

    .line 193
    .local v1, "group":Lcom/valvesoftware/android/steam/community/model/Group;
    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/model/Group;->merge(Lcom/valvesoftware/android/steam/community/model/Group;)V

    goto :goto_0

    .line 197
    .end local v0    # "detail":Lcom/valvesoftware/android/steam/community/model/Group;
    .end local v1    # "group":Lcom/valvesoftware/android/steam/community/model/Group;
    :cond_1
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$4;->val$callsRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    .line 198
    .local v3, "remaining":I
    if-nez v3, :cond_2

    .line 199
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$4;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    invoke-static {v4}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->access$400(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)V

    .line 200
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$4;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    invoke-static {v4}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->access$600(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)V

    .line 202
    :cond_2
    return-void
.end method
