package com.valvesoftware.android.steam.community.model;

import com.valvesoftware.android.steam.community.R;

public enum PersonaState {
    OFFLINE,
    ONLINE,
    BUSY,
    AWAY,
    SNOOZE;

    public static PersonaState FromInteger(int status) {
        switch (status) {
            case 0:
                return OFFLINE;
            case 1:
                return ONLINE;
            case 2:
                return BUSY;
            case 3:
                return AWAY;
            case 4:
                return SNOOZE;
            default:
                return OFFLINE;
        }
    }

    public int GetDisplayString() {
        switch (this) {
            case OFFLINE:
                return R.string.Offline;
            case ONLINE:
                return R.string.Online;
            case BUSY:
                return R.string.Busy;
            case AWAY:
                return R.string.Away;
            case SNOOZE:
                return R.string.Snooze;
            default:
                return R.string.Unknown;
        }
    }
}
