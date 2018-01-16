.class Lcom/valvesoftware/android/steam/community/webrequests/CustomImageRequest;
.super Lcom/android/volley/toolbox/ImageRequest;
.source "ImageRequestBuilder.java"


# instance fields
.field private final responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ImageResponseListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/valvesoftware/android/steam/community/webrequests/ImageResponseListener;IILandroid/graphics/Bitmap$Config;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseListener"    # Lcom/valvesoftware/android/steam/community/webrequests/ImageResponseListener;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "decodeConfig"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v2, 0x0

    .line 36
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    .line 37
    iput-object p2, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomImageRequest;->responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ImageResponseListener;

    .line 38
    return-void
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .locals 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v3, 0x0

    .line 42
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomImageRequest;->responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ImageResponseListener;

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-nez v0, :cond_1

    .line 46
    new-instance v0, Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;

    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/valvesoftware/android/steam/community/webrequests/RequestErrorInfo;-><init>(ILjava/util/Map;[BLjava/lang/String;)V

    goto :goto_0

    .line 48
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

    goto :goto_0
.end method

.method protected deliverResponse(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomImageRequest;->responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ImageResponseListener;

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/valvesoftware/android/steam/community/webrequests/CustomImageRequest;->responseListener:Lcom/valvesoftware/android/steam/community/webrequests/ImageResponseListener;

    invoke-virtual {v0, p1}, Lcom/valvesoftware/android/steam/community/webrequests/ImageResponseListener;->onSuccess(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/valvesoftware/android/steam/community/webrequests/CustomImageRequest;->deliverResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method
