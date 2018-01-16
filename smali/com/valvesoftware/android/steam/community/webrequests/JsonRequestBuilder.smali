.class Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;
.super Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
.source "JsonRequestBuilder.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "isPOST"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;-><init>(Ljava/lang/String;Z)V

    .line 20
    return-void
.end method

.method private toGetRequest()Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 4

    .prologue
    .line 39
    new-instance v0, Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonGetRequest;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->getFullUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->getResponseListener()Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonGetRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    return-object v0
.end method

.method private toPostRequest()Lcom/android/volley/toolbox/JsonObjectRequest;
    .locals 5

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->getPostParameters()Ljava/util/Map;

    move-result-object v0

    .line 44
    .local v0, "postParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonPostRequest;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->getResponseListener()Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonPostRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;Ljava/util/Map;)V

    .line 45
    .local v1, "req":Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonPostRequest;
    return-object v1
.end method


# virtual methods
.method public toRequest()Lcom/android/volley/Request;
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->isPOST()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->toPostRequest()Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 31
    .local v0, "req":Lcom/android/volley/Request;
    :goto_0
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->retryPolicy:Lcom/android/volley/RetryPolicy;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->retryPolicy:Lcom/android/volley/RetryPolicy;

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 35
    :cond_0
    return-object v0

    .line 28
    .end local v0    # "req":Lcom/android/volley/Request;
    :cond_1
    invoke-direct {p0}, Lcom/valvesoftware/android/steam/community/webrequests/JsonRequestBuilder;->toGetRequest()Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .restart local v0    # "req":Lcom/android/volley/Request;
    goto :goto_0
.end method
