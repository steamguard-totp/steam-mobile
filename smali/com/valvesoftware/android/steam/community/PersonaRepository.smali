.class public Lcom/valvesoftware/android/steam/community/PersonaRepository;
.super Ljava/lang/Object;
.source "PersonaRepository.java"


# direct methods
.method public static getDetailedPersonaInfo(Ljava/lang/String;Lcom/valvesoftware/android/steam/community/RepositoryCallback;)V
    .locals 2
    .param p0, "steamId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/valvesoftware/android/steam/community/RepositoryCallback",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Persona;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "callback":Lcom/valvesoftware/android/steam/community/RepositoryCallback;, "Lcom/valvesoftware/android/steam/community/RepositoryCallback<Lcom/valvesoftware/android/steam/community/model/Persona;>;"
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/valvesoftware/android/steam/community/PersonaRepository$2;

    invoke-direct {v1, p1}, Lcom/valvesoftware/android/steam/community/PersonaRepository$2;-><init>(Lcom/valvesoftware/android/steam/community/RepositoryCallback;)V

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/PersonaRepository;->getDetailedPersonaInfo(Ljava/util/Collection;Lcom/valvesoftware/android/steam/community/RepositoryCallback;)V

    .line 71
    return-void
.end method

.method public static getDetailedPersonaInfo(Ljava/util/Collection;Lcom/valvesoftware/android/steam/community/RepositoryCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/valvesoftware/android/steam/community/RepositoryCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/valvesoftware/android/steam/community/model/Persona;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "steamIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p1, "multipleResponseCallback":Lcom/valvesoftware/android/steam/community/RepositoryCallback;, "Lcom/valvesoftware/android/steam/community/RepositoryCallback<Ljava/util/List<Lcom/valvesoftware/android/steam/community/model/Persona;>;>;"
    invoke-static {p0}, Lcom/valvesoftware/android/steam/community/webrequests/Endpoints;->getUserSummariesRequestBuilder(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 25
    .local v2, "requestBuilders":Ljava/util/List;, "Ljava/util/List<Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 27
    .local v0, "callsRemaining":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    .line 28
    .local v1, "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    new-instance v4, Lcom/valvesoftware/android/steam/community/PersonaRepository$1;

    invoke-direct {v4, v0, p1}, Lcom/valvesoftware/android/steam/community/PersonaRepository$1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/valvesoftware/android/steam/community/RepositoryCallback;)V

    invoke-virtual {v1, v4}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 52
    invoke-static {v1}, Lcom/valvesoftware/android/steam/community/PersonaRepository;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    goto :goto_0

    .line 54
    .end local v1    # "requestBuilder":Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
    :cond_0
    return-void
.end method

.method private static sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V
    .locals 1
    .param p0, "requestBuilder"    # Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    .prologue
    .line 103
    invoke-static {}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->GetInstance()Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/valvesoftware/android/steam/community/SteamCommunityApplication;->sendRequest(Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;)V

    .line 104
    return-void
.end method
