package com.valvesoftware.android.steam.community.webrequests;

import java.util.Map;
import org.json.JSONObject;

/* compiled from: JsonRequestBuilder */
class CustomJsonPostRequest extends CustomJsonRequest {
    private final Map<String, String> parameters;

    public CustomJsonPostRequest(String url, JSONObject jsonRequest, ResponseListener responseListener, Map<String, String> parameters) {
        super(1, url, jsonRequest, responseListener);
        this.parameters = parameters;
    }

    public Map<String, String> getHeaders() {
        return WebRequestUtilities.getHeaders();
    }

    public byte[] getBody() {
        if (this.parameters == null || this.parameters.size() <= 0) {
            return null;
        }
        return WebRequestUtilities.encodePostParameters(this.parameters, getParamsEncoding());
    }
}
