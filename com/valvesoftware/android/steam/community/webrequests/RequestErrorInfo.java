package com.valvesoftware.android.steam.community.webrequests;

import java.util.Map;

public class RequestErrorInfo {
    private final byte[] data;
    private final Map<String, String> headers;
    private final String message;
    private final int statusCode;

    RequestErrorInfo(int statusCode, Map<String, String> headers, byte[] data, String message) {
        this.statusCode = statusCode;
        this.headers = headers;
        this.data = data;
        this.message = message;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public String getMessage() {
        return this.message;
    }
}
