.class Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonGetRequest;
.super Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonRequest;
.source "JsonRequestBuilder.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonRequest"    # Lorg/json/JSONObject;
    .param p3, "responseListener"    # Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/valvesoftware/android/steam/community/webrequests/CustomJsonRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/valvesoftware/android/steam/community/webrequests/ResponseListener;)V

    .line 94
    return-void
.end method
