.class Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonPostRequest;
.super Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonRequest;
.source "JsonRequestBuilder.java"


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


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonRequest"    # Lorg/json/JSONObject;
    .param p3, "responseListener"    # Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p4, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 103
    iput-object p4, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonPostRequest;->parameters:Ljava/util/Map;

    .line 104
    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonPostRequest;->parameters:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonPostRequest;->parameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonPostRequest;->parameters:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonPostRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/valvesoftware/android/steam/community/webrequests/WebRequestUtilities;->encodePostParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    .line 116
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
    .line 108
    invoke-static {}, Lcom/valvesoftware/android/steam/community/webrequests/WebRequestUtilities;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
