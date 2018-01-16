package com.valvesoftware.android.steam.community.webrequests;

import com.android.volley.Request;
import com.android.volley.toolbox.StringRequest;

public class StringRequestBuilder extends RequestBuilder {
    public StringRequestBuilder(String baseUrl, boolean isPOST) {
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

    private StringRequest toGetRequest() {
        throw new UnsupportedOperationException("not yet implemented");
    }

    private StringRequest toPostRequest() {
        return new CustomStringPostRequest(getBaseUrl(), getResponseListener(), getPostParameters());
    }
}
