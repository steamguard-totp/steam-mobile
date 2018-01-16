package com.valvesoftware.android.steam.community.webrequests;

import com.valvesoftware.android.steam.community.Config;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class WebRequestUtilities {
    public static Map<String, String> getHeaders() {
        Map<String, String> headers = new HashMap();
        headers.put("Content-Type", "application/x-www-form-urlencoded");
        headers.put("User-Agent", "Steam App / Android / " + Config.APP_VERSION + " / " + Config.APP_VERSION_ID);
        return headers;
    }

    public static byte[] encodePostParameters(Map<String, String> params, String paramsEncoding) {
        StringBuilder encodedParams = new StringBuilder();
        try {
            for (Entry<String, String> entry : params.entrySet()) {
                if (encodedParams.length() != 0) {
                    encodedParams.append('&');
                }
                encodedParams.append(URLEncoder.encode((String) entry.getKey(), paramsEncoding));
                encodedParams.append('=');
                encodedParams.append(URLEncoder.encode((String) entry.getValue(), paramsEncoding));
            }
            return encodedParams.toString().getBytes(paramsEncoding);
        } catch (UnsupportedEncodingException uee) {
            throw new RuntimeException("Encoding not supported: " + paramsEncoding, uee);
        }
    }
}
