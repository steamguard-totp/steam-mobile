package com.valvesoftware.android.steam.community.webrequests;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageRequest;

/* compiled from: ImageRequestBuilder */
class CustomImageRequest extends ImageRequest {
    private final ImageResponseListener responseListener;

    public CustomImageRequest(String url, ImageResponseListener responseListener, int maxWidth, int maxHeight, Config decodeConfig) {
        super(url, null, maxWidth, maxHeight, decodeConfig, null);
        this.responseListener = responseListener;
    }

    public void deliverError(VolleyError error) {
        if (this.responseListener != null) {
            RequestErrorInfo requestErrorInfo;
            if (error.networkResponse == null) {
                requestErrorInfo = new RequestErrorInfo(-1, null, null, error.getMessage());
            } else {
                requestErrorInfo = new RequestErrorInfo(error.networkResponse.statusCode, error.networkResponse.headers, error.networkResponse.data, error.getMessage());
            }
        }
    }

    protected void deliverResponse(Bitmap bitmap) {
        if (this.responseListener != null) {
            this.responseListener.onSuccess(bitmap);
        }
    }
}
