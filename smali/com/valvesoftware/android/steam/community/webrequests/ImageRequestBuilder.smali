.class public Lcom/valvesoftware/android/steam/community/webrequests/ImageRequestBuilder;
.super Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;
.source "ImageRequestBuilder.java"


# instance fields
.field private responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ImageResponseListener;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/valvesoftware/android/steam/community/webrequests/RequestBuilder;-><init>(Ljava/lang/String;Z)V

    .line 15
    return-void
.end method


# virtual methods
.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 27
    return-void
.end method

.method public setResponseListener(Lcom/valvesoftware/android/steam/community/webrequests/ImageResponseListener;)V
    .locals 0
    .param p1, "responseListener"    # Lcom/valvesoftware/android/steam/community/webrequests/ImageResponseListener;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/valvesoftware/android/steam/community/webrequests/ImageRequestBuilder;->responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ImageResponseListener;

    .line 24
    return-void
.end method

.method public toRequest()Lcom/android/volley/Request;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/valvesoftware/android/steam/community/webrequests/CustomImageRequest;

    invoke-virtual {p0}, Lcom/valvesoftware/android/steam/community/webrequests/ImageRequestBuilder;->getFullUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/valvesoftware/android/steam/community/webrequests/ImageRequestBuilder;->responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ImageResponseListener;

    const/4 v5, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/valvesoftware/android/steam/community/webrequests/CustomImageRequest;-><init>(Ljava/lang/String;Lcom/valvesoftware/android/steam/community/webrequests/ImageResponseListener;IILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
