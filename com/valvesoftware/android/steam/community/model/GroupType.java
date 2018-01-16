package com.valvesoftware.android.steam.community.model;

public enum GroupType {
    PRIVATE,
    PUBLIC,
    LOCKED,
    DISABLED,
    OFFICIAL;

    public static GroupType FromInteger(int status) {
        switch (status) {
            case 0:
                return PRIVATE;
            case 1:
                return PUBLIC;
            case 2:
                return LOCKED;
            case 3:
                return DISABLED;
            case 4:
                return OFFICIAL;
            default:
                return PRIVATE;
        }
    }
}
