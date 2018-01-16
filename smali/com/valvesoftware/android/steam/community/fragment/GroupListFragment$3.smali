.class Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$3;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "GroupListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->getGroupsList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 1
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->access$400(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)V

    .line 168
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 144
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/jsontranslators/GroupTranslator;->translateList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 146
    .local v1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Group;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "groupsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/valvesoftware/android/steam/community/model/Group;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 147
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/valvesoftware/android/steam/community/model/Group;

    .line 148
    .local v0, "group":Lcom/valvesoftware/android/steam/community/model/Group;
    iget-object v4, v0, Lcom/valvesoftware/android/steam/community/model/Group;->relationship:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    sget-object v5, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;->Member:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    if-eq v4, v5, :cond_0

    iget-object v4, v0, Lcom/valvesoftware/android/steam/community/model/Group;->relationship:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    sget-object v5, Lcom/valvesoftware/android/steam/community/model/GroupRelationship;->Invited:Lcom/valvesoftware/android/steam/community/model/GroupRelationship;

    if-eq v4, v5, :cond_0

    .line 149
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 153
    .end local v0    # "group":Lcom/valvesoftware/android/steam/community/model/Group;
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 154
    .local v3, "mostRecentSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/valvesoftware/android/steam/community/model/Group;>;"
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    invoke-static {v4}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->access$200(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    .line 155
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    invoke-static {v4}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->access$200(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 156
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    invoke-static {v4}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->access$200(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 158
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    invoke-static {v6}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->access$200(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)Ljava/util/HashSet;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4, v5}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->access$300(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;Ljava/util/List;)V

    .line 160
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    invoke-static {v4}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->access$400(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)V

    .line 161
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment$3;->this$0:Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;

    invoke-static {v5}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->access$200(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;)Ljava/util/HashSet;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;->access$500(Lcom/valvesoftware/android/steam/community/fragment/GroupListFragment;Ljava/util/Collection;)V

    .line 162
    return-void
.end method
