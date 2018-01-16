package com.valvesoftware.android.steam.community.model;

public enum PollStatus {
    OK,
    TIMEOUT,
    NOT_LOGGED_ON;

    public static PollStatus getValueFromString(String value) {
        if (value == null) {
            return null;
        }
        if (value.equalsIgnoreCase("ok")) {
            return OK;
        }
        if (value.equalsIgnoreCase("timeout")) {
            return TIMEOUT;
        }
        if (value.equalsIgnoreCase("not logged on")) {
            return NOT_LOGGED_ON;
        }
        return null;
    }
}
