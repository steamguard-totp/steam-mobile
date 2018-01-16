package com.valvesoftware.android.steam.community.webrequests;

import com.android.volley.Request;
import com.android.volley.RetryPolicy;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;

public abstract class RequestBuilder {
    static final /* synthetic */ boolean $assertionsDisabled = (!RequestBuilder.class.desiredAssertionStatus());
    private String accessToken;
    private final String baseUrl;
    private final boolean isPOST;
    private final Map<String, String> parameters = new LinkedHashMap();
    private ResponseListener responseListener;
    protected RetryPolicy retryPolicy;

    public abstract Request toRequest();

    public RequestBuilder(String baseUrl, boolean isPOST) {
        this.baseUrl = baseUrl;
        this.isPOST = isPOST;
    }

    public String getBaseUrl() {
        return this.baseUrl;
    }

    public ResponseListener getResponseListener() {
        return this.responseListener;
    }

    public void setResponseListener(ResponseListener responseListener) {
        this.responseListener = responseListener;
    }

    public void setRetryPolicy(RetryPolicy retryPolicy) {
        this.retryPolicy = retryPolicy;
    }

    public void setAccessToken(String accessToken) {
        if (this.baseUrl.startsWith("https")) {
            this.accessToken = accessToken;
        }
    }

    public void appendArray(String paramName, String[] arrayValues) {
        if ($assertionsDisabled || paramName != null) {
            appendKeyValue(paramName, joinArgs(arrayValues));
            return;
        }
        throw new AssertionError("paramName argument is null");
    }

    public void appendSteamId(String steamId) {
        appendKeyValue("steamid", steamId);
    }

    public void appendKeyValue(String key, String value) {
        if (!$assertionsDisabled && key == null) {
            throw new AssertionError("Provided key is null");
        } else if ($assertionsDisabled || value != null) {
            this.parameters.put(key, value);
        } else {
            throw new AssertionError("Provided value is null");
        }
    }

    public boolean isPOST() {
        return this.isPOST;
    }

    public String getFullUrl() {
        String accessTokenPortion = getAccessTokenQueryParam();
        String parametersAsString = getParametersQueryString(this.parameters);
        String parametersPortion = "";
        if (parametersAsString != null && parametersAsString.length() > 0) {
            parametersPortion = isPOST() ? "" : (accessTokenPortion.length() == 0 ? "?" : "&") + getParametersQueryString(this.parameters);
        }
        return this.baseUrl + accessTokenPortion + parametersPortion;
    }

    private String getAccessTokenQueryParam() {
        if (this.accessToken == null) {
            return "";
        }
        return "?access_token=" + this.accessToken;
    }

    private static String getParametersQueryString(Map<String, String> params) {
        if (params == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Entry<String, String> parameter : params.entrySet()) {
            sb.append("&").append((String) parameter.getKey()).append("=").append((String) parameter.getValue());
        }
        if (sb.length() > 0) {
            sb.deleteCharAt(0);
        }
        return sb.toString();
    }

    private static String joinArgs(String[] args) {
        StringBuilder result = new StringBuilder();
        if (args == null) {
            return result.toString();
        }
        if (args.length > 0) {
            result.append(args[0]);
        }
        if (args.length == 1) {
            return result.toString();
        }
        for (int i = 1; i < args.length; i++) {
            result.append(",");
            result.append(args[i]);
        }
        return result.toString();
    }

    protected Map<String, String> getPostParameters() {
        Map<String, String> postParameters = new LinkedHashMap();
        if (this.accessToken != null) {
            postParameters.put("access_token", this.accessToken);
        }
        postParameters.putAll(this.parameters);
        return postParameters;
    }
}
