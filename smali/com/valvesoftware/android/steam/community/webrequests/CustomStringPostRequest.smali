.class Lcom/valvesoftware/android/steam/community/webrequests/CustomStringPostRequest;
.super Lcom/android/volley/toolbox/StringRequest;
.source "StringRequestBuilder.java"


# instance fields
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

.field private final responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;Ljava/util/Map;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseListener"    # Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 56
    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomStringPostRequest;->responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    .line 57
    iput-object p3, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomStringPostRequest;->parameters:Ljava/util/Map;

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/webrequests/CustomStringPostRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 59
    return-void
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomStringPostRequest;->responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    if-nez v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-nez v1, :cond_1

    .line 82
    new-instance v0, Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;-><init>(ILjava/util/Map;[BLjava/lang/String;)V

    .line 86
    .local v0, "errorInfo":Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;
    :goto_1
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomStringPostRequest;->responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;->onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V

    goto :goto_0

    .line 84
    .end local v0    # "errorInfo":Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;
    :cond_1
    new-instance v0, Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    iget-object v1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v1, v1, Lcom/android/volley/NetworkResponse;->statusCode:I

    iget-object v2, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v2, v2, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v3, v3, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;-><init>(ILjava/util/Map;[BLjava/lang/String;)V

    .restart local v0    # "errorInfo":Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;
    goto :goto_1
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/webrequests/CustomStringPostRequest;->deliverResponse(Ljava/lang/String;)V

    return-void
.end method

.method protected deliverResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomStringPostRequest;->responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    if-eqz v2, :cond_0

    .line 64
    if-eqz p1, :cond_1

    .line 65
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 67
    .local v1, "jsonifiedResponse":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "response"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_1
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomStringPostRequest;->responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    invoke-virtual {v2, v1}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;->onSuccess(Lorg/json/JSONObject;)V

    .line 74
    .end local v1    # "jsonifiedResponse":Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 64
    :cond_1
    const-string p1, ""

    goto :goto_0

    .line 68
    .restart local v1    # "jsonifiedResponse":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 70
    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomStringPostRequest;->responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;->onSuccess(Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method public getBody()[B
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomStringPostRequest;->parameters:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomStringPostRequest;->parameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomStringPostRequest;->parameters:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/webrequests/CustomStringPostRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/WebRequestUtilities;->encodePostParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
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
    .line 92
    invoke-static {}, Lcom/valvesoftware/android/steam/community/webrequests/WebRequestUtilities;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
