package com.valvesoftware.android.steam.community;

import java.util.Arrays;

public class NetErrorTranslator {
    private static final String[] s_likelyNetworkErrors = new String[]{"ADDRESS_UNREACHABLE", "CONNECTION_ABORTED", "CONNECTION_CLOSED", "CONNECTION_FAILED", "CONNECTION_REFUSED", "CONNECTION_RESET", "CONNECTION_TIMED_OUT", "DNS_SERVER_FAILED", "DNS_TIMED_OUT", "INTERNET_DISCONNECTED", "MSG_TOO_BIG", "NAME_NOT_RESOLVED", "NAME_RESOLUTION_FAILED", "PROXY_AUTH_REQUESTED", "PROXY_AUTH_REQUESTED_WITH_NO_CONNECTION", "PROXY_AUTH_UNSUPPORTED", "PROXY_CERTIFICATE_INVALID", "PROXY_CONNECTION_FAILED", "TIMED_OUT"};

    public static String translateError(String errMessage) {
        String result = null;
        if (errMessage.startsWith("net::ERR_")) {
            if (Arrays.binarySearch(s_likelyNetworkErrors, errMessage.substring("net::ERR_".length())) >= 0) {
                result = SteamCommunityApplication.GetInstance().getResources().getString(R.string.network_error);
            }
        }
        if (result == null) {
            return SteamCommunityApplication.GetInstance().getResources().getString(R.string.unspecified_error);
        }
        return result;
    }
}
