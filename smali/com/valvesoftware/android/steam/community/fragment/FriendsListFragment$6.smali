.class Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$6;
.super Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
.source "FriendsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->getFriendsList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;


# direct methods
.method constructor <init>(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$6;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V
    .locals 1
    .param p1, "errorInfo"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$6;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v0}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$800(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V

    .line 304
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 257
    invoke-static {p1}, Lcom/valvesoftware/android/steam/community/jsontranslators/PersonaTranslator;->translateList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v5

    .line 258
    .local v5, "friendsList":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 259
    .local v8, "upToDateSetOfFriendSteamIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 260
    iget-object v9, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$6;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v9}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$800(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V

    .line 298
    :goto_0
    return-void

    .line 264
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v0, "additionsList":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "friendsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 267
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/valvesoftware/android/steam/community/model/Persona;

    .line 268
    .local v3, "friend":Lcom/valvesoftware/android/steam/community/model/Persona;
    iget-object v9, v3, Lcom/valvesoftware/android/steam/community/model/Persona;->relationship:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    sget-object v10, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->blocked:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    if-eq v9, v10, :cond_1

    iget-object v9, v3, Lcom/valvesoftware/android/steam/community/model/Persona;->relationship:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    sget-object v10, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->ignored:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    if-eq v9, v10, :cond_1

    iget-object v9, v3, Lcom/valvesoftware/android/steam/community/model/Persona;->relationship:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    sget-object v10, Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;->requestinitiator:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    if-ne v9, v10, :cond_2

    .line 269
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 272
    :cond_2
    iget-object v9, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$6;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v9}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Ljava/util/Map;

    move-result-object v9

    iget-object v10, v3, Lcom/valvesoftware/android/steam/community/model/Persona;->steamId:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 273
    iget-object v9, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$6;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v9}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Ljava/util/Map;

    move-result-object v9

    iget-object v10, v3, Lcom/valvesoftware/android/steam/community/model/Persona;->steamId:Ljava/lang/String;

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :goto_2
    iget-object v9, v3, Lcom/valvesoftware/android/steam/community/model/Persona;->steamId:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 276
    :cond_3
    iget-object v9, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$6;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v9}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Ljava/util/Map;

    move-result-object v9

    iget-object v10, v3, Lcom/valvesoftware/android/steam/community/model/Persona;->steamId:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/valvesoftware/android/steam/community/model/Persona;

    .line 277
    .local v2, "existingFriendEntry":Lcom/valvesoftware/android/steam/community/model/Persona;
    iget-object v9, v3, Lcom/valvesoftware/android/steam/community/model/Persona;->relationship:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    iput-object v9, v2, Lcom/valvesoftware/android/steam/community/model/Persona;->relationship:Lcom/valvesoftware/android/steam/community/model/PersonaRelationship;

    .line 278
    invoke-virtual {v2}, Lcom/valvesoftware/android/steam/community/model/Persona;->determineDisplayCategory()V

    goto :goto_2

    .line 284
    .end local v2    # "existingFriendEntry":Lcom/valvesoftware/android/steam/community/model/Persona;
    .end local v3    # "friend":Lcom/valvesoftware/android/steam/community/model/Persona;
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v7, "removalList":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    iget-object v9, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$6;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v9}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/valvesoftware/android/steam/community/model/Persona;>;>;"
    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 287
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 288
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 289
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 294
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    :cond_6
    iget-object v9, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$6;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v9, v5, v0, v7}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$900(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;Ljava/util/Collection;Ljava/util/List;Ljava/util/List;)V

    .line 295
    iget-object v9, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$6;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    iget-object v10, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$6;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v10}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Ljava/util/Map;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$100(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;Ljava/util/Map;)V

    .line 296
    iget-object v9, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$6;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v9}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$200(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)V

    .line 297
    iget-object v9, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$6;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    iget-object v10, p0, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment$6;->this$0:Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;

    invoke-static {v10}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$000(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;->access$300(Lcom/valvesoftware/android/steam/community/fragment/FriendsListFragment;Ljava/util/Collection;)V

    goto/16 :goto_0
.end method
