.class abstract Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonRequest;
.super Lcom/android/volley/toolbox/JsonObjectRequest;
.source "JsonRequestBuilder.java"


# instance fields
.field private final responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V
    .locals 6
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "jsonRequest"    # Lorg/json/JSONObject;
    .param p4, "responseListener"    # Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    .prologue
    const/4 v4, 0x0

    .line 54
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 55
    iput-object p4, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonRequest;->responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 57
    return-void
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v3, 0x0

    .line 69
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonRequest;->responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    if-nez v1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-nez v1, :cond_1

    .line 73
    new-instance v0, Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;-><init>(ILjava/util/Map;[BLjava/lang/String;)V

    .line 77
    .local v0, "errorInfo":Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;
    :goto_1
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonRequest;->responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;->onError(Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;)V

    goto :goto_0

    .line 75
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
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonRequest;->deliverResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected deliverResponse(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 61
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonRequest;->responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 63
    .local v0, "responseField":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonRequest;->responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    if-eqz v0, :cond_1

    .end local v0    # "responseField":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v1, v0}, Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;->onSuccess(Lorg/json/JSONObject;)V

    .line 65
    :cond_0
    return-void

    .restart local v0    # "responseField":Lorg/json/JSONObject;
    :cond_1
    move-object v0, p1

    .line 63
    goto :goto_0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 3
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/JsonObjectRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 87
    :goto_0
    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "error"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v1, 0x0

    goto :goto_0
.end method
