package com.valvesoftware.android.steam.community.webrequests;

import com.android.volley.Request;

public class ImageRequestBuilder extends RequestBuilder {
    private ImageResponseListener responseListener;

    ImageRequestBuilder(String baseUrl) {
        super(baseUrl, false);
    }

    public Request toRequest() {
        return new CustomImageRequest(getFullUrl(), this.responseListener, 0, 0, null);
    }

    public void setResponseListener(ImageResponseListener responseListener) {
        this.responseListener = responseListener;
    }

    public void setAccessToken(String accessToken) {
    }
}
