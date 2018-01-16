.class public Lcom/valvesoftware/android/steam/community/webrequests/StringRequestBuilder;
.super Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
.source "StringRequestBuilder.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "isPOST"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;-><init>(Ljava/lang/String;Z)V

    .line 19
    return-void
.end method

.method private toGetRequest()Lcom/android/volley/toolbox/StringRequest;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toPostRequest()Lcom/android/volley/toolbox/StringRequest;
    .locals 4

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/webrequests/StringRequestBuilder;->getPostParameters()Ljava/util/Map;

    move-result-object v0

    .line 43
    .local v0, "postParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/valvesoftware/android/steam/community/webrequests/CustomStringPostRequest;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/webrequests/StringRequestBuilder;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/webrequests/StringRequestBuilder;->getResponseListener()Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/valvesoftware/android/steam/community/webrequests/CustomStringPostRequest;-><init>(Ljava/lang/String;Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;Ljava/util/Map;)V

    .line 44
    .local v1, "req":Lcom/valvesoftware/android/steam/community/webrequests/CustomStringPostRequest;
    return-object v1
.end method


# virtual methods
.method public toRequest()Lcom/android/volley/Request;
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/webrequests/StringRequestBuilder;->isPOST()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/StringRequestBuilder;->toPostRequest()Lcom/android/volley/toolbox/StringRequest;

    move-result-object v0

    .line 30
    .local v0, "req":Lcom/android/volley/Request;
    :goto_0
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/webrequests/StringRequestBuilder;->retryPolicy:Lcom/android/volley/RetryPolicy;

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/webrequests/StringRequestBuilder;->retryPolicy:Lcom/android/volley/RetryPolicy;

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 34
    :cond_0
    return-object v0

    .line 27
    .end local v0    # "req":Lcom/android/volley/Request;
    :cond_1
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/StringRequestBuilder;->toGetRequest()Lcom/android/volley/toolbox/StringRequest;

    move-result-object v0

    .restart local v0    # "req":Lcom/android/volley/Request;
    goto :goto_0
.end method
