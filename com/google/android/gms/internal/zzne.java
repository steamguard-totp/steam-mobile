package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

@zzmb
class zzne {
    private String zzD;
    private final String zzOn;
    private int zzPF;
    private final List<String> zzTR;
    private final List<String> zzTS;
    private final String zzTT;
    private final String zzTU;
    private final String zzTV;
    private final String zzTW;
    private final boolean zzTX;
    private final boolean zzTY;
    private final String zzTZ;

    public zzne(int i, Map<String, String> map) {
        this.zzD = (String) map.get("url");
        this.zzTU = (String) map.get("base_uri");
        this.zzTV = (String) map.get("post_parameters");
        this.zzTX = parseBoolean((String) map.get("drt_include"));
        this.zzTY = parseBoolean((String) map.get("pan_include"));
        this.zzTT = (String) map.get("activation_overlay_url");
        this.zzTS = zzaL((String) map.get("check_packages"));
        this.zzOn = (String) map.get("request_id");
        this.zzTW = (String) map.get("type");
        this.zzTR = zzaL((String) map.get("errors"));
        this.zzPF = i;
        this.zzTZ = (String) map.get("fetched_ad");
    }

    private static boolean parseBoolean(String str) {
        return str != null && (str.equals("1") || str.equals("true"));
    }

    private List<String> zzaL(String str) {
        return str == null ? null : Arrays.asList(str.split(","));
    }

    public int getErrorCode() {
        return this.zzPF;
    }

    public String getRequestId() {
        return this.zzOn;
    }

    public String getType() {
        return this.zzTW;
    }

    public String getUrl() {
        return this.zzD;
    }

    public void setUrl(String str) {
        this.zzD = str;
    }

    public List<String> zzji() {
        return this.zzTR;
    }

    public String zzjj() {
        return this.zzTU;
    }

    public String zzjk() {
        return this.zzTV;
    }

    public boolean zzjl() {
        return this.zzTX;
    }

    public String zzjm() {
        return this.zzTZ;
    }
}
