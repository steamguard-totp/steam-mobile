.class public abstract Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private accessToken:Ljava/lang/String;

.field private final baseUrl:Ljava/lang/String;

.field private final isPOST:Z

.field private final parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

.field protected retryPolicy:Lcom/android/volley/RetryPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "isPOST"    # Z

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->parameters:Ljava/util/Map;

    .line 21
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->baseUrl:Ljava/lang/String;

    .line 22
    iput-boolean p2, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->isPOST:Z

    .line 23
    return-void
.end method

.method private getAccessTokenQueryParam()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->accessToken:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 85
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?access_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getParametersQueryString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const-string v2, ""

    .line 98
    :goto_0
    return-object v2

    .line 91
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 93
    .local v0, "parameter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 95
    .end local v0    # "parameter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 96
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 98
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static joinArgs([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v1, "result":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    :goto_0
    return-object v2

    .line 109
    :cond_0
    array-length v2, p0

    if-lez v2, :cond_1

    .line 110
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 117
    :cond_2
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 118
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public appendArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "arrayValues"    # [Ljava/lang/String;

    .prologue
    .line 47
    sget-boolean v0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "paramName argument is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 48
    :cond_0
    invoke-static {p2}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->joinArgs([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-boolean v0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Provided key is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 58
    :cond_0
    sget-boolean v0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Provided value is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public appendSteamId(Ljava/lang/String;)V
    .locals 1
    .param p1, "steamId"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v0, "steamid"

    invoke-virtual {p0, v0, p1}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFullUrl()Ljava/lang/String;
    .locals 6

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->getAccessTokenQueryParam()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "accessTokenPortion":Ljava/lang/String;
    iget-object v4, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->parameters:Ljava/util/Map;

    invoke-static {v4}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->getParametersQueryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "parametersAsString":Ljava/lang/String;
    const-string v2, ""

    .line 74
    .local v2, "parametersPortion":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    const-string v3, "?"

    .line 76
    .local v3, "parametersPrefix":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->isPOST()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, ""

    .line 79
    .end local v3    # "parametersPrefix":Ljava/lang/String;
    :cond_0
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->baseUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 75
    :cond_1
    const-string v3, "&"

    goto :goto_0

    .line 76
    .restart local v3    # "parametersPrefix":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->parameters:Ljava/util/Map;

    invoke-static {v5}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->getParametersQueryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected getPostParameters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 127
    .local v0, "postParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->accessToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 128
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->accessToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->parameters:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 132
    return-object v0
.end method

.method public getResponseListener()Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    return-object v0
.end method

.method public isPOST()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->isPOST:Z

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->baseUrl:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->accessToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V
    .locals 0
    .param p1, "responseListener"    # Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    .line 35
    return-void
.end method

.method public setRetryPolicy(Lcom/android/volley/RetryPolicy;)V
    .locals 0
    .param p1, "retryPolicy"    # Lcom/android/volley/RetryPolicy;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;->retryPolicy:Lcom/android/volley/RetryPolicy;

    .line 39
    return-void
.end method

.method public abstract toRequest()Lcom/android/volley/Request;
.end method
