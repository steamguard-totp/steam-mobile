package com.valvesoftware.android.steam.community.webrequests;

import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: StringRequestBuilder */
class CustomStringPostRequest extends StringRequest {
    private final Map<String, String> parameters;
    private final ResponseListener responseListener;

    public CustomStringPostRequest(String url, ResponseListener responseListener, Map<String, String> parameters) {
        super(1, url, null, null);
        this.responseListener = responseListener;
        this.parameters = parameters;
        setShouldCache(false);
    }

    protected void deliverResponse(String response) {
        if (this.responseListener != null) {
            if (response == null) {
                response = "";
            }
            JSONObject jsonifiedResponse = new JSONObject();
            try {
                jsonifiedResponse.putOpt("response", response);
            } catch (JSONException e) {
                e.printStackTrace();
                this.responseListener.onSuccess(null);
            }
            this.responseListener.onSuccess(jsonifiedResponse);
        }
    }

    public void deliverError(VolleyError error) {
        if (this.responseListener != null) {
            RequestErrorInfo errorInfo;
            if (error.networkResponse == null) {
                errorInfo = new RequestErrorInfo(-1, null, null, error.getMessage());
            } else {
                errorInfo = new RequestErrorInfo(error.networkResponse.statusCode, error.networkResponse.headers, error.networkResponse.data, error.getMessage());
            }
            this.responseListener.onError(errorInfo);
        }
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
