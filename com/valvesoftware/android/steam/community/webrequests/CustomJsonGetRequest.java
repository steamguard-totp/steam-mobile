package com.valvesoftware.android.steam.community.webrequests;

import org.json.JSONObject;

/* compiled from: JsonRequestBuilder */
class CustomJsonGetRequest extends CustomJsonRequest {
    public CustomJsonGetRequest(String url, JSONObject jsonRequest, ResponseListener responseListener) {
        super(0, url, jsonRequest, responseListener);
    }
}
