package com.valvesoftware.android.steam.community.webrequests;

import com.android.volley.Request;
import com.android.volley.toolbox.JsonObjectRequest;

class JsonRequestBuilder extends RequestBuilder {
    public JsonRequestBuilder(String baseUrl, boolean isPOST) {
        super(baseUrl, isPOST);
    }

    public Request toRequest() {
        Request req;
        if (isPOST()) {
            req = toPostRequest();
        } else {
            req = toGetRequest();
        }
        if (this.retryPolicy != null) {
            req.setRetryPolicy(this.retryPolicy);
        }
        return req;
    }

    private JsonObjectRequest toGetRequest() {
        return new CustomJsonGetRequest(getFullUrl(), null, getResponseListener());
    }

    private JsonObjectRequest toPostRequest() {
        return new CustomJsonPostRequest(getBaseUrl(), null, getResponseListener(), getPostParameters());
    }
}
