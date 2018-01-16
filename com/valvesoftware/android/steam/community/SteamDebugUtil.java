package com.valvesoftware.android.steam.community;

public class SteamDebugUtil {
    public static DebugUtilRecord newDebugUtilRecord(DebugUtilRecord parent, String key, String value) {
        DebugUtilRecord r = new DebugUtilRecord();
        r.parent = parent;
        r.key = key;
        r.value = value;
        return r;
    }
}
