package com.valvesoftware.android.steam.community.webrequests;

import org.json.JSONObject;

public abstract class ResponseListener {
    public abstract void onError(RequestErrorInfo requestErrorInfo);

    public abstract void onSuccess(JSONObject jSONObject);
}
