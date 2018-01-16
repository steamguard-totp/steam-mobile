package com.valvesoftware.android.steam.community;

import java.util.Calendar;

public class DebugUtilRecord {
    public long id;
    public String key;
    public DebugUtilRecord parent;
    public long threadid = Thread.currentThread().getId();
    public Calendar timestamp = Calendar.getInstance();
    public String value;

    public long getId() {
        return this.id;
    }
}
